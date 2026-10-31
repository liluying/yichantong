package com.qianhe.rtkclientlib;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.SensorUUidEnum;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.rtkclientlib.client.BluetoothClient;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class MultiBluetoothManager {
    private static MultiBluetoothManager instance;
    private final Map<DeviceType, BluetoothClient> bluetoothClients;
    private final Map<DeviceType, MyBluetoothDevice> connectedDevices;
    private final Map<DeviceType, BluetoothClient.OnConnectionStateChangedListener> connectionListeners;
    private final Context context;
    private boolean isAutoReconnect;
    private final SharedPreferences mSp;
    private Runnable pendingConnectRunnable;
    private Runnable pendingReconnectRunnable;
    private volatile long suppressBackgroundBondCancelUntil;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final AtomicLong bondCancelEpoch = new AtomicLong(0);

    public static synchronized MultiBluetoothManager getInstance(Context context) {
        try {
            if (instance == null) {
                instance = new MultiBluetoothManager(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    private MultiBluetoothManager(Context context) {
        this.context = context;
        HashMap map = new HashMap();
        this.bluetoothClients = map;
        this.connectedDevices = new HashMap();
        this.connectionListeners = new HashMap();
        this.mSp = context.getSharedPreferences("sp", 0);
        DeviceType deviceType = DeviceType.ZPY;
        map.put(deviceType, new BluetoothClient(context, deviceType));
        DeviceType deviceType2 = DeviceType.BASE;
        map.put(deviceType2, new BluetoothClient(context, deviceType2));
    }

    public void connectDevice(final MyBluetoothDevice myBluetoothDevice, final DeviceType deviceType, final BluetoothClient.OnConnectionStateChangedListener onConnectionStateChangedListener) {
        if (myBluetoothDevice != null && deviceType != null) {
            myBluetoothDevice.deviceType = deviceType;
            final BluetoothClient bluetoothClient = this.bluetoothClients.get(deviceType);
            if (bluetoothClient != null) {
                BluetoothDevice bluetoothDevice = myBluetoothDevice.bluetoothDevice;
                final String address = bluetoothDevice != null ? bluetoothDevice.getAddress() : null;
                String sessionAddress = bluetoothClient.getSessionAddress();
                boolean z = (TextUtils.isEmpty(address) || TextUtils.isEmpty(sessionAddress) || !address.equalsIgnoreCase(sessionAddress)) ? false : true;
                if (z && bluetoothClient.isSocketConnected()) {
                    LogToFile.i("设备已连接，跳过重复 connectDevice: " + address);
                    this.isAutoReconnect = true;
                    this.connectionListeners.put(deviceType, onConnectionStateChangedListener);
                    return;
                }
                if (!TextUtils.isEmpty(address) && (bluetoothClient.isBonding() || bluetoothClient.isConnecting())) {
                    String pendingConnectAddress = bluetoothClient.getPendingConnectAddress();
                    if (!TextUtils.isEmpty(pendingConnectAddress) && address.equalsIgnoreCase(pendingConnectAddress)) {
                        LogToFile.i("同设备配对/连接进行中，跳过重复 connectDevice: " + address);
                        this.isAutoReconnect = true;
                        this.connectionListeners.put(deviceType, onConnectionStateChangedListener);
                        return;
                    }
                }
                Runnable runnable = this.pendingReconnectRunnable;
                if (runnable != null) {
                    this.handler.removeCallbacks(runnable);
                    this.pendingReconnectRunnable = null;
                }
                MyBluetoothDevice myBluetoothDevice2 = this.connectedDevices.get(deviceType);
                boolean z2 = (myBluetoothDevice2 == null || myBluetoothDevice2.bluetoothDevice == null || TextUtils.isEmpty(address) || address.equalsIgnoreCase(myBluetoothDevice2.bluetoothDevice.getAddress())) ? false : true;
                if (!z2 && bluetoothClient.hasActiveSession() && !z) {
                    z2 = true;
                }
                boolean zIsBondedAddress = bluetoothClient.isBondedAddress(address);
                boolean z3 = z2 && !zIsBondedAddress;
                boolean z4 = z2 && zIsBondedAddress;
                bluetoothClient.prepareForNewConnection(address);
                bluetoothClient.disconnect(false);
                this.connectedDevices.remove(deviceType);
                requestFinishBondActivity();
                suppressBackgroundBondCancel(z3 ? 8000L : 5000L);
                this.isAutoReconnect = true;
                this.connectionListeners.put(deviceType, onConnectionStateChangedListener);
                final BluetoothClient.OnConnectionStateChangedListener onConnectionStateChangedListener2 = new BluetoothClient.OnConnectionStateChangedListener() { // from class: com.qianhe.rtkclientlib.MultiBluetoothManager.1
                    @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnConnectionStateChangedListener
                    public void onConnected(BluetoothDevice bluetoothDevice2) {
                        MultiBluetoothManager.this.cancelPendingConnect();
                        MultiBluetoothManager.this.requestFinishBondActivity();
                        DeviceType deviceType2 = deviceType;
                        if (deviceType2 == null || deviceType2 == DeviceType.NONE) {
                            deviceType2 = MultiBluetoothManager.this.getDeviceType(bluetoothDevice2 != null ? bluetoothDevice2.getName() : "", "");
                        }
                        MyBluetoothDevice myBluetoothDevice3 = new MyBluetoothDevice(bluetoothDevice2, deviceType2);
                        myBluetoothDevice3.state = BluetoothStateEnum.CONNECTED.getState();
                        MultiBluetoothManager.this.connectedDevices.put(deviceType2, myBluetoothDevice3);
                        BluetoothClient.OnConnectionStateChangedListener onConnectionStateChangedListener3 = onConnectionStateChangedListener;
                        if (onConnectionStateChangedListener3 != null) {
                            onConnectionStateChangedListener3.onConnected(bluetoothDevice2);
                        }
                    }

                    @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnConnectionStateChangedListener
                    public void onDisconnected(DeviceType deviceType2) {
                        MultiBluetoothManager.this.connectedDevices.remove(deviceType2);
                        BluetoothClient.OnConnectionStateChangedListener onConnectionStateChangedListener3 = onConnectionStateChangedListener;
                        if (onConnectionStateChangedListener3 != null) {
                            onConnectionStateChangedListener3.onDisconnected(deviceType2);
                        }
                    }

                    @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnConnectionStateChangedListener
                    public void onConnectionFailed(String str) {
                        if (!MultiBluetoothManager.this.isAutoReconnect) {
                            LogToFile.i("已停止自动重连，忽略连接失败回调");
                            return;
                        }
                        if (MultiBluetoothManager.this.pendingReconnectRunnable != null) {
                            MultiBluetoothManager.this.handler.removeCallbacks(MultiBluetoothManager.this.pendingReconnectRunnable);
                        }
                        MultiBluetoothManager.this.pendingReconnectRunnable = new Runnable() { // from class: com.qianhe.rtkclientlib.MultiBluetoothManager.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MultiBluetoothManager.this.pendingReconnectRunnable = null;
                                if (bluetoothClient.isBonding()) {
                                    return;
                                }
                                String pendingConnectAddress2 = bluetoothClient.getPendingConnectAddress();
                                if (!TextUtils.isEmpty(address) && !TextUtils.isEmpty(pendingConnectAddress2) && !address.equalsIgnoreCase(pendingConnectAddress2)) {
                                    LogToFile.i("已切换目标，跳过旧设备自动重连: " + address);
                                    return;
                                }
                                if (MultiBluetoothManager.this.isAutoReconnect) {
                                    LogToFile.i("连接失败，自动重连。");
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    MultiBluetoothManager.this.connectDevice(myBluetoothDevice, deviceType, onConnectionStateChangedListener);
                                    return;
                                }
                                LogToFile.i("已停止自动重连，忽略连接失败回调");
                            }
                        };
                        MultiBluetoothManager.this.handler.postDelayed(MultiBluetoothManager.this.pendingReconnectRunnable, 2000L);
                    }

                    @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnConnectionStateChangedListener
                    public void onSocketClosed(String str) {
                        MultiBluetoothManager.this.connectedDevices.remove(deviceType);
                        BluetoothClient.OnConnectionStateChangedListener onConnectionStateChangedListener3 = onConnectionStateChangedListener;
                        if (onConnectionStateChangedListener3 != null) {
                            onConnectionStateChangedListener3.onSocketClosed(str);
                        }
                    }

                    @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnConnectionStateChangedListener
                    public void onBond(BluetoothDevice bluetoothDevice2) {
                        BluetoothClient.OnConnectionStateChangedListener onConnectionStateChangedListener3 = onConnectionStateChangedListener;
                        if (onConnectionStateChangedListener3 != null) {
                            onConnectionStateChangedListener3.onBond(bluetoothDevice2);
                        }
                    }

                    @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnConnectionStateChangedListener
                    public void onBondCompleted(BluetoothDevice bluetoothDevice2) {
                        MultiBluetoothManager.this.requestFinishBondActivity();
                        BluetoothClient.OnConnectionStateChangedListener onConnectionStateChangedListener3 = onConnectionStateChangedListener;
                        if (onConnectionStateChangedListener3 != null) {
                            onConnectionStateChangedListener3.onBondCompleted(bluetoothDevice2);
                        }
                    }

                    @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnConnectionStateChangedListener
                    public void onBondCancelled(BluetoothDevice bluetoothDevice2) {
                        MultiBluetoothManager.this.requestFinishBondActivity();
                        BluetoothClient.OnConnectionStateChangedListener onConnectionStateChangedListener3 = onConnectionStateChangedListener;
                        if (onConnectionStateChangedListener3 != null) {
                            onConnectionStateChangedListener3.onBondCancelled(bluetoothDevice2);
                        }
                    }
                };
                final boolean z5 = z3;
                final boolean z6 = z4;
                Runnable runnable2 = new Runnable() { // from class: com.qianhe.rtkclientlib.MultiBluetoothManager$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        MultiBluetoothManager.m1076$r8$lambda$N0QP4n4phY3JUCm5ayY2CkXcOQ(this.f$0, myBluetoothDevice, z5, z6, address, bluetoothClient, onConnectionStateChangedListener2);
                    }
                };
                Runnable runnable3 = this.pendingConnectRunnable;
                if (runnable3 != null) {
                    this.handler.removeCallbacks(runnable3);
                    this.pendingConnectRunnable = null;
                }
                if (z5) {
                    this.pendingConnectRunnable = runnable2;
                    this.handler.postDelayed(runnable2, 1200L);
                } else {
                    runnable2.run();
                }
            }
        }
    }

    /* renamed from: $r8$lambda$N0QP4n4phY3J-UCm5ayY2CkXcOQ, reason: not valid java name */
    public static /* synthetic */ void m1076$r8$lambda$N0QP4n4phY3JUCm5ayY2CkXcOQ(MultiBluetoothManager multiBluetoothManager, MyBluetoothDevice myBluetoothDevice, boolean z, boolean z2, String str, BluetoothClient bluetoothClient, BluetoothClient.OnConnectionStateChangedListener onConnectionStateChangedListener) {
        String str2;
        multiBluetoothManager.pendingConnectRunnable = null;
        if (myBluetoothDevice.bluetoothDevice == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("开始 connectToDevice");
        if (z) {
            str2 = "（切换设备延迟后）";
        } else {
            str2 = z2 ? "（已配对地址直连）" : "";
        }
        sb.append(str2);
        sb.append(": ");
        sb.append(str);
        LogToFile.i(sb.toString());
        multiBluetoothManager.suppressBackgroundBondCancel(5000L);
        bluetoothClient.connectToDevice(myBluetoothDevice.bluetoothDevice, onConnectionStateChangedListener);
    }

    public void disconnectDevice(DeviceType deviceType) {
        if (deviceType == null) {
            return;
        }
        BluetoothClient bluetoothClient = this.bluetoothClients.get(deviceType);
        if (bluetoothClient != null && this.bluetoothClients.containsKey(deviceType)) {
            bluetoothClient.disconnect();
            this.connectedDevices.remove(deviceType);
        }
        stopAutoReconnect();
    }

    public void disconnectAll() {
        for (BluetoothClient bluetoothClient : this.bluetoothClients.values()) {
            if (bluetoothClient != null) {
                bluetoothClient.disconnect();
            }
        }
        stopAutoReconnect();
        this.connectedDevices.clear();
    }

    public void stopAutoReconnect() {
        if (this.isAutoReconnect) {
            LogToFile.i("停止蓝牙自动重连。");
            this.isAutoReconnect = false;
        }
        Runnable runnable = this.pendingReconnectRunnable;
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
            this.pendingReconnectRunnable = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelPendingConnect() {
        Runnable runnable = this.pendingConnectRunnable;
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
            this.pendingConnectRunnable = null;
        }
    }

    public void cancelBondingIfNeeded() {
        this.bondCancelEpoch.incrementAndGet();
        cancelPendingConnect();
        stopAutoReconnect();
        for (BluetoothClient bluetoothClient : this.bluetoothClients.values()) {
            if (bluetoothClient != null) {
                bluetoothClient.cancelBonding();
            }
        }
        requestFinishBondActivity();
    }

    public void finishBondActivity() {
        requestFinishBondActivity();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestFinishBondActivity() {
        try {
            Intent intent = new Intent("com.qianhe.yct.action.FINISH_BLUETOOTH_BOND");
            intent.setPackage(this.context.getPackageName());
            this.context.sendBroadcast(intent);
        } catch (Throwable th) {
            LogToFile.w("发送关闭配对页广播失败: " + th.getMessage());
        }
    }

    public long getBondCancelEpoch() {
        return this.bondCancelEpoch.get();
    }

    public boolean wasBondCancelledSince(long j) {
        return this.bondCancelEpoch.get() != j;
    }

    public void suppressBackgroundBondCancel(long j) {
        this.suppressBackgroundBondCancelUntil = System.currentTimeMillis() + Math.max(0L, j);
    }

    public boolean isBackgroundBondCancelSuppressed() {
        return System.currentTimeMillis() < this.suppressBackgroundBondCancelUntil;
    }

    public boolean isBondingInProgress() {
        for (BluetoothClient bluetoothClient : this.bluetoothClients.values()) {
            if (bluetoothClient != null && bluetoothClient.isBonding()) {
                return true;
            }
        }
        return false;
    }

    public boolean isConnectingInProgress() {
        for (BluetoothClient bluetoothClient : this.bluetoothClients.values()) {
            if (bluetoothClient != null && bluetoothClient.isConnecting()) {
                return true;
            }
        }
        return false;
    }

    public MyBluetoothDevice getConnectedDevice(DeviceType deviceType) {
        return this.connectedDevices.get(deviceType);
    }

    public BluetoothClient getBluetoothClient(DeviceType deviceType) {
        DeviceType deviceType2 = DeviceType.ATTITUDESENSOR;
        if (deviceType == deviceType2) {
            return new BluetoothClient(this.context, deviceType2);
        }
        return this.bluetoothClients.get(deviceType);
    }

    public boolean isDeviceConnected(DeviceType deviceType) {
        return this.connectedDevices.containsKey(deviceType) && this.connectedDevices.get(deviceType) != null;
    }

    public Map<DeviceType, MyBluetoothDevice> getAllConnectedDevices() {
        return new HashMap(this.connectedDevices);
    }

    public DeviceType getDeviceType(String str, String str2) {
        try {
            if (!TextUtils.isEmpty(str)) {
                if (TextUtils.isEmpty(str2) || (!str2.equalsIgnoreCase(SensorUUidEnum.TYPE1.getUuid()) && !str2.equalsIgnoreCase(SensorUUidEnum.TYPE2.getUuid()))) {
                    if (!TextUtils.isEmpty(str) && str.length() > 6) {
                        char cCharAt = str.charAt(5);
                        char cCharAt2 = str.charAt(6);
                        if (str.startsWith("W") && String.valueOf(cCharAt).equals("7") && String.valueOf(cCharAt2).equals("2")) {
                            return DeviceType.ZPY;
                        }
                        if (str.equals("W54206161007895")) {
                            return DeviceType.ZPY;
                        }
                        return DeviceType.BASE;
                    }
                    return DeviceType.NONE;
                }
                return DeviceType.ATTITUDESENSOR;
            }
            return DeviceType.NONE;
        } catch (Exception e) {
            LogToFile.e(e + " -> " + str + " -> " + e.getMessage());
            return DeviceType.NONE;
        }
    }

    public boolean isH5OrOnlyone(DeviceType deviceType) {
        return deviceType == DeviceType.ZPY || getAllConnectedDevices().size() == 1;
    }

    public boolean isBaseOrOnlyone(DeviceType deviceType) {
        return deviceType == DeviceType.BASE || getAllConnectedDevices().size() == 1;
    }

    public boolean isKe76Pro() {
        return this.mSp.getString("hardwareversionh5", "").contains("KE76Pro-PCBA");
    }

    public int getDeviceModel() {
        String string = this.mSp.getString("hardwareversionh5", "");
        if (string.contains("KE76Lite-PCBA")) {
            return 0;
        }
        return string.contains("KE76-PCBA") ? 1 : 2;
    }
}
