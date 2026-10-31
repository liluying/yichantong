.class public abstract Lcom/qianhe/baselib/utils/workchecker/BaseChecker;
.super Ljava/lang/Object;
.source "BaseChecker.java"


# direct methods
.method public static isVectorLeft([D[D[D)Z
    .locals 10

    const/4 v0, 0x0

    .line 19
    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    sub-double/2addr v1, v3

    const/4 v5, 0x1

    aget-wide v6, p2, v5

    aget-wide v8, p0, v5

    sub-double/2addr v6, v8

    mul-double v1, v1, v6

    aget-wide p0, p1, v5

    sub-double/2addr p0, v8

    aget-wide v6, p2, v0

    sub-double/2addr v6, v3

    mul-double p0, p0, v6

    sub-double/2addr v1, p0

    const-wide/16 p0, 0x0

    cmpl-double p2, v1, p0

    if-lez p2, :cond_0

    return v5

    :cond_0
    return v0
.end method
