package com.qianhe.yct.event;

import com.qianhe.baselib.base.BaseProEntity;
import java.util.ArrayList;
import java.util.List;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class QueryProjectResponse {
    public long belong_uid;
    public String err_msg;
    public boolean filterByCurrentEngineering;
    public List<BaseProEntity> list;
    public long queryBelongEngineeringId;
    public String queryEngineeringUuid;
    public Integer queryType;
    public int state;
    public int total_count;

    public QueryProjectResponse(int i, String str) {
        this.list = new ArrayList();
        this.state = i;
        this.err_msg = str;
    }

    public QueryProjectResponse(int i, String str, List<BaseProEntity> list) {
        new ArrayList();
        this.state = i;
        this.err_msg = str;
        this.list = list;
    }

    public String toString() {
        return "QueryProjectResponse{belong_uid=" + this.belong_uid + ", state=" + this.state + ", total_count=" + this.total_count + ", err_msg='" + this.err_msg + AngleFormat.CH_MIN_SYMBOL + ", queryType=" + this.queryType + ", filterByCurrentEngineering=" + this.filterByCurrentEngineering + '}';
    }
}
