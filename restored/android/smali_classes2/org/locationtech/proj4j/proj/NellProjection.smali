.class public Lorg/locationtech/proj4j/proj/NellProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "NellProjection.java"


# static fields
.field private static final LOOP_TOL:D = 1.0E-7

.field private static final MAX_ITER:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
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
    .locals 15

    move-wide/from16 v0, p3

    move-object/from16 v2, p5

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    mul-double v3, v0, v0

    .line 36
    iget-wide v7, v2, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide v9, -0x4078a0d349be8ff3L    # -0.011412

    mul-double v9, v9, v3

    const-wide v11, -0x40480de16a12c351L    # -0.0935382

    add-double/2addr v9, v11

    mul-double v3, v3, v9

    const-wide v9, 0x3ff00f32378ab0c9L    # 1.00371

    add-double/2addr v3, v9

    mul-double v7, v7, v3

    iput-wide v7, v2, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const/16 v3, 0xa

    :goto_0
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-lez v3, :cond_1

    .line 38
    iget-wide v9, v2, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    add-double/2addr v11, v0

    sub-double/2addr v11, v5

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    add-double/2addr v13, v7

    div-double/2addr v11, v13

    sub-double/2addr v9, v11

    iput-wide v9, v2, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 40
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v4, v9, v11

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, p1

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    add-double/2addr v5, v7

    mul-double v3, v3, v5

    iput-wide v3, v2, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 44
    iput-wide v0, v2, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v2
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double p1, p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 51
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    add-double/2addr v2, v0

    div-double/2addr p1, v2

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 52
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    add-double/2addr p3, p1

    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    mul-double p3, p3, p1

    invoke-static {p3, p4}, Lorg/locationtech/proj4j/util/ProjectionMath;->asin(D)D

    move-result-wide p1

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 61
    const-string v0, "Nell"

    return-object v0
.end method
