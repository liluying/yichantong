package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SetAntennaHeightResponse {
    public final DeviceType deviceType;
    public double heigth;
    public String line;

    public SetAntennaHeightResponse(DeviceType deviceType, String str, double d) {
        this.deviceType = deviceType;
        this.line = str;
        this.heigth = d;
    }
}
