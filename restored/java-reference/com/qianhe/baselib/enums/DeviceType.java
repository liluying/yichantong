package com.qianhe.baselib.enums;

import java.io.Serializable;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public enum DeviceType implements Serializable {
    NONE("unknown"),
    ZPY("zpy"),
    BASE("base"),
    ATTITUDESENSOR("attitudeSensor");

    private final String type;

    DeviceType(String str) {
        this.type = str;
    }

    public String getType() {
        return this.type;
    }
}
