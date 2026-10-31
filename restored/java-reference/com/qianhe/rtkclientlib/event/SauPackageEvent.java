package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SauPackageEvent {
    public DeviceType deviceType;
    public String lines;

    public SauPackageEvent(String str) {
        this.lines = str;
    }

    public SauPackageEvent(DeviceType deviceType, String str) {
        this.deviceType = deviceType;
        this.lines = str;
    }
}
