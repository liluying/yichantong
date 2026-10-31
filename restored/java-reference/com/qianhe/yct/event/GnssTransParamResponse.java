package com.qianhe.yct.event;

import com.qianhe.baselib.bean.GnssTransParamEntity;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GnssTransParamResponse {
    public GnssTransParamEntity entity;
    public String errMsg;
    public long id;
    public long localDbId;
    public int state;
    public String uuid;

    public GnssTransParamResponse(int i, String str) {
        this.state = i;
        this.errMsg = str;
    }

    public GnssTransParamResponse(int i, String str, long j, String str2) {
        this.state = i;
        this.errMsg = str;
        this.id = j;
        this.uuid = str2;
    }
}
