package com.qh.bspatch;

import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class BsPatch {
    public static native Result patch(String str, String str2, String str3);

    public static final class Result {
        public String message;
        public String newApkMD5;
        public boolean success;

        public Result(boolean z, String str, String str2) {
            this.success = z;
            this.message = str;
            this.newApkMD5 = str2;
        }

        public String toString() {
            return "Result{success=" + this.success + ", message='" + this.message + AngleFormat.CH_MIN_SYMBOL + ", newApkMD5='" + this.newApkMD5 + AngleFormat.CH_MIN_SYMBOL + '}';
        }
    }

    static {
        System.loadLibrary("bspatch");
    }
}
