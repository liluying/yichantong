package com.qianhe.yct.utils;

import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class SyncNameHelper {
    private static final SimpleDateFormat CREATE_TIME_SUFFIX_FORMAT = new SimpleDateFormat("yyyyMMddHHmmss", Locale.CHINA);

    private static boolean isNonLatinScript(int i) {
        if (i >= 4352 && i <= 4607) {
            return true;
        }
        if (i >= 12592 && i <= 12687) {
            return true;
        }
        if (i >= 44032 && i <= 55203) {
            return true;
        }
        if (i >= 13312 && i <= 40959) {
            return true;
        }
        if (i >= 63744 && i <= 64255) {
            return true;
        }
        if (i >= 12352 && i <= 12543) {
            return true;
        }
        if (i >= 1536 && i <= 1791) {
            return true;
        }
        if (i >= 1024 && i <= 1279) {
            return true;
        }
        if (i < 3584 || i > 3711) {
            return i >= 2304 && i <= 2431;
        }
        return true;
    }

    public static String withCreateTimeSuffix(String str, long j) {
        String str2;
        if (j <= 0) {
            j = System.currentTimeMillis() / 1000;
        }
        if (String.valueOf(j).length() > 10) {
            j /= 1000;
        }
        SimpleDateFormat simpleDateFormat = CREATE_TIME_SUFFIX_FORMAT;
        synchronized (simpleDateFormat) {
            str2 = simpleDateFormat.format(new Date(j * 1000));
        }
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            str = "";
        }
        sb.append(str);
        sb.append("_");
        sb.append(str2);
        return sb.toString();
    }

    public static String resolve(String str, String str2) {
        return TextUtils.isEmpty(str2) ? str != null ? str : "" : (!TextUtils.isEmpty(str) && !TextUtils.equals(str, str2) && hasNonLatinScript(str) && (!hasNonLatinScript(str2) || looksLikeMojibake(str2))) ? str : str2;
    }

    public static boolean hasNonLatinScript(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        int iCharCount = 0;
        while (iCharCount < str.length()) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (isNonLatinScript(iCodePointAt)) {
                return true;
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return false;
    }

    public static boolean looksLikeMojibake(String str) {
        if (!TextUtils.isEmpty(str) && str.length() >= 2) {
            int iCharCount = 0;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (iCharCount < str.length()) {
                int iCodePointAt = str.codePointAt(iCharCount);
                if (iCodePointAt >= 192 && iCodePointAt <= 591) {
                    i2++;
                } else if (Character.isLetterOrDigit(iCodePointAt)) {
                    i3++;
                }
                if (isNonLatinScript(iCodePointAt)) {
                    i++;
                }
                iCharCount += Character.charCount(iCodePointAt);
            }
            if (i <= 0 && i2 >= 2 && i2 >= i3) {
                return true;
            }
        }
        return false;
    }
}
