package com.qianhe.baselib.enums;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public enum ShuaPoEnum {
    DOWN(1),
    UP(2);

    private final int type;

    ShuaPoEnum(int i) {
        this.type = i;
    }

    public int getType() {
        return this.type;
    }
}
