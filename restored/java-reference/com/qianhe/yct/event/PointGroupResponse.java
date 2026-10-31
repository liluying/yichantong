package com.qianhe.yct.event;

import com.qianhe.baselib.bean.PointGroupEntity;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class PointGroupResponse {
    public PointGroupEntity entity;
    public String errMsg;
    public long groupLocalId;
    public long id;
    public int state;
    public String uuid;

    public PointGroupResponse(int i, String str) {
        this.state = i;
        this.errMsg = str;
    }

    public PointGroupResponse(int i, String str, long j, String str2) {
        this.state = i;
        this.errMsg = str;
        this.id = j;
        this.uuid = str2;
    }
}
