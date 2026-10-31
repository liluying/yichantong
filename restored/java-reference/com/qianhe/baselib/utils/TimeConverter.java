package com.qianhe.baselib.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class TimeConverter {
    private static final Locale TIME_LOCALE = Locale.US;

    public static String convertLocalTime(long j) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", TIME_LOCALE).format(new Date(j));
    }

    public static String formatUTCTime(String str) {
        try {
            String strSubstring = str.substring(0, 2);
            String strSubstring2 = str.substring(2, 4);
            String strSubstring3 = str.substring(4, 6);
            Locale locale = TIME_LOCALE;
            return new SimpleDateFormat("yyyy-MM-dd ", locale).format(new Date(System.currentTimeMillis())) + String.format(locale, "%s:%s:%s", strSubstring, strSubstring2, strSubstring3);
        } catch (Exception e) {
            LogToFile.e("formatUTCTime:" + e);
            return str;
        }
    }
}
