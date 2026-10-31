package com.qianhe.yct.event;

import com.qianhe.baselib.bean.ShovelEntity;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DelBucketResponse {
    public ShovelEntity entity;
    public String err_msg;
    public int state;

    public DelBucketResponse(int i, String str, ShovelEntity shovelEntity) {
        this.state = i;
        this.err_msg = str;
        this.entity = shovelEntity;
    }
}
