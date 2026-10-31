package com.qianhe.yct.event;

import com.qianhe.baselib.bean.ShareEntity;
import java.util.ArrayList;
import java.util.List;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class QueryShareResponse {
    public String[] codes;
    public String err_msg;
    public List<ShareEntity> list = new ArrayList();
    public int state;
    public int total_count;

    public QueryShareResponse(int i, String[] strArr, String str) {
        this.state = i;
        this.codes = strArr;
        this.err_msg = str;
    }

    public String toString() {
        return "QueryShareResponse{state=" + this.state + ", total_count=" + this.total_count + ", err_msg='" + this.err_msg + AngleFormat.CH_MIN_SYMBOL + '}';
    }
}
