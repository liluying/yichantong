package com.qianhe.yct.event;

import com.qianhe.yct.enums.BluetoothActionEnum;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BluetoothConnectActionByMacEvent {
    public BluetoothActionEnum action;
    public String mac;

    public BluetoothConnectActionByMacEvent(BluetoothActionEnum bluetoothActionEnum, String str) {
        this.action = bluetoothActionEnum;
        this.mac = str;
    }
}
