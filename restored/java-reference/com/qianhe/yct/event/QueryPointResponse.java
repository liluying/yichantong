package com.qianhe.yct.event;

import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class QueryPointResponse {
    public String errMsg;
    public long groupId;
    public List<PointItem> list;
    public int state;
    public long totalCount;

    public static class PointItem {
        public double altitude;
        public long collectedAt;
        public long groupId;
        public double hdop;
        public long id;
        public double latitude;
        public double longitude;
        public String name;
        public int solution;
        public double vdop;
        public double x;
        public double y;
        public double z;
    }

    public QueryPointResponse(int i, String str) {
        this.state = i;
        this.errMsg = str;
    }

    public QueryPointResponse(int i, String str, long j, List<PointItem> list) {
        this.state = i;
        this.errMsg = str;
        this.totalCount = j;
        this.list = list;
    }
}
