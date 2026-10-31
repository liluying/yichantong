package com.qianhe.yct.event;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CreateEngineeringResponse {
    public String errMsg;
    public long gnssProjParamId;
    public String gnssProjParamUuid;
    public long id;
    public long localDbId;
    public int state;
    public String uuid;

    public CreateEngineeringResponse(int i, String str) {
        this.state = i;
        this.errMsg = str;
    }

    public CreateEngineeringResponse(int i, String str, long j, String str2, long j2, String str3) {
        this.state = i;
        this.errMsg = str;
        this.id = j;
        this.uuid = str2;
        this.gnssProjParamId = j2;
        this.gnssProjParamUuid = str3;
    }
}
