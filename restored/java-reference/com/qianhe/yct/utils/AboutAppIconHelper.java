package com.qianhe.yct.utils;

import android.content.Context;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.yct.R$drawable;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class AboutAppIconHelper {
    public static int resolve(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext.getPackageName().equals("com.qianhe.xfix")) {
            return R$drawable.icon_about_app_xfix;
        }
        return LanguagePrefs.isZH(applicationContext) ? R$drawable.icon_about_app_zh : R$drawable.icon_about_app_yct;
    }
}
