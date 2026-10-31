package com.qianhe.yct.utils;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class LocationUtils {
    public static boolean isChinaMainland(double d, double d2) {
        if (ChinaNationBoundary.isInBoundingBox(d, d2) && !isHongMacaoTaiwan(d, d2)) {
            return ChinaNationBoundary.contains(d2, d);
        }
        return false;
    }

    public static boolean isHongKong(double d, double d2) {
        return HongKongBoundary.contains(d2, d);
    }

    public static boolean isMacao(double d, double d2) {
        return MacaoBoundary.contains(d2, d);
    }

    public static boolean isTaiwan(double d, double d2) {
        return TaiwanBoundary.contains(d2, d);
    }

    public static boolean isHongMacaoTaiwan(double d, double d2) {
        return isHongKong(d, d2) || isMacao(d, d2) || isTaiwan(d, d2);
    }
}
