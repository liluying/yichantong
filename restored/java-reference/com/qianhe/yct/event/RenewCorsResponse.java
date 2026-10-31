package com.qianhe.yct.event;

import com.google.gson.annotations.SerializedName;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class RenewCorsResponse {

    @SerializedName("appid")
    public String appId;

    @SerializedName("err_msg")
    public String errorMsg;

    @SerializedName("nonce_str")
    public String nonceStr;

    @SerializedName("pay_sign")
    public String paySign;

    @SerializedName("prepay_id")
    public String prepayId;

    @SerializedName("sign_type")
    public String signType;
    public int state;

    @SerializedName("time_stamp")
    public String timeStamp;

    @SerializedName("trade_no")
    public String tradeNo;

    public RenewCorsResponse(int i, String str) {
        this.state = i;
        this.errorMsg = str;
    }
}
