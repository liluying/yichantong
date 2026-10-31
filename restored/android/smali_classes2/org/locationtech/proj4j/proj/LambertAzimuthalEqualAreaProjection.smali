.class public Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "LambertAzimuthalEqualAreaProjection.java"


# static fields
.field private static final EQUIT:I = 0x2

.field private static final N_POLE:I = 0x0

.field private static final OBLIQ:I = 0x3

.field private static final S_POLE:I = 0x1


# instance fields
.field private apa:[D

.field private cosb1:D

.field private cosph0:D

.field private dd:D

.field private mmf:D

.field private mode:I

.field private phi0:D

.field private qp:D

.field private rq:D

.field private sinb1:D

.field private sinph0:D

.field private xmf:D

.field private ymf:D


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0}, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->mode:I

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
    .locals 13

    .line 60
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    .line 63
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->phi0:D

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x3

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v9, v2, v7

    if-gez v9, :cond_1

    .line 66
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->phi0:D

    const-wide/16 v2, 0x0

    cmpg-double v7, v0, v2

    if-gez v7, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->mode:I

    goto :goto_1

    .line 68
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v2, v0, v7

    if-gez v2, :cond_2

    .line 69
    iput v4, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->mode:I

    goto :goto_1

    .line 72
    :cond_2
    iput v6, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->mode:I

    .line 74
    :goto_1
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-nez v0, :cond_6

    .line 77
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    iput-wide v9, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 78
    iget-wide v11, p0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    invoke-static/range {v7 .. v12}, Lorg/locationtech/proj4j/util/ProjectionMath;->qsfn(DDD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->qp:D

    .line 79
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v7, v2, v0

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    div-double v7, v9, v7

    iput-wide v7, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->mmf:D

    .line 80
    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->authset(D)[D

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->apa:[D

    .line 81
    iget v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->mode:I

    if-eqz v0, :cond_5

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v6, :cond_3

    goto :goto_2

    .line 92
    :cond_3
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->qp:D

    mul-double v0, v0, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->rq:D

    .line 93
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->phi0:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 94
    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    iget-wide v8, p0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    invoke-static/range {v4 .. v9}, Lorg/locationtech/proj4j/util/ProjectionMath;->qsfn(DDD)D

    move-result-wide v0

    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->qp:D

    div-double/2addr v0, v6

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->sinb1:D

    mul-double v0, v0, v0

    sub-double v0, v2, v0

    .line 95
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->cosb1:D

    .line 96
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->phi0:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    mul-double v6, v6, v4

    mul-double v6, v6, v4

    sub-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->rq:D

    mul-double v2, v2, v4

    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->cosb1:D

    mul-double v2, v2, v6

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->dd:D

    div-double v2, v4, v0

    .line 98
    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->ymf:D

    mul-double v4, v4, v0

    .line 99
    iput-wide v4, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->xmf:D

    return-void

    .line 87
    :cond_4
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->qp:D

    mul-double v0, v0, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->rq:D

    div-double v0, v2, v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->dd:D

    .line 88
    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->xmf:D

    .line 89
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->qp:D

    mul-double v0, v0, v9

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->ymf:D

    return-void

    .line 84
    :cond_5
    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->dd:D

    return-void

    .line 103
    :cond_6
    iget v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->mode:I

    if-ne v0, v6, :cond_7

    .line 104
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->phi0:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->sinph0:D

    .line 105
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->phi0:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->cosph0:D

    :cond_7
    :goto_2
    return-void
.end method

.method public isEqualArea()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 1

    .line 111
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual/range {p0 .. p5}, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->project_s(DDLorg/locationtech/proj4j/ProjCoordinate;)V

    return-object p5

    .line 115
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->project_e(DDLorg/locationtech/proj4j/ProjCoordinate;)V

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 1

    .line 204
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual/range {p0 .. p5}, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->projectInverse_s(DDLorg/locationtech/proj4j/ProjCoordinate;)V

    return-object p5

    .line 208
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->projectInverse_e(DDLorg/locationtech/proj4j/ProjCoordinate;)V

    return-object p5
.end method

.method public projectInverse_e(DDLorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    .line 254
    iget v4, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->mode:I

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v5, :cond_5

    const/4 v5, 0x2

    const/4 v8, 0x3

    if-eq v4, v5, :cond_1

    if-eq v4, v8, :cond_1

    :cond_0
    :goto_0
    move-wide/from16 v9, p1

    goto/16 :goto_1

    .line 257
    :cond_1
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->dd:D

    div-double v9, p1, v4

    mul-double v1, v1, v4

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    const-wide v11, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v13, v4, v11

    if-gez v13, :cond_2

    .line 259
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->phi0:D

    .line 260
    iput-wide v6, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 261
    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-void

    :cond_2
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v4

    .line 264
    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->rq:D

    div-double/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 265
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v9, v9, v6

    .line 266
    iget v13, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->mode:I

    if-ne v13, v8, :cond_3

    .line 267
    iget-wide v13, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->sinb1:D

    mul-double v15, v11, v13

    mul-double v17, v1, v6

    move-wide/from16 p1, v1

    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->cosb1:D

    mul-double v17, v17, v1

    div-double v17, v17, v4

    add-double v15, v15, v17

    mul-double v4, v4, v1

    mul-double v4, v4, v11

    mul-double v1, p1, v13

    mul-double v1, v1, v6

    sub-double v1, v4, v1

    move-wide v6, v15

    goto :goto_1

    :cond_3
    move-wide/from16 p1, v1

    mul-double v1, p1, v6

    div-double v6, v1, v4

    mul-double v1, v4, v11

    goto :goto_1

    :cond_4
    neg-double v1, v1

    :cond_5
    mul-double v8, p1, p1

    mul-double v10, v1, v1

    add-double/2addr v8, v10

    cmpl-double v10, v6, v8

    if-nez v10, :cond_6

    .line 279
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->phi0:D

    .line 280
    iput-wide v6, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 281
    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-void

    .line 287
    :cond_6
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->qp:D

    div-double/2addr v8, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    if-ne v4, v5, :cond_0

    neg-double v6, v6

    goto :goto_0

    .line 292
    :goto_1
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 293
    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    iget-object v6, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->apa:[D

    invoke-static {v4, v5, v6}, Lorg/locationtech/proj4j/util/ProjectionMath;->authlat(D[D)D

    move-result-wide v4

    .line 294
    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 295
    iput-wide v4, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-void
.end method

.method public projectInverse_s(DDLorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    .line 217
    invoke-static/range {p1 .. p4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v6, v8

    if-gtz v10, :cond_a

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 219
    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    mul-double v6, v6, v8

    .line 220
    iget v8, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->mode:I

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eq v8, v10, :cond_1

    if-ne v8, v9, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    goto :goto_1

    .line 221
    :cond_1
    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 222
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    .line 224
    :goto_1
    iget v8, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->mode:I

    const-wide v17, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-eqz v8, :cond_7

    const-wide/16 v19, 0x0

    const/4 v11, 0x1

    if-eq v8, v11, :cond_6

    const-wide v11, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    if-eq v8, v9, :cond_4

    if-eq v8, v10, :cond_2

    :goto_2
    move-wide v4, v1

    move-wide/from16 v1, p1

    goto :goto_7

    .line 231
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v8, v6, v11

    if-gtz v8, :cond_3

    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->phi0:D

    :goto_3
    move-wide v6, v1

    goto :goto_4

    :cond_3
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->sinph0:D

    mul-double v6, v6, v15

    mul-double v1, v1, v13

    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->cosph0:D

    mul-double v1, v1, v11

    div-double/2addr v1, v4

    add-double/2addr v6, v1

    .line 232
    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    goto :goto_3

    .line 233
    :goto_4
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->cosph0:D

    mul-double v13, v13, v1

    mul-double v1, p1, v13

    .line 234
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    iget-wide v13, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->sinph0:D

    mul-double v11, v11, v13

    sub-double/2addr v15, v11

    :goto_5
    mul-double v4, v4, v15

    goto :goto_7

    .line 226
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v8, v6, v11

    if-gtz v8, :cond_5

    move-wide/from16 v6, v19

    goto :goto_6

    :cond_5
    mul-double v1, v1, v13

    div-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    move-wide v6, v1

    :goto_6
    mul-double v1, p1, v13

    goto :goto_5

    :cond_6
    sub-double v6, v6, v17

    goto :goto_2

    :cond_7
    const-wide/16 v19, 0x0

    neg-double v1, v1

    sub-double v6, v17, v6

    goto :goto_2

    :goto_7
    cmpl-double v8, v4, v19

    if-nez v8, :cond_9

    .line 244
    iget v8, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->mode:I

    if-eq v8, v9, :cond_8

    if-ne v8, v10, :cond_9

    :cond_8
    move-wide/from16 v11, v19

    goto :goto_8

    .line 245
    :cond_9
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    .line 246
    :goto_8
    iput-wide v11, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 247
    iput-wide v6, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-void

    .line 218
    :cond_a
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    const-string v2, "I_ERROR"

    invoke-direct {v1, v2}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public project_e(DDLorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 154
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 155
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 156
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 157
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    invoke-static/range {v6 .. v11}, Lorg/locationtech/proj4j/util/ProjectionMath;->qsfn(DDD)D

    move-result-wide v6

    .line 158
    iget v8, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->mode:I

    const/4 v9, 0x2

    const/4 v14, 0x3

    if-eq v8, v14, :cond_0

    if-ne v8, v9, :cond_1

    :cond_0
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v10, 0x0

    const-wide/16 v15, 0x0

    goto :goto_1

    .line 159
    :goto_0
    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->qp:D

    div-double v10, v6, v10

    mul-double v15, v10, v10

    sub-double v15, p1, v15

    .line 160
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    .line 162
    :goto_1
    iget v8, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->mode:I

    const-wide v17, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide/16 v19, 0x0

    const/4 v12, 0x1

    if-eqz v8, :cond_5

    if-eq v8, v12, :cond_4

    if-eq v8, v9, :cond_3

    if-eq v8, v14, :cond_2

    move-wide/from16 v21, v15

    move-wide/from16 v14, v19

    goto :goto_2

    :cond_2
    move-wide/from16 v21, v15

    .line 164
    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->sinb1:D

    mul-double v14, v14, v10

    add-double v14, v14, p1

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->cosb1:D

    mul-double v8, v8, v21

    mul-double v8, v8, v2

    add-double/2addr v14, v8

    goto :goto_2

    :cond_3
    move-wide/from16 v21, v15

    mul-double v8, v21, v2

    add-double v14, v8, p1

    goto :goto_2

    :cond_4
    move-wide/from16 v21, v15

    sub-double v14, p3, v17

    .line 175
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->qp:D

    add-double/2addr v6, v8

    goto :goto_2

    :cond_5
    move-wide/from16 v21, v15

    add-double v14, p3, v17

    .line 171
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->qp:D

    sub-double v6, v8, v6

    .line 178
    :goto_2
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v17, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v23, v8, v17

    if-ltz v23, :cond_b

    .line 180
    iget v8, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->mode:I

    if-eqz v8, :cond_8

    if-eq v8, v12, :cond_8

    const/4 v13, 0x2

    const/4 v6, 0x3

    if-eq v8, v13, :cond_6

    if-eq v8, v6, :cond_6

    return-void

    :cond_6
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    if-ne v8, v6, :cond_7

    .line 184
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->ymf:D

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->cosb1:D

    mul-double v12, v12, v10

    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->sinb1:D

    mul-double v10, v10, v21

    mul-double v10, v10, v2

    sub-double/2addr v12, v10

    mul-double v6, v6, v12

    iput-wide v6, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_3

    :cond_7
    mul-double v15, v21, v2

    add-double v15, v15, p1

    div-double/2addr v12, v15

    .line 188
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double v10, v10, v8

    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->ymf:D

    mul-double v10, v10, v2

    iput-wide v10, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 190
    :goto_3
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->xmf:D

    mul-double v2, v2, v8

    mul-double v2, v2, v21

    mul-double v2, v2, v4

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-void

    :cond_8
    cmpl-double v8, v6, v19

    if-ltz v8, :cond_a

    .line 195
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    iput-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 196
    iget v4, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->mode:I

    if-ne v4, v12, :cond_9

    goto :goto_4

    :cond_9
    neg-double v6, v6

    :goto_4
    mul-double v2, v2, v6

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-void

    :cond_a
    move-wide/from16 v2, v19

    .line 198
    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-void

    .line 178
    :cond_b
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    const-string v2, "F"

    invoke-direct {v1, v2}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public project_s(DDLorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 123
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 124
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 125
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 126
    iget v8, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->mode:I

    const-string v11, "F"

    const/4 v14, 0x1

    if-eqz v8, :cond_5

    if-eq v8, v14, :cond_4

    const/4 v14, 0x2

    if-eq v8, v14, :cond_0

    const/4 v15, 0x3

    if-eq v8, v15, :cond_0

    return-void

    :cond_0
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    if-ne v8, v14, :cond_1

    mul-double v17, v4, v6

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    add-double v9, v17, v15

    .line 130
    iput-wide v9, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide v15, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    goto :goto_0

    :cond_1
    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    .line 132
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->sinph0:D

    mul-double v8, v8, v2

    add-double/2addr v8, v15

    const-wide v15, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->cosph0:D

    mul-double v12, v12, v4

    mul-double v12, v12, v6

    add-double/2addr v8, v12

    iput-wide v8, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 134
    :goto_0
    iget-wide v8, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    cmpg-double v10, v8, v15

    if-lez v10, :cond_3

    div-double v9, v19, v8

    .line 135
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    iput-wide v8, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v8, v8, v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v8, v8, v10

    iput-wide v8, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 136
    iget-wide v8, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iget v10, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->mode:I

    if-ne v10, v14, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->cosph0:D

    mul-double v10, v10, v2

    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->sinph0:D

    mul-double v2, v2, v4

    mul-double v2, v2, v6

    sub-double v2, v10, v2

    :goto_1
    mul-double v8, v8, v2

    iput-wide v8, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-void

    .line 134
    :cond_3
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1, v11}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-wide v15, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    goto :goto_2

    :cond_5
    const-wide v15, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    neg-double v6, v6

    .line 142
    :goto_2
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->phi0:D

    add-double v2, p3, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v15

    if-ltz v4, :cond_7

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, p3

    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    sub-double/2addr v4, v2

    .line 143
    iput-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 144
    iget v2, v0, Lorg/locationtech/proj4j/proj/LambertAzimuthalEqualAreaProjection;->mode:I

    if-ne v2, v14, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    goto :goto_3

    :cond_6
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    :goto_3
    mul-double v2, v2, v19

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 145
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 146
    iget-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v2, v2, v6

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-void

    .line 142
    :cond_7
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1, v11}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 310
    const-string v0, "Lambert Azimuthal Equal Area"

    return-object v0
.end method
