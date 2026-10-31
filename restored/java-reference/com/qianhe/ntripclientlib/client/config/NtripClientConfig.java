package com.qianhe.ntripclientlib.client.config;

import com.qianhe.baselib.base.BaseConfig;
import com.qianhe.ntripclientlib.base.NtripConfigImpl;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class NtripClientConfig extends BaseConfig implements NtripConfigImpl {
    @Override // com.qianhe.baselib.base.BaseConfig, com.qianhe.ntripclientlib.base.NtripConfigImpl
    public void setUsername(String str) {
        this.username = str;
    }

    @Override // com.qianhe.baselib.base.BaseConfig, com.qianhe.ntripclientlib.base.NtripConfigImpl
    public void setPassword(String str) {
        this.password = str;
    }

    @Override // com.qianhe.baselib.base.BaseConfig
    public String toString() {
        return "NtripClientConfig{ntrip_host='" + this.ntrip_host + AngleFormat.CH_MIN_SYMBOL + ", ntrip_port=" + this.ntrip_port + ", mount_point='" + this.mount_point + AngleFormat.CH_MIN_SYMBOL + ", username='" + this.username + AngleFormat.CH_MIN_SYMBOL + ", password='" + this.password + AngleFormat.CH_MIN_SYMBOL + ", updateGGA_period=" + this.updateGGA_period + '}';
    }
}
