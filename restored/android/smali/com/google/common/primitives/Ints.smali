.class public abstract Lcom/google/common/primitives/Ints;
.super Lcom/google/common/primitives/IntsMethodsForWeb;
.source "Ints.java"


# direct methods
.method public static compare(II)I
    .locals 0

    .line 0
    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
