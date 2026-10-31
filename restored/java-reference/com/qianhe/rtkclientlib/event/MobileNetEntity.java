package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class MobileNetEntity {
    public String apnName;
    public String apnPsw;
    public String apnUser;
    public DeviceType deviceType;
    public String state;

    public String toString() {
        return "MobileNetEntity{state='" + this.state + AngleFormat.CH_MIN_SYMBOL + ", deviceType=" + this.deviceType + ", apnName='" + this.apnName + AngleFormat.CH_MIN_SYMBOL + ", apnUser='" + this.apnUser + AngleFormat.CH_MIN_SYMBOL + ", apnPsw='" + this.apnPsw + AngleFormat.CH_MIN_SYMBOL + '}';
    }
}
