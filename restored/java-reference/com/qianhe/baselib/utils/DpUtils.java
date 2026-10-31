package com.qianhe.baselib.utils;

import android.content.Context;
import android.util.TypedValue;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class DpUtils {
    public static int dp2px(Context context, float f) {
        return (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }
}
