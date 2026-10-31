package com.qianhe.baselib.utils;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class TrianglefunctionUtils {
    public static double calculateHypotenuse(double d, double d2) {
        return Math.sqrt(Math.pow(d, 2.0d) + Math.pow(d2, 2.0d));
    }

    public static double calculateHypotenuseByAngleAndOpposite(double d, double d2) {
        return d2 / Math.sin(Math.toRadians(d));
    }
}
