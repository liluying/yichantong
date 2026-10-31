package com.qianhe.rtkclientlib.event;

import android.util.Base64;
import com.qianhe.baselib.enums.DeviceType;
import java.nio.charset.StandardCharsets;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GetCalibrateParamEvent {
    public String calibParams;
    public String calibParamsId;
    public final DeviceType deviceType;
    public String line;
    public String name;

    public GetCalibrateParamEvent(DeviceType deviceType, String str, String str2) {
        this(deviceType, str, str2, null);
    }

    public GetCalibrateParamEvent(DeviceType deviceType, String str, String str2, String str3) {
        this.deviceType = deviceType;
        this.calibParamsId = str;
        this.calibParams = str2;
        this.line = str3;
        String str4 = new String(Base64.decode(str, 0), StandardCharsets.UTF_8);
        this.name = str4.contains("_") ? str4.split("_")[0] : str4;
    }
}
