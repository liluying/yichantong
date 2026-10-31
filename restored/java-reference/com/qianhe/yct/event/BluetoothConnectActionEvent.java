package com.qianhe.yct.event;

import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.yct.enums.BluetoothActionEnum;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BluetoothConnectActionEvent {
    public BluetoothActionEnum action;
    public final String deviceAddress;
    public String deviceName;
    public final DeviceType deviceType;

    public BluetoothConnectActionEvent(BluetoothActionEnum bluetoothActionEnum, String str, DeviceType deviceType) {
        this(bluetoothActionEnum, str, null, deviceType);
    }

    public BluetoothConnectActionEvent(BluetoothActionEnum bluetoothActionEnum, String str, String str2, DeviceType deviceType) {
        this.action = bluetoothActionEnum;
        this.deviceName = str;
        this.deviceAddress = str2;
        this.deviceType = deviceType;
    }
}
