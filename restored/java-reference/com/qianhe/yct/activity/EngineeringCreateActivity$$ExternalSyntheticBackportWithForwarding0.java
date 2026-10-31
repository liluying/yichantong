package com.qianhe.yct.activity;

import java.math.BigDecimal;
import java.math.BigInteger;

/* compiled from: R8$$SyntheticClass */
/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract /* synthetic */ class EngineeringCreateActivity$$ExternalSyntheticBackportWithForwarding0 {
    public static /* synthetic */ BigDecimal m(BigDecimal bigDecimal) {
        return bigDecimal.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : bigDecimal.stripTrailingZeros();
    }
}
