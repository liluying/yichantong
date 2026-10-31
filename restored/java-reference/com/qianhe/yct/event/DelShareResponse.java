package com.qianhe.yct.event;

import com.qianhe.baselib.bean.ShareEntity;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DelShareResponse {
    public ShareEntity entity;
    public String msg;
    public int state;

    public DelShareResponse(int i, String str, ShareEntity shareEntity) {
        this.state = i;
        this.msg = str;
        this.entity = shareEntity;
    }
}
