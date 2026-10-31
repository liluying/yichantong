package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class AntennaParams {
    public float HL1;
    public float HL2;
    public float R;
    public final DeviceType deviceType;
    public float h;

    public AntennaParams(DeviceType deviceType, float f, float f2, float f3, float f4) {
        this.deviceType = deviceType;
        this.R = f;
        this.h = f2;
        this.HL1 = f3;
        this.HL2 = f4;
    }

    public String toString() {
        return "AntennaParams{R=" + this.R + ", h=" + this.h + ", HL1=" + this.HL1 + ", HL2=" + this.HL2 + ", deviceType=" + this.deviceType + '}';
    }
}
