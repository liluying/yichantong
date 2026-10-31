package com.qianhe.yct.utils;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Process;
import android.text.TextUtils;
import com.qianhe.yct.application.YCTApplication;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class ServerEnvHelper {
    private static SharedPreferences sp() {
        return YCTApplication.getInstance().getSharedPreferences("sp", 0);
    }

    public static boolean isTestEnv() {
        return sp().getBoolean("use_test_server", false);
    }

    public static String getSavedTestIp() {
        String string = sp().getString("test_server_ip", "");
        return TextUtils.isEmpty(string) ? "" : string.trim();
    }

    public static String getTestIp() {
        String savedTestIp = getSavedTestIp();
        return TextUtils.isEmpty(savedTestIp) ? "192.168.1.186" : savedTestIp;
    }

    public static String resolveApiUrl(String str) {
        if (!isTestEnv()) {
            return str;
        }
        return "https://" + getTestIp() + "/api/request";
    }

    public static void saveProduction() {
        sp().edit().putBoolean("use_test_server", false).commit();
    }

    public static void saveTest(String str) {
        sp().edit().putBoolean("use_test_server", true).putString("test_server_ip", str == null ? "" : str.trim()).commit();
    }

    public static void restartApp(Context context) {
        if (context == null) {
            Process.killProcess(Process.myPid());
            return;
        }
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        if (launchIntentForPackage != null) {
            launchIntentForPackage.addFlags(268468224);
            context.startActivity(launchIntentForPackage);
        }
        Process.killProcess(Process.myPid());
    }
}
