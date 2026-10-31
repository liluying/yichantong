package com.qianhe.baselib.enums;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public enum CoordTypeEnum {
    GEODETIC("Geodetic"),
    GAUSS("Gauss"),
    ECEF("ECEF");

    private final String type;

    CoordTypeEnum(String str) {
        this.type = str;
    }

    public String getType() {
        return this.type;
    }
}
