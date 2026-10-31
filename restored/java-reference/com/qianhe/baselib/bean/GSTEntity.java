package com.qianhe.baselib.bean;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GSTEntity {
    public float altstd;
    public DeviceType deviceType;
    public float latstd;
    public float lonstd;
    public String utc;

    public String toString() {
        return "GSTEntity{utc=" + this.utc + "lonstd=" + this.lonstd + ", latstd=" + this.latstd + ", altstd=" + this.altstd + '}';
    }
}
