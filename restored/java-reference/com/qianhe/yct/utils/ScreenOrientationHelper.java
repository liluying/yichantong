package com.qianhe.yct.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Build;
import android.view.Window;
import androidx.core.view.WindowCompat;
import com.qianhe.yct.SplashActivity;
import com.qianhe.yct.application.YCTApplication;
import com.tencent.smtt.sdk.WebView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class ScreenOrientationHelper {
    @SuppressLint({"SourceLockedOrientationActivity"})
    public static void apply(Activity activity) {
        YCTApplication yCTApplication;
        if (activity == null || (yCTApplication = YCTApplication.getInstance()) == null) {
            return;
        }
        boolean z = activity instanceof SplashActivity;
        if (yCTApplication.isAutoAdaptation()) {
            activity.setRequestedOrientation(4);
            if (z && activity.getResources().getConfiguration().orientation == 2) {
                applyFullscreen(activity);
                return;
            }
            return;
        }
        if (yCTApplication.isPad()) {
            activity.setRequestedOrientation(0);
            if (z) {
                applyFullscreen(activity);
                return;
            }
            return;
        }
        activity.setRequestedOrientation(1);
    }

    private static void applyFullscreen(Activity activity) {
        if (activity.getWindow() != null) {
            activity.getWindow().setFlags(1024, 1024);
        }
    }

    public static void applyTabletNavigationBar(Activity activity) {
        YCTApplication yCTApplication;
        Window window;
        if (activity == null || (yCTApplication = YCTApplication.getInstance()) == null) {
            return;
        }
        if ((yCTApplication.isPad() || yCTApplication.isAutoAdaptation()) && (window = activity.getWindow()) != null) {
            window.setNavigationBarColor(WebView.NIGHT_MODE_COLOR);
            if (Build.VERSION.SDK_INT >= 27) {
                WindowCompat.getInsetsController(window, window.getDecorView()).setAppearanceLightNavigationBars(false);
            }
        }
    }
}
