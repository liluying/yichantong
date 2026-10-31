.class public Lorg/locationtech/proj4j/proj/GnomonicAzimuthalProjection;
.super Lorg/locationtech/proj4j/proj/AzimuthalProjection;
.source "GnomonicAzimuthalProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide v0, 0x4056800000000000L    # 90.0

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/locationtech/proj4j/proj/GnomonicAzimuthalProjection;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/locationtech/proj4j/proj/AzimuthalProjection;-><init>(DD)V

    const-wide/16 p1, 0x0

    .line 34
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->minLatitude:D

    const-wide p1, 0x4056800000000000L    # 90.0

    .line 35
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLatitude:D

    .line 36
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/GnomonicAzimuthalProjection;->initialize()V

    return-void
.end method


# virtual methods
.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public initialize()V
    .locals 0

    .line 40
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->initialize()V

    return-void
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 14

    move-object/from16 v0, p5

    .line 44
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    .line 45
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    .line 46
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 48
    iget v7, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v7, v11, :cond_3

    if-eq v7, v10, :cond_2

    if-eq v7, v9, :cond_1

    if-eq v7, v8, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-wide v12, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    mul-double v12, v12, v1

    iget-wide v8, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    mul-double v8, v8, v3

    mul-double v8, v8, v5

    add-double/2addr v12, v8

    iput-wide v12, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_0

    :cond_1
    mul-double v7, v3, v5

    .line 50
    iput-wide v7, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_0

    :cond_2
    neg-double v7, v1

    .line 56
    iput-wide v7, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_0

    .line 59
    :cond_3
    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 62
    :goto_0
    iget-wide v7, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v12, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v9, v7, v12

    if-lez v9, :cond_8

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 64
    iget-wide v12, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    div-double/2addr v7, v12

    iput-wide v7, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v7, v7, v3

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double v7, v7, v12

    iput-wide v7, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 65
    iget v7, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    if-eq v7, v11, :cond_6

    if-eq v7, v10, :cond_7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_5

    const/4 v8, 0x4

    if-eq v7, v8, :cond_4

    return-object v0

    .line 70
    :cond_4
    iget-wide v7, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iget-wide v9, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    mul-double v9, v9, v1

    iget-wide v1, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    mul-double v1, v1, v3

    mul-double v1, v1, v5

    sub-double/2addr v9, v1

    mul-double v7, v7, v9

    iput-wide v7, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v0

    .line 67
    :cond_5
    iget-wide v3, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v3, v3, v1

    iput-wide v3, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v0

    :cond_6
    neg-double v5, v5

    .line 75
    :cond_7
    iget-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v3, v3, v5

    mul-double v1, v1, v3

    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v0

    .line 63
    :cond_8
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v0}, Lorg/locationtech/proj4j/ProjectionException;-><init>()V

    throw v0
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    .line 84
    invoke-static/range {p1 .. p4}, Lorg/locationtech/proj4j/util/ProjectionMath;->distance(DD)D

    move-result-wide v4

    .line 85
    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    iput-wide v6, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v8, v6, v6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v8, v10, v8

    .line 86
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 87
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-wide/from16 v16, v10

    const-wide/16 v10, 0x0

    cmpg-double v18, v12, v14

    if-gtz v18, :cond_0

    .line 88
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 89
    iput-wide v10, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v3

    .line 91
    :cond_0
    iget v12, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    const/4 v13, 0x1

    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-eq v12, v13, :cond_8

    const/4 v13, 0x2

    if-eq v12, v13, :cond_7

    const/4 v13, 0x3

    const-wide v18, -0x4006de04abbbd2e8L    # -1.5707963267948966

    if-eq v12, v13, :cond_4

    const/4 v13, 0x4

    if-eq v12, v13, :cond_1

    goto/16 :goto_5

    .line 93
    :cond_1
    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    mul-double v12, v12, v8

    mul-double v1, v1, v6

    move-wide/from16 v20, v10

    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    mul-double v1, v1, v10

    div-double/2addr v1, v4

    add-double/2addr v12, v1

    iput-wide v12, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 94
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v10, v1, v16

    if-ltz v10, :cond_3

    .line 95
    iget-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    cmpl-double v10, v1, v20

    if-lez v10, :cond_2

    goto :goto_0

    :cond_2
    move-wide/from16 v14, v18

    :goto_0
    iput-wide v14, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_1

    .line 97
    :cond_3
    iget-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 98
    :goto_1
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    iget-wide v10, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v1, v1, v10

    sub-double/2addr v8, v1

    mul-double v1, v8, v4

    .line 99
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    mul-double v6, v6, v4

    :goto_2
    mul-double v4, p1, v6

    goto :goto_6

    :cond_4
    move-wide/from16 v20, v10

    mul-double v1, v1, v6

    div-double/2addr v1, v4

    .line 102
    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 103
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v10, v1, v16

    if-ltz v10, :cond_6

    .line 104
    iget-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    cmpl-double v10, v1, v20

    if-lez v10, :cond_5

    goto :goto_3

    :cond_5
    move-wide/from16 v14, v18

    :goto_3
    iput-wide v14, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_4

    .line 106
    :cond_6
    iget-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :goto_4
    mul-double v1, v8, v4

    goto :goto_2

    .line 111
    :cond_7
    iget-wide v4, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    sub-double/2addr v4, v14

    iput-wide v4, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :goto_5
    move-wide/from16 v4, p1

    goto :goto_6

    .line 114
    :cond_8
    iget-wide v4, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    sub-double/2addr v14, v4

    iput-wide v14, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    neg-double v1, v1

    goto :goto_5

    .line 118
    :goto_6
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 128
    const-string v0, "Gnomonic Azimuthal"

    return-object v0
.end method
