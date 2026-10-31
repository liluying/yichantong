package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class AdjustParamEvent {
    public final DeviceType deviceType;
    public String newCalibParameters;
    public int state;

    public AdjustParamEvent(DeviceType deviceType, int i, String str) {
        this.deviceType = deviceType;
        this.state = i;
        this.newCalibParameters = str;
    }
}
