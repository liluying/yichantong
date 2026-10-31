package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class Batt {
    public DeviceType deviceType;
    public int percent;

    public Batt(int i) {
        this.percent = i;
    }

    public Batt(DeviceType deviceType, int i) {
        this.deviceType = deviceType;
        this.percent = i;
    }
}
