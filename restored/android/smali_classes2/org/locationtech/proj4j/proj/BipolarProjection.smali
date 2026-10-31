.class public Lorg/locationtech/proj4j/proj/BipolarProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "BipolarProjection.java"


# static fields
.field private static final Azab:D = 0.8165004367468637

.field private static final Azba:D = 1.8226184385618593

.field private static final C20:D = 0.9396926207859084

.field private static final C45:D = 0.7071067811865476

.field private static final EPS:D = 1.0E-10

.field private static final EPS10:D = 1.0E-10

.field private static final F:D = 1.8972474256746104

.field private static final NITER:I = 0xa

.field private static final ONEEPS:D = 1.000000001

.field private static final R104:D = 1.8151424220741028

.field private static final R110:D = 1.9198621771937625

.field private static final S20:D = -0.3420201433256687

.field private static final S45:D = 0.7071067811865476

.field private static final T:D = 1.27246578267089

.field private static final cAzc:D = 0.6969152303867837

.field private static final lamB:D = -0.3489497672625068

.field private static final n:D = 0.6305584488127469

.field private static final rhoc:D = 1.2070912152156872

.field private static final sAzc:D = 0.7171535133114361


# instance fields
.field private noskew:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 50
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    const-wide/high16 v0, -0x3fac000000000000L    # -80.0

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLatitude:D

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLatitude:D

    const-wide v0, -0x3fa9800000000000L    # -90.0

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLongitude:D

    const-wide v0, 0x4056800000000000L    # 90.0

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLongitude:D

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

    .line 170
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    return-void
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 30

    move-object/from16 v0, p5

    .line 62
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 63
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    const-wide v5, -0x4029aace986a4944L    # -0.3489497672625068

    sub-double v5, v5, p1

    .line 64
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 65
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    .line 66
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v13, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    const-wide v15, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v17, 0x0

    cmpg-double v19, v9, v11

    if-gez v19, :cond_1

    cmpg-double v5, p3, v17

    if-gez v5, :cond_0

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    goto :goto_0

    :cond_0
    move-wide/from16 v5, v17

    :goto_0
    move-wide v9, v15

    goto :goto_1

    :cond_1
    div-double v9, v3, v1

    sub-double v11, v9, v7

    mul-double v11, v11, v13

    .line 71
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    :goto_1
    const-wide v11, 0x3ffd2971f3ab5b39L    # 1.8226184385618593

    cmpl-double v19, v5, v11

    if-lez v19, :cond_2

    const/16 v19, 0x1

    goto :goto_2

    :cond_2
    const/16 v19, 0x0

    :goto_2
    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    const-wide v22, 0x3ff000000044b830L    # 1.000000001

    .line 73
    const-string v11, "F"

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    if-eqz v19, :cond_7

    const-wide v7, 0x3ffeb7c166fdfe3aL    # 1.9198621771937625

    add-double v7, p1, v7

    .line 74
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 75
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    const-wide v26, -0x402a1c578b75f40bL    # -0.3420201433256687

    mul-double v3, v3, v26

    const-wide v28, 0x3fee11f642522d1cL    # 0.9396926207859084

    mul-double v1, v1, v28

    mul-double v1, v1, v12

    add-double/2addr v3, v1

    .line 77
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v14, v1, v24

    if-lez v14, :cond_5

    .line 78
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v14, v1, v22

    if-gtz v14, :cond_4

    cmpg-double v1, v3, v17

    if-gez v1, :cond_3

    move-wide/from16 v1, v20

    goto :goto_3

    :cond_3
    move-wide/from16 v1, v24

    goto :goto_3

    .line 79
    :cond_4
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v0, v11}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_5
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    :goto_3
    cmpl-double v3, v9, v15

    if-eqz v3, :cond_6

    mul-double v9, v9, v28

    mul-double v12, v12, v26

    sub-double/2addr v9, v12

    .line 84
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    :cond_6
    const-wide v3, 0x3ff3503ee0ca3e90L    # 1.2070912152156872

    .line 86
    iput-wide v3, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide v3, 0x3fea20c5861feb7dL    # 0.8165004367468637

    goto :goto_5

    :cond_7
    mul-double v1, v1, v7

    add-double/2addr v3, v1

    mul-double v3, v3, v13

    .line 89
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v7, v1, v24

    if-lez v7, :cond_a

    .line 90
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v7, v1, v22

    if-gtz v7, :cond_9

    cmpg-double v1, v3, v17

    if-gez v1, :cond_8

    move-wide/from16 v1, v20

    goto :goto_4

    :cond_8
    move-wide/from16 v1, v24

    goto :goto_4

    .line 91
    :cond_9
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v0, v11}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_a
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    :goto_4
    const-wide v3, -0x400cafc11f35c170L    # -1.2070912152156872

    .line 96
    iput-wide v3, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide v3, 0x3ffd2971f3ab5b39L    # 1.8226184385618593

    :goto_5
    cmpg-double v7, v1, v17

    if-ltz v7, :cond_13

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v9, v1, v7

    .line 99
    invoke-static {v9, v10}, Ljava/lang/Math;->tan(D)D

    move-result-wide v9

    const-wide v12, 0x3fe42d88e97bc06aL    # 0.6305584488127469

    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    const-wide v14, 0x3ffe5b201ddb1510L    # 1.8972474256746104

    mul-double v14, v14, v9

    const-wide v26, 0x3ffd0ad2c7c63f7dL    # 1.8151424220741028

    sub-double v26, v26, v1

    mul-double v1, v26, v7

    cmpg-double v7, v1, v17

    if-ltz v7, :cond_12

    .line 102
    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-double/2addr v9, v1

    const-wide v1, 0x3ff45c05149d9bb7L    # 1.27246578267089

    div-double/2addr v9, v1

    .line 103
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v7, v1, v24

    if-lez v7, :cond_d

    .line 104
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v7, v1, v22

    if-gtz v7, :cond_c

    cmpg-double v1, v9, v17

    if-gez v1, :cond_b

    goto :goto_6

    :cond_b
    move-wide/from16 v20, v24

    goto :goto_6

    .line 105
    :cond_c
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v0, v11}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_d
    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v20

    :goto_6
    sub-double/2addr v3, v5

    mul-double v3, v3, v12

    .line 109
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v5, v1, v20

    if-gez v5, :cond_f

    if-eqz v19, :cond_e

    move-wide v1, v3

    goto :goto_7

    :cond_e
    neg-double v1, v3

    :goto_7
    add-double v20, v20, v1

    .line 110
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    div-double/2addr v14, v1

    .line 111
    :cond_f
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v1, v1, v14

    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 112
    iget-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    if-eqz v19, :cond_10

    neg-double v14, v14

    :cond_10
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v14, v14, v3

    add-double/2addr v1, v14

    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    move-object/from16 v3, p0

    .line 113
    iget-boolean v4, v3, Lorg/locationtech/proj4j/proj/BipolarProjection;->noskew:Z

    if-eqz v4, :cond_11

    .line 114
    iget-wide v4, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    neg-double v6, v4

    const-wide v8, 0x3fe64d212b530eadL    # 0.6969152303867837

    mul-double v6, v6, v8

    const-wide v10, 0x3fe6f2ebecbc4ab3L    # 0.7171535133114361

    mul-double v12, v1, v10

    sub-double/2addr v6, v12

    .line 115
    iput-wide v6, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    neg-double v1, v1

    mul-double v1, v1, v8

    mul-double v4, v4, v10

    add-double/2addr v1, v4

    .line 116
    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :cond_11
    return-object v0

    :cond_12
    move-object/from16 v3, p0

    .line 101
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v0, v11}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move-object/from16 v3, p0

    .line 98
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v0, v11}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 26

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    move-object/from16 v4, p0

    move-object/from16 v5, p5

    .line 126
    iget-boolean v6, v4, Lorg/locationtech/proj4j/proj/BipolarProjection;->noskew:Z

    if-eqz v6, :cond_0

    neg-double v6, v0

    const-wide v8, 0x3fe64d212b530eadL    # 0.6969152303867837

    mul-double v6, v6, v8

    const-wide v10, 0x3fe6f2ebecbc4ab3L    # 0.7171535133114361

    mul-double v12, v2, v10

    add-double/2addr v6, v12

    .line 128
    iput-wide v6, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    neg-double v6, v2

    mul-double v6, v6, v8

    mul-double v8, v0, v10

    sub-double/2addr v6, v8

    .line 129
    iput-wide v6, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :cond_0
    const-wide/16 v6, 0x0

    cmpg-double v8, v0, v6

    if-gez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    const-wide v9, 0x3ff3503ee0ca3e90L    # 1.2070912152156872

    if-eqz v8, :cond_2

    sub-double/2addr v9, v2

    .line 132
    iput-wide v9, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide v9, -0x402a1c578b75f40bL    # -0.3420201433256687

    const-wide v11, 0x3fee11f642522d1cL    # 0.9396926207859084

    const-wide v13, 0x3fea20c5861feb7dL    # 0.8165004367468637

    goto :goto_1

    .line 137
    :cond_2
    iget-wide v11, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    add-double/2addr v11, v9

    iput-wide v11, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide v9, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    const-wide v13, 0x3ffd2971f3ab5b39L    # 1.8226184385618593

    move-wide v11, v9

    .line 142
    :goto_1
    invoke-static/range {p1 .. p4}, Lorg/locationtech/proj4j/util/ProjectionMath;->distance(DD)D

    move-result-wide v15

    .line 143
    invoke-static/range {p1 .. p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const/16 v17, 0xa

    move-wide/from16 p1, v2

    move-wide/from16 v18, v15

    :goto_2
    if-lez v17, :cond_6

    const-wide v6, 0x3ffe5b201ddb1510L    # 1.8972474256746104

    div-double v6, v18, v6

    const-wide v2, 0x3ff95fd4481a6fabL    # 1.585895806935677

    .line 145
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v20, v6, v2

    move-wide/from16 v22, v2

    .line 146
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    move-wide/from16 v20, v6

    const-wide v6, 0x3fe42d88e97bc06aL    # 0.6305584488127469

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v24, 0x3ffd0ad2c7c63f7dL    # 1.8151424220741028

    sub-double v24, v24, v20

    mul-double v24, v24, v22

    move-wide/from16 v22, v2

    .line 147
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double v2, v22, v2

    const-wide v6, 0x3ff45c05149d9bb7L    # 1.27246578267089

    div-double/2addr v2, v6

    .line 146
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    cmpg-double v6, p1, v2

    if-gez v6, :cond_4

    if-eqz v8, :cond_3

    move-wide v6, v0

    goto :goto_3

    :cond_3
    neg-double v6, v0

    :goto_3
    add-double/2addr v2, v6

    .line 149
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v15

    goto :goto_4

    :cond_4
    move-wide/from16 v2, v18

    :goto_4
    sub-double v18, v18, v2

    .line 150
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v18, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v22, v6, v18

    if-gez v22, :cond_5

    move-wide/from16 v6, v20

    goto :goto_5

    :cond_5
    add-int/lit8 v17, v17, -0x1

    move-wide/from16 v18, v2

    move-wide/from16 v6, v20

    goto :goto_2

    :cond_6
    :goto_5
    if-eqz v17, :cond_8

    const-wide v2, 0x3fe42d88e97bc06aL    # 0.6305584488127469

    div-double/2addr v0, v2

    sub-double/2addr v13, v0

    .line 156
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v0, v0, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v2, v2, v15

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    iput-wide v0, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 157
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    div-double/2addr v11, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v9, v9, v2

    sub-double/2addr v11, v9

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    iput-wide v0, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    if-eqz v8, :cond_7

    const-wide v2, 0x3ffeb7c166fdfe3aL    # 1.9198621771937625

    sub-double/2addr v0, v2

    .line 159
    iput-wide v0, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v5

    :cond_7
    const-wide v2, -0x4029aace986a4944L    # -0.3489497672625068

    sub-double/2addr v2, v0

    .line 161
    iput-wide v2, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v5

    .line 154
    :cond_8
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    const-string v1, "I"

    invoke-direct {v0, v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 175
    const-string v0, "Bipolar Conic of Western Hemisphere"

    return-object v0
.end method
