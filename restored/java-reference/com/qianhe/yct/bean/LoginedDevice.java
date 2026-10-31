package com.qianhe.yct.bean;

import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class LoginedDevice {
    public String android_id;
    public int id;
    public long last_activity_epoch;
    public long login_epoch;
    public String name;

    public String toString() {
        return "LoginedDevice{id=" + this.id + ", name='" + this.name + AngleFormat.CH_MIN_SYMBOL + ", android_id='" + this.android_id + AngleFormat.CH_MIN_SYMBOL + ", login_epoch=" + this.login_epoch + ", last_activity_epoch=" + this.last_activity_epoch + '}';
    }
}
