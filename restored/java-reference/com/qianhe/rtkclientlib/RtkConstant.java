package com.qianhe.rtkclientlib;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class RtkConstant {
    public static boolean debug = false;
    private static ForegroundActivityProvider foregroundActivityProvider;

    public static void setForegroundActivityProvider(ForegroundActivityProvider foregroundActivityProvider2) {
        foregroundActivityProvider = foregroundActivityProvider2;
    }

    public static ForegroundActivityProvider getForegroundActivityProvider() {
        return foregroundActivityProvider;
    }
}
