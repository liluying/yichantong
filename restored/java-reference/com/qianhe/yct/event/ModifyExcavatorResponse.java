package com.qianhe.yct.event;

import com.qianhe.baselib.bean.ExcavatorEntity;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ModifyExcavatorResponse {
    public ExcavatorEntity excavator;
    public String msg;
    public int state;

    public ModifyExcavatorResponse(int i, String str, ExcavatorEntity excavatorEntity) {
        this.state = i;
        this.msg = str;
        this.excavator = excavatorEntity;
    }
}
