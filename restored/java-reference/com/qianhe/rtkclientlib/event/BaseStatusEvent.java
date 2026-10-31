package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BaseStatusEvent {
    public final String baseSn;
    public final int batt;
    public final DeviceType deviceType;
    public long diffSize;
    public final int powerType;
    public final int status;

    public BaseStatusEvent(DeviceType deviceType, long j, int i, int i2, String str, int i3) {
        this.deviceType = deviceType;
        this.diffSize = j;
        this.powerType = i;
        this.batt = i2;
        this.baseSn = str;
        this.status = i3;
    }
}
