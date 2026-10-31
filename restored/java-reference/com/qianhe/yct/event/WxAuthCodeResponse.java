package com.qianhe.yct.event;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class WxAuthCodeResponse {
    public String closeOrderNo;
    public int errCode;
    public String wxCode;

    public WxAuthCodeResponse(int i, String str, String str2) {
        this.errCode = i;
        this.wxCode = str;
        this.closeOrderNo = str2;
    }
}
