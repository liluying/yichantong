package com.qianhe.yct.event;

import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.yct.bean.AppConfig;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ReloadAppConfigEvent {
    public final AppConfig appConfig;
    public DeviceType deviceType;

    public ReloadAppConfigEvent(AppConfig appConfig) {
        this.appConfig = appConfig;
    }

    public ReloadAppConfigEvent(DeviceType deviceType, AppConfig appConfig) {
        this.deviceType = deviceType;
        this.appConfig = appConfig;
    }
}
