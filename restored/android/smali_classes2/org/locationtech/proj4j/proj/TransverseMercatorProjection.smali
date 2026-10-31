.class public Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;
.super Lorg/locationtech/proj4j/proj/CylindricalProjection;
.source "TransverseMercatorProjection.java"


# static fields
.field private static final FC1:D = 1.0

.field private static final FC2:D = 0.5

.field private static final FC3:D = 0.16666666666666666

.field private static final FC4:D = 0.08333333333333333

.field private static final FC5:D = 0.05

.field private static final FC6:D = 0.03333333333333333

.field private static final FC7:D = 0.023809523809523808

.field private static final FC8:D = 0.017857142857142856


# instance fields
.field private en:[D

.field private esp:D

.field protected isSouth:Z

.field private ml0:D

.field private utmZone:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 49
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/CylindricalProjection;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->isSouth:Z

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->utmZone:I

    .line 50
    sget-object v0, Lorg/locationtech/proj4j/datum/Ellipsoid;->GRS80:Lorg/locationtech/proj4j/datum/Ellipsoid;

    iput-object v0, p0, Lorg/locationtech/proj4j/proj/Projection;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide/16 v0, 0x0

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    const-wide v0, -0x3fa9800000000000L    # -90.0

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLongitude:D

    const-wide v0, 0x4056800000000000L    # 90.0

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLongitude:D

    .line 55
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->initialize()V

    return-void
.end method

.method public constructor <init>(Lorg/locationtech/proj4j/datum/Ellipsoid;DDDDD)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/CylindricalProjection;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->isSouth:Z

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->utmZone:I

    .line 62
    invoke-virtual {p0, p1}, Lorg/locationtech/proj4j/proj/Projection;->setEllipsoid(Lorg/locationtech/proj4j/datum/Ellipsoid;)V

    .line 63
    iput-wide p2, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    .line 64
    iput-wide p4, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    .line 65
    iput-wide p6, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    .line 66
    iput-wide p8, p0, Lorg/locationtech/proj4j/proj/Projection;->falseEasting:D

    .line 67
    iput-wide p10, p0, Lorg/locationtech/proj4j/proj/Projection;->falseNorthing:D

    .line 68
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->initialize()V

    return-void
.end method

.method public static getRowFromNearestParallel(D)I
    .locals 0

    .line 105
    invoke-static {p0, p1}, Lorg/locationtech/proj4j/util/ProjectionMath;->normalizeLatitude(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/locationtech/proj4j/util/ProjectionMath;->radToDeg(D)D

    move-result-wide p0

    double-to-int p0, p0

    const/16 p1, -0x50

    if-lt p0, p1, :cond_2

    const/16 p1, 0x54

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x50

    if-le p0, p1, :cond_1

    const/16 p0, 0x18

    return p0

    :cond_1
    add-int/2addr p0, p1

    .line 110
    div-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, 0x3

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getZoneFromNearestMeridian(D)I
    .locals 4

    .line 114
    invoke-static {p0, p1}, Lorg/locationtech/proj4j/util/ProjectionMath;->normalizeLongitude(D)D

    move-result-wide p0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    add-double/2addr p0, v0

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    mul-double p0, p0, v2

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    const/4 p1, 0x1

    add-int/2addr p0, p1

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    const/16 p1, 0x3c

    if-le p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 82
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;

    .line 83
    iget-object v1, p0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->en:[D

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->en:[D

    :cond_0
    return-object v0
.end method

.method public getSouthernHemisphere()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->isSouth:Z

    return v0
.end method

.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public initialize()V
    .locals 8

    .line 93
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    .line 94
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-eqz v0, :cond_0

    .line 95
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->esp:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    .line 96
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->ml0:D

    return-void

    .line 98
    :cond_0
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->enfn(D)[D

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->en:[D

    .line 99
    iget-wide v1, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget-wide v5, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    iget-object v7, p0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->en:[D

    invoke-static/range {v1 .. v7}, Lorg/locationtech/proj4j/util/ProjectionMath;->mlfn(DDD[D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->ml0:D

    .line 100
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->esp:D

    return-void
.end method

.method public isRectilinear()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 134
    iget-boolean v2, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-eqz v2, :cond_1

    .line 135
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 136
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v9, v9, v7

    .line 138
    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->ml0:D

    iget-wide v13, v0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    mul-double v11, v11, v13

    add-double v13, v9, v5

    sub-double v15, v5, v9

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    mul-double v11, v11, v13

    iput-wide v11, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 139
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v7, v7, v11

    mul-double v9, v9, v9

    sub-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double/2addr v7, v5

    .line 140
    invoke-static {v7, v8}, Lorg/locationtech/proj4j/util/ProjectionMath;->acos(D)D

    move-result-wide v5

    cmpg-double v2, p3, v3

    if-gez v2, :cond_0

    neg-double v5, v5

    .line 143
    :cond_0
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->esp:D

    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    sub-double/2addr v5, v7

    mul-double v2, v2, v5

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v1

    .line 146
    :cond_1
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .line 147
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 148
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v13, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpl-double v2, v7, v13

    if-lez v2, :cond_2

    div-double v3, v9, v11

    :cond_2
    mul-double v3, v3, v3

    mul-double v7, v11, p1

    mul-double v14, v7, v7

    move-wide/from16 v16, v5

    .line 152
    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    mul-double v5, v5, v9

    mul-double v5, v5, v9

    sub-double v5, v16, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double v5, v7, v5

    .line 153
    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->esp:D

    mul-double v7, v7, v11

    mul-double v18, v7, v11

    .line 154
    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    mul-double v20, v7, v5

    const-wide v22, 0x3fc5555555555555L    # 0.16666666666666666

    mul-double v22, v22, v14

    sub-double v24, v16, v3

    add-double v24, v24, v18

    const-wide v26, 0x3fa999999999999aL    # 0.05

    mul-double v26, v26, v14

    const-wide/high16 v28, 0x4032000000000000L    # 18.0

    sub-double v28, v3, v28

    mul-double v28, v28, v3

    const-wide/high16 v30, 0x4014000000000000L    # 5.0

    add-double v28, v28, v30

    const-wide/high16 v32, 0x402c000000000000L    # 14.0

    const-wide/high16 v34, 0x404d000000000000L    # 58.0

    mul-double v36, v3, v34

    sub-double v32, v32, v36

    mul-double v32, v32, v18

    add-double v28, v28, v32

    const-wide v32, 0x3f98618618618618L    # 0.023809523809523808

    mul-double v32, v32, v14

    const-wide v36, 0x4066600000000000L    # 179.0

    sub-double v36, v36, v3

    mul-double v36, v36, v3

    const-wide v38, 0x407df00000000000L    # 479.0

    sub-double v36, v36, v38

    mul-double v36, v36, v3

    const-wide v38, 0x404e800000000000L    # 61.0

    add-double v36, v36, v38

    mul-double v32, v32, v36

    add-double v28, v28, v32

    mul-double v26, v26, v28

    add-double v24, v24, v26

    mul-double v22, v22, v24

    add-double v22, v22, v16

    move-wide/from16 v24, v3

    mul-double v2, v20, v22

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 159
    iget-object v13, v0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->en:[D

    move-wide v2, v7

    move-wide/from16 v7, p3

    invoke-static/range {v7 .. v13}, Lorg/locationtech/proj4j/util/ProjectionMath;->mlfn(DDD[D)D

    move-result-wide v7

    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->ml0:D

    sub-double/2addr v7, v11

    mul-double v9, v9, v5

    mul-double v9, v9, p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v9, v9, v4

    const-wide v4, 0x3fb5555555555555L    # 0.08333333333333333

    mul-double v4, v4, v14

    sub-double v30, v30, v24

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    mul-double v11, v11, v18

    const-wide/high16 v20, 0x4022000000000000L    # 9.0

    add-double v11, v11, v20

    mul-double v11, v11, v18

    add-double v30, v30, v11

    const-wide v11, 0x3fa1111111111111L    # 0.03333333333333333

    mul-double v11, v11, v14

    sub-double v20, v24, v34

    mul-double v20, v20, v24

    add-double v20, v20, v38

    const-wide v22, 0x4074a00000000000L    # 330.0

    mul-double v22, v22, v24

    const-wide v26, 0x4070e00000000000L    # 270.0

    sub-double v26, v26, v22

    mul-double v18, v18, v26

    add-double v20, v20, v18

    const-wide v18, 0x3f92492492492492L    # 0.017857142857142856

    mul-double v14, v14, v18

    const-wide v18, 0x4080f80000000000L    # 543.0

    sub-double v18, v18, v24

    mul-double v18, v18, v24

    const-wide v22, 0x40a84e0000000000L    # 3111.0

    sub-double v18, v18, v22

    mul-double v18, v18, v24

    const-wide v22, 0x4095a40000000000L    # 1385.0

    add-double v18, v18, v22

    mul-double v14, v14, v18

    add-double v20, v20, v14

    mul-double v11, v11, v20

    add-double v30, v30, v11

    mul-double v4, v4, v30

    add-double v4, v4, v16

    mul-double v9, v9, v4

    add-double/2addr v7, v9

    mul-double v7, v7, v2

    iput-wide v7, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v1
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 170
    iget-boolean v2, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-eqz v2, :cond_1

    .line 171
    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    div-double v9, p1, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    div-double v11, v7, v9

    sub-double/2addr v9, v11

    mul-double v9, v9, v3

    .line 173
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    div-double v11, p3, v11

    add-double/2addr v2, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v11, v2, v2

    sub-double v11, v7, v11

    mul-double v13, v9, v9

    add-double/2addr v13, v7

    div-double/2addr v11, v13

    .line 174
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/locationtech/proj4j/util/ProjectionMath;->asin(D)D

    move-result-wide v7

    iput-wide v7, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    cmpg-double v4, p3, v5

    if-gez v4, :cond_0

    neg-double v4, v7

    .line 176
    iput-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 177
    :cond_0
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v1

    .line 181
    :cond_1
    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->ml0:D

    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    div-double v11, p3, v11

    add-double/2addr v9, v11

    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    iget-object v2, v0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->en:[D

    invoke-static {v9, v10, v11, v12, v2}, Lorg/locationtech/proj4j/util/ProjectionMath;->inv_mlfn(DD[D)D

    move-result-wide v9

    iput-wide v9, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 182
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v2, v9, v11

    if-ltz v2, :cond_3

    cmpg-double v2, p3, v5

    if-gez v2, :cond_2

    const-wide v11, -0x4006de04abbbd2e8L    # -1.5707963267948966

    .line 183
    :cond_2
    iput-wide v11, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 184
    iput-wide v5, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v1

    .line 186
    :cond_3
    iget-wide v9, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .line 187
    iget-wide v11, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 188
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpl-double v2, v13, v15

    if-lez v2, :cond_4

    div-double v5, v9, v11

    .line 189
    :cond_4
    iget-wide v13, v0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->esp:D

    mul-double v13, v13, v11

    mul-double v13, v13, v11

    move-wide v15, v3

    .line 190
    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    mul-double v3, v3, v9

    mul-double v3, v3, v9

    sub-double v2, v7, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    mul-double v9, v9, p1

    move-wide/from16 v17, v7

    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    div-double/2addr v9, v7

    mul-double v2, v2, v5

    mul-double v5, v5, v5

    mul-double v7, v9, v9

    move-wide/from16 p1, v2

    .line 194
    iget-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v19, p1, v7

    move-wide/from16 p1, v2

    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    sub-double v2, v17, v2

    div-double v19, v19, v2

    mul-double v19, v19, v15

    const-wide v2, 0x3fb5555555555555L    # 0.08333333333333333

    mul-double v2, v2, v7

    const-wide/high16 v15, 0x4022000000000000L    # 9.0

    mul-double v15, v15, v13

    const-wide/high16 v21, 0x4008000000000000L    # 3.0

    sub-double v21, v21, v15

    mul-double v21, v21, v5

    const-wide/high16 v15, 0x4014000000000000L    # 5.0

    add-double v21, v21, v15

    const-wide/high16 v23, 0x4010000000000000L    # 4.0

    mul-double v23, v23, v13

    sub-double v23, v17, v23

    mul-double v23, v23, v13

    add-double v21, v21, v23

    const-wide v23, 0x3fa1111111111111L    # 0.03333333333333333

    mul-double v23, v23, v7

    const-wide v25, 0x406f800000000000L    # 252.0

    mul-double v25, v25, v13

    const-wide v27, 0x4056800000000000L    # 90.0

    sub-double v27, v27, v25

    const-wide v25, 0x4046800000000000L    # 45.0

    mul-double v25, v25, v5

    add-double v27, v27, v25

    mul-double v27, v27, v5

    const-wide v25, 0x404e800000000000L    # 61.0

    add-double v27, v27, v25

    const-wide/high16 v29, 0x4047000000000000L    # 46.0

    mul-double v29, v29, v13

    add-double v27, v27, v29

    const-wide v29, 0x3f92492492492492L    # 0.017857142857142856

    mul-double v29, v29, v7

    const-wide v31, 0x4098980000000000L    # 1574.0

    mul-double v31, v31, v5

    const-wide v33, 0x40affe0000000000L    # 4095.0

    add-double v31, v31, v33

    mul-double v31, v31, v5

    const-wide v33, 0x40ac620000000000L    # 3633.0

    add-double v31, v31, v33

    mul-double v31, v31, v5

    const-wide v33, 0x4095a40000000000L    # 1385.0

    add-double v31, v31, v33

    mul-double v29, v29, v31

    sub-double v27, v27, v29

    mul-double v23, v23, v27

    sub-double v21, v21, v23

    mul-double v2, v2, v21

    sub-double v2, v17, v2

    mul-double v19, v19, v2

    sub-double v2, p1, v19

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide v2, 0x3fc5555555555555L    # 0.16666666666666666

    mul-double v2, v2, v7

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    mul-double v19, v19, v5

    add-double v19, v19, v17

    add-double v19, v19, v13

    const-wide v21, 0x3fa999999999999aL    # 0.05

    mul-double v21, v21, v7

    const-wide/high16 v23, 0x4038000000000000L    # 24.0

    mul-double v23, v23, v5

    const-wide/high16 v27, 0x403c000000000000L    # 28.0

    add-double v23, v23, v27

    const-wide/high16 v27, 0x4020000000000000L    # 8.0

    mul-double v27, v27, v13

    add-double v23, v23, v27

    mul-double v23, v23, v5

    add-double v23, v23, v15

    const-wide/high16 v15, 0x4018000000000000L    # 6.0

    mul-double v13, v13, v15

    add-double v23, v23, v13

    const-wide v13, 0x3f98618618618618L    # 0.023809523809523808

    mul-double v7, v7, v13

    const-wide v13, 0x4086800000000000L    # 720.0

    mul-double v13, v13, v5

    const-wide v15, 0x4094a00000000000L    # 1320.0

    add-double/2addr v13, v15

    mul-double v13, v13, v5

    const-wide v15, 0x4084b00000000000L    # 662.0

    add-double/2addr v13, v15

    mul-double v5, v5, v13

    add-double v5, v5, v25

    mul-double v7, v7, v5

    sub-double v23, v23, v7

    mul-double v21, v21, v23

    sub-double v19, v19, v21

    mul-double v2, v2, v19

    sub-double v7, v17, v2

    mul-double v9, v9, v7

    div-double/2addr v9, v11

    .line 200
    iput-wide v9, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v1
.end method

.method public setSouthernHemisphere(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->isSouth:Z

    return-void
.end method

.method public setUTMZone(I)V
    .locals 6

    .line 123
    iput p1, p0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->utmZone:I

    add-int/lit8 p1, p1, -0x1

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    div-double/2addr v0, v4

    sub-double/2addr v0, v2

    .line 125
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    const-wide/16 v0, 0x0

    .line 126
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    const-wide v2, 0x3feffcb923a29c78L    # 0.9996

    .line 127
    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    const-wide v2, 0x411e848000000000L    # 500000.0

    .line 128
    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->falseEasting:D

    .line 129
    iget-boolean p1, p0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->isSouth:Z

    if-eqz p1, :cond_0

    const-wide v0, 0x416312d000000000L    # 1.0E7

    :cond_0
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->falseNorthing:D

    .line 130
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->initialize()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 215
    iget v0, p0, Lorg/locationtech/proj4j/proj/TransverseMercatorProjection;->utmZone:I

    if-ltz v0, :cond_0

    .line 216
    const-string v0, "Universal Tranverse Mercator"

    return-object v0

    .line 217
    :cond_0
    const-string v0, "Transverse Mercator"

    return-object v0
.end method
