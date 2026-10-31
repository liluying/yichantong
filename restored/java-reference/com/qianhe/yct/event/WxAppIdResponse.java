package com.qianhe.yct.event;

import com.google.gson.annotations.SerializedName;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class WxAppIdResponse {

    @SerializedName("wechatpay.android_yct_appid")
    public String appid;
    public String errorMsg;

    @SerializedName("wechatpay.mchid")
    public String mchid;

    @SerializedName("wechatpay.notify_url")
    public String notifyUrl;
    public int state;

    @SerializedName("wechatpay.enable")
    public int wechatpayEnable;

    public WxAppIdResponse(int i, String str) {
        this.state = i;
        this.errorMsg = str;
    }
}
