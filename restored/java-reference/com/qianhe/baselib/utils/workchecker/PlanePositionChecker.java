package com.qianhe.baselib.utils.workchecker;

import java.math.BigDecimal;
import java.math.RoundingMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class PlanePositionChecker extends BaseChecker {
    public static double compareElevation(double d, double d2) {
        return BigDecimal.valueOf(d2).subtract(BigDecimal.valueOf(d)).setScale(2, RoundingMode.HALF_UP).doubleValue();
    }
}
