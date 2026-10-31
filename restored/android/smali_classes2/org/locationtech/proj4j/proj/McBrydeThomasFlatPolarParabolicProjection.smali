.class public Lorg/locationtech/proj4j/proj/McBrydeThomasFlatPolarParabolicProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "McBrydeThomasFlatPolarParabolicProjection.java"


# static fields
.field private static final C13:D = 0.3333333333333333

.field private static final C23:D = 0.6666666666666666

.field private static final CS:D = 0.9525793444156804

.field private static final FXC:D = 0.9258200997725514

.field private static final FYC:D = 3.401680257083045

.field private static final ONEEPS:D = 1.0000001


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    return-void
.end method


# virtual methods
.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 4

    const-wide v0, 0x3fee7b87ad6388f3L    # 0.9525793444156804

    .line 36
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide v0, 0x3feda05179501504L    # 0.9258200997725514

    mul-double p1, p1, v0

    const-wide v0, 0x3fe5555555555555L    # 0.6666666666666666

    mul-double v0, v0, p3

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    mul-double p1, p1, v0

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide p1, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double p3, p3, p1

    .line 38
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    const-wide p3, 0x400b36a4237cf6e3L    # 3.401680257083045

    mul-double p1, p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 16

    move-object/from16 v0, p5

    const-wide v1, 0x400b36a4237cf6e3L    # 3.401680257083045

    div-double v1, p3, v1

    .line 43
    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 44
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide v5, -0x4006de04abbbd2e8L    # -1.5707963267948966

    const-wide/16 v7, 0x0

    const-string v9, "I"

    const-wide v10, 0x3ff000001ad7f29bL    # 1.0000001

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v14, v1, v12

    if-ltz v14, :cond_2

    .line 45
    iget-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v14, v1, v10

    if-gtz v14, :cond_1

    .line 46
    iget-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    cmpg-double v14, v1, v7

    if-gez v14, :cond_0

    move-wide v1, v5

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :goto_0
    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_1

    .line 45
    :cond_1
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v0, v9}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    iget-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 49
    :goto_1
    iget-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    mul-double v1, v1, v14

    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide v14, 0x3fe5555555555555L    # 0.6666666666666666

    mul-double v1, v1, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v1, v1, v14

    sub-double/2addr v1, v12

    const-wide v14, 0x3feda05179501504L    # 0.9258200997725514

    mul-double v1, v1, v14

    div-double v1, p1, v1

    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 50
    iget-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    const-wide v14, 0x3fee7b87ad6388f3L    # 0.9525793444156804

    div-double/2addr v1, v14

    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v14, v1, v12

    if-ltz v14, :cond_5

    .line 51
    iget-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v12, v1, v10

    if-gtz v12, :cond_4

    .line 52
    iget-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    cmpg-double v9, v1, v7

    if-gez v9, :cond_3

    move-wide v3, v5

    :cond_3
    iput-wide v3, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v0

    .line 51
    :cond_4
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v0, v9}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_5
    iget-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "McBride-Thomas Flat-Polar Parabolic"

    return-object v0
.end method
