.class public abstract Lcom/qianhe/yct/utils/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# direct methods
.method public static isChinaMainland(DD)Z
    .locals 2

    .line 29
    invoke-static {p0, p1, p2, p3}, Lcom/qianhe/yct/utils/ChinaNationBoundary;->isInBoundingBox(DD)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 35
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/qianhe/yct/utils/LocationUtils;->isHongMacaoTaiwan(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 41
    :cond_1
    invoke-static {p2, p3, p0, p1}, Lcom/qianhe/yct/utils/ChinaNationBoundary;->contains(DD)Z

    move-result p0

    return p0
.end method

.method public static isHongKong(DD)Z
    .locals 0

    .line 48
    invoke-static {p2, p3, p0, p1}, Lcom/qianhe/yct/utils/HongKongBoundary;->contains(DD)Z

    move-result p0

    return p0
.end method

.method public static isHongMacaoTaiwan(DD)Z
    .locals 1

    .line 69
    invoke-static {p0, p1, p2, p3}, Lcom/qianhe/yct/utils/LocationUtils;->isHongKong(DD)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/qianhe/yct/utils/LocationUtils;->isMacao(DD)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/qianhe/yct/utils/LocationUtils;->isTaiwan(DD)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isMacao(DD)Z
    .locals 0

    .line 55
    invoke-static {p2, p3, p0, p1}, Lcom/qianhe/yct/utils/MacaoBoundary;->contains(DD)Z

    move-result p0

    return p0
.end method

.method public static isTaiwan(DD)Z
    .locals 0

    .line 62
    invoke-static {p2, p3, p0, p1}, Lcom/qianhe/yct/utils/TaiwanBoundary;->contains(DD)Z

    move-result p0

    return p0
.end method
