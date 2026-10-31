package com.qianhe.yct.event;

import com.qianhe.baselib.bean.ShovelEntity;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class QueryBucketResponse {
    public String err_msg;
    public List<ShovelEntity> list;
    public int state;

    public QueryBucketResponse(int i, String str) {
        this.state = i;
        this.err_msg = str;
    }

    public QueryBucketResponse(int i, String str, List<ShovelEntity> list) {
        this.state = i;
        this.err_msg = str;
        this.list = list;
    }
}
