package com.qianhe.yct.event;

import com.google.gson.annotations.SerializedName;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class WxOpenIdResponse {

    @SerializedName("err_msg")
    public String errorMsg;
    public int state;

    @SerializedName("openid")
    public String wxOpenId;

    public WxOpenIdResponse(int i, String str) {
        this.state = i;
        this.errorMsg = str;
    }
}
