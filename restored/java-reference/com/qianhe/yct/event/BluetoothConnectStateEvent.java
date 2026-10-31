package com.qianhe.yct.event;

import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BluetoothConnectStateEvent {
    public MyBluetoothDevice myDevice;

    public BluetoothConnectStateEvent(MyBluetoothDevice myBluetoothDevice) {
        this.myDevice = myBluetoothDevice;
    }
}
