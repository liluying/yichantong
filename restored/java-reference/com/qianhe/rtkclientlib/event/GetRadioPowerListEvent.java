package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GetRadioPowerListEvent {
    public DeviceType deviceType;
    public final String[] powerArray;

    public GetRadioPowerListEvent(DeviceType deviceType, String[] strArr) {
        this.deviceType = deviceType;
        this.powerArray = strArr;
    }
}
