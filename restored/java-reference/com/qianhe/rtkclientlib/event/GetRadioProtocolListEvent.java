package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GetRadioProtocolListEvent {
    public DeviceType deviceType;
    public final String[] protocolArray;

    public GetRadioProtocolListEvent(DeviceType deviceType, String[] strArr) {
        this.deviceType = deviceType;
        this.protocolArray = strArr;
    }
}
