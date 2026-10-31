package com.qianhe.baselib.bean;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GPDOPEntity {
    public DeviceType deviceType;
    public float hdop;
    public float pdop;
    public float vdop;

    public String toString() {
        return "GPDOPEntity{hdop=" + this.hdop + ", vdop=" + this.vdop + '}';
    }
}
