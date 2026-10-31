package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SNRPackageEvent {
    public DeviceType deviceType;
    public String lines;

    public SNRPackageEvent(String str) {
        this.lines = str;
    }

    public SNRPackageEvent(DeviceType deviceType, String str) {
        this.deviceType = deviceType;
        this.lines = str;
    }
}
