package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class UpgradeWriteEvent {
    public final int currentIndex;
    public final DeviceType deviceType;
    public final String result;
    public final String session;
    public final String state;
    public final int totalSize;

    public UpgradeWriteEvent(DeviceType deviceType, String str, String str2, int i, int i2, String str3) {
        this.deviceType = deviceType;
        this.session = str;
        this.state = str2;
        this.totalSize = i;
        this.currentIndex = i2;
        this.result = str3;
    }
}
