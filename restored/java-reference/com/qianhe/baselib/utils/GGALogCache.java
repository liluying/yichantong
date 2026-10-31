package com.qianhe.baselib.utils;

import android.text.TextUtils;
import com.qianhe.baselib.utils.LogIo;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ExecutorService;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class GGALogCache {
    public static final SimpleDateFormat dateFormatD;
    private static final SimpleDateFormat dateFormatT;
    private static ExecutorService executors;
    private static final LogIo.Appender fileAppender;
    private static String fileName;

    static {
        Locale locale = Locale.CHINA;
        dateFormatD = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", locale);
        dateFormatT = new SimpleDateFormat("yyyy-MM-dd_HH_mm_ss", locale);
        fileAppender = new LogIo.Appender();
    }

    public static void save(String str, boolean z) {
        writeToFile(str);
    }

    private static void writeToFile(final String str) {
        if (executors == null || TextUtils.isEmpty(fileName) || str == null) {
            return;
        }
        LogIo.execute(executors, new Runnable() { // from class: com.qianhe.baselib.utils.GGALogCache.1
            @Override // java.lang.Runnable
            public void run() throws IOException {
                String str2 = GGALogCache.dateFormatD.format(new Date()) + " " + str + "\n";
                try {
                    GGALogCache.fileAppender.rotateIfTooLarge(GGALogCache.fileName, 52428800L);
                    GGALogCache.fileAppender.append(GGALogCache.fileName, str2);
                } catch (Exception e) {
                    GGALogCache.fileAppender.closeQuietly();
                    e.printStackTrace();
                    LogToFile.e("=====5=====" + e);
                } catch (OutOfMemoryError unused) {
                    GGALogCache.fileAppender.closeQuietly();
                }
            }
        });
    }
}
