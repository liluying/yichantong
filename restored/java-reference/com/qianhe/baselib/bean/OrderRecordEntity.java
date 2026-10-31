package com.qianhe.baselib.bean;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class OrderRecordEntity implements Serializable {

    @SerializedName("account_name")
    public String accountName;
    public int count;

    @SerializedName("create_epoch")
    public long createEpoch;

    @SerializedName("expire_epoch_after")
    public long createEpochAfter;

    @SerializedName("finished_epoch")
    public long finishedEpoch;
    public long id;

    @SerializedName("order_no")
    public String orderNo;

    @SerializedName("pay_state")
    public int payState;

    @SerializedName("price")
    public long price;

    @SerializedName("price_id")
    public long priceId;
    public String remarks;
    public int unit;
}
