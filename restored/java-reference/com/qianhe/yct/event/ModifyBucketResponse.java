package com.qianhe.yct.event;

import com.qianhe.baselib.bean.ShovelEntity;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ModifyBucketResponse {
    public String err_msg;
    public ShovelEntity shovelEntity;
    public int state;

    public ModifyBucketResponse(int i, String str, ShovelEntity shovelEntity) {
        this.state = i;
        this.err_msg = str;
        this.shovelEntity = shovelEntity;
    }
}
