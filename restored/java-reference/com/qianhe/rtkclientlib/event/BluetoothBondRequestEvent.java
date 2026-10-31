package com.qianhe.rtkclientlib.event;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BluetoothBondRequestEvent {
    public final String deviceAddress;
    public volatile boolean handledByActivity;

    public BluetoothBondRequestEvent(String str) {
        this.deviceAddress = str;
    }
}
