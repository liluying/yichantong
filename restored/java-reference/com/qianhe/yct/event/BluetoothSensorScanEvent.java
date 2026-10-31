package com.qianhe.yct.event;

import com.qianhe.yct.enums.BluetoothActionEnum;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BluetoothSensorScanEvent {
    public BluetoothActionEnum action;
    public boolean isAutoConnect;
    public int pageIndex;

    public BluetoothSensorScanEvent(BluetoothActionEnum bluetoothActionEnum) {
        this.action = bluetoothActionEnum;
    }

    public BluetoothSensorScanEvent(BluetoothActionEnum bluetoothActionEnum, int i) {
        this.action = bluetoothActionEnum;
        this.pageIndex = i;
    }

    public BluetoothSensorScanEvent(BluetoothActionEnum bluetoothActionEnum, boolean z) {
        this.action = bluetoothActionEnum;
        this.isAutoConnect = z;
    }

    public BluetoothSensorScanEvent(BluetoothActionEnum bluetoothActionEnum, boolean z, int i) {
        this.action = bluetoothActionEnum;
        this.isAutoConnect = z;
        this.pageIndex = i;
    }
}
