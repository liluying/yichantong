package com.qianhe.yct.event;

import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class QueryGnssTransParamResponse {
    public String errMsg;
    public List<GnssTransParamItem> list;
    public int state;
    public long totalCount;

    public static class GnssTransParamItem {
        public long belongUid;
        public String controlPoints;
        public long createEpoch;
        public long id;
        public String name;
        public int paramType;
        public String paramsDetail;
        public int state;
        public long updateEpoch;
        public String uuid;
        public long version;
    }

    public QueryGnssTransParamResponse(int i, String str) {
        this.state = i;
        this.errMsg = str;
    }

    public QueryGnssTransParamResponse(int i, String str, long j, List<GnssTransParamItem> list) {
        this.state = i;
        this.errMsg = str;
        this.totalCount = j;
        this.list = list;
    }
}
