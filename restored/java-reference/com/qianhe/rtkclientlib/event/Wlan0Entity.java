package com.qianhe.rtkclientlib.event;

import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class Wlan0Entity {
    public String role;
    public String wifiName;
    public String wifiPassword;

    public String toString() {
        return "Wlan0Entity{role='" + this.role + AngleFormat.CH_MIN_SYMBOL + ", wifiName='" + this.wifiName + AngleFormat.CH_MIN_SYMBOL + ", wifiPassword='" + this.wifiPassword + AngleFormat.CH_MIN_SYMBOL + '}';
    }
}
