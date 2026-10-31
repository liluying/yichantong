package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;
import java.io.Serializable;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BaseDiffListResponse implements Serializable {
    public String dataformatList;
    public DeviceType deviceType;

    public BaseDiffListResponse(DeviceType deviceType, String str) {
        this.deviceType = deviceType;
        this.dataformatList = str;
    }
}
