package com.qianhe.baselib.enums;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public enum FrequencyEnum {
    AUTO(-1.0f),
    HZ_1(1.0f),
    HZ_2(0.5f),
    HZ_5(0.2f),
    HZ_10(0.1f);

    private float frequency;

    public float getFrequency() {
        return this.frequency;
    }

    FrequencyEnum(float f) {
        this.frequency = f;
    }
}
