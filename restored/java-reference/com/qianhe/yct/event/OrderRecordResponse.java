package com.qianhe.yct.event;

import com.qianhe.baselib.bean.OrderRecordEntity;
import java.util.ArrayList;
import java.util.List;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class OrderRecordResponse {
    public String err_msg;
    public List<OrderRecordEntity> list = new ArrayList();
    public int state;
    public int total_count;

    public OrderRecordResponse(int i, String str) {
        this.state = i;
        this.err_msg = str;
    }

    public String toString() {
        return "OrderRecordResponse{state=" + this.state + ", total_count=" + this.total_count + ", err_msg='" + this.err_msg + AngleFormat.CH_MIN_SYMBOL + '}';
    }
}
