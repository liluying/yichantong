package com.qianhe.yct.event;

import com.qianhe.baselib.bean.ShovelEntity;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SwicthBucketEvent {
    public ShovelEntity bucket;
    public String calibParamsId;
    public final boolean refreshOnly;

    public SwicthBucketEvent(ShovelEntity shovelEntity) {
        this(shovelEntity, false, null);
    }

    public SwicthBucketEvent(ShovelEntity shovelEntity, boolean z) {
        this(shovelEntity, z, null);
    }

    public SwicthBucketEvent(ShovelEntity shovelEntity, boolean z, String str) {
        this.bucket = shovelEntity;
        this.refreshOnly = z;
        this.calibParamsId = str;
    }
}
