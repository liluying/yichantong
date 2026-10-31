package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class UpgradeInfoEvent {
    public final DeviceType deviceType;
    public final String pns;
    public final String vsersions;

    public UpgradeInfoEvent(DeviceType deviceType, String str, String str2) {
        this.deviceType = deviceType;
        this.pns = str;
        this.vsersions = str2;
    }
}
