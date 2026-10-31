package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class Expiredate {
    public final DeviceType deviceType;
    public String value;

    public Expiredate(DeviceType deviceType, String str) {
        this.deviceType = deviceType;
        this.value = str;
    }
}
