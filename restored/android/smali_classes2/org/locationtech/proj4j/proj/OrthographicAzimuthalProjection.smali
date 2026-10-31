.class public Lorg/locationtech/proj4j/proj/OrthographicAzimuthalProjection;
.super Lorg/locationtech/proj4j/proj/AzimuthalProjection;
.source "OrthographicAzimuthalProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/AzimuthalProjection;-><init>()V

    .line 32
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->initialize()V

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
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 37
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 38
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 42
    iget v6, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    const/4 v7, 0x1

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    if-eq v6, v7, :cond_4

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 53
    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    mul-double v14, v12, v6

    const-wide v16, -0x4224832026284245L    # -1.0E-10

    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    mul-double v18, v10, v2

    mul-double v18, v18, v4

    add-double v14, v14, v18

    cmpg-double v18, v14, v16

    if-gez v18, :cond_1

    .line 55
    iput-wide v8, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 56
    iput-wide v8, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_0

    :cond_1
    mul-double v10, v10, v6

    mul-double v12, v12, v2

    mul-double v12, v12, v4

    sub-double/2addr v10, v12

    .line 58
    iput-wide v10, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_0

    :cond_2
    const-wide v16, -0x4224832026284245L    # -1.0E-10

    mul-double v4, v4, v2

    cmpg-double v6, v4, v16

    if-gez v6, :cond_3

    .line 46
    iput-wide v8, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 47
    iput-wide v8, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_0

    .line 49
    :cond_3
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iput-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_0

    :cond_4
    neg-double v4, v4

    .line 63
    :cond_5
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    sub-double v6, p3, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v10, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    sub-double/2addr v6, v10

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v12, v6, v10

    if-lez v12, :cond_6

    .line 65
    iput-wide v8, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 66
    iput-wide v8, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_0

    :cond_6
    mul-double v4, v4, v2

    .line 68
    iput-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 71
    :goto_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v1
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 26

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    .line 78
    invoke-static/range {p1 .. p4}, Lorg/locationtech/proj4j/util/ProjectionMath;->distance(DD)D

    move-result-wide v4

    const-wide v6, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v4, v8

    if-lez v10, :cond_1

    sub-double v10, v4, v8

    cmpl-double v12, v10, v6

    if-gtz v12, :cond_0

    move-wide v10, v8

    goto :goto_0

    .line 79
    :cond_0
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>()V

    throw v1

    :cond_1
    move-wide v10, v4

    :goto_0
    mul-double v12, v10, v10

    sub-double v12, v8, v12

    .line 82
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 83
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    move-wide/from16 v16, v6

    const/4 v6, 0x4

    const/4 v7, 0x3

    const-wide v18, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide v20, -0x4006de04abbbd2e8L    # -1.5707963267948966

    const-wide/16 v22, 0x0

    cmpg-double v24, v14, v16

    if-gtz v24, :cond_2

    .line 84
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    iput-wide v4, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto/16 :goto_4

    .line 85
    :cond_2
    iget v14, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_a

    const/4 v15, 0x2

    if-eq v14, v15, :cond_9

    if-eq v14, v7, :cond_6

    if-eq v14, v6, :cond_3

    goto/16 :goto_4

    .line 103
    :cond_3
    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    mul-double v16, v12, v14

    mul-double v1, v1, v10

    move-wide/from16 v24, v8

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    mul-double v1, v1, v8

    div-double/2addr v1, v4

    add-double v1, v16, v1

    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v14, v14, v1

    sub-double/2addr v12, v14

    mul-double v4, v4, v12

    mul-double v10, v10, v8

    mul-double v8, p1, v10

    .line 106
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v10, v1, v24

    if-ltz v10, :cond_5

    .line 107
    iget-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    cmpg-double v10, v1, v22

    if-gez v10, :cond_4

    move-wide/from16 v1, v20

    goto :goto_1

    :cond_4
    move-wide/from16 v1, v18

    :goto_1
    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_2

    .line 109
    :cond_5
    iget-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :goto_2
    move-wide v1, v4

    goto :goto_5

    :cond_6
    move-wide/from16 v24, v8

    mul-double v1, v1, v10

    div-double/2addr v1, v4

    .line 94
    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v8, p1, v10

    mul-double v4, v4, v12

    .line 97
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v10, v1, v24

    if-ltz v10, :cond_8

    .line 98
    iget-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    cmpg-double v10, v1, v22

    if-gez v10, :cond_7

    move-wide/from16 v1, v20

    goto :goto_3

    :cond_7
    move-wide/from16 v1, v18

    :goto_3
    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_2

    .line 100
    :cond_8
    iget-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_2

    .line 91
    :cond_9
    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    neg-double v4, v4

    iput-wide v4, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :goto_4
    move-wide/from16 v8, p1

    goto :goto_5

    :cond_a
    neg-double v1, v1

    .line 88
    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    iput-wide v4, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_4

    :goto_5
    cmpl-double v4, v1, v22

    if-nez v4, :cond_e

    .line 112
    iget v4, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    if-eq v4, v6, :cond_b

    if-ne v4, v7, :cond_e

    :cond_b
    cmpl-double v1, v8, v22

    if-nez v1, :cond_c

    move-wide/from16 v1, v22

    goto :goto_7

    :cond_c
    cmpg-double v1, v8, v22

    if-gez v1, :cond_d

    move-wide/from16 v1, v20

    goto :goto_7

    :cond_d
    :goto_6
    move-wide/from16 v1, v18

    goto :goto_7

    .line 113
    :cond_e
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    goto :goto_6

    :goto_7
    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 122
    const-string v0, "Orthographic Azimuthal"

    return-object v0
.end method
