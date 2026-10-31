.class public Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "SwissObliqueMercatorProjection.java"


# static fields
.field private static final NITER:I = 0x6


# instance fields
.field private K:D

.field private c:D

.field private cosp0:D

.field private hlf_e:D

.field private kR:D

.field private phi0:D

.field private sinp0:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
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

.method public initialize()V
    .locals 17

    move-object/from16 v0, p0

    .line 42
    invoke-super {v0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    .line 45
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->phi0:D

    .line 47
    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, v5

    iput-wide v3, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->hlf_e:D

    .line 48
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double v1, v1, v1

    .line 50
    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    mul-double v3, v3, v1

    mul-double v3, v3, v1

    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->rone_es:D

    mul-double v3, v3, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    iput-wide v3, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->c:D

    .line 51
    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->phi0:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    .line 52
    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->c:D

    div-double v7, v3, v7

    iput-wide v7, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->sinp0:D

    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    iput-wide v9, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->cosp0:D

    .line 53
    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    mul-double v3, v3, v9

    mul-double v7, v7, v5

    const-wide v9, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v7, v9

    .line 54
    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->c:D

    iget-wide v13, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->phi0:D

    mul-double v13, v13, v5

    add-double/2addr v13, v9

    .line 55
    invoke-static {v13, v14}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->hlf_e:D

    add-double v13, v3, v1

    sub-double v15, v1, v3

    div-double/2addr v13, v15

    .line 56
    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    mul-double v9, v9, v13

    sub-double/2addr v5, v9

    mul-double v11, v11, v5

    sub-double/2addr v7, v11

    iput-wide v7, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->K:D

    .line 57
    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double v5, v5, v7

    mul-double v3, v3, v3

    sub-double/2addr v1, v3

    div-double/2addr v5, v1

    iput-wide v5, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->kR:D

    return-void
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 63
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    .line 64
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->c:D

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v8, p3, v6

    const-wide v10, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v8, v10

    .line 65
    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->hlf_e:D

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double v16, v2, v14

    sub-double/2addr v14, v2

    div-double v16, v16, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double v12, v12, v2

    sub-double/2addr v8, v12

    mul-double v4, v4, v8

    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->K:D

    add-double/2addr v4, v2

    .line 64
    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v4

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, v4

    .line 67
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->c:D

    mul-double v4, v4, p1

    .line 68
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 69
    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->cosp0:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v12, v12, v2

    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->sinp0:D

    mul-double v2, v2, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double v2, v2, v14

    sub-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    .line 70
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v8, v8, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    div-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    .line 71
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->kR:D

    mul-double v4, v4, v8

    iput-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double v2, v2, v6

    add-double/2addr v2, v10

    .line 72
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double v8, v8, v2

    iput-wide v8, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v1
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 81
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->kR:D

    div-double v2, p3, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    sub-double/2addr v2, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v6

    .line 82
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->kR:D

    div-double v6, p1, v6

    .line 83
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 84
    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->cosp0:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v10, v10, v2

    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->sinp0:D

    mul-double v2, v2, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double v2, v2, v12

    add-double/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    .line 85
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v8, v8, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    div-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    .line 86
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->K:D

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double v12, v2, v10

    add-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    sub-double/2addr v8, v12

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->c:D

    div-double/2addr v8, v12

    const/4 v12, 0x6

    :goto_0
    if-eqz v12, :cond_1

    .line 88
    iget-wide v13, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double v13, v13, v15

    mul-double v15, v2, v10

    add-double/2addr v15, v4

    .line 89
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->tan(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->log(D)D

    move-result-wide v15

    add-double/2addr v15, v8

    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->hlf_e:D

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    add-double v19, v13, v17

    sub-double v21, v17, v13

    div-double v19, v19, v21

    .line 90
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->log(D)D

    move-result-wide v19

    mul-double v4, v4, v19

    sub-double/2addr v15, v4

    mul-double v13, v13, v13

    sub-double v17, v17, v13

    mul-double v15, v15, v17

    .line 91
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v15, v15, v4

    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/Projection;->rone_es:D

    mul-double v15, v15, v4

    sub-double/2addr v2, v15

    .line 93
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v13, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v15, v4, v13

    if-gez v15, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v12, v12, -0x1

    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v12, :cond_2

    .line 98
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/SwissObliqueMercatorProjection;->c:D

    div-double/2addr v6, v4

    .line 102
    iput-wide v6, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 103
    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v1

    .line 100
    :cond_2
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    const-string v2, "I_ERROR"

    invoke-direct {v1, v2}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 113
    const-string v0, "Swiss Oblique Mercator"

    return-object v0
.end method
