package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class RtkInfo {
    public String bluethoothVersion;
    public DeviceType deviceType;
    public String firmwareVersion;
    public String hardwareVersion;

    public RtkInfo(DeviceType deviceType, String str, String str2, String str3) {
        this.deviceType = deviceType;
        this.hardwareVersion = str;
        this.firmwareVersion = str2;
        this.bluethoothVersion = str3;
    }
}
