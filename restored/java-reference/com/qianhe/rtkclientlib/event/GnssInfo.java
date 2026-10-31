package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GnssInfo {
    public final DeviceType deviceType;
    public String gnssVersion;

    public GnssInfo(DeviceType deviceType, String str) {
        this.deviceType = deviceType;
        this.gnssVersion = str;
    }
}
