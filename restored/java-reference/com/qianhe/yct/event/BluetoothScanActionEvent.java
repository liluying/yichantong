package com.qianhe.yct.event;

import com.qianhe.yct.enums.BluetoothActionEnum;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BluetoothScanActionEvent {
    public BluetoothActionEnum action;
    public boolean isAutoConnect;
    public int pageIndex;

    public BluetoothScanActionEvent(BluetoothActionEnum bluetoothActionEnum) {
        this.action = bluetoothActionEnum;
    }

    public BluetoothScanActionEvent(BluetoothActionEnum bluetoothActionEnum, int i) {
        this.action = bluetoothActionEnum;
        this.pageIndex = i;
    }

    public BluetoothScanActionEvent(BluetoothActionEnum bluetoothActionEnum, boolean z) {
        this.action = bluetoothActionEnum;
        this.isAutoConnect = z;
    }

    public BluetoothScanActionEvent(BluetoothActionEnum bluetoothActionEnum, boolean z, int i) {
        this.action = bluetoothActionEnum;
        this.isAutoConnect = z;
        this.pageIndex = i;
    }
}
