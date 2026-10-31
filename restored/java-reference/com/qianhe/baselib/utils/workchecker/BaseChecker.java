package com.qianhe.baselib.utils.workchecker;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class BaseChecker {
    public static boolean isVectorLeft(double[] dArr, double[] dArr2, double[] dArr3) {
        double d = dArr2[0];
        double d2 = dArr[0];
        double d3 = dArr3[1];
        double d4 = dArr[1];
        return ((d - d2) * (d3 - d4)) - ((dArr2[1] - d4) * (dArr3[0] - d2)) > 0.0d;
    }
}
