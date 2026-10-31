package com.qianhe.yct.enums;

import net.lingala.zip4j.util.InternalZipConstants;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public enum InsStatusEnum {
    VERTICAL(2048),
    GNSSLOST(65536),
    GNSSREJECT(16),
    TILTREJECT(8),
    SENSORLOST(InternalZipConstants.BUFF_SIZE),
    ELEVATIONAVAILABLE(2097152),
    READY(2);

    private final int status;

    InsStatusEnum(int i) {
        this.status = i;
    }

    public int getStatus() {
        return this.status;
    }
}
