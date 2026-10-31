package com.qianhe.yct.event;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CloseOrderResponse {
    public String errMsg;
    public int state;

    public CloseOrderResponse(int i, String str) {
        this.state = i;
        this.errMsg = str;
    }
}
