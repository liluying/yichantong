package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SetFeatureCodeResult {
    public String code;
    public final DeviceType deviceType;
    public String result;

    public SetFeatureCodeResult(DeviceType deviceType, String str, String str2) {
        this.deviceType = deviceType;
        this.code = str;
        this.result = str2;
    }
}
