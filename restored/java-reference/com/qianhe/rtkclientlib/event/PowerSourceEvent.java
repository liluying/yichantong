package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class PowerSourceEvent {
    public final DeviceType deviceType;
    public int type;

    public PowerSourceEvent(DeviceType deviceType, String str) {
        this.deviceType = deviceType;
        this.type = str.contains("EXTEND") ? 1 : 0;
    }
}
