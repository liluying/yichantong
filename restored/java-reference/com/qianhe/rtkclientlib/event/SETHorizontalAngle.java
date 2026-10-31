package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SETHorizontalAngle {
    public final DeviceType deviceType;
    public float h1;
    public float h2;
    public float l1;
    public float l2;
    public boolean state;

    public SETHorizontalAngle(DeviceType deviceType, boolean z, float f, float f2, float f3, float f4) {
        this.deviceType = deviceType;
        this.state = z;
        this.l1 = f;
        this.l2 = f2;
        this.h1 = f3;
        this.h2 = f4;
    }
}
