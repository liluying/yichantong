package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SetCalibrateParamEvent {
    public final DeviceType deviceType;
    public String line;

    public SetCalibrateParamEvent(DeviceType deviceType, String str) {
        this.deviceType = deviceType;
        this.line = str;
    }
}
