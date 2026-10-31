package com.qianhe.baselib.enums;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public enum ZhaoPingEnum {
    LEVEING(1),
    FILL(2),
    DIG(3);

    private final int type;

    ZhaoPingEnum(int i) {
        this.type = i;
    }

    public int getType() {
        return this.type;
    }
}
