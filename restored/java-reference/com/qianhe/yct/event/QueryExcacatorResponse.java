package com.qianhe.yct.event;

import com.qianhe.baselib.bean.ExcavatorEntity;
import java.util.ArrayList;
import java.util.List;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class QueryExcacatorResponse {
    public String err_msg;
    public List<ExcavatorEntity> list;
    public int state;
    public int total_count;

    public QueryExcacatorResponse(int i, String str) {
        this.list = new ArrayList();
        this.state = i;
        this.err_msg = str;
    }

    public QueryExcacatorResponse(int i, String str, List<ExcavatorEntity> list) {
        new ArrayList();
        this.state = i;
        this.err_msg = str;
        this.list = list;
    }

    public String toString() {
        return "QueryExcacatorResponse{state=" + this.state + ", total_count=" + this.total_count + ", err_msg='" + this.err_msg + AngleFormat.CH_MIN_SYMBOL + '}';
    }
}
