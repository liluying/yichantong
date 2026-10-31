package com.qianhe.baselib.bean;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BestPosEntity {
    public DeviceType deviceType;
    public double elve;
    public double elveDiff;
    public double lat;
    public String line;
    public double lon;
    public int trackStar;
    public int useStar;

    public String toString() {
        return "BestPosEntity{, lon=" + this.lon + ", lat=" + this.lat + ", elve=" + this.elve + ", elveDiff=" + this.elveDiff + ", trackStar=" + this.trackStar + ", useStar=" + this.useStar + '}';
    }
}
