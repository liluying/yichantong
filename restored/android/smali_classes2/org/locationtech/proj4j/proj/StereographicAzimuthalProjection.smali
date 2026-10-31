.class public Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;
.super Lorg/locationtech/proj4j/proj/AzimuthalProjection;
.source "StereographicAzimuthalProjection.java"


# static fields
.field private static final TOL:D = 1.0E-8


# instance fields
.field private akm1:D


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide v0, 0x4056800000000000L    # 90.0

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/locationtech/proj4j/proj/AzimuthalProjection;-><init>(DD)V

    .line 37
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;->initialize()V

    return-void
.end method

.method private ssfn(DDD)D
    .locals 6

    mul-double p3, p3, p5

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double p1, p1, v0

    .line 263
    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v4, v2, p3

    add-double/2addr p3, v2

    div-double/2addr v4, p3

    mul-double p5, p5, v0

    .line 264
    invoke-static {v4, v5, p5, p6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    mul-double p1, p1, p3

    return-wide p1
.end method


# virtual methods
.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public initialize()V
    .locals 17

    move-object/from16 v0, p0

    .line 53
    invoke-super {v0}, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->initialize()V

    .line 54
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v7, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v3, v1, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x2

    const-wide v11, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v13, v3, v11

    if-gez v13, :cond_1

    .line 55
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    const-wide/16 v3, 0x0

    cmpg-double v13, v1, v3

    if-gez v13, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    goto :goto_2

    :cond_1
    cmpl-double v3, v1, v11

    if-lez v3, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    .line 57
    :goto_1
    iput v1, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    .line 58
    :goto_2
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->trueScaleLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->trueScaleLatitude:D

    .line 59
    iget-boolean v3, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    if-nez v3, :cond_7

    .line 62
    iget v3, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    if-eq v3, v9, :cond_5

    if-eq v3, v10, :cond_5

    if-eq v3, v5, :cond_4

    if-eq v3, v6, :cond_3

    goto/16 :goto_3

    .line 79
    :cond_3
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    .line 80
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    invoke-direct/range {v0 .. v6}, Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;->ssfn(DDD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    mul-double v1, v1, v13

    sub-double/2addr v1, v7

    .line 81
    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    mul-double v3, v3, v5

    .line 82
    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    mul-double v5, v5, v13

    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v5, v5, v7

    mul-double v3, v3, v3

    sub-double/2addr v15, v3

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v5, v3

    iput-wide v5, v0, Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;->akm1:D

    .line 83
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iput-wide v3, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    .line 84
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    return-void

    .line 76
    :cond_4
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    mul-double v1, v1, v13

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;->akm1:D

    return-void

    :cond_5
    sub-double/2addr v1, v7

    .line 65
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v3, v1, v11

    if-gez v3, :cond_6

    .line 66
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    mul-double v1, v1, v13

    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    add-double v5, v3, v15

    add-double/2addr v3, v15

    .line 67
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    sub-double v7, v15, v5

    sub-double v5, v15, v5

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;->akm1:D

    return-void

    .line 69
    :cond_6
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->trueScaleLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->trueScaleLatitude:D

    .line 70
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    invoke-static/range {v3 .. v8}, Lorg/locationtech/proj4j/util/ProjectionMath;->tsfn(DDD)D

    move-result-wide v3

    div-double/2addr v1, v3

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;->akm1:D

    .line 71
    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    mul-double v5, v5, v3

    mul-double v5, v5, v5

    sub-double/2addr v15, v5

    .line 72
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;->akm1:D

    return-void

    .line 88
    :cond_7
    iget v3, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    if-eq v3, v9, :cond_a

    if-eq v3, v10, :cond_a

    if-eq v3, v5, :cond_9

    if-eq v3, v6, :cond_8

    :goto_3
    return-void

    .line 90
    :cond_8
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    .line 91
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    .line 93
    :cond_9
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    mul-double v1, v1, v13

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;->akm1:D

    return-void

    :cond_a
    sub-double/2addr v1, v7

    .line 97
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v3, v1, v11

    if-ltz v3, :cond_b

    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->trueScaleLatitude:D

    .line 98
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/Projection;->trueScaleLatitude:D

    mul-double v5, v5, v3

    const-wide v3, 0x3fe921fb54442d18L    # 0.7853981633974483

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    goto :goto_4

    :cond_b
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    mul-double v1, v1, v13

    :goto_4
    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;->akm1:D

    return-void
.end method

.method public isConformal()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v7, p5

    .line 106
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 107
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 108
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    .line 110
    iget-boolean v5, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v6, 0x4

    const-wide p1, 0x3ff921fb54442d18L    # 1.5707963267948966

    const/4 v12, 0x3

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    if-eqz v5, :cond_7

    .line 111
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    .line 113
    iget v5, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    if-eq v5, v15, :cond_4

    if-eq v5, v14, :cond_5

    const-wide v1, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    if-eq v5, v12, :cond_2

    if-eq v5, v6, :cond_0

    return-object v7

    .line 122
    :cond_0
    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    mul-double v12, v5, v3

    add-double v12, v12, v16

    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    mul-double v16, v14, v18

    mul-double v16, v16, v8

    add-double v12, v12, v16

    iput-wide v12, v7, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    cmpg-double v16, v12, v1

    if-lez v16, :cond_1

    .line 125
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;->akm1:D

    div-double/2addr v1, v12

    mul-double v12, v1, v18

    mul-double v12, v12, v10

    iput-wide v12, v7, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double v14, v14, v3

    mul-double v5, v5, v18

    mul-double v5, v5, v8

    sub-double/2addr v14, v5

    mul-double v1, v1, v14

    .line 126
    iput-wide v1, v7, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v7

    .line 124
    :cond_1
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>()V

    throw v1

    :cond_2
    mul-double v8, v8, v18

    add-double v8, v8, v16

    .line 115
    iput-wide v8, v7, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    cmpg-double v5, v8, v1

    if-lez v5, :cond_3

    .line 118
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;->akm1:D

    div-double/2addr v1, v8

    mul-double v18, v18, v1

    mul-double v5, v18, v10

    iput-wide v5, v7, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double v1, v1, v3

    .line 119
    iput-wide v1, v7, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v7

    .line 117
    :cond_3
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>()V

    throw v1

    :cond_4
    neg-double v8, v8

    neg-double v1, v1

    :cond_5
    sub-double v3, v1, p1

    .line 132
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v12, v3, v5

    if-ltz v12, :cond_6

    .line 134
    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;->akm1:D

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v1, v1, v5

    const-wide v5, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    mul-double v3, v3, v1

    mul-double v10, v10, v3

    iput-wide v10, v7, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double v3, v3, v8

    .line 135
    iput-wide v3, v7, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v7

    .line 133
    :cond_6
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>()V

    throw v1

    .line 141
    :cond_7
    iget v5, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    if-eq v5, v6, :cond_8

    if-ne v5, v12, :cond_9

    :cond_8
    const/4 v13, 0x4

    goto :goto_0

    :cond_9
    const-wide/16 v18, 0x0

    move-wide/from16 v5, v18

    goto :goto_1

    .line 142
    :goto_0
    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    invoke-direct/range {v0 .. v6}, Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;->ssfn(DDD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v5, v5, v18

    sub-double v5, v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    .line 143
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    move-wide/from16 v20, v18

    move-wide/from16 v18, v5

    move-wide/from16 v5, v20

    .line 145
    :goto_1
    iget v13, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    if-eq v13, v15, :cond_d

    if-eq v13, v14, :cond_c

    if-eq v13, v12, :cond_b

    const/4 v1, 0x4

    if-eq v13, v1, :cond_a

    goto :goto_2

    .line 147
    :cond_a
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;->akm1:D

    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    mul-double v14, v12, v5

    add-double v14, v14, v16

    mul-double v16, v3, v18

    mul-double v16, v16, v8

    add-double v14, v14, v16

    mul-double v14, v14, v3

    div-double/2addr v1, v14

    mul-double v3, v3, v5

    mul-double v12, v12, v18

    mul-double v12, v12, v8

    sub-double/2addr v3, v12

    mul-double v3, v3, v1

    .line 148
    iput-wide v3, v7, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v1, v1, v18

    .line 149
    iput-wide v1, v7, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    goto :goto_2

    .line 153
    :cond_b
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;->akm1:D

    mul-double v8, v8, v18

    add-double v8, v8, v16

    div-double/2addr v1, v8

    mul-double v5, v5, v1

    .line 154
    iput-wide v5, v7, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v1, v1, v18

    .line 155
    iput-wide v1, v7, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    goto :goto_2

    :cond_c
    neg-double v1, v1

    neg-double v8, v8

    neg-double v3, v3

    :cond_d
    move-wide v12, v1

    move-wide v14, v3

    .line 162
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;->akm1:D

    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    move-wide/from16 v16, v3

    invoke-static/range {v12 .. v17}, Lorg/locationtech/proj4j/util/ProjectionMath;->tsfn(DDD)D

    move-result-wide v3

    mul-double v1, v1, v3

    iput-wide v1, v7, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    neg-double v1, v1

    mul-double v1, v1, v8

    .line 163
    iput-wide v1, v7, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 166
    :goto_2
    iget-wide v1, v7, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double v1, v1, v10

    iput-wide v1, v7, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v7
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 29

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    .line 172
    iget-boolean v6, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    const/4 v7, 0x1

    const/4 v10, 0x2

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    const-wide/16 v13, 0x0

    if-eqz v6, :cond_c

    .line 175
    invoke-static/range {p1 .. p4}, Lorg/locationtech/proj4j/util/ProjectionMath;->distance(DD)D

    move-result-wide v15

    const-wide v17, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;->akm1:D

    div-double v8, v15, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    mul-double v8, v8, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 176
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 177
    iput-wide v13, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 178
    iget v6, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    if-eq v6, v7, :cond_7

    if-eq v6, v10, :cond_8

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    goto :goto_2

    .line 188
    :cond_0
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v10, v6, v17

    if-gtz v10, :cond_1

    .line 189
    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    iput-wide v3, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    move-wide/from16 v19, v13

    goto :goto_0

    .line 191
    :cond_1
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    mul-double v6, v6, v8

    mul-double v3, v3, v11

    move-wide/from16 v19, v13

    iget-wide v13, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    mul-double v3, v3, v13

    div-double/2addr v3, v15

    add-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    iput-wide v3, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 192
    :goto_0
    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    iget-wide v6, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v3, v3, v6

    sub-double/2addr v8, v3

    cmpl-double v3, v8, v19

    if-nez v3, :cond_2

    cmpl-double v3, v1, v19

    if-eqz v3, :cond_5

    :cond_2
    mul-double v1, v1, v11

    .line 193
    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    mul-double v1, v1, v3

    mul-double v8, v8, v15

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    iput-wide v1, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v5

    :cond_3
    move-wide/from16 v19, v13

    .line 180
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v10, v6, v17

    if-gtz v10, :cond_4

    move-wide/from16 v6, v19

    .line 181
    iput-wide v6, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_1

    :cond_4
    move-wide/from16 v6, v19

    mul-double v3, v3, v11

    div-double/2addr v3, v15

    .line 183
    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    iput-wide v3, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :goto_1
    cmpl-double v3, v8, v6

    if-nez v3, :cond_6

    cmpl-double v3, v1, v6

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    return-object v5

    :cond_6
    :goto_3
    mul-double v1, v1, v11

    mul-double v8, v8, v15

    .line 185
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    iput-wide v1, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v5

    :cond_7
    neg-double v3, v3

    .line 198
    :cond_8
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v11, v6, v17

    if-gtz v11, :cond_9

    .line 199
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    iput-wide v6, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :goto_4
    const-wide/16 v19, 0x0

    goto :goto_5

    .line 201
    :cond_9
    iget v6, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    if-ne v6, v10, :cond_a

    neg-double v8, v8

    :cond_a
    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    iput-wide v6, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_4

    :goto_5
    cmpl-double v6, v1, v19

    if-nez v6, :cond_b

    cmpl-double v6, v3, v19

    if-nez v6, :cond_b

    const-wide/16 v13, 0x0

    goto :goto_6

    .line 202
    :cond_b
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v13

    :goto_6
    iput-wide v13, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v5

    :cond_c
    const-wide v17, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 208
    invoke-static/range {p1 .. p4}, Lorg/locationtech/proj4j/util/ProjectionMath;->distance(DD)D

    move-result-wide v8

    .line 209
    iget v6, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    if-eq v6, v7, :cond_f

    if-eq v6, v10, :cond_e

    .line 213
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    mul-double v6, v6, v8

    move-wide v15, v11

    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;->akm1:D

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    mul-double v6, v6, v15

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 214
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/16 v19, 0x0

    cmpg-double v21, v8, v19

    if-gtz v21, :cond_d

    const-wide v21, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 216
    iget-wide v13, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    mul-double v13, v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->asin(D)D

    move-result-wide v13

    move-wide/from16 v25, v11

    goto :goto_7

    :cond_d
    const-wide v21, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 219
    iget-wide v13, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    mul-double v13, v13, v11

    mul-double v23, v3, v6

    move-wide/from16 v25, v11

    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    mul-double v23, v23, v10

    div-double v23, v23, v8

    add-double v13, v13, v23

    invoke-static {v13, v14}, Ljava/lang/Math;->asin(D)D

    move-result-wide v13

    :goto_7
    add-double v10, v13, v21

    const-wide/high16 v23, 0x3fe0000000000000L    # 0.5

    mul-double v10, v10, v23

    .line 221
    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    mul-double v1, v1, v6

    move-wide/from16 p1, v1

    .line 223
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    mul-double v8, v8, v1

    mul-double v8, v8, v25

    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    mul-double v1, v1, v3

    mul-double v1, v1, v6

    sub-double/2addr v8, v1

    .line 225
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    mul-double v1, v1, v23

    move-wide v6, v1

    move-wide v3, v13

    move-wide/from16 v13, v21

    move-wide/from16 v1, p1

    goto :goto_9

    :cond_e
    move-wide v15, v11

    const-wide v21, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto :goto_8

    :cond_f
    move-wide v15, v11

    const-wide v21, 0x3ff921fb54442d18L    # 1.5707963267948966

    neg-double v3, v3

    :goto_8
    neg-double v6, v8

    .line 230
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;->akm1:D

    div-double v10, v6, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    mul-double v6, v6, v15

    sub-double v13, v21, v6

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    .line 232
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    mul-double v6, v6, v8

    const-wide v8, -0x4006de04abbbd2e8L    # -1.5707963267948966

    move-wide/from16 v27, v8

    move-wide v8, v3

    move-wide v3, v13

    move-wide/from16 v13, v27

    :goto_9
    const/16 v12, 0x8

    :goto_a
    add-int/lit8 v21, v12, -0x1

    if-eqz v12, :cond_13

    move-wide/from16 p1, v3

    .line 236
    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v3, v3, v22

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    add-double v25, v3, v22

    sub-double v22, v22, v3

    div-double v3, v25, v22

    .line 237
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double v3, v3, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    mul-double v3, v3, v15

    sub-double/2addr v3, v13

    iput-wide v3, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    sub-double v3, p1, v3

    .line 238
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v12, v3, v17

    if-gez v12, :cond_12

    .line 239
    iget v3, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_10

    .line 240
    iget-wide v3, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    neg-double v3, v3

    iput-wide v3, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :cond_10
    const-wide/16 v19, 0x0

    cmpl-double v3, v1, v19

    if-nez v3, :cond_11

    cmpl-double v3, v8, v19

    if-nez v3, :cond_11

    move-wide/from16 v13, v19

    goto :goto_b

    .line 241
    :cond_11
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v13

    :goto_b
    iput-wide v13, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v5

    :cond_12
    move-wide/from16 p1, v1

    const/4 v4, 0x2

    const-wide/16 v19, 0x0

    .line 235
    iget-wide v0, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    move-wide v3, v0

    move/from16 v12, v21

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    goto :goto_a

    .line 245
    :cond_13
    new-instance v0, Lorg/locationtech/proj4j/ConvergenceFailureException;

    const-string v1, "Iteration didn\'t converge"

    invoke-direct {v0, v1}, Lorg/locationtech/proj4j/ConvergenceFailureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setupUPS(I)V
    .locals 5

    const/4 v0, 0x2

    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-ne p1, v0, :cond_0

    const-wide v3, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 41
    :goto_0
    iput-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    const-wide/16 v3, 0x0

    .line 42
    iput-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    const-wide v3, 0x3fefced916872b02L    # 0.994

    .line 43
    iput-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    const-wide v3, 0x413e848000000000L    # 2000000.0

    .line 44
    iput-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->falseEasting:D

    .line 45
    iput-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->falseNorthing:D

    .line 46
    iput-wide v1, p0, Lorg/locationtech/proj4j/proj/Projection;->trueScaleLatitude:D

    .line 47
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/StereographicAzimuthalProjection;->initialize()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 268
    const-string v0, "Stereographic Azimuthal"

    return-object v0
.end method
