package com.qianhe.yct.utils;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.view.Window;
import androidx.core.content.ContextCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.qianhe.yct.R$color;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class ThemeModeManager {
    public static void applySavedMode(Context context) {
        applyMode(getSavedMode(context));
    }

    public static String getSavedMode(Context context) {
        String string = getSharedPreferences(context).getString("theme_mode", "light");
        return isValidMode(string) ? string : "light";
    }

    public static void setThemeMode(Context context, String str) {
        if (!isValidMode(str)) {
            str = "light";
        }
        getSharedPreferences(context).edit().putString("theme_mode", str).apply();
        applyMode(str);
    }

    public static void applySystemBars(Activity activity) {
        Window window = activity.getWindow();
        boolean z = (activity.getResources().getConfiguration().uiMode & 48) == 32;
        window.setStatusBarColor(ContextCompat.getColor(activity, z ? R$color.bg_base : R$color.white));
        window.setNavigationBarColor(ContextCompat.getColor(activity, z ? R$color.bg_base : R$color.white));
        WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(window, window.getDecorView());
        insetsController.setAppearanceLightStatusBars(!z);
        insetsController.setAppearanceLightNavigationBars(!z);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void applyMode(java.lang.String r5) {
        /*
            int r0 = r5.hashCode()
            r1 = -887328209(0xffffffffcb1c722f, float:-1.0252847E7)
            r2 = 2
            r3 = 1
            r4 = -1
            if (r0 == r1) goto L2b
            r1 = 3075958(0x2eef76, float:4.310335E-39)
            if (r0 == r1) goto L21
            r1 = 102970646(0x6233516, float:3.0695894E-35)
            if (r0 == r1) goto L17
            goto L36
        L17:
            java.lang.String r0 = "light"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L36
            r5 = 2
            goto L37
        L21:
            java.lang.String r0 = "dark"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L36
            r5 = 1
            goto L37
        L2b:
            java.lang.String r0 = "system"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L36
            r5 = 0
            goto L37
        L36:
            r5 = -1
        L37:
            if (r5 == 0) goto L3d
            if (r5 == r3) goto L3e
            r2 = 1
            goto L3e
        L3d:
            r2 = -1
        L3e:
            androidx.appcompat.app.AppCompatDelegate.setDefaultNightMode(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.utils.ThemeModeManager.applyMode(java.lang.String):void");
    }

    private static boolean isValidMode(String str) {
        return "system".equals(str) || "light".equals(str) || "dark".equals(str);
    }

    private static SharedPreferences getSharedPreferences(Context context) {
        return context.getApplicationContext().getSharedPreferences("sp", 0);
    }
}
