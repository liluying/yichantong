package com.qianhe.yct.event;

import com.qianhe.baselib.bean.ShovelEntity;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CreateBucketResponse {
    public String err_msg;
    public ShovelEntity shovelEntity;
    public int state;

    public CreateBucketResponse(int i, String str) {
        this.state = i;
        this.err_msg = str;
    }
}
