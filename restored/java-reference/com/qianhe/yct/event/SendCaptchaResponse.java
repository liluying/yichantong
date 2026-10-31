package com.qianhe.yct.event;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SendCaptchaResponse {
    public String msg;
    public int state;

    public SendCaptchaResponse(int i, String str) {
        this.state = i;
        this.msg = str;
    }
}
