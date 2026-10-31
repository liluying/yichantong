package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GetFeatureCodeEvent {
    public String code;
    public final DeviceType deviceType;

    public GetFeatureCodeEvent(DeviceType deviceType, String str) {
        this.deviceType = deviceType;
        this.code = str;
    }
}
