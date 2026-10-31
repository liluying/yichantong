.class public abstract Lcom/qh/utils/DistanceUtils;
.super Ljava/lang/Object;
.source "DistanceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qh/utils/DistanceUtils$Point2D;
    }
.end annotation


# direct methods
.method public static distance2D(DDDD)D
    .locals 0

    sub-double/2addr p4, p0

    sub-double/2addr p6, p2

    .line 50
    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distance2D(Lcom/qh/utils/DistanceUtils$Point2D;Lcom/qh/utils/DistanceUtils$Point2D;)D
    .locals 9

    .line 57
    const-string v0, "p1"

    invoke-static {p0, v0}, Lcom/qh/utils/DistanceUtils;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    const-string v0, "p2"

    invoke-static {p1, v0}, Lcom/qh/utils/DistanceUtils;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-wide v1, p0, Lcom/qh/utils/DistanceUtils$Point2D;->x:D

    iget-wide v3, p0, Lcom/qh/utils/DistanceUtils$Point2D;->y:D

    iget-wide v5, p1, Lcom/qh/utils/DistanceUtils$Point2D;->x:D

    iget-wide v7, p1, Lcom/qh/utils/DistanceUtils$Point2D;->y:D

    invoke-static/range {v1 .. v8}, Lcom/qh/utils/DistanceUtils;->distance2D(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static requireNonNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 683
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
