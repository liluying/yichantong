package com.qianhe.yct.event;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DeviceUniqueIdEvent {
    public String deviceId;
    public boolean first;

    public DeviceUniqueIdEvent() {
    }

    public DeviceUniqueIdEvent(boolean z, String str) {
        this.first = z;
        this.deviceId = str;
    }
}
