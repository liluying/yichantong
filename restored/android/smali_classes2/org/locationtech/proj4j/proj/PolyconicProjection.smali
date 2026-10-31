.class public Lorg/locationtech/proj4j/proj/PolyconicProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "PolyconicProjection.java"


# static fields
.field private static final CONV:D = 1.0E-10

.field private static final ITOL:D = 1.0E-12

.field private static final I_ITER:I = 0x14

.field private static final N_ITER:I = 0xa

.field private static final TOL:D = 1.0E-10


# instance fields
.field private en:[D

.field private ml0:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    const-wide/16 v0, 0x0

    .line 38
    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->degToRad(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLatitude:D

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    .line 39
    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->degToRad(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLatitude:D

    const-wide/high16 v0, -0x3fb2000000000000L    # -60.0

    .line 40
    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->degToRad(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLongitude:D

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    .line 41
    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->degToRad(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLongitude:D

    .line 42
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/PolyconicProjection;->initialize()V

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
    .locals 2

    .line 134
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    .line 142
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/PolyconicProjection;->ml0:D

    return-void
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p5

    .line 46
    iget-boolean v4, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    if-eqz v4, :cond_1

    .line 49
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpg-double v4, v9, v7

    if-gtz v4, :cond_0

    .line 50
    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 51
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/PolyconicProjection;->ml0:D

    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v3

    .line 53
    :cond_0
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    div-double v7, v5, v7

    .line 54
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v1, v1, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v9, v9, v7

    iput-wide v9, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 55
    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    sub-double v9, p3, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    sub-double/2addr v5, v1

    mul-double v7, v7, v5

    add-double/2addr v9, v7

    iput-wide v9, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v3

    .line 60
    :cond_1
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpg-double v4, v9, v7

    if-gtz v4, :cond_2

    .line 61
    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 62
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/PolyconicProjection;->ml0:D

    neg-double v1, v1

    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v3

    .line 64
    :cond_2
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .line 65
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    cmpl-double v4, v13, v7

    move-wide v7, v9

    move-wide v9, v11

    if-lez v4, :cond_3

    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    invoke-static/range {v7 .. v12}, Lorg/locationtech/proj4j/util/ProjectionMath;->msfn(DDD)D

    move-result-wide v11

    div-double/2addr v11, v7

    :goto_0
    move-wide v14, v11

    goto :goto_1

    :cond_3
    const-wide/16 v11, 0x0

    goto :goto_0

    .line 66
    :goto_1
    iget-wide v11, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double v11, v11, v7

    iput-wide v11, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double v11, v11, v14

    iput-wide v11, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 67
    iget-object v13, v0, Lorg/locationtech/proj4j/proj/PolyconicProjection;->en:[D

    move-wide v11, v9

    move-wide v9, v7

    move-wide/from16 v7, p3

    invoke-static/range {v7 .. v13}, Lorg/locationtech/proj4j/util/ProjectionMath;->mlfn(DDD[D)D

    move-result-wide v7

    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/PolyconicProjection;->ml0:D

    sub-double/2addr v7, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    sub-double/2addr v5, v1

    mul-double v14, v14, v5

    add-double/2addr v7, v14

    iput-wide v7, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v3
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 32

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p5

    .line 75
    iget-boolean v4, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    const-wide/16 v5, 0x0

    const-string v7, "I"

    const-wide v8, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    if-eqz v4, :cond_4

    .line 79
    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    add-double v12, v12, p3

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpg-double v4, v12, v8

    if-gtz v4, :cond_0

    .line 80
    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    iput-wide v5, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v3

    :cond_0
    mul-double v4, v1, v1

    mul-double v12, p3, p3

    add-double/2addr v4, v12

    const/16 v6, 0xa

    move-wide/from16 v12, p3

    .line 86
    :cond_1
    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    mul-double v16, v12, v14

    add-double v16, v16, v10

    mul-double v16, v16, p3

    sub-double v16, v16, v12

    mul-double v18, v12, v12

    add-double v18, v18, v4

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    mul-double v18, v18, v20

    mul-double v18, v18, v14

    sub-double v16, v16, v18

    sub-double v18, v12, p3

    div-double v18, v18, v14

    sub-double v18, v18, v10

    div-double v16, v16, v18

    sub-double v12, v12, v16

    .line 90
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpl-double v16, v14, v8

    if-lez v16, :cond_2

    add-int/lit8 v6, v6, -0x1

    if-gtz v6, :cond_1

    :cond_2
    if-eqz v6, :cond_3

    .line 92
    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double v1, v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    div-double/2addr v1, v4

    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 93
    iput-wide v12, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v3

    .line 91
    :cond_3
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1, v7}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_4
    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/PolyconicProjection;->ml0:D

    add-double v12, p3, v12

    .line 97
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpg-double v4, v14, v8

    if-gtz v4, :cond_5

    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    iput-wide v5, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v3

    :cond_5
    mul-double v4, v12, v12

    mul-double v8, v1, v1

    add-double/2addr v4, v8

    const/16 v6, 0x14

    move-wide v14, v12

    :goto_0
    if-lez v6, :cond_8

    .line 104
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 105
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v8, v16, v18

    .line 106
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    const-wide v22, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v24, v20, v22

    if-ltz v24, :cond_7

    move-wide/from16 v24, v10

    .line 108
    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    mul-double v10, v10, v16

    mul-double v10, v10, v16

    sub-double v10, v24, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double v20, v16, v10

    div-double v26, v20, v18

    .line 109
    iget-object v1, v0, Lorg/locationtech/proj4j/proj/PolyconicProjection;->en:[D

    move-object/from16 v20, v1

    invoke-static/range {v14 .. v20}, Lorg/locationtech/proj4j/util/ProjectionMath;->mlfn(DDD[D)D

    move-result-wide v1

    mul-double v16, v1, v1

    add-double v16, v16, v4

    move-wide/from16 p3, v1

    .line 111
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    div-double v18, v24, v1

    mul-double v20, v10, v10

    mul-double v20, v20, v10

    div-double v18, v18, v20

    add-double v10, p3, p3

    mul-double v20, v26, v16

    add-double v10, v10, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v28, v12, v20

    mul-double v30, v26, p3

    add-double v30, v30, v24

    mul-double v30, v30, v28

    sub-double v10, v10, v30

    mul-double v1, v1, v8

    mul-double v28, v28, p3

    sub-double v16, v16, v28

    mul-double v1, v1, v16

    div-double v1, v1, v26

    sub-double v16, v12, p3

    mul-double v16, v16, v20

    mul-double v26, v26, v18

    div-double v8, v24, v8

    sub-double v26, v26, v8

    mul-double v16, v16, v26

    add-double v1, v1, v16

    sub-double v1, v1, v18

    sub-double v1, v1, v18

    div-double/2addr v10, v1

    add-double/2addr v14, v10

    .line 116
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v8, v1, v22

    if-gtz v8, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v6, v6, -0x1

    move-wide/from16 v1, p1

    move-wide/from16 v10, v24

    goto/16 :goto_0

    .line 107
    :cond_7
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1, v7}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    move-wide/from16 v24, v10

    :goto_1
    if-eqz v6, :cond_9

    .line 121
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    .line 122
    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double v4, v4, p1

    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    mul-double v6, v6, v1

    mul-double v6, v6, v1

    sub-double v10, v24, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    mul-double v4, v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    div-double/2addr v1, v4

    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 123
    iput-wide v14, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v3

    .line 120
    :cond_9
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1, v7}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 147
    const-string v0, "Polyconic (American)"

    return-object v0
.end method
