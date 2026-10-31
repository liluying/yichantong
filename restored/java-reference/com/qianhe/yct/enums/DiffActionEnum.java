package com.qianhe.yct.enums;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public enum DiffActionEnum {
    INIT(true),
    UPGRADE(false);

    private final boolean isInit;

    DiffActionEnum(boolean z) {
        this.isInit = z;
    }

    public boolean isInit() {
        return this.isInit;
    }
}
