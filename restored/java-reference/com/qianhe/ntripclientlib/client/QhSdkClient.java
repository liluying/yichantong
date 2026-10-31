package com.qianhe.ntripclientlib.client;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.baselib.utils.NetworkChecker;
import com.qianhe.baselib.utils.parser.GGAParser;
import com.qianhe.ntripclientlib.base.DiffClientImpl;
import com.qianhe.ntripclientlib.bean.AuthResult;
import com.qianhe.ntripclientlib.client.config.SdkClientConfig;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import net.lingala.zip4j.util.InternalZipConstants;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class QhSdkClient implements DiffClientImpl {
    private ExecutorService executorRead;
    private SdkClientConfig mConfig;
    private final Context mContext;
    private String mGGA;
    private InputStream mInputStream;
    private OutputStream mOutputStream;
    private final SharedPreferences mSP;
    private Socket mSocket;
    private ScheduledFuture<?> scheduledFuture;
    private boolean connectSuccess = false;
    private boolean authSuccess = false;
    private long mLatestBaiduResponseTime = 0;
    private long mLatestNtripResponseTime = 0;
    private long reconnect_period = 3;
    private ScheduledExecutorService scheduledExecutor = Executors.newSingleThreadScheduledExecutor();

    public QhSdkClient(Context context, SdkClientConfig sdkClientConfig, String str) {
        this.mContext = context;
        this.mConfig = sdkClientConfig;
        this.mSP = context.getSharedPreferences("sp", 0);
        updateGgaData(str);
    }

    @Override // com.qianhe.ntripclientlib.base.DiffClientImpl
    public void connect() {
        if (this.scheduledFuture == null && this.mConfig != null) {
            if (this.scheduledExecutor.isShutdown()) {
                this.scheduledExecutor = Executors.newSingleThreadScheduledExecutor();
            }
            this.scheduledFuture = this.scheduledExecutor.scheduleWithFixedDelay(new Runnable() { // from class: com.qianhe.ntripclientlib.client.QhSdkClient.1
                long timerCount = 0;

                @Override // java.lang.Runnable
                public void run() throws IOException {
                    GGAEntity gga;
                    if (this.timerCount == 0 && QhSdkClient.this.mSocket == null) {
                        QhSdkClient.this.startConnectNtrip();
                    } else {
                        long j = this.timerCount;
                        if (j != 0 && j % QhSdkClient.this.reconnect_period == 0 && (QhSdkClient.this.mSocket == null || !QhSdkClient.this.mSocket.isConnected() || QhSdkClient.this.mSocket.isClosed() || !QhSdkClient.this.connectSuccess)) {
                            LogToFile.i("============ntrip重连===========");
                            this.timerCount = 0L;
                            QhSdkClient.this.startConnectNtrip();
                        }
                    }
                    long j2 = this.timerCount;
                    if (j2 > 0 && j2 % (QhSdkClient.this.mConfig.updateGGA_period / InternalZipConstants.AES_HASH_ITERATIONS) == 0 && (gga = GGAParser.parseGGA(DeviceType.ZPY, QhSdkClient.this.mGGA)) != null && gga.quality > 0) {
                        QhSdkClient qhSdkClient = QhSdkClient.this;
                        qhSdkClient.writeData(qhSdkClient.mGGA);
                    }
                    QhSdkClient.this.judgeNtripConnect(System.currentTimeMillis());
                    QhSdkClient.this.judgeNetwork(System.currentTimeMillis());
                    QhSdkClient.this.judgeAuth(this.timerCount);
                    this.timerCount++;
                }
            }, 0L, 1000L, TimeUnit.MILLISECONDS);
            return;
        }
        LogToFile.i("定时检测开启失败 ——> scheduledFuture != null or mConfig == null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void judgeNetwork(long j) {
        if (j - this.mLatestBaiduResponseTime > 10000) {
            this.mLatestBaiduResponseTime = System.currentTimeMillis();
            NetworkChecker.checkNetworkAsync(this.mContext, new NetworkChecker.NetworkCheckCallback() { // from class: com.qianhe.ntripclientlib.client.QhSdkClient.2
                @Override // com.qianhe.baselib.utils.NetworkChecker.NetworkCheckCallback
                public void onResult(boolean z) {
                    if (z) {
                        LogToFile.i("网络正常");
                        if (QhSdkClient.this.reconnect_period != 3) {
                            QhSdkClient.this.reconnect_period = 3L;
                            return;
                        }
                        return;
                    }
                    if (QhSdkClient.this.reconnect_period != 10) {
                        QhSdkClient.this.reconnect_period = 10L;
                        LogToFile.i("网络不可用，ntrip检测间隔调整为10秒");
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void judgeNtripConnect(long j) throws IOException {
        if (this.connectSuccess) {
            long j2 = this.mLatestNtripResponseTime;
            if (j2 <= 0 || j - j2 <= 15000) {
                return;
            }
            GGAEntity gga = GGAParser.parseGGA(DeviceType.ZPY, this.mGGA);
            if (gga != null && gga.quality > 0) {
                LogToFile.i("<———— 长时间未收到ntrip应答 ————> quality:" + gga.quality);
                this.reconnect_period = 3L;
                disconnect();
                connect();
                return;
            }
            this.mLatestNtripResponseTime = System.currentTimeMillis();
            if (gga != null) {
                LogToFile.i("当前解状态 quality:" + gga.quality);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void judgeAuth(long j) throws IOException {
        if (!this.connectSuccess || this.authSuccess || j <= 10) {
            return;
        }
        LogToFile.i("<———— 长时间未认证成功 ————>");
        this.reconnect_period = 3L;
        disconnect();
        connect();
    }

    private boolean isConnected() {
        Socket socket;
        return this.connectSuccess && this.authSuccess && this.mOutputStream != null && (socket = this.mSocket) != null && socket.isConnected() && !this.mSocket.isClosed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeData(String str) throws IOException {
        if (TextUtils.isEmpty(this.mGGA)) {
            return;
        }
        try {
            if (isConnected()) {
                this.mOutputStream.write((str + "\r\n").getBytes(StandardCharsets.UTF_8));
                this.mOutputStream.flush();
                LogToFile.i("===========QhSdkClient -> updateGGA() ============" + str);
                return;
            }
            LogToFile.i("updateGGA：socket未连接");
        } catch (IOException e) {
            LogToFile.e("updateGGA：" + e);
            this.connectSuccess = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startConnectNtrip() {
        try {
            LogToFile.i("<—————— QhSdkClient startConnectNtrip() ——————>" + this.mConfig.ntrip_host + ":" + this.mConfig.ntrip_port + "，deviceId：" + this.mConfig.deviceId);
            this.connectSuccess = false;
            this.authSuccess = false;
            SdkClientConfig sdkClientConfig = this.mConfig;
            Socket socket = new Socket(sdkClientConfig.ntrip_host, sdkClientConfig.ntrip_port);
            this.mSocket = socket;
            this.mOutputStream = socket.getOutputStream();
            this.mInputStream = this.mSocket.getInputStream();
            this.mLatestNtripResponseTime = System.currentTimeMillis();
            readData();
            startAuth();
        } catch (IOException e) {
            LogToFile.e("startConnectNtrip：" + e);
        }
    }

    private void startAuth() throws IOException {
        try {
            this.mOutputStream.write(buildParam().getBytes());
            this.mOutputStream.flush();
        } catch (IOException e) {
            LogToFile.e("startAuth：" + e);
        }
    }

    private String buildParam() {
        StringBuilder sb = new StringBuilder();
        try {
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            String str = String.format("RSSDID,%s,%s,ABC", this.mConfig.deviceId, Long.valueOf(jCurrentTimeMillis));
            sb.append("GET /" + this.mConfig.mount_point + "\r\n");
            sb.append("Auth-Type: 2\r\n");
            sb.append("DeviceID: " + this.mConfig.deviceId + "\r\n");
            sb.append("Authorization: " + getEncryptAuth(str) + "\r\n");
            sb.append("User-Agent: K68G.1.1.2401.125\r\n");
            sb.append("Timestamp: " + jCurrentTimeMillis + "\r\n");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("CoordSys: ");
            int i = this.mConfig.ntrip_port;
            sb2.append(i == 8001 ? "CGCS2000" : i == 8002 ? "WGS84" : "ITRF2008");
            sb2.append("\r\n");
            sb.append(sb2.toString());
            sb.append("\r\n");
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            LogToFile.e("ntrip认证异常 ——> getEncryptAuth：" + e);
            return sb.toString();
        }
    }

    private String getEncryptAuth(String str) {
        byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(str.getBytes(StandardCharsets.UTF_8));
        StringBuilder sb = new StringBuilder();
        for (byte b : bArrDigest) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                sb.append('0');
            }
            sb.append(hexString);
        }
        return Base64.encodeToString(sb.toString().getBytes(), 2);
    }

    @Override // com.qianhe.ntripclientlib.base.DiffClientImpl
    public void updateGgaData(String str) {
        if (str != null) {
            this.mGGA = str;
        }
    }

    private void readData() {
        if (this.mSocket == null) {
            return;
        }
        ExecutorService executorService = this.executorRead;
        if (executorService == null || executorService.isShutdown()) {
            this.executorRead = Executors.newSingleThreadExecutor();
        }
        this.executorRead.submit(new Runnable() { // from class: com.qianhe.ntripclientlib.client.QhSdkClient$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws IOException, NumberFormatException {
                QhSdkClient.m1061$r8$lambda$thu3YDFLlcrF9pWJZGryte85U(this.f$0);
            }
        });
    }

    /* renamed from: $r8$lambda$th-u3YDFLlcrF9pWJZGryte8-5U, reason: not valid java name */
    public static /* synthetic */ void m1061$r8$lambda$thu3YDFLlcrF9pWJZGryte85U(QhSdkClient qhSdkClient) throws IOException, NumberFormatException {
        qhSdkClient.getClass();
        try {
            byte[] bArr = new byte[2048];
            long j = 0;
            while (true) {
                int i = qhSdkClient.mInputStream.read(bArr);
                if (i == -1) {
                    return;
                }
                String str = new String(bArr, 0, i, StandardCharsets.UTF_8);
                if (!qhSdkClient.authSuccess) {
                    LogToFile.i("header信息：" + str);
                    if (str.contains("200") || str.contains("OK")) {
                        qhSdkClient.connectSuccess = true;
                        qhSdkClient.reconnect_period = 3L;
                    }
                    if (str.contains("EXPIREEPOCH")) {
                        if (str.contains("ENCRYPTDIFF")) {
                            String[] strArrSplit = str.split("EXPIREEPOCH:");
                            Integer.parseInt(strArrSplit[0].split(":")[1].trim());
                            j = Long.parseLong(strArrSplit[1].trim());
                            long j2 = j * 1000;
                            String str2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINA).format(new Date(j2));
                            qhSdkClient.mSP.edit().putLong("corsAccountExpireEpoch", j2).apply();
                            LogToFile.i("证书有效期：" + (str2 + " (" + ((int) ((j2 - System.currentTimeMillis()) / 86400000)) + "天后)"));
                        } else if (str.contains(":")) {
                            j = Long.parseLong(str.split(":")[1].trim());
                            long j3 = j * 1000;
                            String str3 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINA).format(new Date(j3));
                            qhSdkClient.mSP.edit().putLong("corsAccountExpireEpoch", j3).apply();
                            LogToFile.i("证书有效期：" + (str3 + " (" + ((int) ((j3 - System.currentTimeMillis()) / 86400000)) + "天后)"));
                        }
                    }
                    if (str.contains("ERROR")) {
                        LogToFile.i("SDK认证失败。");
                        qhSdkClient.reconnect_period = 10L;
                        AuthResult authResult = new AuthResult(0, j, str.trim());
                        authResult.setIsInit(qhSdkClient.mConfig.isInit);
                        EventBus.getDefault().post(authResult);
                        qhSdkClient.mConfig.setIsInit(true);
                    } else if (i >= 4 && str.contains("\r\n\r\n")) {
                        LogToFile.i("SDK认证成功。");
                        qhSdkClient.authSuccess = true;
                        qhSdkClient.writeData(qhSdkClient.mGGA);
                        AuthResult authResult2 = new AuthResult(1);
                        authResult2.setIsInit(qhSdkClient.mConfig.isInit);
                        EventBus.getDefault().post(authResult2);
                        qhSdkClient.mConfig.setIsInit(true);
                    }
                } else {
                    EventBus.getDefault().post(new OrderBean(Arrays.copyOfRange(bArr, 0, i)));
                    qhSdkClient.mLatestNtripResponseTime = System.currentTimeMillis();
                }
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
            LogToFile.i("<—————— QhSdkClient disconnect() ——————>");
            ScheduledFuture<?> scheduledFuture = this.scheduledFuture;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            this.scheduledFuture = null;
            this.scheduledExecutor.shutdownNow();
            Socket socket = this.mSocket;
            if (socket != null) {
                socket.close();
            }
            OutputStream outputStream = this.mOutputStream;
            if (outputStream != null) {
                outputStream.close();
            }
            InputStream inputStream = this.mInputStream;
            if (inputStream != null) {
                inputStream.close();
            }
            ExecutorService executorService = this.executorRead;
            if (executorService != null) {
                executorService.shutdownNow();
            }
            NetworkChecker.release();
            this.connectSuccess = false;
            this.authSuccess = false;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
