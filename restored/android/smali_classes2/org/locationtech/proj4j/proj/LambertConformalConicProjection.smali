.class public Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;
.super Lorg/locationtech/proj4j/proj/ConicProjection;
.source "LambertConformalConicProjection.java"


# instance fields
.field private c:D

.field private n:D

.field private rho0:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 30
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/ConicProjection;-><init>()V

    const-wide/16 v0, 0x0

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->minLatitude:D

    const-wide/high16 v2, 0x4054000000000000L    # 80.0

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLatitude:D

    .line 36
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude1:D

    .line 37
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude2:D

    return-void
.end method

.method public constructor <init>(Lorg/locationtech/proj4j/datum/Ellipsoid;DDDDDD)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/ConicProjection;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lorg/locationtech/proj4j/proj/Projection;->setEllipsoid(Lorg/locationtech/proj4j/datum/Ellipsoid;)V

    .line 46
    iput-wide p2, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    .line 47
    iput-wide p8, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 48
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    .line 49
    iput-wide p10, p0, Lorg/locationtech/proj4j/proj/Projection;->falseEasting:D

    .line 50
    iput-wide p12, p0, Lorg/locationtech/proj4j/proj/Projection;->falseNorthing:D

    .line 51
    iput-wide p4, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude1:D

    .line 52
    iput-wide p6, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude2:D

    .line 53
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->initialize()V

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
    .locals 25

    move-object/from16 v0, p0

    .line 93
    invoke-super {v0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    .line 103
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude2:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    .line 104
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude1:D

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude2:D

    .line 106
    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    cmpl-double v7, v5, v3

    if-nez v7, :cond_0

    .line 107
    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    .line 111
    :cond_0
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude1:D

    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude2:D

    add-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v7, v1, v5

    if-ltz v7, :cond_8

    .line 113
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude1:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    iput-wide v7, v0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->n:D

    .line 114
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude1:D

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 115
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude1:D

    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude2:D

    sub-double/2addr v1, v11

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    cmpl-double v13, v1, v5

    if-ltz v13, :cond_1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 116
    :goto_1
    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    cmpl-double v14, v11, v3

    if-nez v14, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    const-wide v13, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-nez v2, :cond_5

    .line 120
    invoke-static/range {v7 .. v12}, Lorg/locationtech/proj4j/util/ProjectionMath;->msfn(DDD)D

    move-result-wide v15

    .line 121
    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude1:D

    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    move-wide/from16 v23, v9

    move-wide v9, v7

    move-wide/from16 v7, v23

    invoke-static/range {v7 .. v12}, Lorg/locationtech/proj4j/util/ProjectionMath;->tsfn(DDD)D

    move-result-wide v7

    if-eqz v1, :cond_3

    .line 123
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude2:D

    .line 124
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude2:D

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    move-wide/from16 v21, v1

    invoke-static/range {v17 .. v22}, Lorg/locationtech/proj4j/util/ProjectionMath;->msfn(DDD)D

    move-result-wide v1

    div-double v1, v15, v1

    .line 123
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->n:D

    .line 125
    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude2:D

    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    move-wide/from16 v21, v11

    move-wide/from16 v19, v17

    move-wide/from16 v17, v9

    invoke-static/range {v17 .. v22}, Lorg/locationtech/proj4j/util/ProjectionMath;->tsfn(DDD)D

    move-result-wide v9

    div-double v9, v7, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v1, v9

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->n:D

    .line 127
    :cond_3
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->n:D

    neg-double v1, v1

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double v15, v15, v1

    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->n:D

    div-double v1, v15, v1

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->rho0:D

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->c:D

    .line 128
    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    sub-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v9, v7, v5

    if-gez v9, :cond_4

    goto :goto_2

    :cond_4
    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    .line 129
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    invoke-static/range {v10 .. v15}, Lorg/locationtech/proj4j/util/ProjectionMath;->tsfn(DDD)D

    move-result-wide v3

    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->n:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    :goto_2
    mul-double v1, v1, v3

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->rho0:D

    return-void

    :cond_5
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    const-wide v11, 0x3fe921fb54442d18L    # 0.7853981633974483

    if-eqz v1, :cond_6

    .line 132
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude2:D

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    div-double v1, v9, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude2:D

    mul-double v3, v3, v7

    add-double/2addr v3, v11

    .line 133
    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    move-wide/from16 v17, v5

    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude1:D

    mul-double v5, v5, v7

    add-double/2addr v5, v11

    .line 134
    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    .line 133
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->n:D

    goto :goto_3

    :cond_6
    move-wide/from16 v17, v5

    .line 135
    :goto_3
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude1:D

    mul-double v1, v1, v7

    add-double/2addr v1, v11

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->n:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double v9, v9, v1

    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->n:D

    div-double/2addr v9, v1

    iput-wide v9, v0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->c:D

    .line 136
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    sub-double/2addr v1, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v3, v1, v17

    if-gez v3, :cond_7

    const-wide/16 v3, 0x0

    goto :goto_4

    :cond_7
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->c:D

    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    mul-double v3, v3, v7

    add-double/2addr v3, v11

    .line 137
    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->n:D

    neg-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double v3, v3, v1

    :goto_4
    iput-wide v3, v0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->rho0:D

    return-void

    .line 112
    :cond_8
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>()V

    throw v1
.end method

.method public isConformal()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 8

    .line 58
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 p3, 0x0

    goto :goto_1

    .line 61
    :cond_0
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->c:D

    iget-boolean v2, p0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-eqz v2, :cond_1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double p3, p3, v2

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr p3, v2

    .line 62
    invoke-static {p3, p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide p3

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->n:D

    neg-double v2, v2

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    move-wide v2, p3

    invoke-static/range {v2 .. v7}, Lorg/locationtech/proj4j/util/ProjectionMath;->tsfn(DDD)D

    move-result-wide p3

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->n:D

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    :goto_0
    mul-double p3, p3, v0

    .line 65
    :goto_1
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->n:D

    mul-double p1, p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, p3

    mul-double v0, v0, v2

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 66
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->rho0:D

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double p3, p3, p1

    sub-double/2addr v2, p3

    mul-double v0, v0, v2

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 10

    .line 71
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    div-double/2addr p1, v0

    div-double/2addr p3, v0

    .line 73
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->rho0:D

    sub-double/2addr v0, p3

    invoke-static {p1, p2, v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->distance(DD)D

    move-result-wide p3

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide/16 v4, 0x0

    cmpl-double v6, p3, v4

    if-eqz v6, :cond_2

    .line 75
    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->n:D

    cmpg-double v8, v6, v4

    if-gez v8, :cond_0

    neg-double p3, p3

    neg-double p1, p1

    neg-double v0, v0

    .line 80
    :cond_0
    iget-boolean v4, p0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-eqz v4, :cond_1

    .line 81
    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->c:D

    div-double/2addr v4, p3

    div-double/2addr v8, v6

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->atan(D)D

    move-result-wide p3

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double p3, p3, v4

    sub-double/2addr p3, v2

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_0

    .line 83
    :cond_1
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->c:D

    div-double/2addr p3, v2

    div-double/2addr v8, v6

    invoke-static {p3, p4, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    invoke-static {p3, p4, v2, v3}, Lorg/locationtech/proj4j/util/ProjectionMath;->phi2(DD)D

    move-result-wide p3

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 84
    :goto_0
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->n:D

    div-double/2addr p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object p5

    .line 86
    :cond_2
    iput-wide v4, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 87
    iget-wide p1, p0, Lorg/locationtech/proj4j/proj/LambertConformalConicProjection;->n:D

    cmpl-double p3, p1, v4

    if-lez p3, :cond_3

    goto :goto_1

    :cond_3
    const-wide v2, -0x4006de04abbbd2e8L    # -1.5707963267948966

    :goto_1
    iput-wide v2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 153
    const-string v0, "Lambert Conformal Conic"

    return-object v0
.end method
