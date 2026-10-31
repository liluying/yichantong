package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class Serial {
    public final DeviceType deviceType;
    public String sn;

    public Serial(DeviceType deviceType, String str) {
        this.deviceType = deviceType;
        this.sn = str;
    }
}
