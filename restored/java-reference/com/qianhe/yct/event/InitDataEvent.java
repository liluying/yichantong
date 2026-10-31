package com.qianhe.yct.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class InitDataEvent {
    public final DeviceType deviceType;
    public final String sn;

    public InitDataEvent(DeviceType deviceType, String str) {
        this.deviceType = deviceType;
        this.sn = str;
    }
}
