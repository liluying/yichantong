package com.qianhe.yct.event;

import com.qianhe.baselib.bean.EngineeringEntity;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class QueryEngineeringResponse {
    public EngineeringEntity engineering;
    public String msg;
    public String requestEngineeringUuid;
    public int state;

    public QueryEngineeringResponse(int i, String str) {
        this.state = i;
        this.msg = str;
    }

    public QueryEngineeringResponse(int i, EngineeringEntity engineeringEntity) {
        this.state = i;
        this.engineering = engineeringEntity;
    }

    public QueryEngineeringResponse(int i, String str, String str2) {
        this.state = i;
        this.msg = str;
        this.requestEngineeringUuid = str2;
    }

    public QueryEngineeringResponse(int i, EngineeringEntity engineeringEntity, String str) {
        this.state = i;
        this.engineering = engineeringEntity;
        this.requestEngineeringUuid = str;
    }
}
