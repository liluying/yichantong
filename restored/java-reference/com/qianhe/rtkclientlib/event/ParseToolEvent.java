package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ParseToolEvent {
    public String clearParameters;
    public final DeviceType deviceType;
    public int state;

    public ParseToolEvent(DeviceType deviceType, int i, String str) {
        this.deviceType = deviceType;
        this.state = i;
        this.clearParameters = str;
    }
}
