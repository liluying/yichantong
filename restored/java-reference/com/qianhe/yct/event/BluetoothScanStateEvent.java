package com.qianhe.yct.event;

import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BluetoothScanStateEvent {
    public MyBluetoothDevice mySevice;
    public int scanPageIndex;

    public BluetoothScanStateEvent(MyBluetoothDevice myBluetoothDevice, int i) {
        this.mySevice = myBluetoothDevice;
        this.scanPageIndex = i;
    }
}
