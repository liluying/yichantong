package com.qianhe.baselib.enums;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public enum ProjectEnum {
    ZHAOPING(1),
    SHUAPO(2),
    WAGOU(3),
    DIKE(4),
    LINE(5),
    POLY_LINE(6),
    ONEPOINTAREA(7),
    THREEPOINTAREA(8),
    SITELEVELING(9),
    ARBITRARYLINE(10),
    CURVEDSLOPE(11),
    MULTI_POINT_AREA(12);

    private final int type;

    ProjectEnum(int i) {
        this.type = i;
    }

    public int getType() {
        return this.type;
    }
}
