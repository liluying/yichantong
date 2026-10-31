package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class AntennaHeigthEntity {
    public final DeviceType deviceType;
    public double height;
    public String way;

    public AntennaHeigthEntity(DeviceType deviceType, String str, double d) {
        this.deviceType = deviceType;
        this.way = str;
        this.height = d;
    }
}
