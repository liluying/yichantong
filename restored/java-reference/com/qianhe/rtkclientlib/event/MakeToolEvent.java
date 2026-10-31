package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class MakeToolEvent {
    public final DeviceType deviceType;
    public int state;
    public String toolParameters;

    public MakeToolEvent(DeviceType deviceType, int i, String str) {
        this.deviceType = deviceType;
        this.state = i;
        this.toolParameters = str;
    }
}
