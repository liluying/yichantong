package com.qianhe.yct.event;

import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class QueryPointGroupResponse {
    public String errMsg;
    public List<PointGroupItem> list;
    public int state;
    public long totalCount;

    public static class PointGroupItem {
        public long belongEngineeringId;
        public long createEpoch;
        public String engineeringUuid;
        public long id;
        public String name;
        public String remark;
        public int state;
        public long updateEpoch;
        public String uuid;
        public long version;
    }

    public QueryPointGroupResponse(int i, String str) {
        this.state = i;
        this.errMsg = str;
    }

    public QueryPointGroupResponse(int i, String str, long j, List<PointGroupItem> list) {
        this.state = i;
        this.errMsg = str;
        this.totalCount = j;
        this.list = list;
    }
}
