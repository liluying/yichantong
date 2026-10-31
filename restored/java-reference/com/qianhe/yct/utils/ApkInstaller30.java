package com.qianhe.yct.utils;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.core.content.FileProvider;
import com.qianhe.baselib.utils.LogToFile;
import java.io.File;
import org.locationtech.proj4j.geodesic.GeodesicMask;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class ApkInstaller30 {
    public static void installApk(Context context, File file) {
        Uri uriFromFile;
        if (!file.exists()) {
            LogToFile.i("APK 文件不存在: " + file.getAbsolutePath());
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setFlags(268435457);
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            uriFromFile = FileProvider.getUriForFile(context, context.getPackageName() + ".provider", file);
        } else {
            uriFromFile = Uri.fromFile(file);
        }
        intent.setDataAndType(uriFromFile, "application/vnd.android.package-archive");
        if (i >= 26 && !context.getPackageManager().canRequestPackageInstalls()) {
            context.startActivity(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES").setData(Uri.parse("package:" + context.getPackageName())));
            return;
        }
        if (i >= 30) {
            intent.addFlags(GeodesicMask.LONG_UNROLL);
        }
        context.startActivity(intent);
    }

    public static boolean canInstallApk(Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            return context.getPackageManager().canRequestPackageInstalls();
        }
        return true;
    }

    public static void requestInstallPermission(Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            context.startActivity(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES").setData(Uri.parse("package:" + context.getPackageName())).addFlags(268435456));
        }
    }
}
