package com.qianhe.yct.event;

import com.qianhe.baselib.base.BaseProEntity;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CreateProjectResponse {
    public BaseProEntity entity;
    public String msg;
    public int state;

    public CreateProjectResponse(int i, String str, BaseProEntity baseProEntity) {
        this.state = i;
        this.msg = str;
        this.entity = baseProEntity;
    }
}
