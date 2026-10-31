package com.qianhe.baselib.enums;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public enum StarTypeEnum {
    GPS(1),
    GLN(2),
    SBAS(3),
    BDS(4),
    GAL(5),
    QZSS(6),
    IRNSS(7);

    private final int type;

    StarTypeEnum(int i) {
        this.type = i;
    }

    public int getType() {
        return this.type;
    }
}
