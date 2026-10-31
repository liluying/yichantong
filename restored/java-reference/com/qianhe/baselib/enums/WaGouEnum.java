package com.qianhe.baselib.enums;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public enum WaGouEnum {
    FLAT(1),
    DOWN(2),
    UP(3);

    private final int type;

    WaGouEnum(int i) {
        this.type = i;
    }

    public int getType() {
        return this.type;
    }
}
