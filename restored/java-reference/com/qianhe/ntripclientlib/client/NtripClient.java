package com.qianhe.ntripclientlib.client;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.ntripclientlib.base.DiffClientImpl;
import com.qianhe.ntripclientlib.bean.AuthResult;
import com.qianhe.ntripclientlib.client.config.NtripClientConfig;
import com.qianhe.ntripclientlib.event.MountPointsEvent;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;
import net.lingala.zip4j.util.InternalZipConstants;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class NtripClient implements DiffClientImpl {
    private BufferedReader bufferedReader;
    private ExecutorService executorRead;
    private InputStream inputStream;
    private NtripClientConfig mConfig;
    private Context mContext;
    private String mGGA;
    private OutputStream mOutputStream;
    private Socket mSocket;
    private Timer mTimer;
    private final AtomicReference<TimerTask> mTimerTask = new AtomicReference<>();
    private long timerCount = 0;
    private boolean connectSuccess = false;
    private boolean authSuccess = false;

    public NtripClient() {
    }

    public NtripClient(Context context, NtripClientConfig ntripClientConfig, String str) {
        this.mContext = context;
        this.mConfig = ntripClientConfig;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        updateGgaData(str);
    }

    @Override // com.qianhe.ntripclientlib.base.DiffClientImpl
    public void connect() {
        if (this.mTimer == null && this.mConfig != null) {
            this.mTimer = new Timer();
            this.mTimerTask.set(new TimerTask() { // from class: com.qianhe.ntripclientlib.client.NtripClient.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() throws IOException {
                    if (NtripClient.this.timerCount == 0) {
                        NtripClient.this.startConnectNtrip();
                    } else if (NtripClient.this.timerCount % 3 == 0 && (NtripClient.this.mSocket == null || !NtripClient.this.mSocket.isConnected() || NtripClient.this.mSocket.isClosed() || !NtripClient.this.connectSuccess)) {
                        LogToFile.i("============ntrip重连===========");
                        NtripClient.this.startConnectNtrip();
                    }
                    if (NtripClient.this.timerCount > 0 && NtripClient.this.timerCount % (NtripClient.this.mConfig.updateGGA_period / InternalZipConstants.AES_HASH_ITERATIONS) == 0) {
                        NtripClient ntripClient = NtripClient.this;
                        ntripClient.writeData(ntripClient.mGGA);
                    }
                    NtripClient.this.timerCount++;
                }
            });
            this.mTimer.schedule(this.mTimerTask.get(), 0L, 1000L);
            return;
        }
        LogToFile.i("connect() ——> mTimer != null || mConfig == null");
    }

    private boolean isConnected() {
        Socket socket;
        return this.connectSuccess && this.authSuccess && this.mOutputStream != null && (socket = this.mSocket) != null && socket.isConnected() && !this.mSocket.isClosed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeData(String str) throws IOException {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (isConnected()) {
                this.mOutputStream.write((str + "\r\n").getBytes());
                this.mOutputStream.flush();
                LogToFile.i("===========NtripClient -> updateGGA() ============" + str);
                return;
            }
            LogToFile.i("sendGGA：socket未连接");
        } catch (Exception e) {
            LogToFile.e("updateGGA：" + e);
            this.connectSuccess = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startConnectNtrip() throws IOException {
        try {
            this.connectSuccess = false;
            this.authSuccess = false;
            Socket socket = new Socket();
            this.mSocket = socket;
            NtripClientConfig ntripClientConfig = this.mConfig;
            socket.connect(new InetSocketAddress(ntripClientConfig.ntrip_host, ntripClientConfig.ntrip_port), 3000);
            this.mOutputStream = this.mSocket.getOutputStream();
            this.bufferedReader = new BufferedReader(new InputStreamReader(this.mSocket.getInputStream()));
            this.mOutputStream.write(buildParam(0).getBytes());
            this.mOutputStream.flush();
            this.connectSuccess = true;
            String line = this.bufferedReader.readLine();
            LogToFile.i("response：" + line);
            if (line != null && line.contains("OK")) {
                LogToFile.i("Ntrip认证成功：" + line + " ——> " + this.mConfig.ntrip_host + ":" + this.mConfig.ntrip_port);
                this.authSuccess = true;
                writeData(this.mGGA);
                AuthResult authResult = new AuthResult(1);
                authResult.setIsInit(this.mConfig.isInit);
                EventBus.getDefault().post(authResult);
                this.mConfig.setIsInit(true);
            } else {
                AuthResult authResult2 = new AuthResult(0, 0L, line);
                authResult2.setIsInit(this.mConfig.isInit);
                EventBus.getDefault().post(authResult2);
                LogToFile.i("Ntrip认证失败：" + line + "——>" + this.mConfig.toString());
                this.mConfig.setIsInit(true);
            }
            readData();
        } catch (Exception e) {
            e.printStackTrace();
            if (!this.connectSuccess) {
                AuthResult authResult3 = new AuthResult(0, 0L, "域名或端口错误");
                authResult3.setIsInit(this.mConfig.isInit);
                EventBus.getDefault().post(authResult3);
                LogToFile.e("Ntrip连接异常：" + e);
                NtripClientConfig ntripClientConfig2 = this.mConfig;
                LogToFile.e(ntripClientConfig2 != null ? ntripClientConfig2.toString() : "BaseConfig = null");
            } else if (!this.authSuccess) {
                LogToFile.e("Ntrip认证异常 ——> " + e);
                NtripClientConfig ntripClientConfig3 = this.mConfig;
                LogToFile.e(ntripClientConfig3 != null ? ntripClientConfig3.toString() : "BaseConfig = null");
            } else {
                LogToFile.e("startConnectNtrip()异常 ——> " + e);
            }
            disconnect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String buildParam(int i) {
        StringBuilder sb = new StringBuilder();
        String str = "Basic " + Base64.encodeToString((this.mConfig.username + ":" + this.mConfig.password).getBytes(), 2);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("GET /");
        sb2.append(i == 0 ? this.mConfig.mount_point : "");
        sb2.append(" HTTP/1.1\r\n");
        sb.append(sb2.toString());
        sb.append("Host: " + this.mConfig.ntrip_host + ":" + this.mConfig.ntrip_port + "\r\n");
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Authorization: ");
        sb3.append(str);
        sb3.append("\r\n");
        sb.append(sb3.toString());
        sb.append("User-Agent: NTRIP 1.00.250708.DecoderGNSS.G992F732000000129502\r\n");
        sb.append("\r\n");
        return sb.toString();
    }

    @Override // com.qianhe.ntripclientlib.base.DiffClientImpl
    public void updateGgaData(String str) {
        this.mGGA = str;
    }

    private void readData() {
        if (this.mSocket == null) {
            return;
        }
        ExecutorService executorService = this.executorRead;
        if (executorService == null || executorService.isShutdown()) {
            this.executorRead = Executors.newSingleThreadExecutor();
        }
        this.executorRead.submit(new Runnable() { // from class: com.qianhe.ntripclientlib.client.NtripClient$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws IOException {
                NtripClient.$r8$lambda$1TXQ4MTcyzHCr3H6znzw6egMA90(this.f$0);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$1TXQ4MTcyzHCr3H6znzw6egMA90(NtripClient ntripClient) throws IOException {
        ntripClient.getClass();
        try {
            ntripClient.inputStream = ntripClient.mSocket.getInputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int i = ntripClient.inputStream.read(bArr);
                if (i == -1) {
                    return;
                }
                EventBus.getDefault().post(new OrderBean(Arrays.copyOfRange(bArr, 0, i)));
            }
        } catch (IOException e) {
            e.printStackTrace();
            if (e.toString().contains("Socket closed")) {
                return;
            }
            LogToFile.e("readData()异常 - >" + e);
        }
    }

    @Override // com.qianhe.ntripclientlib.base.DiffClientImpl
    public void disconnect() throws IOException {
        try {
            Timer timer = this.mTimer;
            if (timer != null) {
                timer.cancel();
            }
            this.mTimer = null;
            Socket socket = this.mSocket;
            if (socket != null) {
                socket.close();
            }
            BufferedReader bufferedReader = this.bufferedReader;
            if (bufferedReader != null) {
                bufferedReader.close();
            }
            OutputStream outputStream = this.mOutputStream;
            if (outputStream != null) {
                outputStream.close();
            }
            ExecutorService executorService = this.executorRead;
            if (executorService != null) {
                executorService.shutdownNow();
            }
            this.connectSuccess = false;
            this.authSuccess = false;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void getMountPoints(final NtripClientConfig ntripClientConfig) {
        this.mConfig = ntripClientConfig;
        new Thread(new Runnable() { // from class: com.qianhe.ntripclientlib.client.NtripClient.2
            @Override // java.lang.Runnable
            public void run() throws IOException {
                ArrayList arrayList = new ArrayList();
                try {
                    NtripClient.this.mSocket = new Socket();
                    Socket socket = NtripClient.this.mSocket;
                    NtripClientConfig ntripClientConfig2 = ntripClientConfig;
                    socket.connect(new InetSocketAddress(ntripClientConfig2.ntrip_host, ntripClientConfig2.ntrip_port), 3000);
                    NtripClient ntripClient = NtripClient.this;
                    ntripClient.mOutputStream = ntripClient.mSocket.getOutputStream();
                    NtripClient.this.bufferedReader = new BufferedReader(new InputStreamReader(NtripClient.this.mSocket.getInputStream()));
                    NtripClient.this.mOutputStream.write(NtripClient.this.buildParam(1).getBytes());
                    NtripClient.this.mOutputStream.flush();
                    while (true) {
                        String line = NtripClient.this.bufferedReader.readLine();
                        if (line != null) {
                            if (line.startsWith("STR;") || line.startsWith("CAS;") || line.startsWith("NET;")) {
                                String[] strArrSplit = line.split(";");
                                if (strArrSplit.length > 1) {
                                    arrayList.add(strArrSplit[1]);
                                }
                            }
                        } else {
                            LogToFile.i("挂载点：" + arrayList);
                            EventBus.getDefault().post(new MountPointsEvent(arrayList));
                            NtripClient.this.mSocket.close();
                            return;
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    AuthResult authResult = new AuthResult(0, 0L, "域名或端口错误");
                    authResult.setIsInit(true);
                    EventBus.getDefault().post(authResult);
                    LogToFile.e("getMountPoints异常：" + e);
                }
            }
        }).start();
    }
}
