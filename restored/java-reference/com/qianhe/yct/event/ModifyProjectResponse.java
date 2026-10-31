package com.qianhe.yct.event;

import com.qianhe.baselib.base.BaseProEntity;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ModifyProjectResponse {
    public BaseProEntity entity;
    public String msg;
    public int state;

    public ModifyProjectResponse(int i, String str, BaseProEntity baseProEntity) {
        this.state = i;
        this.msg = str;
        this.entity = baseProEntity;
    }
}
