package com.qianhe.yct.event;

import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class QueryGnssEngineeringResponse {
    public String errMsg;
    public List<GnssEngineeringItem> list;
    public int state;
    public long totalCount;

    public static class GnssEngineeringItem {
        public long belongUid;
        public long createEpoch;
        public int currentUsage;
        public long id;
        public String name;
        public Projection projection;
        public long projectionParamId;
        public int state;
        public TransParam transParam;
        public long transParamId;
        public long updateEpoch;
        public String uuid;
        public long version;
    }

    public static class Projection {
        public int ellipsoidType;
        public long id;
        public String paramsDetail;
        public int projectionType;
        public String uuid;
    }

    public static class TransParam {
        public String controlPoints;
        public Double dx;
        public Double dy;
        public Double dz;
        public long id;
        public String name;
        public int paramType;
        public String paramsDetail;
        public Double rotation;
        public Double rotationX;
        public Double rotationY;
        public Double rotationZ;
        public Double scale;
        public int type;
        public String uuid;
    }

    public QueryGnssEngineeringResponse(int i, String str) {
        this.state = i;
        this.errMsg = str;
    }

    public QueryGnssEngineeringResponse(int i, String str, long j, List<GnssEngineeringItem> list) {
        this.state = i;
        this.errMsg = str;
        this.totalCount = j;
        this.list = list;
    }
}
