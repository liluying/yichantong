package com.qianhe.yct.event;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CheckTokenResponse {
    public String msg;
    public int state;
    public String token;

    public CheckTokenResponse(int i, String str) {
        this.state = i;
        this.msg = str;
    }
}
