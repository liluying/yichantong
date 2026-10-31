package com.qianhe.baselib.enums;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public enum NtripTypeEnum {
    NONE(0),
    NTRIP(1),
    SDK(2),
    ACC(3);

    private final int type;

    NtripTypeEnum(int i) {
        this.type = i;
    }

    public int getType() {
        return this.type;
    }
}
