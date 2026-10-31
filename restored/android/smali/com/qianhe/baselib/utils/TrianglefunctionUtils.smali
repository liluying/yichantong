.class public abstract Lcom/qianhe/baselib/utils/TrianglefunctionUtils;
.super Ljava/lang/Object;
.source "TrianglefunctionUtils.java"


# direct methods
.method public static calculateHypotenuse(DD)D
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 56
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static calculateHypotenuseByAngleAndOpposite(DD)D
    .locals 0

    .line 69
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    .line 72
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    div-double/2addr p2, p0

    return-wide p2
.end method
