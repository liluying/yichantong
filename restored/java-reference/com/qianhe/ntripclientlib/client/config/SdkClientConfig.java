package com.qianhe.ntripclientlib.client.config;

import com.qianhe.baselib.base.BaseConfig;
import com.qianhe.ntripclientlib.base.SdkConfigImpl;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SdkClientConfig extends BaseConfig implements SdkConfigImpl {
    @Override // com.qianhe.ntripclientlib.base.SdkConfigImpl
    public void setDeviceID(String str) {
        this.deviceId = str;
    }

    @Override // com.qianhe.baselib.base.BaseConfig
    public String toString() {
        return "SdkClientConfig{ntrip_host='" + this.ntrip_host + AngleFormat.CH_MIN_SYMBOL + ", ntrip_port=" + this.ntrip_port + ", mount_point='" + this.mount_point + AngleFormat.CH_MIN_SYMBOL + ", updateGGA_period=" + this.updateGGA_period + ", deviceId='" + this.deviceId + AngleFormat.CH_MIN_SYMBOL + '}';
    }
}
