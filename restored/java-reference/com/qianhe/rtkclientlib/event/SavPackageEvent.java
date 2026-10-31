package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SavPackageEvent {
    public DeviceType deviceType;
    public String lines;

    public SavPackageEvent(String str) {
        this.lines = str;
    }

    public SavPackageEvent(DeviceType deviceType, String str) {
        this.deviceType = deviceType;
        this.lines = str;
    }
}
