package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GetPosSmoothResponse {
    public DeviceType deviceType;
    public String smooth;

    public GetPosSmoothResponse(DeviceType deviceType, String str) {
        this.deviceType = deviceType;
        this.smooth = str;
    }
}
