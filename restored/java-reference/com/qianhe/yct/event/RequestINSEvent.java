package com.qianhe.yct.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class RequestINSEvent {
    public DeviceType deviceType;
    public float interval;

    public RequestINSEvent(DeviceType deviceType, float f) {
        this.deviceType = deviceType;
        this.interval = f;
    }
}
