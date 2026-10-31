package com.qianhe.ntripclientlib.bean;

import com.qianhe.baselib.base.BaseConfig;
import com.qianhe.ntripclientlib.client.config.SdkClientConfig;
import java.io.Serializable;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class AuthResult implements Serializable {
    public static final int AUTHING = 2;
    public static final int AUTH_FAIL = 0;
    public static final int AUTH_SUCCESS = 1;
    public static final int CONNECTED = 4;
    public static final int CONNECTFAIL = 6;
    public static final int CONNECTING = 3;
    public static final int DATA_STREAMING = 7;
    public static final int DISCONNECT = 5;
    public static final int RSSACCREQFAILED = 8;
    public BaseConfig diffConfig = new SdkClientConfig();
    public long expireDateS;
    public boolean isInit;
    public String reason;
    public int result;

    public AuthResult(int i) {
        this.result = i;
    }

    public AuthResult(int i, long j, String str) {
        this.result = i;
        this.expireDateS = j;
        this.reason = str;
    }

    public void setIsInit(boolean z) {
        this.isInit = z;
    }

    public void setConfig(BaseConfig baseConfig) {
        this.diffConfig = baseConfig;
    }
}
