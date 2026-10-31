package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GetDataLinkResponse {
    public final DeviceType deviceType;
    public final String type;

    public GetDataLinkResponse(DeviceType deviceType, String str) {
        this.deviceType = deviceType;
        this.type = str;
    }
}
