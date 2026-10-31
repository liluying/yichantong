package com.qianhe.yct.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class AppVersionCheckEndEvent {
    public final DeviceType deviceType;

    public AppVersionCheckEndEvent(DeviceType deviceType) {
        this.deviceType = deviceType;
    }
}
