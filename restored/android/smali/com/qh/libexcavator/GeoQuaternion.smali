.class public final Lcom/qh/libexcavator/GeoQuaternion;
.super Ljava/lang/Object;
.source "GeoQuaternion.java"


# instance fields
.field public w:D

.field public x:D

.field public y:D

.field public z:D


# direct methods
.method private constructor <init>(DDDD)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/qh/libexcavator/GeoQuaternion;->w:D

    .line 21
    iput-wide p3, p0, Lcom/qh/libexcavator/GeoQuaternion;->x:D

    .line 22
    iput-wide p5, p0, Lcom/qh/libexcavator/GeoQuaternion;->y:D

    .line 23
    iput-wide p7, p0, Lcom/qh/libexcavator/GeoQuaternion;->z:D

    return-void
.end method

.method public static fillPointFromAngleZyx(Lcom/qh/libexcavator/nativelib/LibExcavator$Point;DDD)V
    .locals 0

    .line 85
    invoke-static/range {p1 .. p6}, Lcom/qh/libexcavator/GeoQuaternion;->fromAngleZyx(DDD)Lcom/qh/libexcavator/GeoQuaternion;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/qh/libexcavator/GeoQuaternion;->writeXyzTo(Lcom/qh/libexcavator/nativelib/LibExcavator$Point;)V

    return-void
.end method

.method public static fromAngleZyx(DDD)Lcom/qh/libexcavator/GeoQuaternion;
    .locals 29

    const-wide v0, 0x3f81df46a2529d39L    # 0.008726646259971648

    mul-double v2, p4, v0

    .line 36
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 37
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v6, p2, v0

    .line 38
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 39
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v0, v0, p0

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v12, v0, v6

    mul-double v14, v12, v2

    mul-double v16, v10, v8

    mul-double v18, v16, v4

    add-double v21, v14, v18

    mul-double v10, v10, v6

    mul-double v6, v10, v2

    mul-double v0, v0, v8

    mul-double v8, v0, v4

    sub-double v23, v6, v8

    mul-double v0, v0, v2

    mul-double v10, v10, v4

    add-double v25, v0, v10

    mul-double v12, v12, v4

    mul-double v16, v16, v2

    sub-double v27, v12, v16

    .line 48
    new-instance v20, Lcom/qh/libexcavator/GeoQuaternion;

    invoke-direct/range {v20 .. v28}, Lcom/qh/libexcavator/GeoQuaternion;-><init>(DDDD)V

    .line 49
    invoke-virtual/range {v20 .. v20}, Lcom/qh/libexcavator/GeoQuaternion;->checkW()V

    return-object v20
.end method


# virtual methods
.method public checkW()V
    .locals 5

    .line 57
    iget-wide v0, p0, Lcom/qh/libexcavator/GeoQuaternion;->w:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    neg-double v0, v0

    .line 58
    iput-wide v0, p0, Lcom/qh/libexcavator/GeoQuaternion;->w:D

    .line 59
    iget-wide v0, p0, Lcom/qh/libexcavator/GeoQuaternion;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Lcom/qh/libexcavator/GeoQuaternion;->x:D

    .line 60
    iget-wide v0, p0, Lcom/qh/libexcavator/GeoQuaternion;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Lcom/qh/libexcavator/GeoQuaternion;->y:D

    .line 61
    iget-wide v0, p0, Lcom/qh/libexcavator/GeoQuaternion;->z:D

    neg-double v0, v0

    iput-wide v0, p0, Lcom/qh/libexcavator/GeoQuaternion;->z:D

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "q(w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qh/libexcavator/GeoQuaternion;->w:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qh/libexcavator/GeoQuaternion;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qh/libexcavator/GeoQuaternion;->y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qh/libexcavator/GeoQuaternion;->z:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeXyzTo(Lcom/qh/libexcavator/nativelib/LibExcavator$Point;)V
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/qh/libexcavator/GeoQuaternion;->x:D

    iput-wide v0, p1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    .line 72
    iget-wide v0, p0, Lcom/qh/libexcavator/GeoQuaternion;->y:D

    iput-wide v0, p1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    .line 73
    iget-wide v0, p0, Lcom/qh/libexcavator/GeoQuaternion;->z:D

    iput-wide v0, p1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    return-void
.end method
