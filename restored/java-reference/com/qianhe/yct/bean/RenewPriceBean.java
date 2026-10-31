package com.qianhe.yct.bean;

import java.io.Serializable;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class RenewPriceBean implements Serializable {
    public int count;
    public long id;
    public int original_price;
    public int price;
    public int price_group_id;
    public int unit;
    public int used_for;

    public int getPrice() {
        return this.price;
    }

    public String toString() {
        return "RenewPriceBean{id=" + this.id + ", price=" + this.price + ", original_price=" + this.original_price + ", unit=" + this.unit + ", price_group_id=" + this.price_group_id + ", count=" + this.count + ", used_for=" + this.used_for + '}';
    }
}
