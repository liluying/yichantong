package com.qianhe.yct.event;

import android.os.Build;
import com.qianhe.yct.bean.RenewPriceBean;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.function.Function;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class PriceListResponse {
    public String errorMsg;
    public boolean hasExclusivePrice;
    public List<RenewPriceBean> list;
    public int state;

    public PriceListResponse(int i, String str) {
        this.list = new ArrayList();
        this.state = i;
        this.errorMsg = str;
    }

    public PriceListResponse(int i, List<RenewPriceBean> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        this.list = arrayList;
        this.state = i;
        this.hasExclusivePrice = z;
        arrayList.addAll(list);
        if (Build.VERSION.SDK_INT >= 24) {
            this.list.sort(Comparator.comparing(new Function() { // from class: com.qianhe.yct.event.PriceListResponse$$ExternalSyntheticLambda2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Integer.valueOf(((RenewPriceBean) obj).getPrice());
                }
            }));
        }
    }
}
