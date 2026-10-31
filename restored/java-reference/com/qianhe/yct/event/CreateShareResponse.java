package com.qianhe.yct.event;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CreateShareResponse {
    public String msg;
    public String shareCode;
    public long shareId;
    public int state;

    public CreateShareResponse(int i, String str) {
        this.state = i;
        this.msg = str;
    }
}
