package com.qianhe.baselib.enums;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public enum ConnectModeEnum {
    BLE(0),
    DEMO(1);

    private final int type;

    ConnectModeEnum(int i) {
        this.type = i;
    }

    public int getType() {
        return this.type;
    }
}
