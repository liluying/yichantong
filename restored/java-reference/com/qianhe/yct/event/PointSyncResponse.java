package com.qianhe.yct.event;

import com.qianhe.baselib.bean.PointlibEntity;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class PointSyncResponse {
    public List<PointlibEntity> entities;
    public PointlibEntity entity;
    public String errMsg;
    public List<Long> ids;
    public int state;

    public PointSyncResponse(int i, String str) {
        this.state = i;
        this.errMsg = str;
    }
}
