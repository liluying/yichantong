package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class Wlan0Response {
    public final DeviceType deviceType;
    public String result;

    public Wlan0Response(DeviceType deviceType, String str) {
        this.deviceType = deviceType;
        this.result = str;
    }

    public String toString() {
        return "Wlan0Response{result='" + this.result + AngleFormat.CH_MIN_SYMBOL + '}';
    }
}
