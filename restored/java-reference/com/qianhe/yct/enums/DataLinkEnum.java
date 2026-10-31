package com.qianhe.yct.enums;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public enum DataLinkEnum {
    NONE(1),
    RADIO(2),
    NETWORK(3),
    BLUETOOTH(4),
    WiFi(5),
    XLINK(6),
    PPP(7);

    private final int type;

    DataLinkEnum(int i) {
        this.type = i;
    }
}
