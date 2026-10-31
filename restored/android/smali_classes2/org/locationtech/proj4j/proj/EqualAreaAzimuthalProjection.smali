.class public Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;
.super Lorg/locationtech/proj4j/proj/AzimuthalProjection;
.source "EqualAreaAzimuthalProjection.java"


# instance fields
.field private apa:[D

.field private cosb1:D

.field private dd:D

.field private mmf:D

.field private qp:D

.field private rq:D

.field private sinb1:D

.field private xmf:D

.field private ymf:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/AzimuthalProjection;-><init>()V

    .line 39
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->initialize()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 43
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;

    .line 44
    iget-object v1, p0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->apa:[D

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->apa:[D

    :cond_0
    return-object v0
.end method

.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public initialize()V
    .locals 12

    .line 50
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->initialize()V

    .line 51
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 52
    iget v0, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    if-ne v0, v1, :cond_1

    .line 53
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    .line 54
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    return-void

    .line 59
    :cond_0
    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v2 .. v7}, Lorg/locationtech/proj4j/util/ProjectionMath;->qsfn(DDD)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->qp:D

    .line 60
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v6, v4, v2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    div-double v6, v8, v6

    iput-wide v6, p0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->mmf:D

    .line 61
    invoke-static {v2, v3}, Lorg/locationtech/proj4j/util/ProjectionMath;->authset(D)[D

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->apa:[D

    .line 62
    iget v0, p0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    :cond_1
    return-void

    .line 73
    :cond_2
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->qp:D

    mul-double v0, v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->rq:D

    .line 74
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 75
    iget-wide v8, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    iget-wide v10, p0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    invoke-static/range {v6 .. v11}, Lorg/locationtech/proj4j/util/ProjectionMath;->qsfn(DDD)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->qp:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->sinb1:D

    mul-double v0, v0, v0

    sub-double v0, v4, v0

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->cosb1:D

    .line 77
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    mul-double v2, v2, v6

    mul-double v2, v2, v6

    sub-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->rq:D

    mul-double v2, v2, v4

    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->cosb1:D

    mul-double v2, v2, v6

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->dd:D

    div-double v2, v4, v0

    .line 79
    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->ymf:D

    mul-double v4, v4, v0

    .line 80
    iput-wide v4, p0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->xmf:D

    return-void

    .line 68
    :cond_3
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->qp:D

    mul-double v0, v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->rq:D

    div-double v0, v4, v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->dd:D

    .line 69
    iput-wide v4, p0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->xmf:D

    .line 70
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->qp:D

    mul-double v0, v0, v8

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->ymf:D

    return-void

    .line 65
    :cond_4
    iput-wide v4, p0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->dd:D

    return-void
.end method

.method public isEqualArea()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 87
    iget-boolean v2, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    const/4 v3, 0x1

    const/4 v6, 0x4

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const/4 v9, 0x2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v12, 0x3

    if-eqz v2, :cond_a

    .line 90
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 91
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    const-wide v17, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 92
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 93
    iget v2, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    if-eq v2, v3, :cond_6

    if-eq v2, v9, :cond_7

    if-eq v2, v12, :cond_3

    if-eq v2, v6, :cond_0

    goto/16 :goto_7

    .line 102
    :cond_0
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    mul-double v2, v2, v13

    add-double/2addr v2, v10

    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    mul-double v9, v9, v15

    mul-double v9, v9, v4

    add-double/2addr v2, v9

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    cmpg-double v6, v2, v17

    if-lez v6, :cond_2

    div-double/2addr v7, v2

    .line 104
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v2, v2, v15

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v2, v2, v6

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 105
    iget-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iget v6, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    if-ne v6, v12, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    mul-double v6, v6, v13

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    mul-double v8, v8, v15

    mul-double v8, v8, v4

    sub-double v13, v6, v8

    :goto_0
    mul-double v2, v2, v13

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v1

    .line 103
    :cond_2
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>()V

    throw v1

    :cond_3
    mul-double v2, v15, v4

    add-double/2addr v2, v10

    .line 95
    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    cmpg-double v6, v2, v17

    if-lez v6, :cond_5

    div-double/2addr v7, v2

    .line 97
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v2, v2, v15

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v2, v2, v6

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 98
    iget-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iget v6, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    if-ne v6, v12, :cond_4

    goto :goto_1

    :cond_4
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    mul-double v6, v6, v13

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    mul-double v8, v8, v15

    mul-double v8, v8, v4

    sub-double v13, v6, v8

    :goto_1
    mul-double v2, v2, v13

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v1

    .line 96
    :cond_5
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>()V

    throw v1

    :cond_6
    neg-double v4, v4

    .line 111
    :cond_7
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    add-double v2, p3, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v6, v2, v17

    if-ltz v6, :cond_9

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, p3

    const-wide v10, 0x3fe921fb54442d18L    # 0.7853981633974483

    sub-double/2addr v10, v2

    .line 112
    iput-wide v10, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 113
    iget v2, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    if-ne v2, v9, :cond_8

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    goto :goto_2

    :cond_8
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    :goto_2
    mul-double v2, v2, v7

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 114
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v2, v2, v6

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 115
    iget-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v2, v2, v4

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v1

    .line 111
    :cond_9
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>()V

    throw v1

    :cond_a
    const-wide v17, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 121
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 122
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 123
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide v15, v7

    .line 124
    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    move-wide/from16 v25, v10

    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    move-wide/from16 v21, v7

    move-wide/from16 v23, v10

    invoke-static/range {v19 .. v24}, Lorg/locationtech/proj4j/util/ProjectionMath;->qsfn(DDD)D

    move-result-wide v7

    .line 125
    iget v2, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    if-eq v2, v6, :cond_b

    if-ne v2, v12, :cond_c

    :cond_b
    const-wide/16 p1, 0x0

    goto :goto_3

    :cond_c
    const-wide/16 p1, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v19, 0x0

    goto :goto_4

    .line 126
    :goto_3
    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->qp:D

    div-double v10, v7, v10

    mul-double v19, v10, v10

    sub-double v19, v25, v19

    .line 127
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v19

    .line 129
    :goto_4
    iget v2, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    const-wide v21, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-eq v2, v3, :cond_10

    if-eq v2, v9, :cond_f

    if-eq v2, v12, :cond_e

    if-eq v2, v6, :cond_d

    move-wide/from16 v27, v13

    move-wide v12, v7

    move-wide/from16 v6, p1

    goto :goto_6

    :cond_d
    move-wide/from16 v23, v7

    .line 131
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->sinb1:D

    mul-double v6, v6, v10

    add-double v6, v6, v25

    move-wide/from16 v27, v13

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->cosb1:D

    mul-double v12, v12, v19

    mul-double v12, v12, v4

    add-double/2addr v6, v12

    :goto_5
    move-wide/from16 v12, v23

    goto :goto_6

    :cond_e
    move-wide/from16 v23, v7

    move-wide/from16 v27, v13

    mul-double v6, v19, v4

    add-double v6, v6, v25

    goto :goto_5

    :cond_f
    move-wide/from16 v23, v7

    move-wide/from16 v27, v13

    sub-double v6, p3, v21

    .line 142
    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->qp:D

    add-double v12, v12, v23

    goto :goto_6

    :cond_10
    move-wide/from16 v23, v7

    move-wide/from16 v27, v13

    add-double v6, p3, v21

    .line 138
    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->qp:D

    sub-double v12, v12, v23

    .line 145
    :goto_6
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    cmpg-double v14, v21, v17

    if-ltz v14, :cond_16

    .line 146
    iget v14, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    if-eq v14, v3, :cond_13

    if-eq v14, v9, :cond_13

    const/4 v8, 0x3

    if-eq v14, v8, :cond_12

    const/4 v2, 0x4

    if-eq v14, v2, :cond_11

    :goto_7
    return-object v1

    .line 148
    :cond_11
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->ymf:D

    div-double v7, v15, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double v2, v2, v6

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->cosb1:D

    mul-double v8, v8, v10

    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->sinb1:D

    mul-double v10, v10, v19

    mul-double v10, v10, v4

    sub-double/2addr v8, v10

    mul-double v2, v2, v8

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 150
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->xmf:D

    mul-double v2, v2, v6

    mul-double v2, v2, v19

    mul-double v2, v2, v27

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v1

    :cond_12
    mul-double v4, v4, v19

    add-double v4, v4, v25

    div-double v7, v15, v4

    .line 153
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v10, v10, v2

    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->ymf:D

    mul-double v10, v10, v4

    iput-wide v10, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 154
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->xmf:D

    mul-double v4, v4, v2

    mul-double v4, v4, v19

    mul-double v4, v4, v27

    iput-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v1

    :cond_13
    cmpl-double v2, v12, p1

    if-ltz v2, :cond_15

    .line 159
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v13, v2, v27

    iput-wide v13, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 160
    iget v6, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    if-ne v6, v9, :cond_14

    goto :goto_8

    :cond_14
    neg-double v2, v2

    :goto_8
    mul-double v4, v4, v2

    iput-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v1

    :cond_15
    move-wide/from16 v2, p1

    .line 162
    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v1

    .line 145
    :cond_16
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>()V

    throw v1
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 28

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    .line 170
    iget-boolean v4, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    const/4 v5, 0x1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const/4 v14, 0x2

    const/4 v15, 0x3

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    const/4 v6, 0x4

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    if-eqz v4, :cond_b

    .line 173
    invoke-static/range {p1 .. p4}, Lorg/locationtech/proj4j/util/ProjectionMath;->distance(DD)D

    move-result-wide v20

    mul-double v10, v10, v20

    .line 174
    iput-wide v10, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    cmpl-double v4, v10, v18

    if-gtz v4, :cond_a

    .line 175
    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    mul-double v10, v10, v16

    iput-wide v10, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 176
    iget v4, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    if-eq v4, v6, :cond_1

    if-ne v4, v15, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide v22, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    goto :goto_1

    .line 177
    :cond_1
    :goto_0
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide v22, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 178
    iget-wide v12, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 180
    :goto_1
    iget v4, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-eq v4, v5, :cond_7

    if-eq v4, v14, :cond_6

    if-eq v4, v15, :cond_4

    if-eq v4, v6, :cond_2

    const-wide/16 v24, 0x0

    goto :goto_4

    .line 187
    :cond_2
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v7, v4, v22

    if-gtz v7, :cond_3

    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    const-wide/16 v24, 0x0

    goto :goto_2

    :cond_3
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    mul-double v4, v4, v12

    mul-double v1, v1, v10

    const-wide/16 v24, 0x0

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    mul-double v1, v1, v8

    div-double v1, v1, v20

    add-double/2addr v4, v1

    .line 188
    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    :goto_2
    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 189
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->cosphi0:D

    mul-double v10, v10, v4

    mul-double v4, p1, v10

    .line 190
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->sinphi0:D

    mul-double v1, v1, v7

    sub-double/2addr v12, v1

    mul-double v1, v12, v20

    move-wide/from16 v26, v4

    move-wide v4, v1

    move-wide/from16 v1, v26

    goto :goto_5

    :cond_4
    const-wide/16 v24, 0x0

    .line 182
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v7, v4, v22

    if-gtz v7, :cond_5

    move-wide/from16 v1, v24

    goto :goto_3

    :cond_5
    mul-double v1, v1, v10

    div-double v1, v1, v20

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    :goto_3
    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v1, p1, v10

    mul-double v4, v12, v20

    goto :goto_5

    :cond_6
    const-wide/16 v24, 0x0

    .line 197
    iget-wide v4, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    sub-double v4, v4, v16

    iput-wide v4, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :goto_4
    move-wide v4, v1

    move-wide/from16 v1, p1

    goto :goto_5

    :cond_7
    const-wide/16 v24, 0x0

    neg-double v1, v1

    .line 194
    iget-wide v4, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    sub-double v4, v16, v4

    iput-wide v4, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_4

    :goto_5
    cmpl-double v7, v4, v24

    if-nez v7, :cond_9

    .line 200
    iget v7, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    if-eq v7, v15, :cond_8

    if-ne v7, v6, :cond_9

    :cond_8
    move-wide/from16 v8, v24

    goto :goto_6

    .line 201
    :cond_9
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    :goto_6
    iput-wide v8, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v3

    .line 174
    :cond_a
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>()V

    throw v1

    :cond_b
    const-wide v22, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide/16 v24, 0x0

    .line 205
    iget v4, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    if-eq v4, v5, :cond_f

    if-eq v4, v14, :cond_10

    if-eq v4, v15, :cond_c

    if-eq v4, v6, :cond_c

    move-wide/from16 v7, p1

    move-wide/from16 v15, v24

    goto/16 :goto_7

    .line 208
    :cond_c
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->dd:D

    div-double v7, p1, v4

    mul-double v1, v1, v4

    invoke-static {v7, v8, v1, v2}, Lorg/locationtech/proj4j/util/ProjectionMath;->distance(DD)D

    move-result-wide v4

    cmpg-double v9, v4, v22

    if-gez v9, :cond_d

    move-wide/from16 v12, v24

    .line 209
    iput-wide v12, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 210
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v3

    :cond_d
    mul-double v10, v10, v4

    .line 213
    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->rq:D

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v9

    mul-double v9, v9, v16

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 214
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v7, v7, v9

    .line 215
    iget v13, v0, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->mode:I

    if-ne v13, v6, :cond_e

    .line 216
    iget-wide v13, v0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->sinb1:D

    mul-double v15, v11, v13

    mul-double v17, v1, v9

    move-wide/from16 p1, v1

    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->cosb1:D

    mul-double v17, v17, v1

    div-double v17, v17, v4

    add-double v15, v15, v17

    mul-double v4, v4, v1

    mul-double v4, v4, v11

    mul-double v1, p1, v13

    mul-double v1, v1, v9

    sub-double v1, v4, v1

    goto :goto_7

    :cond_e
    move-wide/from16 p1, v1

    mul-double v1, p1, v9

    div-double/2addr v1, v4

    mul-double v4, v4, v11

    move-wide v15, v1

    move-wide v1, v4

    goto :goto_7

    :cond_f
    neg-double v1, v1

    :cond_10
    mul-double v5, p1, p1

    mul-double v7, v1, v1

    add-double/2addr v5, v7

    const-wide/16 v12, 0x0

    cmpl-double v7, v5, v12

    if-nez v7, :cond_11

    .line 227
    iput-wide v12, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 228
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v3

    .line 231
    :cond_11
    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->qp:D

    div-double/2addr v5, v7

    sub-double v8, v18, v5

    if-ne v4, v14, :cond_12

    neg-double v8, v8

    :cond_12
    move-wide v15, v8

    move-wide/from16 v7, p1

    .line 236
    :goto_7
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 237
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    iget-object v4, v0, Lorg/locationtech/proj4j/proj/EqualAreaAzimuthalProjection;->apa:[D

    invoke-static {v1, v2, v4}, Lorg/locationtech/proj4j/util/ProjectionMath;->authlat(D[D)D

    move-result-wide v1

    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 254
    const-string v0, "Lambert Equal Area Azimuthal"

    return-object v0
.end method
