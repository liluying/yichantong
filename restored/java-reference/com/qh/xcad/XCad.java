package com.qh.xcad;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class XCad {
    public static native String getLastError();

    public static native String getVersion();

    public static native byte[] parseDwg(String str);

    public static native byte[] parseDxf(String str);

    public static native int setupLogger(String str);

    static {
        System.loadLibrary("xcadforjava");
    }

    private XCad() {
    }
}
