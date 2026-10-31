package com.qianhe.yct.activity.pointlib;

import android.content.Context;
import android.content.Intent;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class PointLibraryIntent {
    public static Intent openGroupList(Context context) {
        return new Intent(context, (Class<?>) PointGroupListActivity.class);
    }

    public static Intent pickPoint(Context context) {
        return pickPoint(context, false);
    }

    public static Intent pickPoint(Context context, boolean z) {
        return pickPoint(context, z, false);
    }

    public static Intent pickPoint(Context context, boolean z, boolean z2) {
        Intent intent = new Intent(context, (Class<?>) PointGroupListActivity.class);
        intent.putExtra("returnValue", true);
        if (z) {
            intent.putExtra("requireGeodetic", true);
        }
        if (z2) {
            intent.putExtra("returnEcef", true);
        }
        return intent;
    }

    public static Intent pickPointForRawElev(Context context) {
        Intent intentPickPoint = pickPoint(context, false);
        intentPickPoint.putExtra("returnRawElev", true);
        return intentPickPoint;
    }
}
