package com.qianhe.baselib.enums;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public enum CoordinateSystemEnum {
    CGCS2000("CGCS2000"),
    WGS84("WGS84"),
    ITRF2008("ITRF2008");

    private final String type;

    CoordinateSystemEnum(String str) {
        this.type = str;
    }
}
