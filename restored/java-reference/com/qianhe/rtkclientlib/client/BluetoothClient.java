package com.qianhe.rtkclientlib.client;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityOptions;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.bluetooth.BluetoothSocket;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanFilter;
import android.bluetooth.le.ScanResult;
import android.bluetooth.le.ScanSettings;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelUuid;
import android.text.TextUtils;
import android.util.Base64;
import androidx.recyclerview.widget.RecyclerView;
import com.YctDeviceManager;
import com.leon.lfilepickerlibrary.utils.MemoryConstant;
import com.qh.yctdevice.YctDevice;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.bean.InsAhrs;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.baselib.utils.BaseBleLogCache;
import com.qianhe.baselib.utils.BleLogCache;
import com.qianhe.baselib.utils.DebugLogCache;
import com.qianhe.baselib.utils.GGALogCache;
import com.qianhe.baselib.utils.INSLogCache;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.baselib.utils.parser.BestPosParser;
import com.qianhe.baselib.utils.parser.GGAParser;
import com.qianhe.baselib.utils.parser.GPDOPParser;
import com.qianhe.baselib.utils.parser.GSTParser;
import com.qianhe.baselib.utils.parser.INSParser;
import com.qianhe.baselib.utils.parser.RefstationParser;
import com.qianhe.ntripclientlib.client.config.SdkClientConfig;
import com.qianhe.rtkclientlib.ForegroundActivityProvider;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.RtkConstant;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.rtkclientlib.event.AdjustParamEvent;
import com.qianhe.rtkclientlib.event.AntennaHeigthEntity;
import com.qianhe.rtkclientlib.event.AntennaParams;
import com.qianhe.rtkclientlib.event.BaseDiffListResponse;
import com.qianhe.rtkclientlib.event.BaseNetworkResponse;
import com.qianhe.rtkclientlib.event.BaseStatusEvent;
import com.qianhe.rtkclientlib.event.BaseTooFarEvent;
import com.qianhe.rtkclientlib.event.Batt;
import com.qianhe.rtkclientlib.event.BlueData;
import com.qianhe.rtkclientlib.event.BluetoothBondRequestEvent;
import com.qianhe.rtkclientlib.event.CalibrateEvent;
import com.qianhe.rtkclientlib.event.DebugData;
import com.qianhe.rtkclientlib.event.Expiredate;
import com.qianhe.rtkclientlib.event.FeaturesEvent;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.rtkclientlib.event.GetBaseStationResponse;
import com.qianhe.rtkclientlib.event.GetBaseWorkModeResponse;
import com.qianhe.rtkclientlib.event.GetCalibrateParamEvent;
import com.qianhe.rtkclientlib.event.GetDataLinkResponse;
import com.qianhe.rtkclientlib.event.GetFeatureCodeEvent;
import com.qianhe.rtkclientlib.event.GetPosSmoothResponse;
import com.qianhe.rtkclientlib.event.GetRadioChannelEvent;
import com.qianhe.rtkclientlib.event.GetRadioEvent;
import com.qianhe.rtkclientlib.event.GetRadioPowerListEvent;
import com.qianhe.rtkclientlib.event.GetRadioProtocolListEvent;
import com.qianhe.rtkclientlib.event.GetSensorParamEvent;
import com.qianhe.rtkclientlib.event.GetToolEvent;
import com.qianhe.rtkclientlib.event.GetVPNResponse;
import com.qianhe.rtkclientlib.event.GnssInfo;
import com.qianhe.rtkclientlib.event.HeartEvent;
import com.qianhe.rtkclientlib.event.HostPoweroffEvent;
import com.qianhe.rtkclientlib.event.MakeToolEvent;
import com.qianhe.rtkclientlib.event.MobileNetEntity;
import com.qianhe.rtkclientlib.event.MobileNetResponse;
import com.qianhe.rtkclientlib.event.MobileStateResponse;
import com.qianhe.rtkclientlib.event.ParseToolEvent;
import com.qianhe.rtkclientlib.event.PowerSourceEvent;
import com.qianhe.rtkclientlib.event.RTKRegisterResult;
import com.qianhe.rtkclientlib.event.RoverStationResponse;
import com.qianhe.rtkclientlib.event.RtkInfo;
import com.qianhe.rtkclientlib.event.SETHorizontalAngle;
import com.qianhe.rtkclientlib.event.SNRPackageEvent;
import com.qianhe.rtkclientlib.event.SauPackageEvent;
import com.qianhe.rtkclientlib.event.SavPackageEvent;
import com.qianhe.rtkclientlib.event.SensorInfoEvent;
import com.qianhe.rtkclientlib.event.Serial;
import com.qianhe.rtkclientlib.event.SetAntennaHeightResponse;
import com.qianhe.rtkclientlib.event.SetBaseNetworkResponse;
import com.qianhe.rtkclientlib.event.SetBaseRadioResponse;
import com.qianhe.rtkclientlib.event.SetBaseStationResponse;
import com.qianhe.rtkclientlib.event.SetBaseWorkModeResponse;
import com.qianhe.rtkclientlib.event.SetCalibrateParamEvent;
import com.qianhe.rtkclientlib.event.SetDataLinkResponse;
import com.qianhe.rtkclientlib.event.SetFeatureCodeResult;
import com.qianhe.rtkclientlib.event.SetRoverStationResponse;
import com.qianhe.rtkclientlib.event.SetSensorParamEvent;
import com.qianhe.rtkclientlib.event.SetVPNResponse;
import com.qianhe.rtkclientlib.event.UpgradeCancelEvent;
import com.qianhe.rtkclientlib.event.UpgradeInfoEvent;
import com.qianhe.rtkclientlib.event.UpgradeStartEvent;
import com.qianhe.rtkclientlib.event.UpgradeStateEvent;
import com.qianhe.rtkclientlib.event.UpgradeWriteEvent;
import com.qianhe.rtkclientlib.event.VpnStatusResponse;
import com.qianhe.rtkclientlib.event.WifiStateResponse;
import com.qianhe.rtkclientlib.event.Wlan0Entity;
import com.qianhe.rtkclientlib.event.Wlan0Response;
import com.tencent.smtt.sdk.ProxyConfig;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.lingala.zip4j.util.InternalZipConstants;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BluetoothClient {
    private BluetoothAdapter bluetoothAdapter;
    private boolean bondReceiverRegistered;
    private Runnable bondUiFallbackRunnable;
    private boolean bondUiReachedBonding;
    private String bondUiRequestedAddress;
    private long bondUiRequestedAt;
    private Runnable bondWatchRunnable;
    private boolean bondWatchSawBonding;
    private long bondWatchStartedAt;
    private String bondedConnectFailAddress;
    private int bondedConnectFailCount;
    private long bondedProbeStartedAt;
    private Runnable bondedRfcommTimeoutRunnable;
    private boolean bondingInProgress;
    private String clearingBondAddress;
    private volatile long connectSessionId;
    private volatile BluetoothSocket connectingSocket;
    private OnConnectionStateChangedListener connectionListener;
    private Context context;
    private Runnable ensureNewBondUiRunnable;
    private long errorCount;
    private boolean expectReboot;
    private InputStream inputStream;
    private boolean isConnecting;
    private boolean isScanning;
    private long lastBondCompletedAt;
    private String lastBondDeviceAddress;
    private long lastScanResultAt;
    private long lastStaleBondRepairAt;
    private ConnectThread mConnectThread;
    private final DeviceType mDeviceType;
    private ReceiveDataThread mReceiveDataThread;
    private BluetoothSocket mSocket;
    private BluetoothDevice mmDevice;
    private OutputStream outputStream;
    private String pendingConnectAddress;
    private Runnable postBondConnectRunnable;
    private volatile boolean postBondConnectScheduled;
    private boolean presenceScanForBondProbe;
    private volatile boolean removingStaleBond;
    private Runnable repairBondAfterRemovedRunnable;
    private ScheduledExecutorService scanExecutor;
    private OnDeviceScanListener scanListener;
    private ScheduledFuture<?> schedule;
    private boolean socketClosed;
    private long staleBondRemovedAt;
    private String staleBondRepairAddress;
    private int staleBondRepairCount;
    private boolean upgradeStart;
    private String userCancelledBondAddress;
    private long userCancelledBondUntilMs;
    private final List<BluetoothDevice> scanDevices = new ArrayList();
    private final Set<String> reportedScanAddresses = new HashSet();
    private ExecutorService executorSend = Executors.newCachedThreadPool();
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final Map<String, Long> lastAdvertisedAtByAddress = new ConcurrentHashMap();
    private final Runnable stopScanCallbacks = new Runnable() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.13
        @Override // java.lang.Runnable
        public void run() {
            BluetoothClient.this.stopScan();
        }
    };
    private final ScanCallback mScanCallback = new ScanCallback() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.18
        @Override // android.bluetooth.le.ScanCallback
        public void onScanResult(int i, ScanResult scanResult) {
            BluetoothClient.this.handleScanResult(scanResult);
        }

        @Override // android.bluetooth.le.ScanCallback
        public void onBatchScanResults(List<ScanResult> list) {
            Iterator<ScanResult> it = list.iterator();
            while (it.hasNext()) {
                BluetoothClient.this.handleScanResult(it.next());
            }
        }

        @Override // android.bluetooth.le.ScanCallback
        public void onScanFailed(int i) {
            LogToFile.i("onScanFailed ——> " + i);
            if (BluetoothClient.this.scanListener != null) {
                BluetoothClient.this.scanListener.onScanFail();
            }
        }
    };
    private final BroadcastReceiver scanReceiver = new BroadcastReceiver() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.19
        @Override // android.content.BroadcastReceiver
        @SuppressLint({"MissingPermission"})
        public void onReceive(Context context, Intent intent) {
            try {
                if (BluetoothClient.this.handleBondBroadcast(intent)) {
                    abortBroadcast();
                }
            } catch (Throwable th) {
                LogToFile.e("配对广播处理异常: " + th.getMessage());
            }
        }
    };

    public interface OnConnectionStateChangedListener {
        void onBond(BluetoothDevice bluetoothDevice);

        void onBondCancelled(BluetoothDevice bluetoothDevice);

        void onBondCompleted(BluetoothDevice bluetoothDevice);

        void onConnected(BluetoothDevice bluetoothDevice);

        void onConnectionFailed(String str);

        void onDisconnected(DeviceType deviceType);

        void onSocketClosed(String str);
    }

    public interface OnDeviceScanListener {
        void cancelBond(BluetoothDevice bluetoothDevice);

        void onBonding(BluetoothDevice bluetoothDevice);

        void onDeviceScan(MyBluetoothDevice myBluetoothDevice);

        void onScanFail();

        void onScanFinished();
    }

    public interface SimulatorSendCallback {
        void sendToSimulator(byte[] bArr, boolean z);
    }

    public BluetoothClient(Context context, DeviceType deviceType) {
        this.context = context;
        this.mDeviceType = deviceType;
        this.bluetoothAdapter = ((BluetoothManager) context.getSystemService("bluetooth")).getAdapter();
    }

    public BluetoothAdapter getBluetoothAdapter() {
        return this.bluetoothAdapter;
    }

    public boolean isBluetoothAvailable() {
        return this.bluetoothAdapter != null;
    }

    public void setExpectReboot(boolean z) {
        this.expectReboot = z;
    }

    public boolean keepReconnectOnSocketClose() {
        return this.upgradeStart || this.expectReboot;
    }

    public void openBluetooth(Activity activity, int i) {
        if (isBluetoothAvailable()) {
            activity.startActivityForResult(new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"), i);
        } else {
            LogToFile.i("===========设备不支持蓝牙==========");
        }
    }

    public void openBluetooth(Context context) {
        if (isBluetoothAvailable()) {
            Intent intent = new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE");
            intent.addFlags(268435456);
            context.startActivity(intent);
            return;
        }
        LogToFile.i("===========设备不支持蓝牙==========");
    }

    public boolean isBluetoothEnabled() {
        BluetoothAdapter bluetoothAdapter = this.bluetoothAdapter;
        return bluetoothAdapter != null && bluetoothAdapter.isEnabled();
    }

    public Set<BluetoothDevice> getPairedDevices() {
        BluetoothAdapter bluetoothAdapter = this.bluetoothAdapter;
        if (bluetoothAdapter != null) {
            return bluetoothAdapter.getBondedDevices();
        }
        return null;
    }

    @SuppressLint({"MissingPermission"})
    public int removeBondedDevices() {
        Set<BluetoothDevice> pairedDevices = getPairedDevices();
        int i = 0;
        if (pairedDevices != null && !pairedDevices.isEmpty()) {
            for (BluetoothDevice bluetoothDevice : new ArrayList(pairedDevices)) {
                if (bluetoothDevice != null) {
                    String name = bluetoothDevice.getName();
                    if (!TextUtils.isEmpty(name) && name.matches("^[WZ].*") && name.length() == 15 && MultiBluetoothManager.getInstance(this.context).getDeviceType(name, "") == this.mDeviceType && invokeHiddenBoolean(bluetoothDevice, "removeBond")) {
                        i++;
                        LogToFile.i("清空配对: " + name + " -> " + bluetoothDevice.getAddress());
                    }
                }
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BluetoothDevice resolveBondedDevice(BluetoothDevice bluetoothDevice) {
        Set<BluetoothDevice> bondedDevices;
        if (bluetoothDevice != null && this.bluetoothAdapter != null) {
            String address = bluetoothDevice.getAddress();
            if (!TextUtils.isEmpty(address) && (bondedDevices = this.bluetoothAdapter.getBondedDevices()) != null) {
                for (BluetoothDevice bluetoothDevice2 : bondedDevices) {
                    if (address.equalsIgnoreCase(bluetoothDevice2.getAddress())) {
                        return bluetoothDevice2;
                    }
                }
            }
        }
        return bluetoothDevice;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDeviceBonded(BluetoothDevice bluetoothDevice) {
        BluetoothDevice bluetoothDeviceResolveBondedDevice;
        return (bluetoothDevice == null || (bluetoothDeviceResolveBondedDevice = resolveBondedDevice(bluetoothDevice)) == null || bluetoothDeviceResolveBondedDevice.getBondState() != 12) ? false : true;
    }

    public boolean isBondedAddress(String str) {
        BluetoothAdapter bluetoothAdapter;
        if (!TextUtils.isEmpty(str) && (bluetoothAdapter = this.bluetoothAdapter) != null) {
            try {
                return isDeviceBonded(bluetoothAdapter.getRemoteDevice(str));
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BluetoothDevice resolveConnectDeviceByAddress(BluetoothDevice bluetoothDevice) {
        BluetoothAdapter bluetoothAdapter;
        if (bluetoothDevice == null) {
            return null;
        }
        String address = bluetoothDevice.getAddress();
        if (TextUtils.isEmpty(address) || (bluetoothAdapter = this.bluetoothAdapter) == null) {
            return resolveBondedDevice(bluetoothDevice);
        }
        try {
            BluetoothDevice remoteDevice = bluetoothAdapter.getRemoteDevice(address);
            BluetoothDevice bluetoothDeviceResolveBondedDevice = resolveBondedDevice(remoteDevice);
            return isDeviceBonded(bluetoothDeviceResolveBondedDevice) ? bluetoothDeviceResolveBondedDevice : remoteDevice;
        } catch (Throwable unused) {
            return resolveBondedDevice(bluetoothDevice);
        }
    }

    private void ensureBondReceiverRegistered() {
        if (this.bondReceiverRegistered) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.bluetooth.device.action.BOND_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.device.action.PAIRING_REQUEST");
        intentFilter.setPriority(InternalZipConstants.AES_HASH_ITERATIONS);
        if (Build.VERSION.SDK_INT >= 33) {
            this.context.registerReceiver(this.scanReceiver, intentFilter, 4);
        } else {
            this.context.registerReceiver(this.scanReceiver, intentFilter);
        }
        this.bondReceiverRegistered = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopBondWatch() {
        Runnable runnable = this.bondWatchRunnable;
        if (runnable != null) {
            this.mHandler.removeCallbacks(runnable);
            this.bondWatchRunnable = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startBondWatch(BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice == null || TextUtils.isEmpty(bluetoothDevice.getAddress())) {
            return;
        }
        stopBondWatch();
        this.bondWatchStartedAt = System.currentTimeMillis();
        this.bondWatchSawBonding = bluetoothDevice.getBondState() == 11 && isBondUiRequested(bluetoothDevice.getAddress()) && this.bondUiReachedBonding;
        final String address = bluetoothDevice.getAddress();
        Runnable runnable = new Runnable() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.1
            @Override // java.lang.Runnable
            public void run() {
                if (!BluetoothClient.this.bondingInProgress && TextUtils.isEmpty(BluetoothClient.this.pendingConnectAddress)) {
                    BluetoothClient.this.stopBondWatch();
                    return;
                }
                if (System.currentTimeMillis() - BluetoothClient.this.bondWatchStartedAt > 120000) {
                    LogToFile.e("配对超时，停止监听：" + address);
                    BluetoothDevice remoteDevice = BluetoothClient.this.bluetoothAdapter.getRemoteDevice(address);
                    BluetoothClient.cancelBondProcessIfNeeded(remoteDevice);
                    BluetoothClient.this.handleBondCancelled(remoteDevice);
                    return;
                }
                if (BluetoothClient.this.bluetoothAdapter == null) {
                    BluetoothClient.this.mHandler.postDelayed(this, 500L);
                    return;
                }
                BluetoothDevice remoteDevice2 = BluetoothClient.this.bluetoothAdapter.getRemoteDevice(address);
                int bondState = remoteDevice2.getBondState();
                if (bondState == 11) {
                    BluetoothClient.this.bondWatchSawBonding = true;
                }
                if (BluetoothClient.this.isDeviceBonded(remoteDevice2)) {
                    LogToFile.i("bond watch 检测到配对完成：" + remoteDevice2.getName());
                    BluetoothClient.this.scheduleConnectAfterBond(remoteDevice2);
                    return;
                }
                if (bondState == 10 && BluetoothClient.this.bondWatchSawBonding) {
                    if (BluetoothClient.this.isAwaitingReplacementBond(address)) {
                        LogToFile.i("bond watch 忽略拆配/重配衔接中的 BOND_NONE: " + address);
                        BluetoothClient.this.bondWatchSawBonding = false;
                        BluetoothClient.this.mHandler.postDelayed(this, 500L);
                        return;
                    }
                    LogToFile.i("bond watch 检测到配对取消：" + address);
                    BluetoothClient.this.handleBondCancelled(remoteDevice2);
                    return;
                }
                BluetoothClient.this.mHandler.postDelayed(this, 500L);
            }
        };
        this.bondWatchRunnable = runnable;
        this.mHandler.postDelayed(runnable, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean launchBondActivity(BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice != null && !TextUtils.isEmpty(bluetoothDevice.getAddress())) {
            try {
                MultiBluetoothManager.getInstance(this.context).suppressBackgroundBondCancel(12000L);
                Intent intent = new Intent();
                intent.setClassName(this.context.getPackageName(), "com.qianhe.yct.activity.BluetoothBondActivity");
                intent.putExtra("bond_device_address", bluetoothDevice.getAddress());
                intent.addFlags(603979776);
                ForegroundActivityProvider foregroundActivityProvider = RtkConstant.getForegroundActivityProvider();
                Activity activity = null;
                Activity foregroundActivity = foregroundActivityProvider != null ? foregroundActivityProvider.getForegroundActivity() : null;
                if (foregroundActivity == null || foregroundActivity.isFinishing() || !foregroundActivity.isDestroyed()) {
                    activity = foregroundActivity;
                }
                if (activity != null) {
                    activity.startActivity(intent);
                    activity.overridePendingTransition(0, 0);
                } else {
                    intent.addFlags(268435456);
                    if (Build.VERSION.SDK_INT >= 34) {
                        ActivityOptions activityOptionsMakeBasic = ActivityOptions.makeBasic();
                        activityOptionsMakeBasic.setPendingIntentBackgroundActivityStartMode(1);
                        this.context.startActivity(intent, activityOptionsMakeBasic.toBundle());
                    } else {
                        this.context.startActivity(intent);
                    }
                }
                StringBuilder sb = new StringBuilder();
                sb.append("启动前台配对页：");
                sb.append(bluetoothDevice.getName());
                sb.append(activity != null ? " (from host)" : " (new task)");
                LogToFile.i(sb.toString());
                return true;
            } catch (Throwable th) {
                LogToFile.i("启动配对 Activity 失败，降级为后台配对：" + th.getMessage());
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void scheduleBondUiAfterCleared(final String str, final int i) {
        if (TextUtils.isEmpty(str) || this.bluetoothAdapter == null) {
            return;
        }
        this.mHandler.postDelayed(new Runnable() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.2
            @Override // java.lang.Runnable
            public void run() {
                if (str.equalsIgnoreCase(BluetoothClient.this.pendingConnectAddress) && BluetoothClient.this.bondingInProgress) {
                    BluetoothDevice remoteDevice = BluetoothClient.this.bluetoothAdapter.getRemoteDevice(str);
                    if (BluetoothClient.this.isDeviceBonded(remoteDevice)) {
                        BluetoothClient bluetoothClient = BluetoothClient.this;
                        bluetoothClient.scheduleConnectAfterBond(bluetoothClient.resolveBondedDevice(remoteDevice));
                        return;
                    }
                    if (remoteDevice.getBondState() != 11) {
                        LogToFile.i("BOND 已清除，重新发起配对 UI: " + str + ", attempt=" + i);
                        BluetoothClient.this.startBondUiNow(remoteDevice);
                        return;
                    }
                    int i2 = i;
                    if (i2 >= 24) {
                        LogToFile.e("等待 BOND_NONE 超时，仍尝试 createBond: " + str);
                        BluetoothClient.this.startBondUiNow(remoteDevice);
                        return;
                    }
                    if (i2 % 4 == 0) {
                        BluetoothClient.cancelBondProcessIfNeeded(remoteDevice);
                    }
                    BluetoothClient.this.scheduleBondUiAfterCleared(str, i + 1);
                }
            }
        }, 250L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void startBondUiNow(final BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice != null && this.bondingInProgress && bluetoothDevice.getAddress().equalsIgnoreCase(this.pendingConnectAddress)) {
            BluetoothAdapter bluetoothAdapter = this.bluetoothAdapter;
            if (bluetoothAdapter != null) {
                bluetoothDevice = bluetoothAdapter.getRemoteDevice(bluetoothDevice.getAddress());
            }
            if (isDeviceBonded(bluetoothDevice)) {
                LogToFile.i("startBondUiNow: 已配对，配对成功后连接: " + bluetoothDevice.getAddress());
                scheduleConnectAfterBond(resolveBondedDevice(bluetoothDevice));
                return;
            }
            if (this.bondUiReachedBonding && bluetoothDevice.getBondState() == 11) {
                LogToFile.i("startBondUiNow: 本轮配对进行中，等待完成: " + bluetoothDevice.getAddress());
                startBondWatch(bluetoothDevice);
                notifyBonding(bluetoothDevice);
                return;
            }
            if (bluetoothDevice.getBondState() == 11) {
                LogToFile.i("startBondUiNow: 取消残留配对后发起前台重配: " + bluetoothDevice.getAddress());
                cancelBondProcessIfNeeded(bluetoothDevice);
            }
            markBondUiRequested(bluetoothDevice.getAddress());
            stopScan();
            BluetoothBondRequestEvent bluetoothBondRequestEvent = new BluetoothBondRequestEvent(bluetoothDevice.getAddress());
            EventBus.getDefault().post(bluetoothBondRequestEvent);
            if (!bluetoothBondRequestEvent.handledByActivity) {
                launchBondActivity(bluetoothDevice);
            }
            Runnable runnable = this.bondUiFallbackRunnable;
            if (runnable != null) {
                this.mHandler.removeCallbacks(runnable);
            }
            Runnable runnable2 = new Runnable() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.3
                @Override // java.lang.Runnable
                public void run() {
                    BluetoothClient.this.bondUiFallbackRunnable = null;
                    if (BluetoothClient.this.bondingInProgress && bluetoothDevice.getAddress().equalsIgnoreCase(BluetoothClient.this.pendingConnectAddress)) {
                        BluetoothDevice remoteDevice = bluetoothDevice;
                        if (BluetoothClient.this.bluetoothAdapter != null) {
                            remoteDevice = BluetoothClient.this.bluetoothAdapter.getRemoteDevice(bluetoothDevice.getAddress());
                        }
                        if (BluetoothClient.this.isDeviceBonded(remoteDevice)) {
                            LogToFile.i("startBondUiNow 延迟回调: 已配对，配对成功后连接");
                            BluetoothClient bluetoothClient = BluetoothClient.this;
                            bluetoothClient.scheduleConnectAfterBond(bluetoothClient.resolveBondedDevice(remoteDevice));
                        } else if (BluetoothClient.this.bondUiReachedBonding || remoteDevice.getBondState() == 11) {
                            LogToFile.i("startBondUiNow 延迟回调: 前台配对已发起，等待完成");
                            BluetoothClient.this.startBondWatch(remoteDevice);
                        } else {
                            LogToFile.i("startBondUiNow 延迟回调: 补拉前台配对页");
                            BluetoothClient.this.launchBondActivity(remoteDevice);
                        }
                    }
                }
            };
            this.bondUiFallbackRunnable = runnable2;
            this.mHandler.postDelayed(runnable2, 800L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void requestBondUi(BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice == null) {
            return;
        }
        if (bluetoothDevice.getBondState() == 11) {
            if (isStaleTargetBonding(bluetoothDevice.getAddress())) {
                LogToFile.i("requestBondUi: 残留 BOND_BONDING，清除后重配对: " + bluetoothDevice.getAddress());
                cancelBondProcessIfNeeded(bluetoothDevice);
                scheduleBondUiAfterCleared(bluetoothDevice.getAddress(), 0);
                return;
            }
            LogToFile.i("requestBondUi: 目标配对进行中，保留自动配对: " + bluetoothDevice.getAddress());
            this.bondingInProgress = true;
            startBondWatch(bluetoothDevice);
            notifyBonding(bluetoothDevice);
            return;
        }
        startBondUiNow(bluetoothDevice);
    }

    private boolean isStaleTargetBonding(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (TextUtils.isEmpty(this.clearingBondAddress) || !this.clearingBondAddress.equalsIgnoreCase(str)) {
            return !this.bondingInProgress;
        }
        return true;
    }

    @SuppressLint({"MissingPermission"})
    public static boolean createSppBond(BluetoothDevice bluetoothDevice) throws InterruptedException {
        if (bluetoothDevice == null) {
            return false;
        }
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter != null && defaultAdapter.isDiscovering()) {
                defaultAdapter.cancelDiscovery();
            }
        } catch (Throwable unused) {
        }
        int bondState = bluetoothDevice.getBondState();
        if (bondState == 11 || bondState == 12) {
            LogToFile.i("createSppBond: 已在配对/已配对，不再重复 createBond -> " + bluetoothDevice.getAddress());
            return true;
        }
        Throwable th = null;
        for (int i = 0; i < 3; i++) {
            try {
                Method method = BluetoothDevice.class.getMethod("createBond", Integer.TYPE);
                method.setAccessible(true);
                boolean zEquals = Boolean.TRUE.equals(method.invoke(bluetoothDevice, 1));
                LogToFile.i("createBond(TRANSPORT_BREDR)=" + zEquals + " attempt=" + i + " -> " + bluetoothDevice.getAddress());
                if (zEquals || bluetoothDevice.getBondState() != 10) {
                    return true;
                }
            } catch (Throwable th2) {
                th = th2;
                LogToFile.i("createBond(TRANSPORT_BREDR) 失败: " + th.getMessage());
            }
            try {
                Thread.sleep(200L);
            } catch (InterruptedException unused2) {
                Thread.currentThread().interrupt();
            }
        }
        if (th != null) {
            LogToFile.e("createBond(TRANSPORT_BREDR) 最终失败，不回退 createBond() 以免弹出 PIN: " + th.getMessage());
        }
        return bluetoothDevice.getBondState() != 10;
    }

    private boolean isPendingConnectDevice(BluetoothDevice bluetoothDevice) {
        return (bluetoothDevice == null || TextUtils.isEmpty(this.pendingConnectAddress) || !this.pendingConnectAddress.equalsIgnoreCase(bluetoothDevice.getAddress())) ? false : true;
    }

    private boolean shouldHandleBondEvent(BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice == null) {
            return false;
        }
        if (isPendingConnectDevice(bluetoothDevice)) {
            return true;
        }
        if (TextUtils.isEmpty(this.lastBondDeviceAddress) || !this.lastBondDeviceAddress.equalsIgnoreCase(bluetoothDevice.getAddress())) {
            return this.mDeviceType == MultiBluetoothManager.getInstance(this.context).getDeviceType(bluetoothDevice.getName(), "");
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyBonding(final BluetoothDevice bluetoothDevice) {
        this.mHandler.post(new Runnable() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.4
            @Override // java.lang.Runnable
            public void run() {
                if (BluetoothClient.this.connectionListener != null) {
                    BluetoothClient.this.connectionListener.onBond(bluetoothDevice);
                }
            }
        });
    }

    private void interruptConnectThread() {
        cancelBondedRfcommTimeout();
        stopPresenceScanForBondProbe();
        ConnectThread connectThread = this.mConnectThread;
        if (connectThread != null && !connectThread.isInterrupted()) {
            this.mConnectThread.interrupt();
        }
        this.isConnecting = false;
        BluetoothSocket bluetoothSocket = this.connectingSocket;
        this.connectingSocket = null;
        closeQuietly(bluetoothSocket);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelBondedRfcommTimeout() {
        Runnable runnable = this.bondedRfcommTimeoutRunnable;
        if (runnable != null) {
            this.mHandler.removeCallbacks(runnable);
            this.bondedRfcommTimeoutRunnable = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public boolean shouldProbeStaleBond(BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice == null) {
            return false;
        }
        if (!isDeviceBonded(bluetoothDevice) && !isListedAsBonded(bluetoothDevice)) {
            return false;
        }
        if (this.lastBondCompletedAt <= 0 || System.currentTimeMillis() - this.lastBondCompletedAt >= 10000) {
            return !isStaleBondRepairOnCooldown(bluetoothDevice.getAddress());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isConfirmedStaleBond(BluetoothDevice bluetoothDevice, String str) {
        if (bluetoothDevice == null) {
            return false;
        }
        if (isAuthOrKeyError(str)) {
            LogToFile.i("陈旧配对依据: 鉴权/密钥错误 -> " + str);
            return true;
        }
        if (!wasAdvertisingDuringProbe(bluetoothDevice.getAddress())) {
            return false;
        }
        LogToFile.i("陈旧配对依据: 探测期间设备仍在广播但已配对直连失败 -> " + bluetoothDevice.getAddress());
        return true;
    }

    private boolean wasAdvertisingDuringProbe(String str) {
        Long l;
        return !TextUtils.isEmpty(str) && this.bondedProbeStartedAt > 0 && (l = this.lastAdvertisedAtByAddress.get(str.toUpperCase(Locale.US))) != null && l.longValue() >= this.bondedProbeStartedAt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void ensurePresenceScanForBondProbe() {
        BluetoothAdapter bluetoothAdapter;
        if (this.isScanning || (bluetoothAdapter = this.bluetoothAdapter) == null || bluetoothAdapter.getBluetoothLeScanner() == null) {
            return;
        }
        try {
            this.bluetoothAdapter.getBluetoothLeScanner().startScan((List<ScanFilter>) null, new ScanSettings.Builder().setScanMode(2).build(), this.mScanCallback);
            this.isScanning = true;
            this.presenceScanForBondProbe = true;
            LogToFile.i("陈旧配对探测：启动 BLE 扫描以确认设备是否开机");
        } catch (Throwable th) {
            LogToFile.i("陈旧配对探测扫描启动失败: " + th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopPresenceScanForBondProbe() {
        if (this.presenceScanForBondProbe) {
            this.presenceScanForBondProbe = false;
            stopScanInternal(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void scheduleBondedRfcommTimeout(final BluetoothSocket bluetoothSocket, final long j, final BluetoothDevice bluetoothDevice) {
        cancelBondedRfcommTimeout();
        if (bluetoothSocket == null || bluetoothDevice == null || !shouldProbeStaleBond(bluetoothDevice)) {
            return;
        }
        Runnable runnable = new Runnable() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.5
            @Override // java.lang.Runnable
            public void run() {
                BluetoothClient.this.bondedRfcommTimeoutRunnable = null;
                if (j != BluetoothClient.this.connectSessionId) {
                    return;
                }
                BluetoothClient bluetoothClient = BluetoothClient.this;
                if (bluetoothClient.isSocketStillConnected(bluetoothClient.mSocket) || BluetoothClient.this.isSocketStillConnected(bluetoothSocket) || !BluetoothClient.this.isConnectAttemptActive(j, bluetoothDevice)) {
                    return;
                }
                boolean zIsConfirmedStaleBond = BluetoothClient.this.isConfirmedStaleBond(bluetoothDevice, "bonded rfcomm timeout");
                LogToFile.i("已配对直连超时(10000ms), stale=" + zIsConfirmedStaleBond + " -> " + bluetoothDevice.getAddress());
                BluetoothClient.this.closeQuietly(bluetoothSocket);
                if (BluetoothClient.this.connectingSocket == bluetoothSocket) {
                    BluetoothClient.this.connectingSocket = null;
                }
                if (zIsConfirmedStaleBond) {
                    BluetoothClient.this.startStaleBondRepair(bluetoothDevice, "bonded rfcomm timeout");
                } else {
                    BluetoothClient.this.stopPresenceScanForBondProbe();
                    LogToFile.i("设备未在广播，按未开机/超距处理，不拆除配对");
                }
            }
        };
        this.bondedRfcommTimeoutRunnable = runnable;
        this.mHandler.postDelayed(runnable, 10000L);
        LogToFile.i("已配对直连启动短超时探测: 10000ms -> " + bluetoothDevice.getAddress());
    }

    private void cancelPostBondConnect() {
        Runnable runnable = this.postBondConnectRunnable;
        if (runnable != null) {
            this.mHandler.removeCallbacks(runnable);
            this.postBondConnectRunnable = null;
        }
        this.postBondConnectScheduled = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isConnectAttemptActive(long j, BluetoothDevice bluetoothDevice) {
        if (j == this.connectSessionId && !isUserCancelledBond(bluetoothDevice)) {
            return bluetoothDevice == null || TextUtils.isEmpty(this.pendingConnectAddress) || this.pendingConnectAddress.equalsIgnoreCase(bluetoothDevice.getAddress());
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x01a0  */
    @android.annotation.SuppressLint({"MissingPermission"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean handlePairingRequest(android.bluetooth.BluetoothDevice r8, android.content.Intent r9) {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.rtkclientlib.client.BluetoothClient.handlePairingRequest(android.bluetooth.BluetoothDevice, android.content.Intent):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void scheduleConnectAfterBond(final BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice == null) {
            return;
        }
        if (this.postBondConnectScheduled) {
            LogToFile.i("配对后连接已调度，跳过重复");
            return;
        }
        final String address = bluetoothDevice.getAddress();
        if (TextUtils.isEmpty(address)) {
            return;
        }
        if (!TextUtils.isEmpty(this.pendingConnectAddress) && !this.pendingConnectAddress.equalsIgnoreCase(address)) {
            LogToFile.i("配对完成但非当前目标设备，忽略：" + address);
            return;
        }
        BluetoothDevice bluetoothDeviceResolveBondedDevice = resolveBondedDevice(bluetoothDevice);
        BluetoothAdapter bluetoothAdapter = this.bluetoothAdapter;
        if (bluetoothAdapter != null) {
            bluetoothDeviceResolveBondedDevice = resolveBondedDevice(bluetoothAdapter.getRemoteDevice(address));
        }
        if (bluetoothDeviceResolveBondedDevice != null) {
            bluetoothDevice = bluetoothDeviceResolveBondedDevice;
        }
        if (!isDeviceBonded(bluetoothDevice)) {
            LogToFile.i("配对完成回调时仍未 BOND_BONDED，继续配对，不直连: " + address);
            this.bondingInProgress = true;
            this.pendingConnectAddress = address;
            startBondWatch(bluetoothDevice);
            startBondUiNow(bluetoothDevice);
            return;
        }
        stopBondWatch();
        this.bondingInProgress = false;
        clearBondAttempt(address);
        this.pendingConnectAddress = address;
        BluetoothSocket bluetoothSocket = this.mSocket;
        if (bluetoothSocket != null && bluetoothSocket.isConnected()) {
            LogToFile.i("设备已连接，忽略配对完成回调");
            return;
        }
        if (this.isConnecting) {
            interruptConnectThread();
        }
        cancelPostBondConnect();
        this.postBondConnectScheduled = true;
        this.lastBondCompletedAt = System.currentTimeMillis();
        this.removingStaleBond = false;
        this.bondedConnectFailCount = 0;
        this.bondedConnectFailAddress = null;
        MultiBluetoothManager.getInstance(this.context).finishBondActivity();
        notifyBondCompleted(bluetoothDevice);
        LogToFile.i("配对成功，800ms 后开始连接：" + bluetoothDevice.getName());
        Runnable runnable = new Runnable() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.6
            @Override // java.lang.Runnable
            public void run() {
                BluetoothClient.this.postBondConnectRunnable = null;
                BluetoothClient.this.postBondConnectScheduled = false;
                if (TextUtils.isEmpty(BluetoothClient.this.pendingConnectAddress) || !BluetoothClient.this.pendingConnectAddress.equalsIgnoreCase(address)) {
                    return;
                }
                if (BluetoothClient.this.isUserCancelledBond(bluetoothDevice)) {
                    LogToFile.i("用户已取消，跳过配对后连接: " + address);
                    return;
                }
                BluetoothClient.this.startConnectThread(bluetoothDevice);
            }
        };
        this.postBondConnectRunnable = runnable;
        this.mHandler.postDelayed(runnable, 800L);
    }

    private void notifyBondCompleted(final BluetoothDevice bluetoothDevice) {
        this.mHandler.post(new Runnable() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.7
            @Override // java.lang.Runnable
            public void run() {
                if (BluetoothClient.this.connectionListener != null) {
                    BluetoothClient.this.connectionListener.onBondCompleted(bluetoothDevice);
                }
            }
        });
    }

    @SuppressLint({"MissingPermission"})
    private BluetoothDevice getPendingBondDevice() {
        BluetoothAdapter bluetoothAdapter;
        if (TextUtils.isEmpty(this.pendingConnectAddress) || (bluetoothAdapter = this.bluetoothAdapter) == null) {
            return null;
        }
        return bluetoothAdapter.getRemoteDevice(this.pendingConnectAddress);
    }

    @SuppressLint({"MissingPermission"})
    private void cancelBondProcessForAddress(String str) {
        BluetoothAdapter bluetoothAdapter;
        if (TextUtils.isEmpty(str) || (bluetoothAdapter = this.bluetoothAdapter) == null) {
            return;
        }
        try {
            cancelBondProcessIfNeeded(bluetoothAdapter.getRemoteDevice(str));
        } catch (Throwable th) {
            LogToFile.i("cancelBondProcessForAddress 失败: " + th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void cancelOtherBondProcesses(String str) {
        if (!TextUtils.isEmpty(this.lastBondDeviceAddress) && (TextUtils.isEmpty(str) || !this.lastBondDeviceAddress.equalsIgnoreCase(str))) {
            LogToFile.i("取消上一台设备配对: " + this.lastBondDeviceAddress);
            cancelBondProcessForAddress(this.lastBondDeviceAddress);
        }
        if (TextUtils.isEmpty(this.pendingConnectAddress)) {
            return;
        }
        if (TextUtils.isEmpty(str) || !this.pendingConnectAddress.equalsIgnoreCase(str)) {
            LogToFile.i("取消待连接设备配对: " + this.pendingConnectAddress);
            cancelBondProcessForAddress(this.pendingConnectAddress);
        }
    }

    private void markBondAttempt(BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice == null || TextUtils.isEmpty(bluetoothDevice.getAddress())) {
            return;
        }
        this.lastBondDeviceAddress = bluetoothDevice.getAddress();
    }

    private void clearBondAttempt(String str) {
        if (TextUtils.isEmpty(str) || !str.equalsIgnoreCase(this.lastBondDeviceAddress)) {
            return;
        }
        this.lastBondDeviceAddress = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public static boolean cancelBondProcessIfNeeded(BluetoothDevice bluetoothDevice) {
        int bondState;
        if (bluetoothDevice == null || (bondState = bluetoothDevice.getBondState()) == 12) {
            return false;
        }
        if (isListedAsBonded(bluetoothDevice)) {
            boolean zInvokeHiddenBoolean = invokeHiddenBoolean(bluetoothDevice, "cancelBondProcess");
            LogToFile.i("cancelBond skip removeBond(已配对) result=" + zInvokeHiddenBoolean + ", beforeState=" + bondState + ", afterState=" + bluetoothDevice.getBondState() + " -> " + bluetoothDevice.getAddress());
            return zInvokeHiddenBoolean;
        }
        boolean zInvokeHiddenBoolean2 = invokeHiddenBoolean(bluetoothDevice, "cancelBondProcess");
        if (bluetoothDevice.getBondState() != 12) {
            zInvokeHiddenBoolean2 = invokeHiddenBoolean(bluetoothDevice, "removeBond") || zInvokeHiddenBoolean2;
        }
        LogToFile.i("cancelBond result=" + zInvokeHiddenBoolean2 + ", beforeState=" + bondState + ", afterState=" + bluetoothDevice.getBondState() + " -> " + bluetoothDevice.getAddress());
        return zInvokeHiddenBoolean2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public static boolean isListedAsBonded(BluetoothDevice bluetoothDevice) {
        BluetoothAdapter defaultAdapter;
        Set<BluetoothDevice> bondedDevices;
        if (bluetoothDevice == null || (defaultAdapter = BluetoothAdapter.getDefaultAdapter()) == null) {
            return false;
        }
        try {
            bondedDevices = defaultAdapter.getBondedDevices();
        } catch (Throwable unused) {
        }
        if (bondedDevices == null) {
            return false;
        }
        String address = bluetoothDevice.getAddress();
        if (TextUtils.isEmpty(address)) {
            return false;
        }
        for (BluetoothDevice bluetoothDevice2 : bondedDevices) {
            if (bluetoothDevice2 != null && address.equalsIgnoreCase(bluetoothDevice2.getAddress())) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetStaleBondRepairState() {
        this.removingStaleBond = false;
        cancelRepairBondAfterRemoved();
        clearBondUiRequested();
        this.staleBondRepairCount = 0;
        this.staleBondRepairAddress = null;
        this.lastStaleBondRepairAt = 0L;
        this.staleBondRemovedAt = 0L;
        this.bondedConnectFailCount = 0;
        this.bondedConnectFailAddress = null;
    }

    @SuppressLint({"MissingPermission"})
    private boolean wasRecentlyScanned(String str) {
        if (TextUtils.isEmpty(str) || System.currentTimeMillis() - this.lastScanResultAt > 30000) {
            return false;
        }
        for (BluetoothDevice bluetoothDevice : this.scanDevices) {
            if (bluetoothDevice != null && str.equalsIgnoreCase(bluetoothDevice.getAddress())) {
                return true;
            }
        }
        return false;
    }

    private boolean isStaleBondRepairOnCooldown(String str) {
        return !TextUtils.isEmpty(str) && !TextUtils.isEmpty(this.staleBondRepairAddress) && str.equalsIgnoreCase(this.staleBondRepairAddress) && this.staleBondRepairCount > 0 && System.currentTimeMillis() - this.lastStaleBondRepairAt < 60000;
    }

    private static boolean isAuthOrKeyError(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.contains("auth") || lowerCase.contains("pin or key") || lowerCase.contains("key missing") || lowerCase.contains("security") || lowerCase.contains("not encrypted") || lowerCase.contains("encryption") || lowerCase.contains("insufficient authentication");
    }

    @SuppressLint({"MissingPermission"})
    private void markStaleBondRepair(BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice == null || TextUtils.isEmpty(bluetoothDevice.getAddress())) {
            return;
        }
        String address = bluetoothDevice.getAddress();
        this.removingStaleBond = true;
        this.staleBondRepairAddress = address;
        if (this.staleBondRepairCount < 1) {
            this.staleBondRepairCount = 1;
        }
        this.lastStaleBondRepairAt = System.currentTimeMillis();
        this.bondedConnectFailCount = 0;
        this.bondedConnectFailAddress = address;
        this.bondingInProgress = true;
        this.pendingConnectAddress = address;
        markBondAttempt(bluetoothDevice);
        MultiBluetoothManager.getInstance(this.context).suppressBackgroundBondCancel(12000L);
        notifyBonding(bluetoothDevice);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public boolean removeStaleBond(BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice == null) {
            return false;
        }
        if (this.bluetoothAdapter != null && !TextUtils.isEmpty(bluetoothDevice.getAddress())) {
            try {
                bluetoothDevice = this.bluetoothAdapter.getRemoteDevice(bluetoothDevice.getAddress());
            } catch (Throwable unused) {
            }
        }
        int bondState = bluetoothDevice.getBondState();
        boolean zInvokeHiddenBoolean = invokeHiddenBoolean(bluetoothDevice, "removeBond");
        LogToFile.i("removeStaleBond result=" + zInvokeHiddenBoolean + ", beforeState=" + bondState + ", afterState=" + bluetoothDevice.getBondState() + " -> " + bluetoothDevice.getAddress());
        return zInvokeHiddenBoolean;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public boolean tryRepairStaleBond(final BluetoothDevice bluetoothDevice, final String str) {
        if (bluetoothDevice == null || isUserCancelledBond(bluetoothDevice) || TextUtils.isEmpty(this.pendingConnectAddress) || !this.pendingConnectAddress.equalsIgnoreCase(bluetoothDevice.getAddress())) {
            return false;
        }
        if (this.removingStaleBond || this.bondingInProgress) {
            LogToFile.i("RFCOMM 失败时配对/拆配进行中，等待重新配对完成: " + str);
            return true;
        }
        if (!isDeviceBonded(bluetoothDevice) && !isListedAsBonded(bluetoothDevice)) {
            return false;
        }
        if (this.lastBondCompletedAt > 0 && System.currentTimeMillis() - this.lastBondCompletedAt < 10000) {
            LogToFile.i("刚配对完成，连接失败不拆配: " + str);
            return false;
        }
        String address = bluetoothDevice.getAddress();
        if (isStaleBondRepairOnCooldown(address)) {
            LogToFile.i("陈旧配对修复冷却中，不再拆配: " + address);
            return false;
        }
        if (!isConfirmedStaleBond(bluetoothDevice, str)) {
            LogToFile.i("已配对连接失败，但无法确认陈旧配对（设备可能关机/超距），不拆配: " + str);
            stopPresenceScanForBondProbe();
            return false;
        }
        if (!TextUtils.isEmpty(this.bondedConnectFailAddress) && this.bondedConnectFailAddress.equalsIgnoreCase(address)) {
            this.bondedConnectFailCount++;
        } else {
            this.bondedConnectFailAddress = address;
            this.bondedConnectFailCount = 1;
        }
        LogToFile.i("判定为陈旧配对，移除后重新配对: addr=" + address + ", fail=" + this.bondedConnectFailCount + ", nearby=" + wasRecentlyScanned(address) + ", auth=" + isAuthOrKeyError(str) + ", error=" + str);
        this.mHandler.post(new Runnable() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.8
            @Override // java.lang.Runnable
            public void run() {
                BluetoothClient.this.startStaleBondRepair(bluetoothDevice, str);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void startStaleBondRepair(BluetoothDevice bluetoothDevice, String str) {
        if (bluetoothDevice == null || this.bluetoothAdapter == null || isUserCancelledBond(bluetoothDevice)) {
            return;
        }
        String address = bluetoothDevice.getAddress();
        if (TextUtils.isEmpty(this.pendingConnectAddress) || !this.pendingConnectAddress.equalsIgnoreCase(address)) {
            LogToFile.i("目标已变更，取消陈旧配对修复: " + address);
            return;
        }
        if (isSocketConnected()) {
            return;
        }
        if (this.removingStaleBond) {
            LogToFile.i("陈旧配对修复已在进行: " + address);
            return;
        }
        if (isStaleBondRepairOnCooldown(address)) {
            LogToFile.i("陈旧配对修复冷却中，跳过: " + address);
            return;
        }
        LogToFile.i("开始移除陈旧配对并重新配对: " + address + ", error=" + str);
        this.staleBondRepairCount = this.staleBondRepairCount + 1;
        this.staleBondRemovedAt = 0L;
        clearBondUiRequested();
        markStaleBondRepair(bluetoothDevice);
        interruptConnectThread();
        removeStaleBond(this.bluetoothAdapter.getRemoteDevice(address));
        scheduleRepairBondAfterRemoved(address, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void scheduleRepairBondAfterRemoved(final String str, final int i) {
        if (TextUtils.isEmpty(str) || this.bluetoothAdapter == null) {
            return;
        }
        Runnable runnable = this.repairBondAfterRemovedRunnable;
        if (runnable != null) {
            this.mHandler.removeCallbacks(runnable);
            this.repairBondAfterRemovedRunnable = null;
        }
        Runnable runnable2 = new Runnable() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.9
            @Override // java.lang.Runnable
            public void run() {
                if (BluetoothClient.this.repairBondAfterRemovedRunnable != this) {
                    return;
                }
                BluetoothClient.this.repairBondAfterRemovedRunnable = null;
                if (str.equalsIgnoreCase(BluetoothClient.this.pendingConnectAddress)) {
                    if (BluetoothClient.this.removingStaleBond || BluetoothClient.this.bondingInProgress) {
                        BluetoothClient bluetoothClient = BluetoothClient.this;
                        if (bluetoothClient.isUserCancelledBond(bluetoothClient.bluetoothAdapter.getRemoteDevice(str))) {
                            return;
                        }
                        BluetoothDevice remoteDevice = BluetoothClient.this.bluetoothAdapter.getRemoteDevice(str);
                        boolean z = BluetoothClient.this.isDeviceBonded(remoteDevice) || BluetoothClient.isListedAsBonded(remoteDevice);
                        int bondState = remoteDevice.getBondState();
                        if (BluetoothClient.this.isBondUiRequested(str)) {
                            LogToFile.i("陈旧配对重配 UI 已发起，等待系统配对完成: " + str);
                            BluetoothClient.this.startBondWatch(remoteDevice);
                            return;
                        }
                        if (!z && bondState != 11) {
                            if (BluetoothClient.this.staleBondRemovedAt <= 0) {
                                BluetoothClient.this.staleBondRemovedAt = System.currentTimeMillis();
                            }
                            if (System.currentTimeMillis() - BluetoothClient.this.staleBondRemovedAt < 1500) {
                                BluetoothClient.this.scheduleRepairBondAfterRemoved(str, i + 1);
                                return;
                            }
                            LogToFile.i("陈旧配对已移除，重新发起配对: " + str + ", attempt=" + i);
                            BluetoothClient.this.stopScan();
                            BluetoothClient.this.bondingInProgress = true;
                            BluetoothClient.this.pendingConnectAddress = str;
                            BluetoothClient.this.startBondWatch(remoteDevice);
                            BluetoothClient.this.startBondUiNow(remoteDevice);
                            BluetoothClient.this.scheduleEnsureNewBondUi(str);
                            return;
                        }
                        if (bondState == 11) {
                            if (!BluetoothClient.this.bondUiReachedBonding) {
                                LogToFile.i("陈旧配对拆除后出现残留配对，取消后继续等待重配: " + str);
                                BluetoothClient.cancelBondProcessIfNeeded(remoteDevice);
                                BluetoothClient.this.scheduleRepairBondAfterRemoved(str, i + 1);
                                return;
                            }
                            LogToFile.i("陈旧配对移除后已进入重新配对，等待完成: " + str);
                            BluetoothClient.this.bondingInProgress = true;
                            BluetoothClient.this.startBondWatch(remoteDevice);
                            BluetoothClient.this.notifyBonding(remoteDevice);
                            return;
                        }
                        int i2 = i;
                        if (i2 >= 24) {
                            LogToFile.e("等待移除陈旧配对超时，仍尝试重新配对: " + str);
                            BluetoothClient.this.bondingInProgress = true;
                            if (z) {
                                BluetoothClient.this.removeStaleBond(remoteDevice);
                            }
                            BluetoothClient.this.startBondWatch(remoteDevice);
                            BluetoothClient.this.startBondUiNow(remoteDevice);
                            BluetoothClient.this.scheduleEnsureNewBondUi(str);
                            return;
                        }
                        if (i2 % 4 == 0) {
                            BluetoothClient.this.removeStaleBond(remoteDevice);
                        }
                        BluetoothClient.this.scheduleRepairBondAfterRemoved(str, i + 1);
                    }
                }
            }
        };
        this.repairBondAfterRemovedRunnable = runnable2;
        this.mHandler.postDelayed(runnable2, 250L);
    }

    private void cancelRepairBondAfterRemoved() {
        Runnable runnable = this.repairBondAfterRemovedRunnable;
        if (runnable != null) {
            this.mHandler.removeCallbacks(runnable);
            this.repairBondAfterRemovedRunnable = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isBondUiRequested(String str) {
        return !TextUtils.isEmpty(str) && !TextUtils.isEmpty(this.bondUiRequestedAddress) && str.equalsIgnoreCase(this.bondUiRequestedAddress) && System.currentTimeMillis() - this.bondUiRequestedAt < 20000;
    }

    private void markBondUiRequested(String str) {
        this.bondUiRequestedAddress = str;
        this.bondUiRequestedAt = System.currentTimeMillis();
        this.bondUiReachedBonding = false;
    }

    private void clearBondUiRequested() {
        this.bondUiRequestedAddress = null;
        this.bondUiRequestedAt = 0L;
        this.bondUiReachedBonding = false;
        Runnable runnable = this.bondUiFallbackRunnable;
        if (runnable != null) {
            this.mHandler.removeCallbacks(runnable);
            this.bondUiFallbackRunnable = null;
        }
        Runnable runnable2 = this.ensureNewBondUiRunnable;
        if (runnable2 != null) {
            this.mHandler.removeCallbacks(runnable2);
            this.ensureNewBondUiRunnable = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAwaitingReplacementBond(String str) {
        if (TextUtils.isEmpty(str) || this.bondUiReachedBonding || !this.removingStaleBond) {
            return false;
        }
        return TextUtils.isEmpty(this.staleBondRepairAddress) || str.equalsIgnoreCase(this.staleBondRepairAddress) || str.equalsIgnoreCase(this.pendingConnectAddress);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleEnsureNewBondUi(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Runnable runnable = this.ensureNewBondUiRunnable;
        if (runnable != null) {
            this.mHandler.removeCallbacks(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.10
            @Override // java.lang.Runnable
            public void run() {
                BluetoothClient.this.ensureNewBondUiRunnable = null;
                if (str.equalsIgnoreCase(BluetoothClient.this.pendingConnectAddress) && BluetoothClient.this.bondingInProgress && BluetoothClient.this.bluetoothAdapter != null) {
                    BluetoothDevice remoteDevice = BluetoothClient.this.bluetoothAdapter.getRemoteDevice(str);
                    if (BluetoothClient.this.isUserCancelledBond(remoteDevice)) {
                        return;
                    }
                    if (BluetoothClient.this.isDeviceBonded(remoteDevice)) {
                        BluetoothClient.this.scheduleConnectAfterBond(remoteDevice);
                        return;
                    }
                    if (BluetoothClient.this.bondUiReachedBonding || remoteDevice.getBondState() == 11) {
                        return;
                    }
                    LogToFile.i("拆配后未进入新配对，再次拉起前台配对页: " + str);
                    BluetoothClient.this.bondingInProgress = true;
                    BluetoothClient.this.startBondUiNow(remoteDevice);
                }
            }
        };
        this.ensureNewBondUiRunnable = runnable2;
        this.mHandler.postDelayed(runnable2, 2000L);
    }

    private static boolean invokeHiddenBoolean(BluetoothDevice bluetoothDevice, String str) {
        try {
            Method method = bluetoothDevice.getClass().getMethod(str, new Class[0]);
            method.setAccessible(true);
            Object objInvoke = method.invoke(bluetoothDevice, new Object[0]);
            LogToFile.i(str + ": " + objInvoke + " -> " + bluetoothDevice.getAddress());
            return Boolean.TRUE.equals(objInvoke);
        } catch (Throwable th) {
            LogToFile.i(str + " 不可用: " + th.getMessage());
            return false;
        }
    }

    private void markUserCancelledBond(BluetoothDevice bluetoothDevice) {
        String address;
        if (bluetoothDevice != null && !TextUtils.isEmpty(bluetoothDevice.getAddress())) {
            address = bluetoothDevice.getAddress();
        } else if (!TextUtils.isEmpty(this.pendingConnectAddress)) {
            address = this.pendingConnectAddress;
        } else {
            address = !TextUtils.isEmpty(this.lastBondDeviceAddress) ? this.lastBondDeviceAddress : null;
        }
        if (TextUtils.isEmpty(address)) {
            return;
        }
        this.userCancelledBondAddress = address;
        this.userCancelledBondUntilMs = System.currentTimeMillis() + 8000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isUserCancelledBond(BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice == null || TextUtils.isEmpty(this.userCancelledBondAddress)) {
            return false;
        }
        return this.userCancelledBondAddress.equalsIgnoreCase(bluetoothDevice.getAddress());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void handleBondCancelled(BluetoothDevice bluetoothDevice) {
        BluetoothAdapter bluetoothAdapter;
        if (bluetoothDevice == null) {
            bluetoothDevice = getPendingBondDevice();
        }
        if (bluetoothDevice != null && !TextUtils.isEmpty(this.pendingConnectAddress) && !this.pendingConnectAddress.equalsIgnoreCase(bluetoothDevice.getAddress())) {
            LogToFile.i("忽略非当前目标的配对取消: cancelled=" + bluetoothDevice.getAddress() + ", pending=" + this.pendingConnectAddress);
            clearBondAttempt(bluetoothDevice.getAddress());
            return;
        }
        if (isDeviceBonded(bluetoothDevice) || isListedAsBonded(bluetoothDevice)) {
            StringBuilder sb = new StringBuilder();
            sb.append("收到配对取消但设备已配对，改为自动连接: ");
            sb.append(bluetoothDevice != null ? bluetoothDevice.getAddress() : this.pendingConnectAddress);
            LogToFile.i(sb.toString());
            if (bluetoothDevice == null) {
                bluetoothDevice = getPendingBondDevice();
            }
            scheduleConnectAfterBond(bluetoothDevice);
            return;
        }
        String str = this.lastBondDeviceAddress;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("配对已取消或中断: ");
        sb2.append(bluetoothDevice != null ? bluetoothDevice.getName() : this.pendingConnectAddress);
        LogToFile.i(sb2.toString());
        resetStaleBondRepairState();
        markUserCancelledBond(bluetoothDevice);
        this.connectSessionId++;
        stopBondWatch();
        cancelPostBondConnect();
        this.bondingInProgress = false;
        this.pendingConnectAddress = null;
        if (bluetoothDevice != null) {
            clearBondAttempt(bluetoothDevice.getAddress());
        } else if (!TextUtils.isEmpty(str)) {
            clearBondAttempt(str);
        }
        this.lastBondDeviceAddress = null;
        interruptConnectThread();
        MultiBluetoothManager.getInstance(this.context).stopAutoReconnect();
        MultiBluetoothManager.getInstance(this.context).finishBondActivity();
        if (this.connectionListener != null) {
            notifyBondCancelled(bluetoothDevice);
        }
        if (this.scanListener != null) {
            if (bluetoothDevice == null) {
                bluetoothDevice = getPendingBondDevice();
            }
            if (bluetoothDevice == null && !TextUtils.isEmpty(str) && (bluetoothAdapter = this.bluetoothAdapter) != null) {
                bluetoothDevice = bluetoothAdapter.getRemoteDevice(str);
            }
            if (bluetoothDevice != null) {
                this.scanListener.cancelBond(bluetoothDevice);
            }
        }
    }

    private void notifyBondCancelled(final BluetoothDevice bluetoothDevice) {
        this.mHandler.post(new Runnable() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.11
            @Override // java.lang.Runnable
            public void run() {
                if (BluetoothClient.this.connectionListener != null) {
                    BluetoothClient.this.connectionListener.onBondCancelled(bluetoothDevice);
                }
            }
        });
    }

    @SuppressLint({"MissingPermission"})
    public void cancelBonding() {
        BluetoothAdapter bluetoothAdapter;
        LogToFile.i("用户取消配对: last=" + this.lastBondDeviceAddress + ", pending=" + this.pendingConnectAddress);
        BluetoothDevice pendingBondDevice = getPendingBondDevice();
        if (pendingBondDevice == null && !TextUtils.isEmpty(this.lastBondDeviceAddress) && (bluetoothAdapter = this.bluetoothAdapter) != null) {
            pendingBondDevice = bluetoothAdapter.getRemoteDevice(this.lastBondDeviceAddress);
        }
        markUserCancelledBond(pendingBondDevice);
        cancelBondProcessForAddress(this.lastBondDeviceAddress);
        cancelBondProcessForAddress(this.pendingConnectAddress);
        if (pendingBondDevice != null) {
            cancelBondProcessIfNeeded(pendingBondDevice);
        }
        if (!this.bondingInProgress && TextUtils.isEmpty(this.pendingConnectAddress) && TextUtils.isEmpty(this.lastBondDeviceAddress) && pendingBondDevice == null) {
            return;
        }
        handleBondCancelled(pendingBondDevice);
    }

    @SuppressLint({"MissingPermission"})
    public void prepareForNewConnection(String str) {
        BluetoothAdapter bluetoothAdapter;
        LogToFile.i("准备新连接，静默清理旧的配对申请: new=" + str + ", last=" + this.lastBondDeviceAddress + ", pending=" + this.pendingConnectAddress);
        if (!TextUtils.isEmpty(str) && ((!TextUtils.isEmpty(this.pendingConnectAddress) && str.equalsIgnoreCase(this.pendingConnectAddress)) || ((!TextUtils.isEmpty(this.bondedConnectFailAddress) && str.equalsIgnoreCase(this.bondedConnectFailAddress)) || (!TextUtils.isEmpty(this.staleBondRepairAddress) && str.equalsIgnoreCase(this.staleBondRepairAddress))))) {
            this.removingStaleBond = false;
        } else {
            resetStaleBondRepairState();
        }
        this.connectSessionId++;
        this.connectionListener = null;
        stopBondWatch();
        cancelPostBondConnect();
        rememberClearingBond(this.pendingConnectAddress, str);
        rememberClearingBond(this.lastBondDeviceAddress, str);
        cancelOtherBondProcesses(str);
        if (!TextUtils.isEmpty(str) && (bluetoothAdapter = this.bluetoothAdapter) != null) {
            try {
                BluetoothDevice remoteDevice = bluetoothAdapter.getRemoteDevice(str);
                if (remoteDevice.getBondState() == 11) {
                    LogToFile.i("准备新连接：清除目标残留 BOND_BONDING " + str);
                    rememberClearingBond(str, null);
                    cancelBondProcessIfNeeded(remoteDevice);
                }
            } catch (Throwable th) {
                LogToFile.i("准备新连接清除目标配对失败: " + th.getMessage());
            }
        }
        this.bondingInProgress = false;
        this.pendingConnectAddress = null;
        interruptConnectThread();
    }

    private void rememberClearingBond(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (TextUtils.isEmpty(str2) || !str.equalsIgnoreCase(str2)) {
            this.clearingBondAddress = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public boolean isOtherDeviceBonding(String str) {
        if (this.bluetoothAdapter == null) {
            return false;
        }
        String[] strArr = {this.clearingBondAddress, this.lastBondDeviceAddress, this.pendingConnectAddress};
        for (int i = 0; i < 3; i++) {
            String str2 = strArr[i];
            if (!TextUtils.isEmpty(str2) && (TextUtils.isEmpty(str) || !str2.equalsIgnoreCase(str))) {
                try {
                    if (this.bluetoothAdapter.getRemoteDevice(str2).getBondState() == 11) {
                        return true;
                    }
                } catch (Throwable unused) {
                    continue;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void refreshClearingBondState() {
        BluetoothAdapter bluetoothAdapter;
        if (TextUtils.isEmpty(this.clearingBondAddress) || (bluetoothAdapter = this.bluetoothAdapter) == null) {
            return;
        }
        try {
            int bondState = bluetoothAdapter.getRemoteDevice(this.clearingBondAddress).getBondState();
            if (bondState != 11) {
                LogToFile.i("旧配对已清除: " + this.clearingBondAddress + ", state=" + bondState);
                this.clearingBondAddress = null;
            }
        } catch (Throwable unused) {
            this.clearingBondAddress = null;
        }
    }

    public boolean hasActiveSession() {
        return isSocketConnected() || this.isConnecting || this.bondingInProgress || !TextUtils.isEmpty(this.pendingConnectAddress);
    }

    public boolean isSocketConnected() {
        return isSocketStillConnected(this.mSocket);
    }

    public String getSessionAddress() {
        BluetoothDevice bluetoothDevice;
        if (!TextUtils.isEmpty(this.pendingConnectAddress)) {
            return this.pendingConnectAddress;
        }
        if ((isSocketConnected() || this.isConnecting) && (bluetoothDevice = this.mmDevice) != null) {
            return bluetoothDevice.getAddress();
        }
        return null;
    }

    @SuppressLint({"MissingPermission"})
    private void onBondCompleted(BluetoothDevice bluetoothDevice) {
        scheduleConnectAfterBond(bluetoothDevice);
    }

    public void startScan(OnDeviceScanListener onDeviceScanListener) {
        stopScanInternal(false);
        this.scanListener = onDeviceScanListener;
        this.scanDevices.clear();
        this.reportedScanAddresses.clear();
        ensureBondReceiverRegistered();
        if (this.bluetoothAdapter != null) {
            ScanSettings.Builder builder = new ScanSettings.Builder();
            builder.setScanMode(2);
            ScanSettings scanSettingsBuild = builder.build();
            if (this.bluetoothAdapter.getBluetoothLeScanner() != null) {
                this.bluetoothAdapter.getBluetoothLeScanner().startScan((List<ScanFilter>) null, scanSettingsBuild, this.mScanCallback);
                this.isScanning = true;
                LogToFile.i("开始搜索蓝牙设备");
            }
            startTimer(builder);
        }
    }

    private void startTimer(final ScanSettings.Builder builder) {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.scanExecutor = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        this.schedule = scheduledExecutorServiceNewSingleThreadScheduledExecutor.schedule(new Runnable() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.12
            @Override // java.lang.Runnable
            public void run() {
                if (BluetoothClient.this.scanDevices.isEmpty()) {
                    LogToFile.i("==========低延迟模式搜索不到设备 -> 强制使用传统方式扫描==========");
                    if (Build.VERSION.SDK_INT >= 26) {
                        builder.setScanMode(0).setLegacy(true);
                        builder.setCallbackType(1).setReportDelay(0L);
                        builder.setPhy(255);
                    }
                    ScanSettings scanSettingsBuild = builder.build();
                    if (BluetoothClient.this.bluetoothAdapter.getBluetoothLeScanner() != null) {
                        BluetoothClient.this.bluetoothAdapter.getBluetoothLeScanner().stopScan(BluetoothClient.this.mScanCallback);
                        BluetoothClient.this.bluetoothAdapter.getBluetoothLeScanner().startScan((List<ScanFilter>) null, scanSettingsBuild, BluetoothClient.this.mScanCallback);
                        BluetoothClient.this.isScanning = true;
                        BluetoothClient.this.mHandler.postDelayed(BluetoothClient.this.stopScanCallbacks, 10000L);
                        return;
                    }
                    return;
                }
                BluetoothClient.this.stopScan();
            }
        }, 10000L, TimeUnit.MILLISECONDS);
    }

    public void stopScan() {
        LogToFile.i("停止搜索蓝牙");
        stopScanInternal(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopScanInternal(boolean z) {
        OnDeviceScanListener onDeviceScanListener;
        BluetoothAdapter bluetoothAdapter;
        this.presenceScanForBondProbe = false;
        this.mHandler.removeCallbacks(this.stopScanCallbacks);
        ScheduledFuture<?> scheduledFuture = this.schedule;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.schedule = null;
        }
        ScheduledExecutorService scheduledExecutorService = this.scanExecutor;
        if (scheduledExecutorService != null && !scheduledExecutorService.isShutdown()) {
            this.scanExecutor.shutdownNow();
        }
        this.scanExecutor = null;
        if (this.isScanning && (bluetoothAdapter = this.bluetoothAdapter) != null && bluetoothAdapter.getBluetoothLeScanner() != null) {
            try {
                this.bluetoothAdapter.getBluetoothLeScanner().stopScan(this.mScanCallback);
            } catch (Exception e) {
                LogToFile.e("停止搜索蓝牙失败: " + e.getMessage());
            }
        }
        boolean z2 = this.isScanning;
        this.isScanning = false;
        if (z && z2 && (onDeviceScanListener = this.scanListener) != null) {
            onDeviceScanListener.onScanFinished();
        }
    }

    public void connectToDevice(BluetoothDevice bluetoothDevice, OnConnectionStateChangedListener onConnectionStateChangedListener) {
        this.connectSessionId++;
        this.userCancelledBondAddress = null;
        this.userCancelledBondUntilMs = 0L;
        this.bondedProbeStartedAt = 0L;
        clearBondUiRequested();
        String address = bluetoothDevice != null ? bluetoothDevice.getAddress() : null;
        cancelOtherBondProcesses(address);
        this.connectionListener = onConnectionStateChangedListener;
        this.socketClosed = false;
        ensureBondReceiverRegistered();
        BluetoothDevice bluetoothDeviceResolveConnectDeviceByAddress = resolveConnectDeviceByAddress(bluetoothDevice);
        if (bluetoothDeviceResolveConnectDeviceByAddress != null) {
            bluetoothDevice = bluetoothDeviceResolveConnectDeviceByAddress;
        }
        if (bluetoothDevice != null) {
            address = bluetoothDevice.getAddress();
        }
        this.pendingConnectAddress = address;
        if (isDeviceBonded(bluetoothDevice)) {
            LogToFile.i("已配对设备，按地址直连: " + this.pendingConnectAddress);
            this.bondingInProgress = false;
            clearBondAttempt(bluetoothDevice.getAddress());
            startConnectThread(bluetoothDevice);
            return;
        }
        LogToFile.i("未配对设备，先配对再连接: " + this.pendingConnectAddress);
        safeCreateBond(bluetoothDevice);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startConnectThread(BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice == null) {
            return;
        }
        if (isUserCancelledBond(bluetoothDevice)) {
            LogToFile.i("用户已取消，跳过 RFCOMM 连接: " + bluetoothDevice.getAddress());
            return;
        }
        if (TextUtils.isEmpty(this.pendingConnectAddress) || !this.pendingConnectAddress.equalsIgnoreCase(bluetoothDevice.getAddress())) {
            LogToFile.i("目标已变更，跳过 RFCOMM 连接");
            return;
        }
        if (!isDeviceBonded(bluetoothDevice)) {
            LogToFile.i("未配对设备不能直连，先配对: " + bluetoothDevice.getAddress());
            safeCreateBond(bluetoothDevice);
            return;
        }
        interruptConnectThread();
        ConnectThread connectThread = new ConnectThread(bluetoothDevice);
        this.mConnectThread = connectThread;
        connectThread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void safeCreateBond(final BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice == null || TextUtils.isEmpty(bluetoothDevice.getAddress())) {
            return;
        }
        String str = this.userCancelledBondAddress;
        if (str != null && str.equalsIgnoreCase(bluetoothDevice.getAddress())) {
            this.userCancelledBondAddress = null;
            this.userCancelledBondUntilMs = 0L;
        }
        refreshClearingBondState();
        if (isOtherDeviceBonding(bluetoothDevice.getAddress())) {
            LogToFile.i("safeCreateBond: 等待旧设备退出 BOND_BONDING 后再配对新设备: " + bluetoothDevice.getAddress() + ", clearing=" + this.clearingBondAddress);
            this.pendingConnectAddress = bluetoothDevice.getAddress();
            this.bondingInProgress = true;
            notifyBonding(bluetoothDevice);
            startBondWatch(bluetoothDevice);
            cancelOtherBondProcesses(bluetoothDevice.getAddress());
            scheduleSafeCreateBondWhenStackIdle(bluetoothDevice.getAddress(), 0);
            return;
        }
        boolean z = (TextUtils.isEmpty(this.lastBondDeviceAddress) || this.lastBondDeviceAddress.equalsIgnoreCase(bluetoothDevice.getAddress())) ? false : true;
        cancelOtherBondProcesses(bluetoothDevice.getAddress());
        markBondAttempt(bluetoothDevice);
        if (isDeviceBonded(bluetoothDevice)) {
            this.bondingInProgress = false;
            clearBondAttempt(bluetoothDevice.getAddress());
            stopBondWatch();
            scheduleConnectAfterBond(resolveBondedDevice(bluetoothDevice));
            return;
        }
        this.pendingConnectAddress = bluetoothDevice.getAddress();
        if (bluetoothDevice.getBondState() == 11) {
            if (isStaleTargetBonding(bluetoothDevice.getAddress())) {
                LogToFile.i("safeCreateBond: 目标残留 BOND_BONDING，取消后重配对: " + bluetoothDevice.getAddress());
                cancelBondProcessIfNeeded(bluetoothDevice);
                this.bondingInProgress = true;
                stopScan();
                interruptConnectThread();
                notifyBonding(bluetoothDevice);
                startBondWatch(bluetoothDevice);
                scheduleBondUiAfterCleared(bluetoothDevice.getAddress(), 0);
                return;
            }
            LogToFile.i("safeCreateBond: 目标已在配对中，等待自动配对完成: " + bluetoothDevice.getAddress());
            this.bondingInProgress = true;
            stopScan();
            interruptConnectThread();
            notifyBonding(bluetoothDevice);
            startBondWatch(bluetoothDevice);
            return;
        }
        this.bondingInProgress = true;
        stopScan();
        interruptConnectThread();
        notifyBonding(bluetoothDevice);
        startBondWatch(bluetoothDevice);
        Runnable runnable = new Runnable() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.14
            @Override // java.lang.Runnable
            public void run() {
                if (bluetoothDevice.getAddress().equalsIgnoreCase(BluetoothClient.this.pendingConnectAddress)) {
                    BluetoothClient.this.requestBondUi(bluetoothDevice);
                }
            }
        };
        if (z) {
            this.mHandler.postDelayed(runnable, 350L);
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void scheduleSafeCreateBondWhenStackIdle(final String str, final int i) {
        if (TextUtils.isEmpty(str) || this.bluetoothAdapter == null) {
            return;
        }
        this.mHandler.postDelayed(new Runnable() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.15
            @Override // java.lang.Runnable
            public void run() {
                if (str.equalsIgnoreCase(BluetoothClient.this.pendingConnectAddress) && BluetoothClient.this.bondingInProgress) {
                    BluetoothClient.this.refreshClearingBondState();
                    if (BluetoothClient.this.isOtherDeviceBonding(str)) {
                        int i2 = i;
                        if (i2 >= 24) {
                            LogToFile.e("等待旧设备 BOND_NONE 超时，仍尝试配对新设备: " + str);
                            BluetoothClient.this.clearingBondAddress = null;
                        } else {
                            if (i2 % 4 == 0) {
                                BluetoothClient.this.cancelOtherBondProcesses(str);
                            }
                            BluetoothClient.this.scheduleSafeCreateBondWhenStackIdle(str, i + 1);
                            return;
                        }
                    }
                    BluetoothDevice remoteDevice = BluetoothClient.this.bluetoothAdapter.getRemoteDevice(str);
                    LogToFile.i("蓝牙栈空闲，开始配对新设备: " + str + ", attempt=" + i);
                    BluetoothClient.this.safeCreateBond(remoteDevice);
                }
            }
        }, 250L);
    }

    public void sendData(final byte[] bArr, final boolean z) {
        if (this.executorSend.isShutdown()) {
            this.executorSend = Executors.newCachedThreadPool();
        }
        if (this.outputStream != null) {
            this.executorSend.submit(new Runnable() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.16
                @Override // java.lang.Runnable
                public void run() throws IOException {
                    try {
                        if (z) {
                            byte[] bArr2 = bArr;
                            byte[] bArr3 = new byte[bArr2.length + 2];
                            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
                            byte[] bArr4 = bArr;
                            bArr3[bArr4.length] = 13;
                            bArr3[bArr4.length + 1] = 10;
                            BluetoothClient.this.outputStream.write(bArr3);
                        } else {
                            BluetoothClient.this.outputStream.write(bArr);
                        }
                        BluetoothClient.this.outputStream.flush();
                    } catch (IOException e) {
                        LogToFile.e("发送数据失败(" + BluetoothClient.this.mDeviceType.getType() + ")：" + e.toString());
                        if (e.toString().toLowerCase().contains("closed")) {
                            BluetoothClient.this.socketClosed = true;
                        }
                        if (BluetoothClient.this.bondingInProgress || !TextUtils.isEmpty(BluetoothClient.this.pendingConnectAddress)) {
                            return;
                        }
                        BluetoothClient.this.disconnect();
                    }
                }
            });
        }
    }

    public void receiveSimulatorData(final SimulatorSendCallback simulatorSendCallback) {
        if (this.mDeviceType == DeviceType.ZPY) {
            YctDeviceManager.getInstanceH5().setListener(new YctDevice.Listener() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.17
                @Override // com.qh.yctdevice.YctDevice.Listener
                public void onDiffParamsChanged() {
                }

                @Override // com.qh.yctdevice.YctDevice.Listener
                public void onDeviceLineMessage(String str) {
                    BluetoothClient.this.parseLine(DeviceType.ZPY, str);
                }

                @Override // com.qh.yctdevice.YctDevice.Listener
                public void onSendToDeviceData(byte[] bArr, int i) {
                    SimulatorSendCallback simulatorSendCallback2 = simulatorSendCallback;
                    if (simulatorSendCallback2 != null) {
                        simulatorSendCallback2.sendToSimulator(bArr, i == 0);
                    }
                }
            });
        }
    }

    private class ReceiveDataThread extends Thread {
        private final InputStream mmInStream;
        private final long sessionId;

        public ReceiveDataThread(BluetoothSocket bluetoothSocket) throws IOException {
            InputStream inputStream;
            this.sessionId = BluetoothClient.this.connectSessionId;
            try {
                inputStream = bluetoothSocket.getInputStream();
            } catch (IOException e) {
                LogToFile.e("获取输入流失败(" + BluetoothClient.this.mDeviceType.getType() + ")：" + e);
                inputStream = null;
            }
            this.mmInStream = inputStream;
            if (BluetoothClient.this.mDeviceType == DeviceType.ZPY) {
                YctDeviceManager.getInstanceH5().setListener(new YctDevice.Listener() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.ReceiveDataThread.1
                    @Override // com.qh.yctdevice.YctDevice.Listener
                    public void onDeviceLineMessage(String str) {
                        EventBus eventBus = EventBus.getDefault();
                        DeviceType deviceType = DeviceType.ZPY;
                        eventBus.post(new BlueData(deviceType));
                        BluetoothClient.this.parseLine(deviceType, str);
                    }

                    @Override // com.qh.yctdevice.YctDevice.Listener
                    public void onSendToDeviceData(byte[] bArr, int i) {
                        BluetoothClient.this.sendData(bArr, i == 0);
                    }

                    @Override // com.qh.yctdevice.YctDevice.Listener
                    public void onDiffParamsChanged() {
                        LogToFile.i("H5 -> onDiffParamsChanged() -> 重新初始化闪电固定差分");
                        SharedPreferences sharedPreferences = BluetoothClient.this.context.getSharedPreferences("sp", 0);
                        String str = Constant.NTRIPTYPE;
                        NtripTypeEnum ntripTypeEnum = NtripTypeEnum.SDK;
                        if (sharedPreferences.getInt(str, ntripTypeEnum.getType()) != NtripTypeEnum.NTRIP.getType()) {
                            SdkClientConfig sdkClientConfig = new SdkClientConfig();
                            sdkClientConfig.ntripType = ntripTypeEnum.getType();
                            sdkClientConfig.isInit = true;
                            EventBus.getDefault().post(sdkClientConfig);
                        }
                    }
                });
            } else if (BluetoothClient.this.mDeviceType == DeviceType.BASE) {
                YctDeviceManager.getInstanceBase().setListener(new YctDevice.Listener() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.ReceiveDataThread.2
                    @Override // com.qh.yctdevice.YctDevice.Listener
                    public void onDeviceLineMessage(String str) {
                        EventBus eventBus = EventBus.getDefault();
                        DeviceType deviceType = DeviceType.BASE;
                        eventBus.post(new BlueData(deviceType));
                        BluetoothClient.this.parseLine(deviceType, str);
                    }

                    @Override // com.qh.yctdevice.YctDevice.Listener
                    public void onSendToDeviceData(byte[] bArr, int i) {
                        BluetoothClient.this.sendData(bArr, i == 0);
                    }

                    @Override // com.qh.yctdevice.YctDevice.Listener
                    public void onDiffParamsChanged() {
                        LogToFile.i("BASE -> onDiffParamsChanged() -> 无需操作");
                    }
                });
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws IOException {
            boolean z;
            byte[] bArr = new byte[MemoryConstant.MB];
            while (!Thread.currentThread().isInterrupted()) {
                try {
                    if (BluetoothClient.this.mSocket == null || !BluetoothClient.this.mSocket.isConnected()) {
                        LogToFile.i("Socket已关闭或未连接(" + BluetoothClient.this.mDeviceType.getType() + ")：" + BluetoothClient.this.mDeviceType.getType());
                    } else {
                        int i = this.mmInStream.read(bArr);
                        if (i > 0) {
                            if (BluetoothClient.this.mDeviceType == DeviceType.ZPY) {
                                YctDeviceManager.getInstanceH5().inputStream(bArr, i);
                            } else {
                                YctDeviceManager.getInstanceBase().inputStream(bArr, i);
                            }
                        } else if (i == -1) {
                            LogToFile.i("Socket远端关闭(" + BluetoothClient.this.mDeviceType.getType() + ")");
                        }
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                    LogToFile.e("读取数据异常(" + BluetoothClient.this.mDeviceType.getType() + ")：" + e);
                }
                z = true;
            }
            z = false;
            if (this.sessionId == BluetoothClient.this.connectSessionId) {
                if (z) {
                    BluetoothClient.this.socketClosed = true;
                    BluetoothClient.this.disconnect();
                    return;
                } else {
                    if (Thread.currentThread().isInterrupted()) {
                        return;
                    }
                    cleanupResources();
                    return;
                }
            }
            LogToFile.i("旧连接读线程退出(" + BluetoothClient.this.mDeviceType.getType() + "), session=" + this.sessionId + InternalZipConstants.ZIP_FILE_SEPARATOR + BluetoothClient.this.connectSessionId);
        }

        private void cleanupResources() throws IOException {
            try {
                InputStream inputStream = this.mmInStream;
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (IOException e) {
                LogToFile.e("关闭输入流异常(" + BluetoothClient.this.mDeviceType.getType() + ")：" + e);
            }
        }
    }

    protected void parseLine(DeviceType deviceType, String str) {
        try {
            deviceType.getType();
            String str2 = deviceType + " -> " + str;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (MultiBluetoothManager.getInstance(this.context).isH5OrOnlyone(deviceType)) {
                BleLogCache.writeToFile(str);
                DebugLogCache.writeToFile(str);
                if (RtkConstant.debug) {
                    EventBus.getDefault().post(new DebugData(deviceType, str));
                }
            }
            if (deviceType == DeviceType.BASE) {
                BaseBleLogCache.writeToFile(str);
            }
            Matcher matcher = Pattern.compile("([$#])([^$#]*)").matcher(str);
            if (matcher.find()) {
                str = matcher.group(1) + matcher.group(2);
                parseCommonData(deviceType, str);
                parseBaseStationData(deviceType, str);
                parseH5Data(deviceType, str);
            }
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.e("BluetoothClient.parseLine(" + deviceType.getType() + ")：" + e + " -> " + str);
        }
    }

    private void parseCommonData(DeviceType deviceType, String str) throws NumberFormatException {
        if (str.startsWith("#GET,SERIAL,")) {
            LogToFile.i("主机串号响应(" + deviceType.getType() + ")：" + str);
            String[] strArrSplit = str.split(",");
            if (strArrSplit.length <= 2 || !str.contains(ProxyConfig.MATCH_ALL_SCHEMES)) {
                return;
            }
            EventBus.getDefault().post(new Serial(deviceType, strArrSplit[2].split("\\*")[0]));
            return;
        }
        if (str.startsWith("#GET,VERSION,")) {
            LogToFile.i("获取版本信息(" + deviceType.getType() + ")：" + str);
            String[] strArrSplit2 = str.split(",", -1);
            if (strArrSplit2.length > 4) {
                EventBus.getDefault().post(new RtkInfo(deviceType, strArrSplit2[2], strArrSplit2[3], strArrSplit2[4]));
                return;
            }
            return;
        }
        if (str.startsWith("#GET,EXPIREDATE,")) {
            LogToFile.i("获取注册码过期时间(" + deviceType.getType() + ")：" + str);
            int iLastIndexOf = str.lastIndexOf(",");
            int iIndexOf = str.indexOf(ProxyConfig.MATCH_ALL_SCHEMES);
            if (iLastIndexOf <= -1 || iIndexOf <= -1) {
                return;
            }
            EventBus.getDefault().post(new Expiredate(deviceType, str.substring(iLastIndexOf + 1, iIndexOf)));
            return;
        }
        if (str.startsWith("#SET,REGISTER,")) {
            LogToFile.i("设置注册码(" + deviceType.getType() + ")：" + str);
            String[] strArrSplit3 = str.split(",");
            if (strArrSplit3.length <= 3 || !str.contains(ProxyConfig.MATCH_ALL_SCHEMES)) {
                return;
            }
            EventBus.getDefault().post(new RTKRegisterResult(deviceType, strArrSplit3[2], strArrSplit3[3].split("\\*")[0]));
            return;
        }
        if (str.startsWith("#GET,FEATURE_CODE,")) {
            LogToFile.i("获取定制码(" + deviceType.getType() + ")：" + str);
            int iLastIndexOf2 = str.lastIndexOf(",");
            int iIndexOf2 = str.indexOf(ProxyConfig.MATCH_ALL_SCHEMES);
            if (iLastIndexOf2 <= -1 || iIndexOf2 <= -1) {
                return;
            }
            EventBus.getDefault().post(new GetFeatureCodeEvent(deviceType, str.substring(iLastIndexOf2 + 1, iIndexOf2)));
            return;
        }
        if (str.startsWith("#SET,FEATURE_CODE,")) {
            LogToFile.i("设置定制码响应(" + deviceType.getType() + ")：" + str);
            String[] strArrSplit4 = str.split(",");
            if (strArrSplit4.length <= 3 || !str.contains(ProxyConfig.MATCH_ALL_SCHEMES)) {
                return;
            }
            EventBus.getDefault().post(new SetFeatureCodeResult(deviceType, strArrSplit4[2], strArrSplit4[3].split("\\*")[0]));
            return;
        }
        if (str.startsWith("#SET,HEART,")) {
            if (str.contains("OK")) {
                EventBus.getDefault().post(new HeartEvent(deviceType));
                return;
            }
            return;
        }
        if (str.startsWith("#GET,GNSS.INFO,")) {
            LogToFile.i("GNSS板卡信息响应(" + deviceType.getType() + ")：" + str);
            String[] strArrSplit5 = str.split(",");
            if (strArrSplit5.length > 4) {
                EventBus.getDefault().post(new GnssInfo(deviceType, strArrSplit5[5]));
                return;
            } else {
                EventBus.getDefault().post(new GnssInfo(deviceType, ""));
                return;
            }
        }
        if (str.startsWith("#GET,FEATURES,")) {
            LogToFile.i("支持特性(" + deviceType.getType() + ")：" + str);
            EventBus.getDefault().post(new FeaturesEvent(deviceType, str));
            return;
        }
        if (str.startsWith("#SET,DATALINK,")) {
            EventBus.getDefault().post(new SetDataLinkResponse(deviceType, str));
            return;
        }
        if (str.startsWith("#SET,RADIO,")) {
            EventBus.getDefault().post(new SetBaseRadioResponse(deviceType, str));
            return;
        }
        if (str.startsWith("$GPGGA,")) {
            GGAParser.parseGGA(deviceType, str);
            if (MultiBluetoothManager.getInstance(this.context).isH5OrOnlyone(deviceType)) {
                GGALogCache.save(str, false);
                return;
            }
            return;
        }
        if (str.startsWith(DebugLogCache.BESTPOSA)) {
            BestPosParser.parse(deviceType, str);
            return;
        }
        if (str.startsWith("#GET,POWER.BATTERYLEVEL")) {
            try {
                String strSubstring = str.substring(str.lastIndexOf(",") + 1, str.lastIndexOf("%"));
                EventBus.getDefault().post(new Batt(deviceType, TextUtils.isEmpty(strSubstring) ? 0 : Integer.parseInt(strSubstring)));
                return;
            } catch (Exception e) {
                e.printStackTrace();
                LogToFile.e("电量解析异常(" + deviceType.getType() + ")：" + e);
                return;
            }
        }
        if (str.startsWith("#GET,POWER.SOURCE,")) {
            EventBus.getDefault().post(new PowerSourceEvent(deviceType, str));
            return;
        }
        if (str.startsWith("#GET,HORIZONTAL_ANGLE")) {
            if (str.split(",").length > 5) {
                float f = Float.parseFloat(str.split(",")[2]);
                float f2 = Float.parseFloat(str.split(",")[3]);
                float f3 = Float.parseFloat(str.split(",")[4]);
                int iLastIndexOf3 = str.lastIndexOf(",");
                int iIndexOf3 = str.indexOf(ProxyConfig.MATCH_ALL_SCHEMES);
                if (iLastIndexOf3 <= -1 || iIndexOf3 <= -1) {
                    return;
                }
                EventBus.getDefault().post(new GETHorizontalAngleRange(deviceType, f, f2, f3, Float.parseFloat(str.substring(iLastIndexOf3 + 1, iIndexOf3))));
                return;
            }
            return;
        }
        if (str.startsWith("#UPGRADE,INFO,")) {
            this.upgradeStart = false;
            String[] strArrSplit6 = str.split(",");
            if (strArrSplit6.length <= 4 || !str.contains(ProxyConfig.MATCH_ALL_SCHEMES)) {
                return;
            }
            String strDecodeBase64ToString = decodeBase64ToString(strArrSplit6[3]);
            String strDecodeBase64ToString2 = decodeBase64ToString(strArrSplit6[4]);
            EventBus.getDefault().post(new UpgradeInfoEvent(deviceType, strDecodeBase64ToString, strDecodeBase64ToString2));
            LogToFile.i("升级信息 -> pn列表(" + deviceType.getType() + ")：" + strDecodeBase64ToString + "， version列表：" + strDecodeBase64ToString2);
            return;
        }
        if (str.startsWith("#UPGRADE,STATE,")) {
            LogToFile.i("升级状态查询应答(" + deviceType.getType() + ")：" + str);
            this.upgradeStart = true;
            String str2 = str.split(",")[2];
            if (str.contains("ERROR")) {
                return;
            }
            String str3 = str.split(",")[3];
            if ("IDEL".equals(str3) || "FINISHED".equals(str3)) {
                EventBus.getDefault().post(new UpgradeStateEvent(deviceType, str2, str3, 0, 0, ""));
                return;
            } else {
                if ("GOING".equals(str3)) {
                    EventBus.getDefault().post(new UpgradeStateEvent(deviceType, str2, str3, Integer.parseInt(str.split(",")[4]), Integer.parseInt(str.split(",")[5]), str.split(",")[6]));
                    return;
                }
                return;
            }
        }
        if (str.startsWith("#UPGRADE,START,")) {
            this.upgradeStart = true;
            LogToFile.i("请求升级应答(" + deviceType.getType() + ")：" + str);
            EventBus.getDefault().post(new UpgradeStartEvent(deviceType, str));
            return;
        }
        if (str.startsWith("#UPGRADE,WRITE,")) {
            String[] strArrSplit7 = str.split(",", -1);
            if (strArrSplit7.length < 3) {
                return;
            }
            String str4 = strArrSplit7[2];
            if (!str.contains("ERROR")) {
                if (this.errorCount != 0) {
                    this.errorCount = 0L;
                }
                String str5 = strArrSplit7[3];
                int iLastIndexOf4 = str.lastIndexOf(",");
                int iIndexOf4 = str.indexOf(ProxyConfig.MATCH_ALL_SCHEMES);
                String strSubstring2 = (iLastIndexOf4 <= -1 || iIndexOf4 <= -1) ? "" : str.substring(iLastIndexOf4 + 1, iIndexOf4);
                if ("FINISHED".equals(str5) || "APPLYING".equals(str5)) {
                    EventBus.getDefault().post(new UpgradeWriteEvent(deviceType, str4, str5, 0, 0, strSubstring2));
                    return;
                } else {
                    if (!"GOING".equals(str5) || strArrSplit7.length <= 5) {
                        return;
                    }
                    EventBus.getDefault().post(new UpgradeWriteEvent(deviceType, str4, str5, Integer.parseInt(strArrSplit7[4]), Integer.parseInt(strArrSplit7[5]), strSubstring2));
                    return;
                }
            }
            long j = this.errorCount + 1;
            this.errorCount = j;
            if (j >= 8) {
                this.errorCount = 0L;
                EventBus.getDefault().post(new UpgradeWriteEvent(deviceType, "", strArrSplit7[2], 0, 0, "ERROR"));
                return;
            }
            return;
        }
        if (str.startsWith("#UPGRADE,CANCLE,")) {
            LogToFile.i("取消升级应答(" + deviceType.getType() + ")：" + str);
            this.upgradeStart = false;
            if (str.contains("OK")) {
                EventBus.getDefault().post(new UpgradeCancelEvent(deviceType));
                return;
            }
            return;
        }
        if (str.startsWith("$GPDOP,")) {
            GPDOPParser.parse(deviceType, str);
            return;
        }
        if (str.startsWith("#GET,RADIO_PROTOCOL_LIST,")) {
            String[] strArrSplit8 = str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1);
            String[] strArr = new String[strArrSplit8.length - 2];
            for (int i = 2; i < strArrSplit8.length; i++) {
                strArr[i - 2] = strArrSplit8[i];
            }
            EventBus.getDefault().post(new GetRadioProtocolListEvent(deviceType, strArr));
            return;
        }
        if (str.startsWith("#GET,RADIO_POWER_LIST,")) {
            EventBus.getDefault().post(new GetRadioPowerListEvent(deviceType, str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1)[2].split("\\|")));
            return;
        }
        if (str.startsWith("#GET,RADIO,")) {
            String[] strArrSplit9 = str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1);
            if (strArrSplit9.length > 4) {
                GetRadioEvent getRadioEvent = new GetRadioEvent();
                getRadioEvent.channelNumber = Integer.parseInt(strArrSplit9[2]);
                getRadioEvent.protocolNumber = strArrSplit9[3];
                getRadioEvent.power = strArrSplit9[4];
                getRadioEvent.deviceType = deviceType;
                EventBus.getDefault().post(getRadioEvent);
                return;
            }
            return;
        }
        if (str.startsWith("#GET,RADIO_CHANNEL,")) {
            String[] strArrSplit10 = str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1);
            if (strArrSplit10.length <= 2 || !strArrSplit10[2].contains("|")) {
                return;
            }
            EventBus.getDefault().post(new GetRadioChannelEvent(deviceType, strArrSplit10[2].split("\\|")));
        }
    }

    private void parseH5Data(DeviceType deviceType, String str) throws NumberFormatException {
        int i;
        int i2;
        if (MultiBluetoothManager.getInstance(this.context).isH5OrOnlyone(deviceType)) {
            if (str.startsWith("$GPSAV,")) {
                EventBus.getDefault().post(new SavPackageEvent(deviceType, str));
                return;
            }
            if (str.startsWith("$GPSAU,")) {
                EventBus.getDefault().post(new SauPackageEvent(deviceType, str));
                return;
            }
            if (str.startsWith(DebugLogCache.GPSNR)) {
                EventBus.getDefault().post(new SNRPackageEvent(deviceType, str));
                return;
            }
            if (str.startsWith(DebugLogCache.GPGST)) {
                GSTParser.parse(deviceType, str);
                return;
            }
            if (str.startsWith("#REFSTATION")) {
                RefstationParser.parser(deviceType, str);
                return;
            }
            if (str.startsWith(DebugLogCache.INS)) {
                INSParser.parser(deviceType, str);
                INSLogCache.save(str, false);
                return;
            }
            if (str.startsWith("$INS.AHRS,")) {
                EventBus.getDefault().post(new InsAhrs(deviceType, str));
                return;
            }
            if (str.startsWith("#SET,HORIZONTAL_ANGLE")) {
                LogToFile.i("设置水平角度范围应答(" + deviceType.getType() + ")：" + str);
                if (str.split(",").length > 5) {
                    EventBus.getDefault().post(new SETHorizontalAngle(deviceType, str.contains("OK"), Float.parseFloat(str.split(",")[2]), Float.parseFloat(str.split(",")[3]), Float.parseFloat(str.split(",")[4]), Float.parseFloat(str.split(",")[5])));
                    return;
                }
                return;
            }
            if (str.startsWith("#CALIBRATE,") && str.contains(",GET_PARAM,")) {
                String[] strArrSplit = str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1);
                if (strArrSplit.length > 3) {
                    EventBus.getDefault().post(new GetCalibrateParamEvent(deviceType, strArrSplit[3], strArrSplit[4], str));
                    return;
                }
                return;
            }
            if (str.startsWith("#CALIBRATE,") && str.contains(",SET_PARAM,")) {
                EventBus.getDefault().post(new SetCalibrateParamEvent(deviceType, str));
                return;
            }
            if (str.startsWith("#CALIBRATE,") && str.contains(",GO,")) {
                EventBus.getDefault().post(new CalibrateEvent(deviceType, str));
                return;
            }
            if (str.startsWith("#CALIBRATE,") && str.contains(",MAKE_TOOL,")) {
                if (str.contains("OK")) {
                    EventBus.getDefault().post(new MakeToolEvent(deviceType, 0, str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1)[4]));
                    return;
                } else {
                    EventBus.getDefault().post(new MakeToolEvent(deviceType, -1, ""));
                    return;
                }
            }
            if (str.startsWith("#CALIBRATE,") && str.contains(",GET_TOOL,")) {
                if (str.contains("OK")) {
                    EventBus.getDefault().post(new GetToolEvent(deviceType, 0, str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1)[4]));
                    return;
                } else {
                    EventBus.getDefault().post(new GetToolEvent(deviceType, -1, ""));
                    return;
                }
            }
            if (str.startsWith("#CALIBRATE,") && str.contains(",PARSE_TOOL,")) {
                if (str.contains("OK")) {
                    String[] strArrSplit2 = str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1);
                    StringBuilder sb = new StringBuilder();
                    for (int i3 = 4; i3 < strArrSplit2.length; i3++) {
                        if (i3 > 4) {
                            sb.append(",");
                        }
                        sb.append(strArrSplit2[i3]);
                    }
                    EventBus.getDefault().post(new ParseToolEvent(deviceType, 0, sb.toString()));
                    return;
                }
                EventBus.getDefault().post(new ParseToolEvent(deviceType, -1, ""));
                return;
            }
            if (str.startsWith("#CALIBRATE,") && str.contains(",ADJUST_PARAM,")) {
                if (str.contains("OK")) {
                    EventBus.getDefault().post(new AdjustParamEvent(deviceType, 0, str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1)[4]));
                    return;
                } else {
                    EventBus.getDefault().post(new AdjustParamEvent(deviceType, -1, ""));
                    return;
                }
            }
            if (str.startsWith("#SET,POWEROFF,")) {
                EventBus.getDefault().post(new HostPoweroffEvent(deviceType, str));
                return;
            }
            if (str.startsWith("#GET,POS_SMOOTH,")) {
                EventBus.getDefault().post(new GetPosSmoothResponse(deviceType, str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1)[2]));
                return;
            }
            if (str.startsWith("#SENSOR,,GET_PARAM,")) {
                EventBus.getDefault().post(new GetSensorParamEvent(str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1)[3]));
                return;
            }
            if (str.startsWith("#SENSOR,,SET_PARAM,")) {
                EventBus.getDefault().post(new SetSensorParamEvent(str));
                return;
            }
            if (str.startsWith("$EXTSENSOR,")) {
                String[] strArrSplit3 = str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1);
                if (strArrSplit3.length > 8) {
                    EventBus.getDefault().post(new SensorInfoEvent(Integer.parseInt(strArrSplit3[4]), Double.parseDouble(strArrSplit3[6]), Double.parseDouble(strArrSplit3[7]), Double.parseDouble(strArrSplit3[8])));
                    return;
                }
                return;
            }
            if (str.startsWith("$BASEINFO")) {
                String[] strArrSplit4 = str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1);
                long j = strArrSplit4.length > 7 ? Long.parseLong(strArrSplit4[7]) : 0L;
                if (strArrSplit4.length > 22) {
                    EventBus eventBus = EventBus.getDefault();
                    int i4 = !TextUtils.isEmpty(strArrSplit4[19]) ? Integer.parseInt(strArrSplit4[19]) : -1;
                    int i5 = !TextUtils.isEmpty(strArrSplit4[20]) ? Integer.parseInt(strArrSplit4[20]) : -1;
                    String str2 = strArrSplit4[21];
                    if (TextUtils.isEmpty(strArrSplit4[22])) {
                        i = i5;
                        i2 = -1;
                    } else {
                        i = i5;
                        i2 = Integer.parseInt(strArrSplit4[22]);
                    }
                    eventBus.post(new BaseStatusEvent(deviceType, j, i4, i, str2, i2));
                    return;
                }
                return;
            }
            if (str.startsWith("#GET,ANTENNA,")) {
                String[] strArrSplit5 = str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1);
                if (strArrSplit5.length > 6) {
                    EventBus.getDefault().post(new AntennaParams(deviceType, Float.parseFloat(strArrSplit5[3]), Float.parseFloat(strArrSplit5[4]), Float.parseFloat(strArrSplit5[5]), Float.parseFloat(strArrSplit5[6])));
                }
            }
        }
    }

    private void parseBaseStationData(DeviceType deviceType, String str) {
        if (MultiBluetoothManager.getInstance(this.context).isBaseOrOnlyone(deviceType)) {
            if (str.startsWith("#SET,ANTENNA_HEIGHT,")) {
                String[] strArrSplit = str.split(",");
                if (strArrSplit.length > 3) {
                    EventBus.getDefault().post(new SetAntennaHeightResponse(deviceType, str, Double.parseDouble(strArrSplit[3])));
                    return;
                }
                return;
            }
            if (str.startsWith("#GET,ANTENNA_HEIGHT,")) {
                String[] strArrSplit2 = str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1);
                EventBus.getDefault().post(new AntennaHeigthEntity(deviceType, strArrSplit2[2], Double.parseDouble(strArrSplit2[3])));
                return;
            }
            if (str.startsWith("#GET,WLAN0,")) {
                String[] strArrSplit3 = str.split(",", -1);
                if (strArrSplit3.length > 7) {
                    Wlan0Entity wlan0Entity = new Wlan0Entity();
                    wlan0Entity.role = strArrSplit3[2];
                    wlan0Entity.wifiName = strArrSplit3[3];
                    wlan0Entity.wifiPassword = strArrSplit3[4];
                    EventBus.getDefault().post(wlan0Entity);
                    return;
                }
                return;
            }
            if (str.startsWith("#SET,WLAN0,")) {
                if (str.contains("OK")) {
                    EventBus.getDefault().post(new Wlan0Response(deviceType, "OK"));
                    return;
                } else {
                    EventBus.getDefault().post(new Wlan0Response(deviceType, "ERROR"));
                    return;
                }
            }
            if (str.startsWith("#GET,MOBILE,")) {
                String[] strArrSplit4 = str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1);
                if (strArrSplit4.length > 2) {
                    MobileNetEntity mobileNetEntity = new MobileNetEntity();
                    mobileNetEntity.state = strArrSplit4[2];
                    mobileNetEntity.apnName = strArrSplit4[3];
                    mobileNetEntity.apnUser = strArrSplit4[4];
                    mobileNetEntity.apnPsw = strArrSplit4[5];
                    mobileNetEntity.deviceType = deviceType;
                    EventBus.getDefault().post(mobileNetEntity);
                    return;
                }
                return;
            }
            if (str.startsWith("#SET,MOBILE,")) {
                if (str.contains("OK")) {
                    EventBus.getDefault().post(new MobileNetResponse(deviceType, "OK"));
                    return;
                } else {
                    EventBus.getDefault().post(new MobileNetResponse(deviceType, "ERROR"));
                    return;
                }
            }
            if (str.startsWith("#GET,WLAN0_STATUS,")) {
                String[] strArrSplit5 = str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1);
                if (strArrSplit5.length > 8) {
                    EventBus.getDefault().post(new WifiStateResponse(deviceType, strArrSplit5[2], strArrSplit5[3], strArrSplit5[4], strArrSplit5[5], strArrSplit5[6], strArrSplit5[7], strArrSplit5[8]));
                    return;
                }
                return;
            }
            if (str.startsWith("#GET,MOBILE_STATUS,")) {
                String[] strArrSplit6 = str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1);
                if (strArrSplit6.length > 10) {
                    MobileStateResponse mobileStateResponse = new MobileStateResponse();
                    mobileStateResponse.state = strArrSplit6[2];
                    mobileStateResponse.imei = strArrSplit6[3];
                    mobileStateResponse.iccid = strArrSplit6[4];
                    mobileStateResponse.type = decodeBase64ToString(strArrSplit6[5]);
                    mobileStateResponse.sendTraffic = strArrSplit6[9];
                    mobileStateResponse.receiveTraffic = strArrSplit6[10];
                    mobileStateResponse.deviceType = deviceType;
                    EventBus.getDefault().post(mobileStateResponse);
                    return;
                }
                return;
            }
            if (str.startsWith("#GET,MODE,")) {
                EventBus.getDefault().post(new GetBaseWorkModeResponse(deviceType, str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1)[2]));
                return;
            }
            if (str.startsWith("#SET,MODE,")) {
                str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1);
                EventBus.getDefault().post(new SetBaseWorkModeResponse(deviceType, str));
                return;
            }
            if (str.startsWith("#GET,BASE_DIFF_LIST,")) {
                EventBus.getDefault().post(new BaseDiffListResponse(deviceType, str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1)[2]));
                return;
            }
            if (str.startsWith("#GET,BASE,")) {
                String[] strArrSplit7 = str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1);
                if (strArrSplit7.length > 7) {
                    GetBaseStationResponse getBaseStationResponse = new GetBaseStationResponse();
                    getBaseStationResponse.id = strArrSplit7[2];
                    getBaseStationResponse.cutoffAngle = (int) Float.parseFloat(strArrSplit7[3]);
                    getBaseStationResponse.PDOP = Double.parseDouble(strArrSplit7[4]);
                    String[] strArrSplit8 = strArrSplit7[5].split("\\|", -1);
                    getBaseStationResponse.lon = TextUtils.isEmpty(strArrSplit8[0]) ? 0.0d : Double.parseDouble(strArrSplit8[0]);
                    getBaseStationResponse.lat = TextUtils.isEmpty(strArrSplit8[1]) ? 0.0d : Double.parseDouble(strArrSplit8[1]);
                    getBaseStationResponse.elev = TextUtils.isEmpty(strArrSplit8[2]) ? 0.0d : Double.parseDouble(strArrSplit8[2]);
                    getBaseStationResponse.diffFormat = strArrSplit7[6];
                    getBaseStationResponse.startMode = strArrSplit7[7];
                    if (strArrSplit7.length > 8) {
                        getBaseStationResponse.dataformatList = strArrSplit7[8];
                    }
                    getBaseStationResponse.deviceType = deviceType;
                    EventBus.getDefault().post(getBaseStationResponse);
                    return;
                }
                return;
            }
            if (str.startsWith("#GET,ROVER,")) {
                String[] strArrSplit9 = str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1);
                if (strArrSplit9.length > 3) {
                    RoverStationResponse roverStationResponse = new RoverStationResponse();
                    roverStationResponse.cutoffAngle = Float.parseFloat(strArrSplit9[2]);
                    roverStationResponse.diffAge = Integer.parseInt(strArrSplit9[3]);
                    roverStationResponse.deviceType = deviceType;
                    EventBus.getDefault().post(roverStationResponse);
                    return;
                }
                return;
            }
            if (str.startsWith("#SET,BASE,")) {
                EventBus.getDefault().post(new SetBaseStationResponse(str));
                return;
            }
            if (str.startsWith("#SET,ROVER,")) {
                EventBus.getDefault().post(new SetRoverStationResponse(str));
                return;
            }
            if (str.startsWith("#GET,DATALINK,")) {
                String[] strArrSplit10 = str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1);
                if (strArrSplit10.length > 2) {
                    EventBus.getDefault().post(new GetDataLinkResponse(deviceType, strArrSplit10[2]));
                    return;
                }
                return;
            }
            if (str.startsWith("#GET,NETWORK,")) {
                String[] strArrSplit11 = str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",", -1);
                if (strArrSplit11.length > 10) {
                    BaseNetworkResponse baseNetworkResponse = new BaseNetworkResponse();
                    baseNetworkResponse.type = strArrSplit11[2];
                    baseNetworkResponse.host = strArrSplit11[3];
                    baseNetworkResponse.port = Integer.parseInt(strArrSplit11[4]);
                    baseNetworkResponse.mountpoint = strArrSplit11[5];
                    baseNetworkResponse.userName = strArrSplit11[6];
                    baseNetworkResponse.password = strArrSplit11[7];
                    baseNetworkResponse.apnName = strArrSplit11[8];
                    baseNetworkResponse.apnUser = strArrSplit11[9];
                    baseNetworkResponse.apnPassword = strArrSplit11[10];
                    baseNetworkResponse.deviceType = deviceType;
                    EventBus.getDefault().post(baseNetworkResponse);
                    return;
                }
                return;
            }
            if (str.startsWith("#SET,NETWORK,")) {
                EventBus.getDefault().post(new SetBaseNetworkResponse(deviceType, str));
                return;
            }
            if (str.startsWith("#GET,ZXVPN,")) {
                EventBus.getDefault().post(new GetVPNResponse(deviceType, str));
                return;
            }
            if (str.startsWith("#SET,ZXVPN,")) {
                EventBus.getDefault().post(new SetVPNResponse(deviceType, str));
                return;
            }
            if (str.startsWith("#GET,ZXVPN_STATUS,")) {
                EventBus.getDefault().post(new VpnStatusResponse(deviceType, str));
            } else if (str.startsWith("#GET,STATE,BASE,Base Too Far")) {
                EventBus.getDefault().post(new BaseTooFarEvent(deviceType, str));
            } else {
                str.startsWith("#GET,STATE,NETWORK");
            }
        }
    }

    protected String decodeBase64ToString(String str) {
        return new String(Base64.decode(str, 0), StandardCharsets.UTF_8);
    }

    private class ConnectThread extends Thread {
        private final long sessionId;

        @SuppressLint({"MissingPermission"})
        public ConnectThread(BluetoothDevice bluetoothDevice) {
            BluetoothDevice bluetoothDeviceResolveConnectDeviceByAddress = BluetoothClient.this.resolveConnectDeviceByAddress(bluetoothDevice);
            BluetoothClient.this.mmDevice = bluetoothDeviceResolveConnectDeviceByAddress != null ? bluetoothDeviceResolveConnectDeviceByAddress : bluetoothDevice;
            this.sessionId = BluetoothClient.this.connectSessionId;
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x00d3  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x0268  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x026f  */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 692
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.qianhe.rtkclientlib.client.BluetoothClient.ConnectThread.run():void");
        }

        private void notifyConnectFailed(final String str, final boolean z) {
            BluetoothClient bluetoothClient = BluetoothClient.this;
            if (bluetoothClient.tryRepairStaleBond(bluetoothClient.mmDevice, str)) {
                LogToFile.i("连接失败已转入陈旧配对修复(" + BluetoothClient.this.mDeviceType.getType() + "): " + str);
                return;
            }
            if (BluetoothClient.this.connectionListener != null) {
                BluetoothClient bluetoothClient2 = BluetoothClient.this;
                if (bluetoothClient2.isConnectAttemptActive(this.sessionId, bluetoothClient2.mmDevice)) {
                    BluetoothClient.this.mHandler.post(new Runnable() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.ConnectThread.3
                        @Override // java.lang.Runnable
                        public void run() {
                            if (BluetoothClient.this.connectionListener != null) {
                                ConnectThread connectThread = ConnectThread.this;
                                if (BluetoothClient.this.isConnectAttemptActive(connectThread.sessionId, BluetoothClient.this.mmDevice)) {
                                    if (BluetoothClient.this.socketClosed) {
                                        BluetoothClient.this.connectionListener.onSocketClosed(str);
                                        if (BluetoothClient.this.keepReconnectOnSocketClose()) {
                                            BluetoothClient bluetoothClient3 = BluetoothClient.this;
                                            bluetoothClient3.connectToDevice(bluetoothClient3.mmDevice, BluetoothClient.this.connectionListener);
                                            return;
                                        }
                                        return;
                                    }
                                    if (z) {
                                        if (!BluetoothClient.this.isConnecting || BluetoothClient.this.mConnectThread == null || BluetoothClient.this.mConnectThread.isInterrupted()) {
                                            return;
                                        }
                                        BluetoothClient.this.connectionListener.onConnectionFailed(str);
                                        return;
                                    }
                                    if (ConnectThread.this.isInterrupted()) {
                                        return;
                                    }
                                    BluetoothClient.this.connectionListener.onConnectionFailed(str);
                                }
                            }
                        }
                    });
                    return;
                }
            }
            LogToFile.i("忽略已取消的连接失败回调(" + BluetoothClient.this.mDeviceType.getType() + "): " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleScanResult(ScanResult scanResult) {
        BluetoothDevice device;
        List<ParcelUuid> serviceUuids;
        if (scanResult == null || (device = scanResult.getDevice()) == null) {
            return;
        }
        String address = device.getAddress();
        if (!TextUtils.isEmpty(address)) {
            this.lastAdvertisedAtByAddress.put(address.toUpperCase(Locale.US), Long.valueOf(System.currentTimeMillis()));
        }
        String deviceName = scanResult.getScanRecord() != null ? scanResult.getScanRecord().getDeviceName() : null;
        String name = device.getName();
        if ((TextUtils.isEmpty(deviceName) || deviceName.length() != 15) && ((!TextUtils.isEmpty(deviceName) && !TextUtils.isEmpty(name) && name.startsWith(deviceName)) || TextUtils.isEmpty(deviceName))) {
            deviceName = name;
        }
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(deviceName) && scanResult.getScanRecord() != null && (serviceUuids = scanResult.getScanRecord().getServiceUuids()) != null && !serviceUuids.isEmpty()) {
            for (ParcelUuid parcelUuid : serviceUuids) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(parcelUuid.getUuid().toString());
            }
        }
        DeviceType deviceType = MultiBluetoothManager.getInstance(this.context).getDeviceType(deviceName, sb.toString());
        if (deviceType == DeviceType.ATTITUDESENSOR) {
            if (!TextUtils.isEmpty(deviceName) && this.reportedScanAddresses.add(device.getAddress())) {
                this.scanDevices.add(device);
                OnDeviceScanListener onDeviceScanListener = this.scanListener;
                if (onDeviceScanListener != null) {
                    onDeviceScanListener.onDeviceScan(new MyBluetoothDevice(device, deviceType, sb.toString(), deviceName));
                    return;
                }
                return;
            }
            return;
        }
        if (this.mDeviceType == deviceType && isTargetScanDeviceName(deviceName)) {
            this.lastScanResultAt = System.currentTimeMillis();
            if (this.reportedScanAddresses.add(device.getAddress())) {
                this.scanDevices.add(device);
                OnDeviceScanListener onDeviceScanListener2 = this.scanListener;
                if (onDeviceScanListener2 != null) {
                    onDeviceScanListener2.onDeviceScan(new MyBluetoothDevice(device, deviceType, sb.toString(), deviceName));
                }
            }
        }
    }

    private static boolean isTargetScanDeviceName(String str) {
        return !TextUtils.isEmpty(str) && str.matches("^[WZ].*");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public boolean handleBondBroadcast(Intent intent) {
        if (intent == null) {
            return false;
        }
        String action = intent.getAction();
        BluetoothDevice bondEventDevice = getBondEventDevice(intent);
        if (bondEventDevice != null && shouldHandleBondEvent(bondEventDevice)) {
            MultiBluetoothManager.getInstance(this.context).getDeviceType(bondEventDevice.getName(), "");
            if ("android.bluetooth.device.action.BOND_STATE_CHANGED".equals(action)) {
                int intExtra = intent.getIntExtra("android.bluetooth.device.extra.BOND_STATE", RecyclerView.UNDEFINED_DURATION);
                int intExtra2 = intent.getIntExtra("android.bluetooth.device.extra.PREVIOUS_BOND_STATE", RecyclerView.UNDEFINED_DURATION);
                if (intExtra == 12) {
                    if (isPendingConnectDevice(bondEventDevice) || this.bondingInProgress || (!TextUtils.isEmpty(this.pendingConnectAddress) && bondEventDevice.getAddress().equalsIgnoreCase(this.pendingConnectAddress))) {
                        onBondCompleted(bondEventDevice);
                    }
                } else if (intExtra == 10) {
                    if (isDeviceBonded(bondEventDevice) || isListedAsBonded(bondEventDevice)) {
                        LogToFile.i("BOND_NONE 时设备仍在配对列表，按已配对连接: " + bondEventDevice.getAddress());
                        onBondCompleted(bondEventDevice);
                        return false;
                    }
                    if (intExtra2 == 11 && ((this.bondUiReachedBonding || isBondUiRequested(bondEventDevice.getAddress()) || isPendingConnectDevice(bondEventDevice) || this.bondingInProgress) && (!this.removingStaleBond || this.bondUiReachedBonding))) {
                        LogToFile.i("用户取消系统配对框: " + bondEventDevice.getAddress());
                        handleBondCancelled(bondEventDevice);
                        return false;
                    }
                    if (isAwaitingReplacementBond(bondEventDevice.getAddress()) && intExtra2 != 11) {
                        LogToFile.i("陈旧配对已清除，等待重新配对: " + bondEventDevice.getAddress());
                        this.bondingInProgress = true;
                        if (TextUtils.isEmpty(this.pendingConnectAddress)) {
                            this.pendingConnectAddress = bondEventDevice.getAddress();
                        }
                        return false;
                    }
                    if (this.removingStaleBond && !this.bondUiReachedBonding && intExtra2 == 11) {
                        LogToFile.i("拆配后残留配对结束，继续等待新配对: " + bondEventDevice.getAddress());
                        this.bondingInProgress = true;
                        return false;
                    }
                    if (!TextUtils.isEmpty(this.pendingConnectAddress) && !this.pendingConnectAddress.equalsIgnoreCase(bondEventDevice.getAddress())) {
                        LogToFile.i("忽略旧设备 BOND_NONE（已切换目标）: " + bondEventDevice.getAddress() + ", pending=" + this.pendingConnectAddress);
                        clearBondAttempt(bondEventDevice.getAddress());
                        if (!TextUtils.isEmpty(this.clearingBondAddress) && this.clearingBondAddress.equalsIgnoreCase(bondEventDevice.getAddress())) {
                            this.clearingBondAddress = null;
                        }
                        return false;
                    }
                    if (!this.bondingInProgress && TextUtils.isEmpty(this.pendingConnectAddress)) {
                        LogToFile.i("静默忽略切换清理产生的 BOND_NONE: " + bondEventDevice.getAddress());
                        clearBondAttempt(bondEventDevice.getAddress());
                        if (!TextUtils.isEmpty(this.clearingBondAddress) && this.clearingBondAddress.equalsIgnoreCase(bondEventDevice.getAddress())) {
                            this.clearingBondAddress = null;
                        }
                        return false;
                    }
                    if (intExtra2 != 11 && !isPendingConnectDevice(bondEventDevice) && !this.bondingInProgress) {
                        return false;
                    }
                    handleBondCancelled(bondEventDevice);
                } else if (intExtra == 11) {
                    if (isBondUiRequested(bondEventDevice.getAddress())) {
                        this.bondUiReachedBonding = true;
                    }
                    if (this.removingStaleBond && !isBondUiRequested(bondEventDevice.getAddress())) {
                        LogToFile.i("陈旧配对拆除后出现残留 BOND_BONDING，取消后等待 BR/EDR 重配: " + bondEventDevice.getAddress());
                        cancelBondProcessIfNeeded(bondEventDevice);
                        return false;
                    }
                    if (this.removingStaleBond) {
                        LogToFile.i("陈旧配对移除后进入重新配对: " + bondEventDevice.getAddress());
                        this.removingStaleBond = false;
                        this.bondingInProgress = true;
                        startBondWatch(bondEventDevice);
                    } else if (intExtra2 == 12 || isDeviceBonded(bondEventDevice)) {
                        LogToFile.i("设备已配对，忽略 BOND_BONDING 状态");
                    }
                    if (isUserCancelledBond(bondEventDevice)) {
                        LogToFile.i("打断用户取消后的迟到 BOND_BONDING: " + bondEventDevice.getAddress());
                        cancelBondProcessIfNeeded(bondEventDevice);
                        final String address = bondEventDevice.getAddress();
                        this.mHandler.postDelayed(new Runnable() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.20
                            @Override // java.lang.Runnable
                            public void run() {
                                if (BluetoothClient.this.bluetoothAdapter == null || TextUtils.isEmpty(address)) {
                                    return;
                                }
                                BluetoothDevice remoteDevice = BluetoothClient.this.bluetoothAdapter.getRemoteDevice(address);
                                if (BluetoothClient.this.isUserCancelledBond(remoteDevice) && remoteDevice.getBondState() == 11) {
                                    BluetoothClient.cancelBondProcessIfNeeded(remoteDevice);
                                }
                            }
                        }, 300L);
                        return false;
                    }
                    this.bondingInProgress = true;
                    OnDeviceScanListener onDeviceScanListener = this.scanListener;
                    if (onDeviceScanListener != null) {
                        onDeviceScanListener.onBonding(bondEventDevice);
                    }
                    notifyBonding(bondEventDevice);
                }
                return false;
            }
            if ("android.bluetooth.device.action.PAIRING_REQUEST".equals(action)) {
                return handlePairingRequest(bondEventDevice, intent);
            }
        }
        return false;
    }

    private static BluetoothDevice getBondEventDevice(Intent intent) {
        if (Build.VERSION.SDK_INT >= 33) {
            return (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE", BluetoothDevice.class);
        }
        return (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
    }

    public boolean isBonding() {
        return this.bondingInProgress;
    }

    public boolean isConnecting() {
        return this.isConnecting;
    }

    public String getPendingConnectAddress() {
        return this.pendingConnectAddress;
    }

    public void disconnect() {
        disconnect(true);
    }

    public void disconnect(boolean z) {
        disconnectInternal(z, z);
    }

    private void disconnectInternal(boolean z, boolean z2) {
        final boolean z3;
        boolean z4;
        BluetoothSocket bluetoothSocket;
        InputStream inputStream;
        OutputStream outputStream;
        LogToFile.i(this.mDeviceType + "：BluetoothClient -> disconnect(), socketClosed=" + this.socketClosed + ", notify=" + z + ", resetBond=" + z2);
        this.connectSessionId = this.connectSessionId + 1;
        cancelPostBondConnect();
        synchronized (this) {
            try {
                z3 = this.socketClosed;
                z4 = this.mSocket != null || this.isConnecting || this.bondingInProgress || !TextUtils.isEmpty(this.pendingConnectAddress);
                bluetoothSocket = this.mSocket;
                inputStream = this.inputStream;
                outputStream = this.outputStream;
                this.mSocket = null;
                this.inputStream = null;
                this.outputStream = null;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (bluetoothSocket != null && !z3) {
            closeQuietly(bluetoothSocket);
            closeQuietly(inputStream);
            closeQuietly(outputStream);
        }
        interruptConnectThread();
        if (z2) {
            stopBondWatch();
            String str = this.pendingConnectAddress;
            String str2 = this.lastBondDeviceAddress;
            boolean z5 = this.bondingInProgress;
            this.bondingInProgress = false;
            this.pendingConnectAddress = null;
            if (z5) {
                cancelBondProcessForAddress(str);
                if (!TextUtils.isEmpty(str2) && (TextUtils.isEmpty(str) || !str2.equalsIgnoreCase(str))) {
                    cancelBondProcessForAddress(str2);
                }
            }
        }
        ReceiveDataThread receiveDataThread = this.mReceiveDataThread;
        if (receiveDataThread != null && !receiveDataThread.isInterrupted()) {
            this.mReceiveDataThread.interrupt();
        }
        ExecutorService executorService = this.executorSend;
        if (executorService != null) {
            executorService.shutdownNow();
        }
        if (!z || this.connectionListener == null) {
            return;
        }
        if (z4 || z3) {
            this.mHandler.post(new Runnable() { // from class: com.qianhe.rtkclientlib.client.BluetoothClient.21
                @Override // java.lang.Runnable
                public void run() {
                    if (BluetoothClient.this.connectionListener == null) {
                        return;
                    }
                    if (BluetoothClient.this.bondingInProgress || !TextUtils.isEmpty(BluetoothClient.this.pendingConnectAddress)) {
                        LogToFile.i("配对/连接进行中，忽略旧连接断开回调(" + BluetoothClient.this.mDeviceType.getType() + ")");
                        return;
                    }
                    if (z3) {
                        BluetoothClient.this.connectionListener.onSocketClosed("");
                        if (BluetoothClient.this.keepReconnectOnSocketClose()) {
                            return;
                        }
                        MultiBluetoothManager.getInstance(BluetoothClient.this.context).stopAutoReconnect();
                        if (BluetoothClient.this.mDeviceType == DeviceType.BASE) {
                            EventBus.getDefault().post("activeDisconnect_base");
                            return;
                        } else {
                            EventBus.getDefault().post("activeDisconnect");
                            return;
                        }
                    }
                    BluetoothClient.this.connectionListener.onDisconnected(BluetoothClient.this.mDeviceType);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSocketStillConnected(BluetoothSocket bluetoothSocket) {
        if (bluetoothSocket == null) {
            return false;
        }
        try {
            return bluetoothSocket.isConnected();
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeQuietly(AutoCloseable autoCloseable) {
        if (autoCloseable == null) {
            return;
        }
        try {
            autoCloseable.close();
        } catch (Throwable th) {
            LogToFile.i("Error while disconnecting: " + th);
        }
    }

    public void release() {
        try {
            disconnect();
            stopBondWatch();
            if (this.bondReceiverRegistered) {
                this.context.unregisterReceiver(this.scanReceiver);
                this.bondReceiverRegistered = false;
            }
            stopScanInternal(false);
            this.mHandler.removeCallbacksAndMessages(null);
        } catch (IllegalArgumentException unused) {
            LogToFile.e("Receiver not registered");
        }
    }
}
