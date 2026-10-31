package com.qianhe.baselib.enums;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public enum WifiRoleEnum {
    DISABLE(1),
    AP(2),
    STATION(3);

    private final int type;

    WifiRoleEnum(int i) {
        this.type = i;
    }
}
