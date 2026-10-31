package com.qianhe.baselib.utils;

import android.content.Context;
import android.os.Build;
import com.tencent.bugly.crashreport.CrashReport;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CrashHandler implements Thread.UncaughtExceptionHandler {
    private static CrashHandler instance;
    private Context mContext;
    private Thread.UncaughtExceptionHandler mDefaultHandler;

    private void uploadCrashToServer(String str) {
    }

    private CrashHandler() {
    }

    public static CrashHandler getInstance() {
        if (instance == null) {
            synchronized (CrashHandler.class) {
                try {
                    if (instance == null) {
                        instance = new CrashHandler();
                    }
                } finally {
                }
            }
        }
        return instance;
    }

    public void init(Context context) {
        this.mContext = context.getApplicationContext();
        this.mDefaultHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        String strCollectCrashInfo = collectCrashInfo(th);
        if (!(th instanceof OutOfMemoryError)) {
            try {
                LogToFile.e(strCollectCrashInfo);
            } catch (Throwable unused) {
            }
        }
        CrashReport.postCatchedException(th);
        uploadCrashToServer(strCollectCrashInfo);
        handleException(thread, th);
    }

    private String collectCrashInfo(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.close();
        return ("Device: " + Build.MANUFACTURER + " " + Build.MODEL + " SDK:" + Build.VERSION.SDK_INT + "(Android " + Build.VERSION.RELEASE + ")\n") + ("App Version: " + getVersionName(this.mContext) + "(" + getVersionCode(this.mContext) + ")\n") + stringWriter.toString();
    }

    private void handleException(Thread thread, Throwable th) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.mDefaultHandler;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
    }

    private String getVersionName(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception unused) {
            return "unknown";
        }
    }

    private int getVersionCode(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (Exception unused) {
            return 0;
        }
    }
}
