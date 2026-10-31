package com.qianhe.yct.utils;

import java.util.Calendar;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class TimeShiftUtil {
    public static long shift(long j, int i, int i2) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        calendar.add(i, i2);
        return calendar.getTimeInMillis();
    }

    public static long afterDays(long j, int i) {
        return shift(j, 5, i);
    }

    public static long afterMonths(long j, int i) {
        return shift(j, 2, i);
    }

    public static long afterYears(long j, int i) {
        return shift(j, 1, i);
    }
}
