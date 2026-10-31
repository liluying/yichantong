package com.qianhe.baselib.enums;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public enum BluetoothStateEnum {
    NONE(0),
    STARTCONNECT(1),
    DISCONNECT(2),
    CONNECTED(3),
    SCAN_STARTED(4),
    SCAN_FINISHED(5),
    SCAN_FAIL(6),
    CONNECT_FAILED(7),
    START_BOND(8),
    CANCEL_BOND(9),
    BONDING(10),
    SOCKET_CLOSE(11);

    private final int state;

    BluetoothStateEnum(int i) {
        this.state = i;
    }

    public int getState() {
        return this.state;
    }
}
