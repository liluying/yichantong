package com.qianhe.yct.service;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Binder;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.YctDeviceManager;
import com.google.android.exoplayer2.util.NotificationUtil$$ExternalSyntheticApiModelOutline2;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.base.BaseConfig;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.ConnectModeEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.FrequencyEnum;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.BaseBleLogCache;
import com.qianhe.baselib.utils.BleLogCache;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.ntripclientlib.base.DiffClientImpl;
import com.qianhe.ntripclientlib.bean.AuthResult;
import com.qianhe.ntripclientlib.client.config.NtripClientConfig;
import com.qianhe.ntripclientlib.client.config.SdkClientConfig;
import com.qianhe.ntripclientlib.factory.DiffClientFactory;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.rtkclientlib.client.BluetoothClient;
import com.qianhe.rtkclientlib.event.AntennaParams;
import com.qianhe.rtkclientlib.event.BaseStatusEvent;
import com.qianhe.rtkclientlib.event.BlueData;
import com.qianhe.rtkclientlib.event.DeviceModelEvent;
import com.qianhe.rtkclientlib.event.Expiredate;
import com.qianhe.rtkclientlib.event.FeaturesEvent;
import com.qianhe.rtkclientlib.event.GnssInfo;
import com.qianhe.rtkclientlib.event.RtkInfo;
import com.qianhe.rtkclientlib.event.SensorInfoEvent;
import com.qianhe.rtkclientlib.event.Serial;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.BluetoothActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.bean.AppConfig;
import com.qianhe.yct.bean.DeviceInfo;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.enums.BluetoothActionEnum;
import com.qianhe.yct.enums.DiffActionEnum;
import com.qianhe.yct.event.AppVersionCheckEndEvent;
import com.qianhe.yct.event.BluetoothConnectActionByMacEvent;
import com.qianhe.yct.event.BluetoothConnectActionEvent;
import com.qianhe.yct.event.BluetoothConnectStateEvent;
import com.qianhe.yct.event.BluetoothScanActionEvent;
import com.qianhe.yct.event.BluetoothScanStateEvent;
import com.qianhe.yct.event.BluetoothSensorScanEvent;
import com.qianhe.yct.event.InitDataEvent;
import com.qianhe.yct.event.ReloadAppConfigEvent;
import com.qianhe.yct.event.RequestINSEvent;
import com.qianhe.yct.event.StartDemo;
import com.qianhe.yct.event.StopDemo;
import com.qianhe.yct.event.TcpClientEvent;
import com.qianhe.yct.manage.AppConfigManager;
import com.qianhe.yct.provider.NetworkLocationProvider;
import com.qianhe.yct.utils.DemoDataManager;
import com.qianhe.yct.utils.NetworkDataLoader;
import com.qianhe.yct.utils.NetworkUserLoader;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import net.lingala.zip4j.util.InternalZipConstants;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BluetoothConnectService extends Service {
    private AppConfig appConfig;
    private Socket clientSocket;
    private BaseConfig diffConfig;
    private ScheduledExecutorService diffExecutor;
    private Future<?> diffFuture;
    private boolean featuresAnswer;
    private ScheduledFuture<?> fmwFuture;
    private ScheduledExecutorService fmwVersionExecutor;
    private GGAEntity ggaEntity;
    private ScheduledFuture<?> ggaFuture;
    private boolean hasExpiredate;
    private boolean hasRtkInfo;
    private boolean isAppVersionCheckEnd;
    private boolean isBaseDataAnswer;
    private boolean isH5DataAnswer;
    private long lastScantime;
    private BluetoothClient mBluetoothBaseClient;
    private BluetoothClient mBluetoothH5Client;
    private MyBluetoothDevice mCurrentBaseDevice;
    private MyBluetoothDevice mCurrentDevice;
    private DiffClientImpl mDiffClient;
    private int mMode;
    private String mRoughCoords;
    private ServerSocket mServerSocket;
    private volatile OutputStream mSimulatorOutputStream;
    private SharedPreferences mSp;
    private MultiBluetoothManager multiBluetoothManager;
    private boolean requestSerial;
    private int scanPageIndex;
    private boolean skipBaseAutoReconnect;
    private boolean skipH5AutoReconnect;
    private boolean startCheckFmw;
    private boolean startGnssUpgrade;
    private int timerCount;
    private ScheduledFuture<?> workFuture;
    private final Map<String, MyBluetoothDevice> mDevideList = new HashMap();
    private boolean isAutoConnect = true;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final Handler scanListUiHandler = new Handler(Looper.getMainLooper());
    private final List<MyBluetoothDevice> pendingScanUiDevices = new ArrayList();
    private final Set<String> scanUiNotifiedAddresses = new HashSet();
    private final Runnable flushScanListUiRunnable = new Runnable() { // from class: com.qianhe.yct.service.BluetoothConnectService$$ExternalSyntheticLambda3
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.flushPendingScanListUi();
        }
    };
    private ScheduledExecutorService workExecutor = Executors.newSingleThreadScheduledExecutor();
    private ScheduledExecutorService ggaExecutor = Executors.newSingleThreadScheduledExecutor();
    private final ExecutorService scanExecutor = Executors.newCachedThreadPool();
    private Boolean supportH5Ntrip = null;
    private boolean startCheckH5 = true;
    private boolean startCheckBase = false;
    private final Object mSimulatorOutputLock = new Object();
    private final Object mTcpServerLock = new Object();
    private ExecutorService mTcpThreadPool = Executors.newCachedThreadPool();
    private volatile boolean isTcpServerRunning = false;
    private volatile int tcpServerGeneration = 0;
    private final LocalBinder localBinder = new LocalBinder();
    private final BroadcastReceiver localeChangeReceiver = new BroadcastReceiver() { // from class: com.qianhe.yct.service.BluetoothConnectService.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.LOCALE_CHANGED".equals(intent.getAction())) {
                BluetoothConnectService.this.updateForegroundNotification();
            }
        }
    };
    private final BroadcastReceiver bluetoothStateReceiver = new BroadcastReceiver() { // from class: com.qianhe.yct.service.BluetoothConnectService.8
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action == null || !action.equals("android.bluetooth.adapter.action.STATE_CHANGED")) {
                return;
            }
            switch (intent.getIntExtra("android.bluetooth.adapter.extra.STATE", RecyclerView.UNDEFINED_DURATION)) {
                case 10:
                    LogToFile.i("==========蓝牙已关闭==========");
                    EventBus.getDefault().post("");
                    BluetoothConnectService.this.stopScan(-1);
                    if (BluetoothConnectService.this.mCurrentDevice != null) {
                        BluetoothConnectService.this.mCurrentDevice.state = BluetoothStateEnum.DISCONNECT.getState();
                    }
                    if (BluetoothConnectService.this.mCurrentBaseDevice != null) {
                        BluetoothConnectService.this.mCurrentBaseDevice.state = BluetoothStateEnum.DISCONNECT.getState();
                    }
                    MyBluetoothDevice currentDevice = YCTApplication.getInstance().getCurrentDevice();
                    BluetoothStateEnum bluetoothStateEnum = BluetoothStateEnum.DISCONNECT;
                    currentDevice.state = bluetoothStateEnum.getState();
                    YCTApplication.getInstance().getCurrentBaseDevice().state = bluetoothStateEnum.getState();
                    EventBus.getDefault().post(new BluetoothConnectStateEvent(BluetoothConnectService.this.mCurrentDevice));
                    EventBus.getDefault().post(new BluetoothConnectStateEvent(BluetoothConnectService.this.mCurrentBaseDevice));
                    break;
                case 11:
                    LogToFile.i("==========正在开启蓝牙==========");
                    break;
                case 12:
                    LogToFile.i("==========蓝牙已开启==========");
                    BluetoothConnectService.this.isAutoConnect = true;
                    BluetoothConnectService.this.startScan();
                    break;
            }
        }
    };
    private final BluetoothClient.OnDeviceScanListener scanListener = new BluetoothClient.OnDeviceScanListener() { // from class: com.qianhe.yct.service.BluetoothConnectService.10
        @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnDeviceScanListener
        public void onDeviceScan(MyBluetoothDevice myBluetoothDevice) {
            String displayName = myBluetoothDevice.getDisplayName();
            if (TextUtils.isEmpty(displayName) || !displayName.matches("^[WZ].*")) {
                return;
            }
            String address = myBluetoothDevice.bluetoothDevice.getAddress();
            if (!TextUtils.isEmpty(address)) {
                BluetoothConnectService.this.mDevideList.put(address, myBluetoothDevice);
            }
            BluetoothConnectService.this.queueScanListUiUpdate(myBluetoothDevice);
            String string = BluetoothConnectService.this.mSp.getString("latestDeviceAddress", "");
            SharedPreferences sharedPreferences = BluetoothConnectService.this.mSp;
            ConnectModeEnum connectModeEnum = ConnectModeEnum.BLE;
            int i = sharedPreferences.getInt("mode", connectModeEnum.getType());
            if (!BluetoothConnectService.this.skipH5AutoReconnect && string.equals(myBluetoothDevice.bluetoothDevice.getAddress()) && BluetoothConnectService.this.isAutoConnect && i == connectModeEnum.getType() && !BluetoothConnectService.this.isDeviceManagementForeground()) {
                myBluetoothDevice.deviceType = DeviceType.ZPY;
                BluetoothConnectService.this.connect(myBluetoothDevice);
            }
        }

        @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnDeviceScanListener
        public void onScanFinished() {
            LogToFile.i("扫描结束。");
            BluetoothConnectService.this.isAutoConnect = true;
            BluetoothConnectService.this.flushPendingScanListUi();
            EventBus.getDefault().post(new BluetoothScanStateEvent(new MyBluetoothDevice(BluetoothStateEnum.SCAN_FINISHED.getState()), -1));
        }

        @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnDeviceScanListener
        public void onScanFail() {
            LogToFile.i("扫描失败。");
            BluetoothConnectService.this.isAutoConnect = true;
            EventBus.getDefault().post(new BluetoothScanStateEvent(new MyBluetoothDevice(BluetoothStateEnum.SCAN_FAIL.getState()), -1));
        }

        @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnDeviceScanListener
        public void cancelBond(BluetoothDevice bluetoothDevice) {
            MyBluetoothDevice myBluetoothDevice = new MyBluetoothDevice(bluetoothDevice);
            if (bluetoothDevice != null) {
                MyBluetoothDevice myBluetoothDeviceFindScannedDevice = BluetoothConnectService.this.findScannedDevice(bluetoothDevice.getAddress());
                if (myBluetoothDeviceFindScannedDevice != null) {
                    myBluetoothDevice.deviceType = myBluetoothDeviceFindScannedDevice.deviceType;
                    myBluetoothDevice.mergeDisplayNameFrom(myBluetoothDeviceFindScannedDevice);
                } else {
                    myBluetoothDevice.deviceType = BluetoothConnectService.this.multiBluetoothManager.getDeviceType(bluetoothDevice.getName(), "");
                }
            }
            myBluetoothDevice.state = BluetoothStateEnum.CANCEL_BOND.getState();
            EventBus.getDefault().post(new BluetoothConnectStateEvent(myBluetoothDevice));
        }

        @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnDeviceScanListener
        public void onBonding(BluetoothDevice bluetoothDevice) {
            MyBluetoothDevice myBluetoothDevice = new MyBluetoothDevice(bluetoothDevice);
            myBluetoothDevice.state = BluetoothStateEnum.BONDING.getState();
            EventBus.getDefault().post(new BluetoothConnectStateEvent(myBluetoothDevice));
        }
    };

    public class LocalBinder extends Binder {
        public LocalBinder() {
        }

        public BluetoothConnectService getService() {
            return BluetoothConnectService.this;
        }
    }

    @Override // android.app.Service, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(LanguagePrefs.wrapContext(context));
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.localBinder;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        LogToFile.i("================BluetoothConnectService onCreate()==================");
        EventBus.getDefault().register(this);
        if (Build.VERSION.SDK_INT >= 26) {
            ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(NotificationUtil$$ExternalSyntheticApiModelOutline2.m("BluetoothConnectService", "Service Channel", 4));
        }
        updateForegroundNotification();
        registerReceiver(this.localeChangeReceiver, new IntentFilter("android.intent.action.LOCALE_CHANGED"));
        SharedPreferences sharedPreferences = getSharedPreferences("sp", 0);
        this.mSp = sharedPreferences;
        ConnectModeEnum connectModeEnum = ConnectModeEnum.BLE;
        this.mMode = sharedPreferences.getInt("mode", connectModeEnum.getType());
        MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(this);
        this.multiBluetoothManager = multiBluetoothManager;
        this.mBluetoothH5Client = multiBluetoothManager.getBluetoothClient(DeviceType.ZPY);
        this.mBluetoothBaseClient = this.multiBluetoothManager.getBluetoothClient(DeviceType.BASE);
        registerReceiver(this.bluetoothStateReceiver, new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED"));
        if (this.mMode == connectModeEnum.getType()) {
            LogToFile.i("<———————— 蓝牙模式 ————————>");
            openBluetooth();
        } else if (this.mMode == ConnectModeEnum.DEMO.getType()) {
            LogToFile.i("<———————— 开启演示模式 ————————>");
            DatabaseManager.getInstance(this).ensureLocalDefaultEngineering();
            LogToFile.i("读取配置文件");
            this.appConfig = ((YCTApplication) getApplicationContext()).getAppConfig();
            DemoDataManager.getInstance().startDemoExtcutor(1);
            YCTApplication.getInstance().setIsH5ProDemo(true);
            startTcpServer();
        }
        requestRoughNetworkLocation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestRoughNetworkLocation() {
        NetworkLocationProvider.getInstance().getNetworkLocation(this, new NetworkLocationProvider.LocationCallback() { // from class: com.qianhe.yct.service.BluetoothConnectService.1
            @Override // com.qianhe.yct.provider.NetworkLocationProvider.LocationCallback
            public void onLocationReceived(double d, double d2, double d3, float f, String str) {
                BluetoothConnectService.this.applyRoughCoords(d, d2, d3, str);
            }

            @Override // com.qianhe.yct.provider.NetworkLocationProvider.LocationCallback
            public void onLocationFailed(String str) {
                LogToFile.e(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyRoughCoords(double d, double d2, double d3, String str) {
        if (d == 0.0d && d2 == 0.0d) {
            return;
        }
        String str2 = d2 + "," + d + "," + d3;
        this.mSp.edit().putString("current_coords", str2).apply();
        LogToFile.i("当前设备坐标(" + str + ")：" + str2);
    }

    private void startTcpServer() {
        ServerSocket serverSocket;
        synchronized (this.mTcpServerLock) {
            try {
                if (this.isTcpServerRunning && (serverSocket = this.mServerSocket) != null && !serverSocket.isClosed()) {
                    LogToFile.i("TCP服务已在运行: 1234");
                    return;
                }
                stopTcpServerInternal();
                ensureTcpThreadPool();
                final int i = this.tcpServerGeneration;
                this.mTcpThreadPool.execute(new Runnable() { // from class: com.qianhe.yct.service.BluetoothConnectService$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() throws InterruptedException, IOException {
                        this.f$0.runTcpServer(i);
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void ensureTcpThreadPool() {
        ExecutorService executorService = this.mTcpThreadPool;
        if (executorService == null || executorService.isShutdown()) {
            this.mTcpThreadPool = Executors.newCachedThreadPool();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runTcpServer(int i) throws InterruptedException, IOException {
        ServerSocket serverSocketCreateReuseServerSocket;
        for (int i2 = 1; i2 <= 5 && i == this.tcpServerGeneration; i2++) {
            try {
                serverSocketCreateReuseServerSocket = createReuseServerSocket(1234);
                try {
                } catch (IOException e) {
                    e = e;
                }
            } catch (IOException e2) {
                e = e2;
                serverSocketCreateReuseServerSocket = null;
            }
            synchronized (this.mTcpServerLock) {
                try {
                    if (i != this.tcpServerGeneration) {
                        closeQuietly(serverSocketCreateReuseServerSocket);
                        return;
                    }
                    this.mServerSocket = serverSocketCreateReuseServerSocket;
                    this.isTcpServerRunning = true;
                    LogToFile.i("TCP服务启动: 1234");
                    while (this.isTcpServerRunning && !serverSocketCreateReuseServerSocket.isClosed()) {
                        try {
                            final Socket socketAccept = serverSocketCreateReuseServerSocket.accept();
                            synchronized (this.mTcpServerLock) {
                                closeQuietly(this.clientSocket);
                                this.clientSocket = socketAccept;
                            }
                            String hostAddress = socketAccept.getInetAddress().getHostAddress();
                            LogToFile.i("TCP客户端已连接: " + hostAddress);
                            EventBus.getDefault().post(new TcpClientEvent(true, hostAddress));
                            synchronized (this.mSimulatorOutputLock) {
                                this.mSimulatorOutputStream = socketAccept.getOutputStream();
                            }
                            this.multiBluetoothManager.getBluetoothClient(DeviceType.ZPY).receiveSimulatorData(new BluetoothClient.SimulatorSendCallback() { // from class: com.qianhe.yct.service.BluetoothConnectService$$ExternalSyntheticLambda4
                                @Override // com.qianhe.rtkclientlib.client.BluetoothClient.SimulatorSendCallback
                                public final void sendToSimulator(byte[] bArr, boolean z) {
                                    this.f$0.sendDataToSimulator(bArr, z);
                                }
                            });
                            DemoDataManager.getInstance().release();
                            if (this.appConfig == null) {
                                this.appConfig = AppConfigManager.getInstance().getAppConfig();
                                YCTApplication.getInstance().setAppConfig(this.appConfig);
                            }
                            ensureTcpThreadPool();
                            this.mTcpThreadPool.execute(new Runnable() { // from class: com.qianhe.yct.service.BluetoothConnectService$$ExternalSyntheticLambda5
                                @Override // java.lang.Runnable
                                public final void run() throws Throwable {
                                    this.f$0.handleClientRequest(socketAccept);
                                }
                            });
                        } catch (IOException e3) {
                            if (this.isTcpServerRunning && !serverSocketCreateReuseServerSocket.isClosed()) {
                                LogToFile.e("TCP accept异常: " + e3.getMessage());
                            }
                            return;
                        }
                    }
                    return;
                } finally {
                }
                e = e;
                closeQuietly(serverSocketCreateReuseServerSocket);
                synchronized (this.mTcpServerLock) {
                    try {
                        if (this.mServerSocket == serverSocketCreateReuseServerSocket) {
                            this.mServerSocket = null;
                        }
                        this.isTcpServerRunning = false;
                    } finally {
                    }
                }
                if (i != this.tcpServerGeneration) {
                    return;
                }
                if (!isAddressInUse(e) || i2 >= 5) {
                    LogToFile.e("TCP服务异常: " + e.getMessage());
                    return;
                }
                LogToFile.i("TCP端口占用，500ms后重试(" + i2 + InternalZipConstants.ZIP_FILE_SEPARATOR + "5)");
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    return;
                }
            }
        }
    }

    private ServerSocket createReuseServerSocket(int i) throws IOException {
        ServerSocket serverSocket = new ServerSocket();
        serverSocket.setReuseAddress(true);
        serverSocket.bind(new InetSocketAddress(i));
        return serverSocket;
    }

    private boolean isAddressInUse(IOException iOException) {
        String message = iOException.getMessage();
        if (message != null) {
            return message.contains("EADDRINUSE") || message.contains("Address already in use");
        }
        return false;
    }

    private void closeQuietly(ServerSocket serverSocket) throws IOException {
        if (serverSocket == null || serverSocket.isClosed()) {
            return;
        }
        try {
            serverSocket.close();
        } catch (IOException e) {
            LogToFile.e("关闭TCP服务失败: " + e.getMessage());
        }
    }

    private void closeQuietly(Socket socket) throws IOException {
        if (socket == null || socket.isClosed()) {
            return;
        }
        try {
            socket.close();
        } catch (IOException e) {
            LogToFile.e("关闭TCP客户端失败: " + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendDataToSimulator(final byte[] bArr, final boolean z) {
        ExecutorService executorService;
        if (bArr == null || bArr.length == 0 || (executorService = this.mTcpThreadPool) == null || executorService.isShutdown()) {
            return;
        }
        this.mTcpThreadPool.execute(new Runnable() { // from class: com.qianhe.yct.service.BluetoothConnectService$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                BluetoothConnectService.$r8$lambda$EVOlvESWeHBDRE_4nlf1WkG53_A(this.f$0, z, bArr);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$EVOlvESWeHBDRE_4nlf1WkG53_A(BluetoothConnectService bluetoothConnectService, boolean z, byte[] bArr) {
        synchronized (bluetoothConnectService.mSimulatorOutputLock) {
            OutputStream outputStream = bluetoothConnectService.mSimulatorOutputStream;
            if (outputStream == null) {
                return;
            }
            try {
                if (z) {
                    byte[] bArr2 = new byte[bArr.length + 2];
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    bArr2[bArr.length] = 13;
                    bArr2[bArr.length + 1] = 10;
                    outputStream.write(bArr2);
                } else {
                    outputStream.write(bArr);
                }
                outputStream.flush();
            } catch (IOException e) {
                LogToFile.e("TCP发送模拟器数据失败: " + e.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0075 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handleClientRequest(java.net.Socket r7) throws java.lang.Throwable {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
            java.io.InputStream r2 = r7.getInputStream()     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3c
            r3 = 1024(0x400, float:1.435E-42)
            byte[] r3 = new byte[r3]     // Catch: java.lang.Throwable -> L19 java.io.IOException -> L1b
        La:
            int r4 = r2.read(r3)     // Catch: java.lang.Throwable -> L19 java.io.IOException -> L1b
            r5 = -1
            if (r4 == r5) goto L1d
            com.qh.yctdevice.YctDevice r5 = com.YctDeviceManager.getInstanceH5()     // Catch: java.lang.Throwable -> L19 java.io.IOException -> L1b
            r5.inputStream(r3, r4)     // Catch: java.lang.Throwable -> L19 java.io.IOException -> L1b
            goto La
        L19:
            r3 = move-exception
            goto L72
        L1b:
            r3 = move-exception
            goto L3e
        L1d:
            java.lang.Object r3 = r6.mSimulatorOutputLock
            monitor-enter(r3)
            r6.mSimulatorOutputStream = r1     // Catch: java.lang.Throwable -> L36
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L36
            r2.close()     // Catch: java.io.IOException -> L26
        L26:
            r7.close()     // Catch: java.io.IOException -> L29
        L29:
            org.greenrobot.eventbus.EventBus r7 = org.greenrobot.eventbus.EventBus.getDefault()
            com.qianhe.yct.event.TcpClientEvent r2 = new com.qianhe.yct.event.TcpClientEvent
            r2.<init>(r0, r1)
        L32:
            r7.post(r2)
            goto L6e
        L36:
            r7 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L36
            throw r7
        L39:
            r3 = move-exception
            r2 = r1
            goto L72
        L3c:
            r3 = move-exception
            r2 = r1
        L3e:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L19
            r4.<init>()     // Catch: java.lang.Throwable -> L19
            java.lang.String r5 = "TCP客户端连接丢失: "
            r4.append(r5)     // Catch: java.lang.Throwable -> L19
            java.lang.String r3 = r3.getMessage()     // Catch: java.lang.Throwable -> L19
            r4.append(r3)     // Catch: java.lang.Throwable -> L19
            java.lang.String r3 = r4.toString()     // Catch: java.lang.Throwable -> L19
            com.qianhe.baselib.utils.LogToFile.e(r3)     // Catch: java.lang.Throwable -> L19
            java.lang.Object r3 = r6.mSimulatorOutputLock
            monitor-enter(r3)
            r6.mSimulatorOutputStream = r1     // Catch: java.lang.Throwable -> L6f
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6f
            if (r2 == 0) goto L61
            r2.close()     // Catch: java.io.IOException -> L61
        L61:
            r7.close()     // Catch: java.io.IOException -> L64
        L64:
            org.greenrobot.eventbus.EventBus r7 = org.greenrobot.eventbus.EventBus.getDefault()
            com.qianhe.yct.event.TcpClientEvent r2 = new com.qianhe.yct.event.TcpClientEvent
            r2.<init>(r0, r1)
            goto L32
        L6e:
            return
        L6f:
            r7 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6f
            throw r7
        L72:
            java.lang.Object r4 = r6.mSimulatorOutputLock
            monitor-enter(r4)
            r6.mSimulatorOutputStream = r1     // Catch: java.lang.Throwable -> L8d
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L8d
            if (r2 == 0) goto L7d
            r2.close()     // Catch: java.io.IOException -> L7d
        L7d:
            r7.close()     // Catch: java.io.IOException -> L80
        L80:
            org.greenrobot.eventbus.EventBus r7 = org.greenrobot.eventbus.EventBus.getDefault()
            com.qianhe.yct.event.TcpClientEvent r2 = new com.qianhe.yct.event.TcpClientEvent
            r2.<init>(r0, r1)
            r7.post(r2)
            throw r3
        L8d:
            r7 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L8d
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.service.BluetoothConnectService.handleClientRequest(java.net.Socket):void");
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        updateForegroundNotification();
        return 1;
    }

    private Notification buildForegroundNotification() {
        Notification.Builder builder;
        Context contextWrapContext = LanguagePrefs.wrapContext(this);
        if (Build.VERSION.SDK_INT >= 26) {
            builder = BluetoothConnectService$$ExternalSyntheticApiModelOutline1.m(this, "BluetoothConnectService");
        } else {
            builder = new Notification.Builder(this);
        }
        return builder.setContentTitle(contextWrapContext.getString(R$string.service_running)).setContentText(contextWrapContext.getString(R$string.using_bluetooth_device)).setSmallIcon(R$drawable.icon_about_app_zh).setPriority(2).setOngoing(true).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateForegroundNotification() {
        if (Build.VERSION.SDK_INT >= 26) {
            startForeground(1001, buildForegroundNotification());
        }
    }

    @SuppressLint({"MissingPermission"})
    private void openBluetooth() {
        if (!this.mBluetoothH5Client.isBluetoothEnabled()) {
            this.mBluetoothH5Client.openBluetooth(this);
        } else {
            if (TextUtils.isEmpty(this.mSp.getString("latestDeviceAddress", ""))) {
                return;
            }
            startScan();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(RequestINSEvent requestINSEvent) throws JSONException {
        if (requestINSEvent.interval != FrequencyEnum.AUTO.getFrequency()) {
            EventBus.getDefault().post(new OrderBean(requestINSEvent.deviceType, "LOG,INS.NAVI,ONTIME," + requestINSEvent.interval));
        } else {
            EventBus.getDefault().post(new OrderBean(requestINSEvent.deviceType, "LOG,INS.NAVI,ONTIME," + FrequencyEnum.HZ_5.getFrequency()));
        }
        AppConfigManager.getInstance().setInsInterval(requestINSEvent.interval);
        AppConfigManager.getInstance().setInsUnavailableCount((int) Math.ceil((1.0f / requestINSEvent.interval) * 2.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connect(MyBluetoothDevice myBluetoothDevice) {
        BluetoothDevice bluetoothDevice;
        String str;
        MyBluetoothDevice myBluetoothDevice2;
        MyBluetoothDevice connectedDevice;
        BluetoothDevice bluetoothDevice2;
        if (myBluetoothDevice == null || (bluetoothDevice = myBluetoothDevice.bluetoothDevice) == null) {
            return;
        }
        BluetoothDevice bluetoothDeviceResolveBondedDeviceByAddress = resolveBondedDeviceByAddress(bluetoothDevice.getAddress());
        if (bluetoothDeviceResolveBondedDeviceByAddress != null) {
            myBluetoothDevice.bluetoothDevice = bluetoothDeviceResolveBondedDeviceByAddress;
        }
        String displayName = myBluetoothDevice.getDisplayName();
        StringBuilder sb = new StringBuilder();
        sb.append("开始连接蓝牙设备：");
        sb.append(displayName);
        if (bluetoothDeviceResolveBondedDeviceByAddress != null) {
            str = "（已配对地址直连 " + bluetoothDeviceResolveBondedDeviceByAddress.getAddress() + "）";
        } else {
            str = "";
        }
        sb.append(str);
        LogToFile.i(sb.toString());
        if (TextUtils.isEmpty(displayName)) {
            return;
        }
        final DeviceType deviceType = myBluetoothDevice.deviceType;
        if (deviceType == null || deviceType == DeviceType.NONE) {
            deviceType = this.multiBluetoothManager.getDeviceType(displayName, "");
        }
        if (deviceType == null || deviceType == DeviceType.NONE) {
            LogToFile.e("无法识别设备类型：" + displayName);
            return;
        }
        LogToFile.i("设备类型：" + deviceType.getType());
        BluetoothClient bluetoothClient = this.multiBluetoothManager.getBluetoothClient(deviceType);
        MyBluetoothDevice connectedDevice2 = this.multiBluetoothManager.getConnectedDevice(deviceType);
        if (connectedDevice2 != null && (bluetoothDevice2 = connectedDevice2.bluetoothDevice) != null && bluetoothDevice2.getAddress().equalsIgnoreCase(myBluetoothDevice.bluetoothDevice.getAddress()) && bluetoothClient != null && bluetoothClient.isSocketConnected()) {
            LogToFile.i("设备已连接，跳过重复 connect: " + myBluetoothDevice.bluetoothDevice.getAddress());
            connectedDevice2.state = BluetoothStateEnum.CONNECTED.getState();
            EventBus.getDefault().post(new BluetoothConnectStateEvent(connectedDevice2));
            return;
        }
        DeviceType deviceType2 = DeviceType.ZPY;
        if (deviceType == deviceType2) {
            releaseDiffClient("切换找平仪");
        }
        BluetoothStateEnum bluetoothStateEnum = BluetoothStateEnum.STARTCONNECT;
        myBluetoothDevice.state = bluetoothStateEnum.getState();
        myBluetoothDevice.deviceType = deviceType;
        if (deviceType == deviceType2) {
            MyBluetoothDevice myBluetoothDevice3 = this.mCurrentDevice;
            if (myBluetoothDevice3 != null) {
                myBluetoothDevice3.state = bluetoothStateEnum.getState();
            }
        } else if (deviceType == DeviceType.BASE && (myBluetoothDevice2 = this.mCurrentBaseDevice) != null) {
            myBluetoothDevice2.state = bluetoothStateEnum.getState();
        }
        this.multiBluetoothManager.connectDevice(myBluetoothDevice, deviceType, new BluetoothClient.OnConnectionStateChangedListener() { // from class: com.qianhe.yct.service.BluetoothConnectService.3
            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnConnectionStateChangedListener
            public void onConnected(BluetoothDevice bluetoothDevice3) throws IOException {
                YCTApplication.getInstance().setCheckFmwUpgrade(false);
                BluetoothConnectService.this.startGnssUpgrade = false;
                BluetoothConnectService.this.mSp.edit().putInt("mode", ConnectModeEnum.BLE.getType()).commit();
                DeviceType deviceType3 = deviceType;
                if (deviceType3 == null || deviceType3 == DeviceType.NONE) {
                    deviceType3 = BluetoothConnectService.this.multiBluetoothManager.getDeviceType(bluetoothDevice3.getName(), "");
                }
                MyBluetoothDevice connectedDevice3 = BluetoothConnectService.this.multiBluetoothManager.getConnectedDevice(deviceType3);
                if (connectedDevice3 == null) {
                    LogToFile.i("connectedDevice = null，使用回调设备补发已连接状态");
                    connectedDevice3 = new MyBluetoothDevice(bluetoothDevice3, deviceType3);
                }
                connectedDevice3.state = BluetoothStateEnum.CONNECTED.getState();
                connectedDevice3.deviceType = deviceType3;
                if (connectedDevice3.bluetoothDevice == null) {
                    connectedDevice3.bluetoothDevice = bluetoothDevice3;
                }
                DeviceType deviceType4 = DeviceType.ZPY;
                if (deviceType3 == deviceType4) {
                    DatabaseManager.prepareCurrentEngineeringForCoordConvert(BluetoothConnectService.this);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("当前工程：");
                    sb2.append(GnssCoordConvertManager.getInstance().getCurrentEngineering() != null ? GnssCoordConvertManager.getInstance().getCurrentEngineering().toString() : "");
                    LogToFile.i(sb2.toString());
                    BluetoothConnectService.this.supportH5Ntrip = null;
                    BluetoothConnectService.this.mSp.edit().putBoolean("SUPPORT_NTRIP", false).apply();
                    BluetoothConnectService bluetoothConnectService = BluetoothConnectService.this;
                    bluetoothConnectService.mBluetoothH5Client = bluetoothConnectService.multiBluetoothManager.getBluetoothClient(connectedDevice3.deviceType);
                    YCTApplication.getInstance().setCurrentDevice(connectedDevice3);
                    BluetoothConnectService.this.startCheckH5 = true;
                    if (BluetoothConnectService.this.multiBluetoothManager.getAllConnectedDevices().size() == 1) {
                        BluetoothConnectService.this.startCheckBase = false;
                    }
                } else if (deviceType3 == DeviceType.BASE) {
                    BluetoothConnectService.this.startCheckBase = true;
                    if (BluetoothConnectService.this.multiBluetoothManager.getAllConnectedDevices().size() == 1) {
                        BluetoothConnectService.this.startCheckH5 = false;
                    }
                    BluetoothConnectService bluetoothConnectService2 = BluetoothConnectService.this;
                    bluetoothConnectService2.mBluetoothBaseClient = bluetoothConnectService2.multiBluetoothManager.getBluetoothClient(connectedDevice3.deviceType);
                    YCTApplication.getInstance().setCurrentBaseDevice(connectedDevice3);
                }
                LogToFile.i("已连接到设备 -> " + bluetoothDevice3.getName() + "， 当前连接数：" + BluetoothConnectService.this.multiBluetoothManager.getAllConnectedDevices().size());
                BluetoothConnectService.this.timerCount = 0;
                BluetoothConnectService.this.startCheckFmw = false;
                DeviceType deviceType5 = connectedDevice3.deviceType;
                if (deviceType5 == deviceType4) {
                    BluetoothConnectService.this.skipH5AutoReconnect = false;
                    BluetoothConnectService.this.mCurrentDevice = connectedDevice3;
                    BluetoothConnectService.this.mSp.edit().putString("latestDeviceAddress", BluetoothConnectService.this.mCurrentDevice.bluetoothDevice.getAddress()).apply();
                    BluetoothConnectService.this.mSp.edit().putString("deviceSn", BluetoothConnectService.this.mCurrentDevice.bluetoothDevice.getName()).commit();
                } else if (deviceType5 == DeviceType.BASE) {
                    BluetoothConnectService.this.skipBaseAutoReconnect = false;
                    BaseBleLogCache.init(BluetoothConnectService.this);
                    BluetoothConnectService.this.mCurrentBaseDevice = connectedDevice3;
                }
                if (BluetoothConnectService.this.multiBluetoothManager.isH5OrOnlyone(connectedDevice3.deviceType)) {
                    LogToFile.i("读取配置文件");
                    BluetoothConnectService.this.appConfig = AppConfigManager.getInstance().getAppConfig();
                    YCTApplication.getInstance().setAppConfig(BluetoothConnectService.this.appConfig);
                    BluetoothConnectService.this.startWorkTimer();
                    BluetoothConnectService.this.requestRoughNetworkLocation();
                }
                EventBus.getDefault().post(new BluetoothConnectStateEvent(connectedDevice3));
                EventBus.getDefault().post(new ReloadAppConfigEvent(connectedDevice3.deviceType, BluetoothConnectService.this.appConfig));
                BluetoothConnectService.this.requestSerial = true;
            }

            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnConnectionStateChangedListener
            public void onDisconnected(DeviceType deviceType3) {
                BluetoothClient bluetoothClient2 = BluetoothConnectService.this.multiBluetoothManager.getBluetoothClient(deviceType3);
                if (bluetoothClient2 != null && bluetoothClient2.isBonding()) {
                    LogToFile.i("配对进行中，忽略旧连接断开");
                    return;
                }
                LogToFile.i("与" + deviceType3 + "蓝牙设备断开连接 -> 当前连接数：" + BluetoothConnectService.this.multiBluetoothManager.getAllConnectedDevices().size());
                if (deviceType3 == DeviceType.ZPY) {
                    YCTApplication.getInstance().reset();
                    BluetoothConnectService.this.isH5DataAnswer = false;
                    BluetoothConnectService.this.timerCount = 1;
                    BluetoothConnectService.this.diffConfig = null;
                    BluetoothConnectService.this.diffExecutor = null;
                    BluetoothConnectService.this.mRoughCoords = "";
                    BluetoothConnectService.this.mSp.edit().putString("current_coords", BluetoothConnectService.this.mRoughCoords).apply();
                    BluetoothConnectService.this.supportH5Ntrip = null;
                    BluetoothConnectService.this.mSp.edit().putBoolean("SUPPORT_NTRIP", false).apply();
                    AppConfigManager.getInstance().release();
                    BluetoothConnectService.this.releaseDiffClient("找平仪断开");
                    BluetoothConnectService.this.stopFmwVersionTimer();
                    if (BluetoothConnectService.this.mCurrentDevice != null) {
                        BluetoothConnectService.this.mCurrentDevice.state = BluetoothStateEnum.DISCONNECT.getState();
                    } else {
                        BluetoothConnectService.this.multiBluetoothManager.stopAutoReconnect();
                    }
                    YCTApplication.getInstance().getCurrentDevice().state = BluetoothStateEnum.DISCONNECT.getState();
                    EventBus.getDefault().post(new BluetoothConnectStateEvent(BluetoothConnectService.this.mCurrentDevice != null ? BluetoothConnectService.this.mCurrentDevice : new MyBluetoothDevice((BluetoothDevice) null, deviceType3)));
                } else {
                    DeviceType deviceType4 = DeviceType.BASE;
                    if (deviceType3 == deviceType4) {
                        BluetoothConnectService.this.isBaseDataAnswer = false;
                        if (BluetoothConnectService.this.mCurrentBaseDevice != null) {
                            BluetoothConnectService.this.mCurrentBaseDevice.state = BluetoothStateEnum.DISCONNECT.getState();
                        } else {
                            BluetoothConnectService.this.mCurrentBaseDevice = new MyBluetoothDevice(BluetoothStateEnum.DISCONNECT.getState(), deviceType4);
                        }
                        YCTApplication.getInstance().getCurrentBaseDevice().state = BluetoothStateEnum.DISCONNECT.getState();
                        EventBus.getDefault().post(new BluetoothConnectStateEvent(BluetoothConnectService.this.mCurrentBaseDevice));
                    }
                }
                if (BluetoothConnectService.this.multiBluetoothManager.getAllConnectedDevices().isEmpty()) {
                    BluetoothConnectService.this.stopWorkTimer();
                } else {
                    BluetoothConnectService.this.startWorkTimer();
                }
            }

            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnConnectionStateChangedListener
            public void onConnectionFailed(String str2) {
                LogToFile.i("蓝牙连接失败: " + str2);
                DeviceType deviceType3 = deviceType;
                if (deviceType3 == DeviceType.ZPY) {
                    if (BluetoothConnectService.this.mCurrentDevice == null) {
                        BluetoothConnectService.this.mCurrentDevice = new MyBluetoothDevice();
                    }
                    BluetoothConnectService.this.mCurrentDevice.state = BluetoothStateEnum.CONNECT_FAILED.getState();
                    EventBus.getDefault().post(new BluetoothConnectStateEvent(BluetoothConnectService.this.mCurrentDevice));
                    return;
                }
                if (deviceType3 == DeviceType.BASE) {
                    if (BluetoothConnectService.this.mCurrentBaseDevice == null) {
                        BluetoothConnectService.this.mCurrentBaseDevice = new MyBluetoothDevice();
                    }
                    BluetoothConnectService.this.mCurrentBaseDevice.state = BluetoothStateEnum.CONNECT_FAILED.getState();
                    EventBus.getDefault().post(new BluetoothConnectStateEvent(BluetoothConnectService.this.mCurrentBaseDevice));
                }
            }

            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnConnectionStateChangedListener
            public void onSocketClosed(String str2) {
                BluetoothClient bluetoothClient2 = BluetoothConnectService.this.multiBluetoothManager.getBluetoothClient(deviceType);
                if (bluetoothClient2 != null && bluetoothClient2.isBonding()) {
                    LogToFile.i("配对进行中，忽略旧连接 socket 关闭");
                    return;
                }
                LogToFile.i("socket关闭(或被其他设备抢占): " + str2);
                if (bluetoothClient2 == null || !bluetoothClient2.keepReconnectOnSocketClose()) {
                    BluetoothConnectService.this.multiBluetoothManager.stopAutoReconnect();
                }
                DeviceType deviceType3 = deviceType;
                if (deviceType3 == DeviceType.ZPY) {
                    YCTApplication.getInstance().reset();
                    BluetoothConnectService.this.isH5DataAnswer = false;
                    BluetoothConnectService.this.timerCount = 1;
                    BluetoothConnectService.this.diffConfig = null;
                    BluetoothConnectService.this.diffExecutor = null;
                    BluetoothConnectService.this.mRoughCoords = "";
                    BluetoothConnectService.this.mSp.edit().putString("current_coords", BluetoothConnectService.this.mRoughCoords).apply();
                    BluetoothConnectService.this.supportH5Ntrip = null;
                    BluetoothConnectService.this.mSp.edit().putBoolean("SUPPORT_NTRIP", false).apply();
                    AppConfigManager.getInstance().release();
                    BluetoothConnectService.this.releaseDiffClient("找平仪 socket 关闭");
                    BluetoothConnectService.this.stopFmwVersionTimer();
                    if (BluetoothConnectService.this.mCurrentDevice != null) {
                        BluetoothConnectService.this.mCurrentDevice.state = BluetoothStateEnum.SOCKET_CLOSE.getState();
                    } else {
                        BluetoothConnectService.this.mCurrentDevice = new MyBluetoothDevice((BluetoothDevice) null, deviceType);
                        BluetoothConnectService.this.mCurrentDevice.state = BluetoothStateEnum.SOCKET_CLOSE.getState();
                    }
                    YCTApplication.getInstance().getCurrentDevice().state = BluetoothStateEnum.SOCKET_CLOSE.getState();
                    EventBus.getDefault().post(new BluetoothConnectStateEvent(BluetoothConnectService.this.mCurrentDevice));
                } else {
                    DeviceType deviceType4 = DeviceType.BASE;
                    if (deviceType3 == deviceType4) {
                        BluetoothConnectService.this.isBaseDataAnswer = false;
                        if (BluetoothConnectService.this.mCurrentBaseDevice != null) {
                            BluetoothConnectService.this.mCurrentBaseDevice.state = BluetoothStateEnum.SOCKET_CLOSE.getState();
                        } else {
                            BluetoothConnectService.this.mCurrentBaseDevice = new MyBluetoothDevice(BluetoothStateEnum.SOCKET_CLOSE.getState(), deviceType4);
                        }
                        YCTApplication.getInstance().getCurrentBaseDevice().state = BluetoothStateEnum.SOCKET_CLOSE.getState();
                        EventBus.getDefault().post(new BluetoothConnectStateEvent(BluetoothConnectService.this.mCurrentBaseDevice));
                    }
                }
                if (BluetoothConnectService.this.multiBluetoothManager.getAllConnectedDevices().isEmpty()) {
                    BluetoothConnectService.this.stopWorkTimer();
                } else {
                    BluetoothConnectService.this.startWorkTimer();
                }
            }

            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnConnectionStateChangedListener
            public void onBond(BluetoothDevice bluetoothDevice3) {
                MyBluetoothDevice myBluetoothDeviceSyncCurrentDevice = BluetoothConnectService.this.syncCurrentDevice(deviceType, bluetoothDevice3);
                myBluetoothDeviceSyncCurrentDevice.state = BluetoothStateEnum.START_BOND.getState();
                EventBus.getDefault().post(new BluetoothConnectStateEvent(myBluetoothDeviceSyncCurrentDevice));
            }

            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnConnectionStateChangedListener
            public void onBondCompleted(BluetoothDevice bluetoothDevice3) {
                MyBluetoothDevice myBluetoothDeviceSyncCurrentDevice = BluetoothConnectService.this.syncCurrentDevice(deviceType, bluetoothDevice3);
                myBluetoothDeviceSyncCurrentDevice.state = BluetoothStateEnum.STARTCONNECT.getState();
                EventBus.getDefault().post(new BluetoothConnectStateEvent(myBluetoothDeviceSyncCurrentDevice));
            }

            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnConnectionStateChangedListener
            public void onBondCancelled(BluetoothDevice bluetoothDevice3) {
                MyBluetoothDevice myBluetoothDeviceSyncCurrentDevice = BluetoothConnectService.this.syncCurrentDevice(deviceType, bluetoothDevice3);
                myBluetoothDeviceSyncCurrentDevice.state = BluetoothStateEnum.CANCEL_BOND.getState();
                if (deviceType == DeviceType.ZPY) {
                    YCTApplication.getInstance().setCurrentDevice(myBluetoothDeviceSyncCurrentDevice);
                } else {
                    YCTApplication.getInstance().setCurrentBaseDevice(myBluetoothDeviceSyncCurrentDevice);
                }
                EventBus.getDefault().post(new BluetoothConnectStateEvent(myBluetoothDeviceSyncCurrentDevice));
            }
        });
        BluetoothClient bluetoothClient2 = this.multiBluetoothManager.getBluetoothClient(deviceType);
        if (bluetoothClient2 != null && bluetoothClient2.isSocketConnected() && (connectedDevice = this.multiBluetoothManager.getConnectedDevice(deviceType)) != null) {
            connectedDevice.state = BluetoothStateEnum.CONNECTED.getState();
            EventBus.getDefault().post(new BluetoothConnectStateEvent(connectedDevice));
        } else {
            EventBus.getDefault().post(new BluetoothConnectStateEvent(myBluetoothDevice));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(ReloadAppConfigEvent reloadAppConfigEvent) {
        AppConfig appConfig = reloadAppConfigEvent.appConfig;
        this.appConfig = appConfig;
        if (appConfig == null) {
            this.appConfig = AppConfigManager.getInstance().getAppConfig();
        }
        LogToFile.i("重新使用配置(BluetoothConnectService)：" + reloadAppConfigEvent.deviceType);
        ((YCTApplication) getApplicationContext()).setAppConfig(this.appConfig);
        loadPacketOutput(reloadAppConfigEvent.deviceType);
    }

    private void loadPacketOutput(DeviceType deviceType) {
        EventBus.getDefault().post(new OrderBean(deviceType, "GET,SERIAL"));
        EventBus.getDefault().post(new OrderBean(deviceType, "CALIBRATE,,GET_PARAM"));
        EventBus.getDefault().post(new OrderBean(deviceType, "LOG,INS.NAVI,ONTIME," + this.appConfig.details.ins_interval));
        EventBus.getDefault().post(new OrderBean(deviceType, "LOG,GGA,ONTIME," + this.appConfig.details.gga_interval));
        EventBus.getDefault().post(new OrderBean(deviceType, "LOG,BESTPOS,ONTIME," + this.appConfig.details.bestpos_interval));
        EventBus.getDefault().post(new OrderBean(deviceType, "LOG,GST,ONTIME," + this.appConfig.details.gst_interval));
        EventBus eventBus = EventBus.getDefault();
        DeviceType deviceType2 = DeviceType.ZPY;
        eventBus.post(new OrderBean(deviceType2, "LOG,EXTSENSOR-1,ONTIME," + this.appConfig.details.extsensor_1));
        EventBus.getDefault().post(new OrderBean(deviceType2, "LOG,BASEINFO,ONTIME,10"));
        EventBus.getDefault().post(new OrderBean(deviceType2, "GET,ANTENNA"));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(AntennaParams antennaParams) {
        if (antennaParams.deviceType == DeviceType.ZPY) {
            float f = (antennaParams.h + antennaParams.HL1) / 1000.0f;
            this.mSp.edit().putFloat("zpy_antennaheight", f).apply();
            LogToFile.i("天线参数：" + antennaParams.toString() + "，相位中心到设备底部高：" + f + "米");
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SensorInfoEvent sensorInfoEvent) {
        YCTApplication.getInstance().setSensorInfo(sensorInfoEvent);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BaseStatusEvent baseStatusEvent) {
        if (baseStatusEvent == null || baseStatusEvent.deviceType != DeviceType.ZPY) {
            return;
        }
        YCTApplication.getInstance().setBaseStatus(baseStatusEvent);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(final Serial serial) {
        if (serial == null || !this.requestSerial || TextUtils.isEmpty(serial.sn)) {
            return;
        }
        this.requestSerial = false;
        SharedPreferences sharedPreferences = this.mSp;
        ConnectModeEnum connectModeEnum = ConnectModeEnum.BLE;
        if (sharedPreferences.getInt("mode", connectModeEnum.getType()) == connectModeEnum.getType()) {
            DeviceType deviceType = serial.deviceType;
            if (deviceType == DeviceType.ZPY) {
                this.mSp.edit().putString("deviceSn", serial.sn).commit();
                LogToFile.i("查询H5主机号-保存到本地完成 ——> " + serial.sn);
            } else if (deviceType == DeviceType.BASE) {
                this.mSp.edit().putString("base_deviceSn", serial.sn).commit();
                LogToFile.i("查询BASE主机号-保存到本地完成 ——> " + serial.sn);
            }
        }
        EventBus.getDefault().post(new OrderBean(serial.deviceType, "GET,EXPIREDATE"));
        this.mHandler.postDelayed(new Runnable() { // from class: com.qianhe.yct.service.BluetoothConnectService.4
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                NetworkDataLoader networkDataLoader = NetworkDataLoader.getInstance();
                Serial serial2 = serial;
                networkDataLoader.getRegisterInfo(serial2.deviceType, serial2.sn);
                EventBus eventBus = EventBus.getDefault();
                Serial serial3 = serial;
                eventBus.post(new InitDataEvent(serial3.deviceType, serial3.sn));
            }
        }, 1000L);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    @SuppressLint({"MissingPermission"})
    public void onEventMessage(final GnssInfo gnssInfo) {
        this.mSp.edit().putString(Constant.GNSS_FWM_VERSION, gnssInfo.gnssVersion).commit();
        if (TextUtils.isEmpty(gnssInfo.gnssVersion)) {
            this.mHandler.postDelayed(new Runnable() { // from class: com.qianhe.yct.service.BluetoothConnectService.5
                @Override // java.lang.Runnable
                public void run() {
                    EventBus.getDefault().post(new OrderBean(gnssInfo.deviceType, "GET,GNSS.INFO"));
                }
            }, 1500L);
        }
        if (gnssInfo.deviceType == DeviceType.NONE || this.mMode != ConnectModeEnum.BLE.getType()) {
            return;
        }
        DeviceInfo deviceInfoQueryDeviceInfo = DatabaseManager.getInstance(this).queryDeviceInfo((gnssInfo.deviceType == DeviceType.BASE ? YCTApplication.getInstance().getCurrentBaseDevice() : YCTApplication.getInstance().getCurrentDevice()).bluetoothDevice.getName());
        if (deviceInfoQueryDeviceInfo != null) {
            deviceInfoQueryDeviceInfo.gnssVersion = gnssInfo.gnssVersion;
            DatabaseManager.getInstance(this).updateDeviceInfo(deviceInfoQueryDeviceInfo);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BaseConfig baseConfig) {
        GGAEntity gGAEntity = this.ggaEntity;
        if (gGAEntity == null || gGAEntity.quality <= 0) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("BaseConfig -> ntrip断开重连(");
        sb.append(baseConfig.ntripType == NtripTypeEnum.SDK.getType() ? "SDK" : baseConfig.ntripType == NtripTypeEnum.NTRIP.getType() ? "NTRIP" : baseConfig.mount_point.equals("AUTO") ? "ACC" : "自定义CROS");
        sb.append(")");
        LogToFile.i(sb.toString());
        this.diffExecutor = null;
        this.diffConfig = baseConfig;
        diffClientDisconnect();
        initDiffClient(DiffActionEnum.UPGRADE, this.ggaEntity.ggaStr);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(AuthResult authResult) {
        int i = authResult.result;
        if (i != 8) {
            if (i == 1) {
                this.diffConfig = authResult.diffConfig;
                EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "SET,DATALINK,BLUETOOTH"));
                this.mSp.edit().putString("obtain_difference_type", "bluetooth").apply();
                return;
            }
            return;
        }
        this.diffConfig = authResult.diffConfig;
        LogToFile.i("---请求acc账户失败，切换为sdk模式---");
        diffClientDisconnect();
        this.diffExecutor = null;
        GGAEntity gGAEntity = this.ggaEntity;
        if (gGAEntity == null || gGAEntity.quality <= 0) {
            return;
        }
        initDiffClient(DiffActionEnum.UPGRADE, gGAEntity.ggaStr);
    }

    @SuppressLint({"MissingPermission"})
    private void initDiffClient(final DiffActionEnum diffActionEnum, final String str) {
        if (this.diffExecutor != null || this.supportH5Ntrip == null) {
            return;
        }
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.diffExecutor = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        this.diffFuture = scheduledExecutorServiceNewSingleThreadScheduledExecutor.submit(new Runnable() { // from class: com.qianhe.yct.service.BluetoothConnectService.6
            @Override // java.lang.Runnable
            public void run() {
                LogToFile.i("初始化差分客户端 ===> " + str);
                DatabaseManager.getInstance(BluetoothConnectService.this).queryCORS(null);
                if (BluetoothConnectService.this.diffConfig == null) {
                    if (!BluetoothConnectService.this.supportH5Ntrip.booleanValue() || BluetoothConnectService.this.appConfig.details.ntrip_type != NtripTypeEnum.NTRIP.getType()) {
                        if (!YCTApplication.getInstance().isDemo()) {
                            BluetoothConnectService.this.diffConfig = new SdkClientConfig();
                            BluetoothConnectService.this.diffConfig.ntrip_host = BluetoothConnectService.this.appConfig.details.ntrip_host;
                            BluetoothConnectService.this.diffConfig.ntrip_port = BluetoothConnectService.this.appConfig.details.ntrip_port;
                            BluetoothConnectService.this.diffConfig.mount_point = BluetoothConnectService.this.appConfig.details.ntrip_mount_point;
                            if (BluetoothConnectService.this.multiBluetoothManager.getAllConnectedDevices().size() == 1) {
                                if (BluetoothConnectService.this.mCurrentDevice != null && BluetoothConnectService.this.mCurrentDevice.state == BluetoothStateEnum.CONNECTED.getState()) {
                                    ((SdkClientConfig) BluetoothConnectService.this.diffConfig).setDeviceID(BluetoothConnectService.this.mCurrentDevice.bluetoothDevice.getName());
                                } else if (BluetoothConnectService.this.mCurrentBaseDevice != null && BluetoothConnectService.this.mCurrentBaseDevice.state == BluetoothStateEnum.CONNECTED.getState()) {
                                    ((SdkClientConfig) BluetoothConnectService.this.diffConfig).setDeviceID(BluetoothConnectService.this.mCurrentBaseDevice.bluetoothDevice.getName());
                                }
                            }
                        }
                    } else {
                        BluetoothConnectService.this.diffConfig = new NtripClientConfig();
                        BluetoothConnectService.this.diffConfig.username = BluetoothConnectService.this.appConfig.details.ntrip_username;
                        BluetoothConnectService.this.diffConfig.password = BluetoothConnectService.this.appConfig.details.ntrip_password;
                        BluetoothConnectService.this.diffConfig.ntrip_host = BluetoothConnectService.this.appConfig.details.ntrip_host;
                        BluetoothConnectService.this.diffConfig.ntrip_port = BluetoothConnectService.this.appConfig.details.ntrip_port;
                        BluetoothConnectService.this.diffConfig.mount_point = BluetoothConnectService.this.appConfig.details.ntrip_mount_point;
                    }
                    BluetoothConnectService.this.diffConfig.ntripType = BluetoothConnectService.this.appConfig.details.ntrip_type;
                } else if (BluetoothConnectService.this.supportH5Ntrip != null && BluetoothConnectService.this.appConfig.details.ntrip_type != NtripTypeEnum.NTRIP.getType() && (BluetoothConnectService.this.diffConfig instanceof SdkClientConfig) && BluetoothConnectService.this.multiBluetoothManager.getAllConnectedDevices().size() == 1) {
                    if (BluetoothConnectService.this.mCurrentDevice != null && BluetoothConnectService.this.mCurrentDevice.state == BluetoothStateEnum.CONNECTED.getState()) {
                        ((SdkClientConfig) BluetoothConnectService.this.diffConfig).setDeviceID(BluetoothConnectService.this.mCurrentDevice.bluetoothDevice.getName());
                    } else if (BluetoothConnectService.this.mCurrentBaseDevice != null && BluetoothConnectService.this.mCurrentBaseDevice.state == BluetoothStateEnum.CONNECTED.getState()) {
                        ((SdkClientConfig) BluetoothConnectService.this.diffConfig).setDeviceID(BluetoothConnectService.this.mCurrentBaseDevice.bluetoothDevice.getName());
                    }
                }
                BluetoothConnectService.this.diffConfig.setIsInit(diffActionEnum.isInit());
                BluetoothConnectService.this.diffConfig.setUpdatePeriod(10000);
                BluetoothConnectService bluetoothConnectService = BluetoothConnectService.this;
                bluetoothConnectService.mDiffClient = DiffClientFactory.getIntance(bluetoothConnectService, bluetoothConnectService.diffConfig, str);
                BluetoothConnectService.this.mDiffClient.connect();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseDiffClient(String str) {
        if (this.mDiffClient == null && this.diffExecutor == null && this.diffConfig == null) {
            return;
        }
        LogToFile.i("关闭差分连接: " + str);
        Future<?> future = this.diffFuture;
        if (future != null) {
            future.cancel(true);
            this.diffFuture = null;
        }
        ScheduledExecutorService scheduledExecutorService = this.diffExecutor;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
            this.diffExecutor = null;
        }
        this.diffConfig = null;
        diffClientDisconnect();
    }

    private void diffClientDisconnect() {
        DiffClientImpl diffClientImpl = this.mDiffClient;
        if (diffClientImpl != null) {
            diffClientImpl.disconnect();
        }
        this.mDiffClient = null;
        YCTApplication.getInstance().setBaseStatus(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startWorkTimer() {
        if (this.workFuture == null) {
            LogToFile.i("开启定时器(service)-心跳、电量、角度等");
            this.timerCount = 0;
            this.featuresAnswer = false;
            if (this.workExecutor.isShutdown()) {
                this.workExecutor = Executors.newSingleThreadScheduledExecutor();
            }
            this.workFuture = this.workExecutor.scheduleWithFixedDelay(new Runnable() { // from class: com.qianhe.yct.service.BluetoothConnectService.7
                final int heartInterval = 20;

                @Override // java.lang.Runnable
                public void run() {
                    DeviceType deviceType;
                    if (BluetoothConnectService.this.timerCount % 10 == 0) {
                        LogToFile.d("发送心跳包。");
                        EventBus.getDefault().post(new OrderBean("SET,HEART,20"));
                    }
                    if (BluetoothConnectService.this.mMode == ConnectModeEnum.DEMO.getType()) {
                        deviceType = DeviceType.ZPY;
                    } else {
                        MultiBluetoothManager multiBluetoothManager = BluetoothConnectService.this.multiBluetoothManager;
                        DeviceType deviceType2 = DeviceType.ZPY;
                        deviceType = multiBluetoothManager.isDeviceConnected(deviceType2) ? deviceType2 : DeviceType.BASE;
                    }
                    if (BluetoothConnectService.this.timerCount % 15 == 0) {
                        LogToFile.d(deviceType + "：获取电源类型。");
                        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "GET,POWER.SOURCE"));
                        EventBus.getDefault().post(new OrderBean(DeviceType.BASE, "GET,POWER.SOURCE"));
                    }
                    if ((BluetoothConnectService.this.timerCount % 60 == 0 || BluetoothConnectService.this.timerCount == 1 || BluetoothConnectService.this.timerCount == 2) && ((BluetoothConnectService.this.mCurrentDevice != null && BluetoothConnectService.this.mCurrentDevice.state == BluetoothStateEnum.CONNECTED.getState()) || (BluetoothConnectService.this.mCurrentBaseDevice != null && BluetoothConnectService.this.mCurrentBaseDevice.state == BluetoothStateEnum.CONNECTED.getState()))) {
                        LogToFile.d(deviceType + "：获取电池电量。");
                        EventBus.getDefault().post(new OrderBean(deviceType, "GET,POWER.BATTERYLEVEL"));
                    }
                    if (!YCTApplication.getInstance().isH5Pro()) {
                        EventBus.getDefault().post(new OrderBean(deviceType, "GET,HORIZONTAL_ANGLE"));
                    }
                    if (!BluetoothConnectService.this.featuresAnswer && BluetoothConnectService.this.timerCount > 2) {
                        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "GET,FEATURES"));
                    }
                    BluetoothConnectService.this.timerCount++;
                }
            }, 0L, 1000L, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopWorkTimer() {
        LogToFile.i("关闭定时器(心跳、电量、角度等)");
        ScheduledFuture<?> scheduledFuture = this.workFuture;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        this.workFuture = null;
        this.workExecutor.shutdownNow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDeviceManagementForeground() {
        return (YCTApplication.getInstance() != null ? YCTApplication.getInstance().getForegroundActivity() : null) instanceof BluetoothActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startScan() {
        MyBluetoothDevice myBluetoothDevice;
        if (this.isAutoConnect && isDeviceManagementForeground()) {
            LogToFile.i("设备管理页在前台，跳过自动连接，改为扫描");
            this.isAutoConnect = false;
        }
        if (this.isAutoConnect) {
            String string = this.mSp.getString("latestDeviceAddress", "");
            if (!this.skipH5AutoReconnect && !TextUtils.isEmpty(string)) {
                EventBus.getDefault().post(new BluetoothConnectActionByMacEvent(BluetoothActionEnum.CONNECT, string));
            }
            if (this.skipBaseAutoReconnect || (myBluetoothDevice = this.mCurrentBaseDevice) == null || myBluetoothDevice.bluetoothDevice == null || myBluetoothDevice.state == BluetoothStateEnum.CONNECTED.getState()) {
                return;
            }
            EventBus.getDefault().post(new BluetoothConnectActionByMacEvent(BluetoothActionEnum.CONNECT, this.mCurrentBaseDevice.bluetoothDevice.getAddress()));
            return;
        }
        if (Build.VERSION.SDK_INT >= 31 && ContextCompat.checkSelfPermission(this, "android.permission.BLUETOOTH_SCAN") != 0) {
            Toast.makeText(this, "未获取权限 BLUETOOTH_SCAN", 0).show();
        } else {
            if (System.currentTimeMillis() - this.lastScantime < 1000) {
                return;
            }
            this.lastScantime = System.currentTimeMillis();
            this.scanExecutor.submit(new Runnable() { // from class: com.qianhe.yct.service.BluetoothConnectService.9
                @Override // java.lang.Runnable
                @SuppressLint({"MissingPermission"})
                public void run() {
                    if (!BluetoothConnectService.this.mBluetoothH5Client.isBluetoothEnabled()) {
                        BluetoothConnectService.this.mBluetoothH5Client.openBluetooth(BluetoothConnectService.this);
                        return;
                    }
                    LogToFile.i("开始扫描......" + BluetoothConnectService.this.scanPageIndex);
                    EventBus.getDefault().post(new BluetoothScanStateEvent(new MyBluetoothDevice(BluetoothStateEnum.SCAN_STARTED.getState()), BluetoothConnectService.this.scanPageIndex));
                    BluetoothConnectService.this.mDevideList.clear();
                    BluetoothConnectService.this.clearScanListUiBatch();
                    for (BluetoothDevice bluetoothDevice : new ArrayList(BluetoothAdapter.getDefaultAdapter().getBondedDevices())) {
                        if (!TextUtils.isEmpty(bluetoothDevice.getName()) && bluetoothDevice.getName().matches("^[WZ].*")) {
                            BluetoothConnectService.this.mDevideList.put(bluetoothDevice.getAddress(), new MyBluetoothDevice(bluetoothDevice));
                        }
                    }
                    if (BluetoothConnectService.this.scanPageIndex == 1) {
                        BluetoothConnectService.this.mBluetoothBaseClient.startScan(BluetoothConnectService.this.scanListener);
                    } else {
                        BluetoothConnectService.this.mBluetoothH5Client.startScan(BluetoothConnectService.this.scanListener);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearScanListUiBatch() {
        this.scanListUiHandler.removeCallbacks(this.flushScanListUiRunnable);
        this.pendingScanUiDevices.clear();
        this.scanUiNotifiedAddresses.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void flushPendingScanListUi() {
        if (this.pendingScanUiDevices.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.pendingScanUiDevices);
        this.pendingScanUiDevices.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            EventBus.getDefault().post(new BluetoothScanStateEvent((MyBluetoothDevice) it.next(), this.scanPageIndex));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queueScanListUiUpdate(MyBluetoothDevice myBluetoothDevice) {
        BluetoothDevice bluetoothDevice;
        if (myBluetoothDevice == null || (bluetoothDevice = myBluetoothDevice.bluetoothDevice) == null) {
            return;
        }
        if (this.scanUiNotifiedAddresses.add(bluetoothDevice.getAddress())) {
            this.pendingScanUiDevices.add(myBluetoothDevice);
            this.scanListUiHandler.removeCallbacks(this.flushScanListUiRunnable);
            if (this.pendingScanUiDevices.size() == 1) {
                this.scanListUiHandler.post(this.flushScanListUiRunnable);
            } else {
                this.scanListUiHandler.postDelayed(this.flushScanListUiRunnable, 200L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MyBluetoothDevice syncCurrentDevice(DeviceType deviceType, BluetoothDevice bluetoothDevice) {
        MyBluetoothDevice myBluetoothDevice;
        if (deviceType == DeviceType.ZPY) {
            if (this.mCurrentDevice == null) {
                this.mCurrentDevice = new MyBluetoothDevice(bluetoothDevice, deviceType);
            }
            myBluetoothDevice = this.mCurrentDevice;
        } else {
            if (this.mCurrentBaseDevice == null) {
                this.mCurrentBaseDevice = new MyBluetoothDevice(bluetoothDevice, deviceType);
            }
            myBluetoothDevice = this.mCurrentBaseDevice;
        }
        if (bluetoothDevice != null) {
            myBluetoothDevice.assignBluetoothDevice(bluetoothDevice);
            MyBluetoothDevice myBluetoothDeviceFindScannedDevice = findScannedDevice(bluetoothDevice.getAddress());
            if (myBluetoothDeviceFindScannedDevice != null) {
                myBluetoothDevice.mergeDisplayNameFrom(myBluetoothDeviceFindScannedDevice);
                DeviceType deviceType2 = myBluetoothDevice.deviceType;
                if (deviceType2 == null || deviceType2 == DeviceType.NONE) {
                    myBluetoothDevice.deviceType = myBluetoothDeviceFindScannedDevice.deviceType;
                }
            }
        }
        myBluetoothDevice.deviceType = deviceType;
        return myBluetoothDevice;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MyBluetoothDevice findScannedDevice(String str) {
        BluetoothDevice bluetoothDevice;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (MyBluetoothDevice myBluetoothDevice : this.mDevideList.values()) {
            if (myBluetoothDevice != null && (bluetoothDevice = myBluetoothDevice.bluetoothDevice) != null && str.equalsIgnoreCase(bluetoothDevice.getAddress())) {
                return myBluetoothDevice;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startBlueCheckTimer() {
        if (this.ggaFuture == null || this.ggaExecutor.isShutdown()) {
            if (this.startCheckH5 || this.startCheckBase) {
                LogToFile.i("启动断连检测 -> startBlueCheckTimer()");
                ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
                this.ggaExecutor = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
                this.ggaFuture = scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleWithFixedDelay(new Runnable() { // from class: com.qianhe.yct.service.BluetoothConnectService.11
                    private long countTime = 0;

                    @Override // java.lang.Runnable
                    public void run() {
                        long j = YCTApplication.getInstance().getCurrentDevice().state == BluetoothStateEnum.DISCONNECT.getState() ? 5L : 12L;
                        long j2 = this.countTime;
                        if (j2 != 0 && j2 % j == 0) {
                            if (BluetoothConnectService.this.startCheckH5) {
                                if (!BluetoothConnectService.this.isH5DataAnswer) {
                                    LogToFile.i("<—— 长时间未接收到H5蓝牙数据(" + j + "秒) ——> 断开重连");
                                    BluetoothConnectService.this.reconnectH5();
                                } else {
                                    BluetoothConnectService.this.isH5DataAnswer = false;
                                }
                            }
                            if (BluetoothConnectService.this.startCheckBase) {
                                if (!BluetoothConnectService.this.isBaseDataAnswer) {
                                    LogToFile.i("<—— 长时间未接收到BASE蓝牙数据(" + j + "秒) ——> 断开重连");
                                    BluetoothConnectService.this.reconnectBase();
                                } else {
                                    BluetoothConnectService.this.isBaseDataAnswer = false;
                                }
                            }
                        }
                        this.countTime++;
                    }
                }, 0L, 1000L, TimeUnit.MILLISECONDS);
            }
        }
    }

    private void stopBlueCheckTimer() {
        LogToFile.i("停止断连检测 -> stopBlueCheckTimer()");
        ScheduledFuture<?> scheduledFuture = this.ggaFuture;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        this.ggaFuture = null;
        ScheduledExecutorService scheduledExecutorService = this.ggaExecutor;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reconnectH5() {
        MyBluetoothDevice myBluetoothDevice;
        if (this.skipH5AutoReconnect || (myBluetoothDevice = this.mCurrentDevice) == null) {
            return;
        }
        connect(myBluetoothDevice);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reconnectBase() {
        MyBluetoothDevice myBluetoothDevice;
        if (this.skipBaseAutoReconnect || (myBluetoothDevice = this.mCurrentBaseDevice) == null) {
            return;
        }
        connect(myBluetoothDevice);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BluetoothConnectStateEvent bluetoothConnectStateEvent) {
        MyBluetoothDevice myBluetoothDevice = bluetoothConnectStateEvent.myDevice;
        if (myBluetoothDevice != null && myBluetoothDevice.state == BluetoothStateEnum.CONNECTED.getState()) {
            if (bluetoothConnectStateEvent.myDevice.deviceType == DeviceType.ZPY) {
                releaseDiffClient("找平仪已连接，重置差分");
            }
            checkFmwUpgrade(bluetoothConnectStateEvent.myDevice.deviceType);
            return;
        }
        MyBluetoothDevice myBluetoothDevice2 = bluetoothConnectStateEvent.myDevice;
        if (myBluetoothDevice2 == null || myBluetoothDevice2.state != BluetoothStateEnum.DISCONNECT.getState()) {
            return;
        }
        if (bluetoothConnectStateEvent.myDevice.deviceType == DeviceType.ZPY) {
            YCTApplication.getInstance().setCheckApkList(false);
        }
        this.mHandler.removeCallbacksAndMessages(null);
    }

    private void checkFmwUpgrade(final DeviceType deviceType) {
        MyBluetoothDevice myBluetoothDevice;
        if (this.startCheckFmw) {
            return;
        }
        MyBluetoothDevice myBluetoothDevice2 = this.mCurrentDevice;
        if ((myBluetoothDevice2 == null || myBluetoothDevice2.state != BluetoothStateEnum.CONNECTED.getState()) && ((myBluetoothDevice = this.mCurrentBaseDevice) == null || myBluetoothDevice.state != BluetoothStateEnum.CONNECTED.getState())) {
            return;
        }
        this.startCheckFmw = true;
        this.hasRtkInfo = false;
        this.hasExpiredate = false;
        this.featuresAnswer = false;
        if (this.fmwVersionExecutor == null) {
            this.fmwVersionExecutor = Executors.newSingleThreadScheduledExecutor();
        }
        this.fmwFuture = this.fmwVersionExecutor.scheduleWithFixedDelay(new Runnable() { // from class: com.qianhe.yct.service.BluetoothConnectService.12
            @Override // java.lang.Runnable
            public void run() {
                BluetoothConnectService.this.isAppVersionCheckEnd = YCTApplication.getInstance().isAppVersionCheckedComplete();
                if (BluetoothConnectService.this.isAppVersionCheckEnd) {
                    if (BluetoothConnectService.this.hasRtkInfo) {
                        if (BluetoothConnectService.this.hasExpiredate) {
                            BluetoothConnectService.this.stopFmwVersionTimer();
                        }
                        if (BluetoothConnectService.this.hasExpiredate) {
                            BluetoothConnectService.this.startBlueCheckTimer();
                        }
                    }
                    if (!BluetoothConnectService.this.hasExpiredate) {
                        EventBus.getDefault().post(new OrderBean(deviceType, "GET,EXPIREDATE"));
                    }
                }
                if (!BluetoothConnectService.this.hasRtkInfo) {
                    LogToFile.i("deviceType：发送获取版本信息、注册码有效期指令。");
                    EventBus.getDefault().post(new OrderBean(deviceType, "GET,VERSION"));
                }
                if (BluetoothConnectService.this.featuresAnswer) {
                    return;
                }
                EventBus.getDefault().post(new OrderBean(deviceType, "GET,FEATURES"));
            }
        }, 0L, 1000L, TimeUnit.MILLISECONDS);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    @SuppressLint({"MissingPermission"})
    public void onEventMessage(RtkInfo rtkInfo) {
        DeviceType deviceType = rtkInfo.deviceType;
        DeviceType deviceType2 = DeviceType.BASE;
        if (deviceType == deviceType2) {
            YCTApplication.getInstance().setBaseInfo(rtkInfo);
        } else {
            YCTApplication.getInstance().setRtkInfo(rtkInfo);
        }
        if (!this.hasRtkInfo) {
            this.hasRtkInfo = true;
            EventBus.getDefault().post(new OrderBean(rtkInfo.deviceType, "GET,GNSS.INFO"));
            if (rtkInfo.deviceType == DeviceType.ZPY) {
                NetworkUserLoader.getInstance().notifyUsedDevice(rtkInfo.firmwareVersion);
            }
        }
        this.mSp.edit().putString("hardwareversionh5", rtkInfo.hardwareVersion).apply();
        EventBus.getDefault().post(new DeviceModelEvent(MultiBluetoothManager.getInstance(this).getDeviceModel()));
        if (rtkInfo.deviceType == DeviceType.NONE || this.mMode != ConnectModeEnum.BLE.getType()) {
            return;
        }
        String name = (rtkInfo.deviceType == deviceType2 ? YCTApplication.getInstance().getCurrentBaseDevice() : YCTApplication.getInstance().getCurrentDevice()).bluetoothDevice.getName();
        DeviceInfo deviceInfoQueryDeviceInfo = DatabaseManager.getInstance(this).queryDeviceInfo(name);
        if (deviceInfoQueryDeviceInfo != null) {
            deviceInfoQueryDeviceInfo.pnVersion = rtkInfo.hardwareVersion;
            deviceInfoQueryDeviceInfo.fmwVersion = rtkInfo.firmwareVersion;
            DatabaseManager.getInstance(this).updateDeviceInfo(deviceInfoQueryDeviceInfo);
        } else {
            DeviceInfo deviceInfo = new DeviceInfo();
            deviceInfo.sn = name;
            deviceInfo.pnVersion = rtkInfo.hardwareVersion;
            deviceInfo.fmwVersion = rtkInfo.firmwareVersion;
            DatabaseManager.getInstance(this).insertDeviceInfo(deviceInfo);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(Expiredate expiredate) {
        this.hasExpiredate = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopFmwVersionTimer() {
        this.startCheckFmw = false;
        ScheduledFuture<?> scheduledFuture = this.fmwFuture;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        ScheduledExecutorService scheduledExecutorService = this.fmwVersionExecutor;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
        this.fmwVersionExecutor = null;
    }

    @Subscribe(threadMode = ThreadMode.BACKGROUND)
    public void onEventMessage(OrderBean orderBean) {
        if (TextUtils.isEmpty(orderBean.str) && orderBean.array == null) {
            return;
        }
        byte[] bytes = !TextUtils.isEmpty(orderBean.str) ? orderBean.str.getBytes() : orderBean.array;
        if (!TextUtils.isEmpty(orderBean.str)) {
            String str = orderBean.str;
            DeviceType deviceType = orderBean.deviceType;
            if (deviceType == DeviceType.BASE) {
                BaseBleLogCache.writeToFile(orderBean.str + "\n");
            } else if (deviceType == DeviceType.ZPY) {
                BleLogCache.writeToFile(orderBean.str + "\n");
            } else {
                BaseBleLogCache.writeToFile(orderBean.str + "\n");
                BleLogCache.writeToFile(orderBean.str + "\n");
            }
        }
        DeviceType deviceType2 = orderBean.deviceType;
        if (deviceType2 == DeviceType.BASE) {
            YctDeviceManager.getInstanceBase().sendToDevice(bytes, bytes.length);
        } else if (deviceType2 == DeviceType.ZPY) {
            YctDeviceManager.getInstanceH5().sendToDevice(bytes, bytes.length);
        } else {
            YctDeviceManager.getInstanceBase().sendToDevice(bytes, bytes.length);
            YctDeviceManager.getInstanceH5().sendToDevice(bytes, bytes.length);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BlueData blueData) {
        DeviceType deviceType = blueData.deviceType;
        if (deviceType == DeviceType.ZPY) {
            this.isH5DataAnswer = true;
        }
        if (deviceType == DeviceType.BASE) {
            this.isBaseDataAnswer = true;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GGAEntity gGAEntity) {
        DiffClientImpl diffClientImpl;
        GGAEntity gGAEntity2;
        if (gGAEntity == null || gGAEntity.deviceType == DeviceType.BASE) {
            return;
        }
        if (!TextUtils.isEmpty(gGAEntity.ggaStr)) {
            this.ggaEntity = gGAEntity;
        }
        if ("bluetooth".equals(this.mSp.getString("obtain_difference_type", "bluetooth"))) {
            GGAEntity gGAEntity3 = this.ggaEntity;
            if (gGAEntity3 != null && gGAEntity3.quality > 0) {
                initDiffClient(DiffActionEnum.INIT, gGAEntity.ggaStr);
            }
            if (this.diffExecutor != null && (diffClientImpl = this.mDiffClient) != null && (gGAEntity2 = this.ggaEntity) != null && gGAEntity2.quality > 0) {
                diffClientImpl.updateGgaData(gGAEntity.ggaStr);
            }
        }
        if (!TextUtils.isEmpty(this.mRoughCoords) || gGAEntity.longitude == 0.0d || gGAEntity.latitude == 0.0d) {
            return;
        }
        this.mRoughCoords = gGAEntity.longitude + "," + gGAEntity.latitude + "," + gGAEntity.elevation;
        this.mSp.edit().putString("current_coords", this.mRoughCoords).apply();
        StringBuilder sb = new StringBuilder();
        sb.append("当前设备坐标：");
        sb.append(this.mRoughCoords);
        LogToFile.i(sb.toString());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(FeaturesEvent featuresEvent) throws JSONException {
        String str;
        this.featuresAnswer = true;
        if (featuresEvent.deviceType == DeviceType.ZPY) {
            if (featuresEvent.value.contains("NO_NTRIP")) {
                AppConfigManager.getInstance().setNtriptype(NtripTypeEnum.SDK.getType());
                this.supportH5Ntrip = Boolean.FALSE;
                this.mSp.edit().putBoolean("SUPPORT_NTRIP", false).apply();
            } else {
                this.supportH5Ntrip = Boolean.TRUE;
                this.mSp.edit().putBoolean("SUPPORT_NTRIP", true).apply();
            }
            YCTApplication.getInstance().setH5SupportRadio(featuresEvent.value.contains("RADIO"));
        }
        if (featuresEvent.deviceType != DeviceType.NONE && this.mMode == ConnectModeEnum.BLE.getType()) {
            DeviceType deviceType = featuresEvent.deviceType;
            DeviceType deviceType2 = DeviceType.BASE;
            String name = (deviceType == deviceType2 ? YCTApplication.getInstance().getCurrentBaseDevice() : YCTApplication.getInstance().getCurrentDevice()).bluetoothDevice.getName();
            boolean zIsDeviceSnExists = DatabaseManager.getInstance(this).isDeviceSnExists(name);
            if (featuresEvent.deviceType == deviceType2) {
                str = "base";
            } else {
                str = featuresEvent.value.contains("EXCAVATOR2") ? "h5pro" : "h5";
            }
            if (!zIsDeviceSnExists) {
                DeviceInfo deviceInfo = new DeviceInfo();
                deviceInfo.sn = name;
                deviceInfo.type = str;
                DatabaseManager.getInstance(this).insertDeviceInfo(deviceInfo);
            } else {
                DeviceInfo deviceInfoQueryDeviceInfo = DatabaseManager.getInstance(this).queryDeviceInfo(name);
                if (deviceInfoQueryDeviceInfo != null) {
                    deviceInfoQueryDeviceInfo.updateTime = System.currentTimeMillis();
                    deviceInfoQueryDeviceInfo.sn = name;
                    deviceInfoQueryDeviceInfo.type = str;
                    DatabaseManager.getInstance(this).updateDeviceInfo(deviceInfoQueryDeviceInfo);
                }
            }
        }
        YCTApplication.getInstance().setIsH5ProDemo(featuresEvent.value.contains("EXCAVATOR2"));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BluetoothScanActionEvent bluetoothScanActionEvent) {
        if (this.mMode == ConnectModeEnum.BLE.getType()) {
            this.isAutoConnect = bluetoothScanActionEvent.isAutoConnect;
            BluetoothActionEnum bluetoothActionEnum = bluetoothScanActionEvent.action;
            if (bluetoothActionEnum == BluetoothActionEnum.STARTSCAN) {
                this.scanPageIndex = bluetoothScanActionEvent.pageIndex;
                startScan();
            } else if (bluetoothActionEnum == BluetoothActionEnum.STOPSCAN) {
                this.scanPageIndex = Math.abs(bluetoothScanActionEvent.pageIndex - 1);
                stopScan(bluetoothScanActionEvent.pageIndex);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BluetoothSensorScanEvent bluetoothSensorScanEvent) {
        if (this.mMode == ConnectModeEnum.BLE.getType()) {
            this.isAutoConnect = bluetoothSensorScanEvent.isAutoConnect;
            BluetoothActionEnum bluetoothActionEnum = bluetoothSensorScanEvent.action;
            if (bluetoothActionEnum == BluetoothActionEnum.STARTSCAN) {
                this.scanPageIndex = bluetoothSensorScanEvent.pageIndex;
                startScan();
            } else if (bluetoothActionEnum == BluetoothActionEnum.STOPSCAN) {
                this.scanPageIndex = Math.abs(bluetoothSensorScanEvent.pageIndex - 1);
                stopScan(bluetoothSensorScanEvent.pageIndex);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BluetoothConnectActionByMacEvent bluetoothConnectActionByMacEvent) {
        if (TextUtils.isEmpty(bluetoothConnectActionByMacEvent.mac)) {
            return;
        }
        BluetoothDevice bluetoothDeviceResolveBondedDeviceByAddress = resolveBondedDeviceByAddress(bluetoothConnectActionByMacEvent.mac);
        if (bluetoothDeviceResolveBondedDeviceByAddress == null && this.mBluetoothH5Client.getBluetoothAdapter() != null) {
            bluetoothDeviceResolveBondedDeviceByAddress = this.mBluetoothH5Client.getBluetoothAdapter().getRemoteDevice(bluetoothConnectActionByMacEvent.mac);
        }
        if (bluetoothDeviceResolveBondedDeviceByAddress == null) {
            return;
        }
        MyBluetoothDevice myBluetoothDevice = new MyBluetoothDevice(bluetoothDeviceResolveBondedDeviceByAddress);
        DeviceType deviceType = this.multiBluetoothManager.getDeviceType(myBluetoothDevice.getDisplayName(), "");
        myBluetoothDevice.deviceType = deviceType;
        MyBluetoothDevice connectedDevice = MultiBluetoothManager.getInstance(this).getConnectedDevice(deviceType);
        if (connectedDevice != null) {
            int i = connectedDevice.state;
            BluetoothStateEnum bluetoothStateEnum = BluetoothStateEnum.CONNECTED;
            if (i == bluetoothStateEnum.getState() && connectedDevice.bluetoothDevice.getAddress().equals(bluetoothConnectActionByMacEvent.mac)) {
                myBluetoothDevice.state = bluetoothStateEnum.getState();
                EventBus.getDefault().post(new BluetoothConnectStateEvent(myBluetoothDevice));
                LogToFile.i("设备已连接(NFC): " + connectedDevice.bluetoothDevice.getName());
                return;
            }
        }
        if (deviceType == DeviceType.ZPY) {
            EventBus.getDefault().post("activeDisconnect");
        }
        connect(myBluetoothDevice);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BluetoothConnectActionEvent bluetoothConnectActionEvent) {
        if (this.mMode == ConnectModeEnum.BLE.getType()) {
            BluetoothActionEnum bluetoothActionEnum = bluetoothConnectActionEvent.action;
            if (bluetoothActionEnum == BluetoothActionEnum.CONNECT) {
                if (!this.mBluetoothH5Client.isBluetoothEnabled()) {
                    this.mBluetoothH5Client.openBluetooth(this);
                }
                MyBluetoothDevice myBluetoothDeviceResolveConnectTarget = resolveConnectTarget(bluetoothConnectActionEvent);
                if (myBluetoothDeviceResolveConnectTarget != null) {
                    connect(myBluetoothDeviceResolveConnectTarget);
                    return;
                }
                if (!TextUtils.isEmpty(bluetoothConnectActionEvent.deviceAddress)) {
                    BluetoothDevice bluetoothDeviceResolveBondedDeviceByAddress = resolveBondedDeviceByAddress(bluetoothConnectActionEvent.deviceAddress);
                    if (bluetoothDeviceResolveBondedDeviceByAddress == null) {
                        bluetoothDeviceResolveBondedDeviceByAddress = this.mBluetoothH5Client.getBluetoothAdapter().getRemoteDevice(bluetoothConnectActionEvent.deviceAddress);
                    }
                    MyBluetoothDevice myBluetoothDevice = new MyBluetoothDevice(bluetoothDeviceResolveBondedDeviceByAddress, bluetoothConnectActionEvent.deviceType);
                    if (!TextUtils.isEmpty(bluetoothConnectActionEvent.deviceName)) {
                        myBluetoothDevice.deviceName = bluetoothConnectActionEvent.deviceName;
                    }
                    connect(myBluetoothDevice);
                    return;
                }
                if (TextUtils.isEmpty(bluetoothConnectActionEvent.deviceName)) {
                    return;
                }
                EventBus.getDefault().post(new BluetoothScanActionEvent(BluetoothActionEnum.STARTSCAN, true));
                return;
            }
            if (bluetoothActionEnum == BluetoothActionEnum.DISCONNECT) {
                this.multiBluetoothManager.disconnectDevice(bluetoothConnectActionEvent.deviceType);
            }
        }
    }

    private BluetoothDevice resolveBondedDeviceByAddress(String str) {
        BluetoothAdapter defaultAdapter;
        Set<BluetoothDevice> bondedDevices;
        if (TextUtils.isEmpty(str) || (defaultAdapter = BluetoothAdapter.getDefaultAdapter()) == null || (bondedDevices = defaultAdapter.getBondedDevices()) == null) {
            return null;
        }
        for (BluetoothDevice bluetoothDevice : bondedDevices) {
            if (bluetoothDevice != null && str.equalsIgnoreCase(bluetoothDevice.getAddress())) {
                return bluetoothDevice;
            }
        }
        return null;
    }

    private MyBluetoothDevice resolveConnectTarget(BluetoothConnectActionEvent bluetoothConnectActionEvent) {
        if (bluetoothConnectActionEvent == null) {
            return null;
        }
        if (!TextUtils.isEmpty(bluetoothConnectActionEvent.deviceAddress)) {
            BluetoothDevice bluetoothDeviceResolveBondedDeviceByAddress = resolveBondedDeviceByAddress(bluetoothConnectActionEvent.deviceAddress);
            if (bluetoothDeviceResolveBondedDeviceByAddress != null) {
                MyBluetoothDevice myBluetoothDevice = new MyBluetoothDevice(bluetoothDeviceResolveBondedDeviceByAddress, bluetoothConnectActionEvent.deviceType);
                if (!TextUtils.isEmpty(bluetoothConnectActionEvent.deviceName)) {
                    myBluetoothDevice.deviceName = bluetoothConnectActionEvent.deviceName;
                }
                return myBluetoothDevice;
            }
            MyBluetoothDevice myBluetoothDeviceFindScannedDevice = findScannedDevice(bluetoothConnectActionEvent.deviceAddress);
            if (myBluetoothDeviceFindScannedDevice != null) {
                return myBluetoothDeviceFindScannedDevice;
            }
        }
        if (!TextUtils.isEmpty(bluetoothConnectActionEvent.deviceName)) {
            for (MyBluetoothDevice myBluetoothDevice2 : this.mDevideList.values()) {
                if (myBluetoothDevice2 != null && bluetoothConnectActionEvent.deviceName.equals(myBluetoothDevice2.getDisplayName())) {
                    return myBluetoothDevice2;
                }
            }
        }
        return null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(StartDemo startDemo) {
        this.mMode = ConnectModeEnum.DEMO.getType();
        LogToFile.i("开启演示模式");
        DatabaseManager.getInstance(this).ensureLocalDefaultEngineering();
        BluetoothClient bluetoothClient = this.mBluetoothH5Client;
        if (bluetoothClient != null) {
            bluetoothClient.disconnect();
        }
        BluetoothClient bluetoothClient2 = this.mBluetoothBaseClient;
        if (bluetoothClient2 != null) {
            bluetoothClient2.disconnect();
        }
        DemoDataManager.getInstance().startDemoExtcutor(startDemo.type);
        startTcpServer();
        Toast.makeText(this, "演示模式已开启", 1).show();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(StopDemo stopDemo) {
        this.isAutoConnect = true;
        this.mRoughCoords = "";
        this.mSp.edit().putString("current_coords", this.mRoughCoords).apply();
        this.mMode = ConnectModeEnum.BLE.getType();
        LogToFile.i("停止演示模式");
        DemoDataManager.getInstance().release();
        closeServerSocket();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(AppVersionCheckEndEvent appVersionCheckEndEvent) {
        this.isAppVersionCheckEnd = true;
        YCTApplication.getInstance().setAppVersionCheckedComplete(true);
        YCTApplication.getInstance().setCheckFmwUpgrade(false);
        NetworkDataLoader.getInstance().resetFmwListRequestState();
        stopFmwVersionTimer();
        this.featuresAnswer = false;
        checkFmwUpgrade(appVersionCheckEndEvent.deviceType);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(String str) {
        if ("debug".equals(str) && this.mMode == ConnectModeEnum.BLE.getType()) {
            stopSelf();
            return;
        }
        if ("activeDisconnect".equals(str) || "debug".equals(str)) {
            if (this.startGnssUpgrade) {
                return;
            }
            LogToFile.i("停止H5断连检测：event = " + str);
            stopBlueCheckTimer();
            return;
        }
        if ("activeDisconnect_base".equals(str)) {
            if (this.startGnssUpgrade) {
                return;
            }
            LogToFile.i("停止BASE断连检测：event = " + str);
            stopBlueCheckTimer();
            return;
        }
        if ("pairingListCleared_zpy".equals(str)) {
            this.skipH5AutoReconnect = true;
            this.startCheckH5 = false;
            this.isAutoConnect = false;
            this.mSp.edit().remove("latestDeviceAddress").apply();
            this.multiBluetoothManager.stopAutoReconnect();
            if (!this.startGnssUpgrade && !this.startCheckBase) {
                LogToFile.i("清空找平仪配对列表，停止自动重连");
                stopBlueCheckTimer();
                return;
            } else {
                LogToFile.i("清空找平仪配对列表，跳过H5自动重连");
                return;
            }
        }
        if ("pairingListCleared_base".equals(str)) {
            this.skipBaseAutoReconnect = true;
            this.startCheckBase = false;
            this.multiBluetoothManager.stopAutoReconnect();
            if (!this.startGnssUpgrade && !this.startCheckH5) {
                LogToFile.i("清空基站配对列表，停止自动重连");
                stopBlueCheckTimer();
                return;
            } else {
                LogToFile.i("清空基站配对列表，跳过BASE自动重连");
                return;
            }
        }
        if ("diffClientDisconnect".equals(str)) {
            diffClientDisconnect();
            return;
        }
        if ("startGnssUpgrade".equals(str)) {
            this.startGnssUpgrade = true;
            stopWorkTimer();
            stopBlueCheckTimer();
        } else if ("restoreConnectCheck".equals(str)) {
            startWorkTimer();
            startBlueCheckTimer();
        } else if ("stopWorkTimer".equals(str)) {
            stopWorkTimer();
            stopBlueCheckTimer();
        } else if ("startWorkTimer".equals(str)) {
            startWorkTimer();
            startBlueCheckTimer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopScan(int i) {
        if (Build.VERSION.SDK_INT < 31 || ContextCompat.checkSelfPermission(this, "android.permission.BLUETOOTH_SCAN") == 0) {
            LogToFile.i("停止扫描。" + i);
            this.lastScantime = 0L;
            if (i == 0) {
                BluetoothClient bluetoothClient = this.mBluetoothH5Client;
                if (bluetoothClient != null) {
                    bluetoothClient.stopScan();
                    return;
                }
                return;
            }
            if (i == 1) {
                BluetoothClient bluetoothClient2 = this.mBluetoothBaseClient;
                if (bluetoothClient2 != null) {
                    bluetoothClient2.stopScan();
                    return;
                }
                return;
            }
            BluetoothClient bluetoothClient3 = this.mBluetoothH5Client;
            if (bluetoothClient3 != null) {
                bluetoothClient3.stopScan();
            }
            BluetoothClient bluetoothClient4 = this.mBluetoothBaseClient;
            if (bluetoothClient4 != null) {
                bluetoothClient4.stopScan();
            }
        }
    }

    public MultiBluetoothManager getMultiBluetoothManager() {
        return this.multiBluetoothManager;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        LogToFile.i("================BluetoothConnectService onDestroy()==================");
        EventBus.getDefault().unregister(this);
        DemoDataManager.getInstance().release();
        stopWorkTimer();
        stopScan(-1);
        unregisterReceiver(this.bluetoothStateReceiver);
        try {
            unregisterReceiver(this.localeChangeReceiver);
        } catch (IllegalArgumentException unused) {
        }
        BluetoothClient bluetoothClient = this.mBluetoothH5Client;
        if (bluetoothClient != null) {
            bluetoothClient.release();
        }
        BluetoothClient bluetoothClient2 = this.mBluetoothBaseClient;
        if (bluetoothClient2 != null) {
            bluetoothClient2.release();
        }
        diffClientDisconnect();
        this.mHandler.removeCallbacksAndMessages(null);
        DemoDataManager.getInstance().stopDemoExecutor();
        closeServerSocket();
        stopBlueCheckTimer();
        stopFmwVersionTimer();
        ScheduledExecutorService scheduledExecutorService = this.diffExecutor;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
        Future<?> future = this.diffFuture;
        if (future != null) {
            future.cancel(true);
        }
        ExecutorService executorService = this.scanExecutor;
        if (executorService != null) {
            executorService.shutdownNow();
        }
        MultiBluetoothManager multiBluetoothManager = this.multiBluetoothManager;
        if (multiBluetoothManager != null) {
            multiBluetoothManager.disconnectAll();
        }
        shutdownTcpThreadPool();
    }

    private void closeServerSocket() {
        synchronized (this.mTcpServerLock) {
            stopTcpServerInternal();
        }
    }

    private void stopTcpServerInternal() throws IOException {
        LogToFile.i("===closeServerSocket()===");
        this.tcpServerGeneration++;
        this.isTcpServerRunning = false;
        synchronized (this.mSimulatorOutputLock) {
            this.mSimulatorOutputStream = null;
        }
        ServerSocket serverSocket = this.mServerSocket;
        this.mServerSocket = null;
        closeQuietly(serverSocket);
        Socket socket = this.clientSocket;
        this.clientSocket = null;
        closeQuietly(socket);
    }

    private void shutdownTcpThreadPool() {
        ExecutorService executorService = this.mTcpThreadPool;
        if (executorService != null) {
            executorService.shutdownNow();
            this.mTcpThreadPool = null;
        }
    }
}
