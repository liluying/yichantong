package com.qianhe.yct.event;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class LogoutResponse {
    public int loggedDeviceId;
    public String msg;
    public int state;

    public LogoutResponse(int i, String str, int i2) {
        this.state = i;
        this.msg = str;
        this.loggedDeviceId = i2;
    }
}
