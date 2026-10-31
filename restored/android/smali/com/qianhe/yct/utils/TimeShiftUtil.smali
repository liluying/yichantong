.class public abstract Lcom/qianhe/yct/utils/TimeShiftUtil;
.super Ljava/lang/Object;
.source "TimeShiftUtil.java"


# direct methods
.method public static afterDays(JI)J
    .locals 1

    const/4 v0, 0x5

    .line 23
    invoke-static {p0, p1, v0, p2}, Lcom/qianhe/yct/utils/TimeShiftUtil;->shift(JII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static afterMonths(JI)J
    .locals 1

    const/4 v0, 0x2

    .line 27
    invoke-static {p0, p1, v0, p2}, Lcom/qianhe/yct/utils/TimeShiftUtil;->shift(JII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static afterYears(JI)J
    .locals 1

    const/4 v0, 0x1

    .line 31
    invoke-static {p0, p1, v0, p2}, Lcom/qianhe/yct/utils/TimeShiftUtil;->shift(JII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static shift(JII)J
    .locals 1

    .line 15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 16
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 17
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->add(II)V

    .line 18
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method
