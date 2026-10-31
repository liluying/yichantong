package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GetRadioChannelEvent {
    public final String[] channelArray;
    public DeviceType deviceType;

    public GetRadioChannelEvent(DeviceType deviceType, String[] strArr) {
        this.deviceType = deviceType;
        this.channelArray = strArr;
    }
}
