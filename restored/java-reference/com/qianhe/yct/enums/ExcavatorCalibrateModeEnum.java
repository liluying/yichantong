package com.qianhe.yct.enums;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public enum ExcavatorCalibrateModeEnum {
    NO_SENSOR_FLAT(1),
    SENSOR(2),
    NO_SENSOR_NOT_FLAT(3);

    private final int mode;

    ExcavatorCalibrateModeEnum(int i) {
        this.mode = i;
    }

    public int getMode() {
        return this.mode;
    }
}
