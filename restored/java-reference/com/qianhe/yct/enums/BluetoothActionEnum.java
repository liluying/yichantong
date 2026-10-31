package com.qianhe.yct.enums;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public enum BluetoothActionEnum {
    STARTSCAN(11),
    STOPSCAN(22),
    DISCONNECT(33),
    CONNECT(44);

    private final int state;

    BluetoothActionEnum(int i) {
        this.state = i;
    }
}
