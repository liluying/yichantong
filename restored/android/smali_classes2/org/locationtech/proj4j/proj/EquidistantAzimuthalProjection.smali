.class public Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;
.super Lorg/locationtech/proj4j/proj/AzimuthalProjection;
.source "EquidistantAzimuthalProjection.java"


# static fields
.field private static final TOL:D = 1.0E-8


# instance fields
.field private G:D

.field private He:D

.field private M1:D

.field private Mp:D

.field private N1:D

.field private cosphi0:D

.field private en:[D

.field private geodesic:Lorg/locationtech/proj4j/geodesic/Geodesic;

.field private mode:I

.field private sinphi0:D


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide v0, 0x4056800000000000L    # 90.0

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/locationtech/proj4j/proj/AzimuthalProjection;-><init>(DD)V

    .line 48
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->initialize()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 52
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;

    .line 53
    iget-object v1, p0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->en:[D

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->en:[D

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
    .locals 15

    .line 59
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/AzimuthalProjection;->initialize()V

    .line 60
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    const-wide v10, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v12, v0, v10

    if-gez v12, :cond_2

    .line 61
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    cmpg-double v10, v0, v8

    if-gez v10, :cond_0

    const/4 v10, 0x2

    goto :goto_0

    :cond_0
    const/4 v10, 0x1

    :goto_0
    iput v10, p0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->mode:I

    cmpg-double v10, v0, v8

    if-gez v10, :cond_1

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_1

    :cond_1
    move-wide v0, v6

    .line 62
    :goto_1
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->sinphi0:D

    .line 63
    iput-wide v8, p0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->cosphi0:D

    goto :goto_2

    .line 64
    :cond_2
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v12, v0, v10

    if-gez v12, :cond_3

    .line 65
    iput v3, p0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->mode:I

    .line 66
    iput-wide v8, p0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->sinphi0:D

    .line 67
    iput-wide v6, p0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->cosphi0:D

    goto :goto_2

    .line 69
    :cond_3
    iput v2, p0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->mode:I

    .line 70
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->sinphi0:D

    .line 71
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->cosphi0:D

    .line 73
    :goto_2
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-nez v0, :cond_7

    .line 74
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->enfn(D)[D

    move-result-object v14

    iput-object v14, p0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->en:[D

    .line 75
    iget v0, p0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->mode:I

    if-eq v0, v4, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_4

    goto :goto_3

    .line 84
    :cond_4
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->sinphi0:D

    mul-double v0, v0, v2

    mul-double v0, v0, v2

    sub-double v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v6, v0

    iput-wide v6, p0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->N1:D

    .line 85
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->sinphi0:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    mul-double v0, v0, v2

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->G:D

    .line 86
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->cosphi0:D

    mul-double v2, v2, v0

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->He:D

    .line 87
    new-instance v0, Lorg/locationtech/proj4j/geodesic/Geodesic;

    iget-object v1, p0, Lorg/locationtech/proj4j/proj/Projection;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    invoke-virtual {v1}, Lorg/locationtech/proj4j/datum/Ellipsoid;->getA()D

    move-result-wide v1

    iget-object v3, p0, Lorg/locationtech/proj4j/proj/Projection;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    invoke-virtual {v3}, Lorg/locationtech/proj4j/datum/Ellipsoid;->getA()D

    move-result-wide v3

    iget-object v5, p0, Lorg/locationtech/proj4j/proj/Projection;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    .line 88
    invoke-virtual {v5}, Lorg/locationtech/proj4j/datum/Ellipsoid;->getB()D

    move-result-wide v5

    sub-double/2addr v3, v5

    iget-object v5, p0, Lorg/locationtech/proj4j/proj/Projection;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    invoke-virtual {v5}, Lorg/locationtech/proj4j/datum/Ellipsoid;->getA()D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/locationtech/proj4j/geodesic/Geodesic;-><init>(DD)V

    iput-object v0, p0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->geodesic:Lorg/locationtech/proj4j/geodesic/Geodesic;

    return-void

    :cond_5
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const-wide/16 v12, 0x0

    const-wide v8, -0x4006de04abbbd2e8L    # -1.5707963267948966

    .line 80
    invoke-static/range {v8 .. v14}, Lorg/locationtech/proj4j/util/ProjectionMath;->mlfn(DDD[D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->Mp:D

    return-void

    :cond_6
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/16 v12, 0x0

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 77
    invoke-static/range {v8 .. v14}, Lorg/locationtech/proj4j/util/ProjectionMath;->mlfn(DDD[D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->Mp:D

    :cond_7
    :goto_3
    return-void
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v8, p5

    .line 95
    iget-boolean v3, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-wide/16 v11, 0x0

    const/4 v7, 0x3

    if-eqz v3, :cond_8

    .line 98
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 99
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    const-wide v17, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 100
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 101
    iget v3, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->mode:I

    if-eq v3, v6, :cond_5

    if-eq v3, v5, :cond_6

    if-eq v3, v7, :cond_0

    if-eq v3, v4, :cond_0

    goto/16 :goto_2

    :cond_0
    if-ne v3, v7, :cond_1

    mul-double v1, v15, v9

    .line 105
    iput-wide v1, v8, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_0

    .line 107
    :cond_1
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->sinphi0:D

    mul-double v1, v1, v13

    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->cosphi0:D

    mul-double v3, v3, v15

    mul-double v3, v3, v9

    add-double/2addr v1, v3

    iput-wide v1, v8, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 108
    :goto_0
    iget-wide v1, v8, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v5, v1, v3

    if-gez v5, :cond_3

    .line 109
    iget-wide v1, v8, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    cmpg-double v3, v1, v11

    if-ltz v3, :cond_2

    .line 112
    iput-wide v11, v8, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iput-wide v11, v8, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v8

    .line 110
    :cond_2
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>()V

    throw v1

    .line 114
    :cond_3
    iget-wide v1, v8, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    iput-wide v1, v8, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 115
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    iput-wide v1, v8, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v1, v1, v15

    .line 116
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    iput-wide v1, v8, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 117
    iget-wide v1, v8, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iget v3, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->mode:I

    if-ne v3, v7, :cond_4

    goto :goto_1

    :cond_4
    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->cosphi0:D

    mul-double v3, v3, v13

    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->sinphi0:D

    mul-double v5, v5, v15

    mul-double v5, v5, v9

    sub-double v13, v3, v5

    :goto_1
    mul-double v1, v1, v13

    iput-wide v1, v8, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v8

    :cond_5
    neg-double v1, v1

    neg-double v9, v9

    :cond_6
    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v5, v1, v3

    .line 125
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v7, v5, v17

    if-ltz v7, :cond_7

    add-double/2addr v1, v3

    .line 127
    iput-wide v1, v8, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    iput-wide v1, v8, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 128
    iget-wide v1, v8, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v1, v1, v9

    iput-wide v1, v8, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v8

    .line 126
    :cond_7
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>()V

    throw v1

    :cond_8
    const-wide v17, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 134
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 135
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    .line 136
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    .line 137
    iget v3, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->mode:I

    if-eq v3, v6, :cond_b

    if-eq v3, v5, :cond_c

    if-eq v3, v7, :cond_9

    if-eq v3, v4, :cond_9

    :goto_2
    return-object v8

    .line 147
    :cond_9
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v5, v3, v17

    if-gez v5, :cond_a

    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    sub-double v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v5, v3, v17

    if-gez v5, :cond_a

    .line 148
    iput-wide v11, v8, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iput-wide v11, v8, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v8

    .line 152
    :cond_a
    iget-object v13, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->geodesic:Lorg/locationtech/proj4j/geodesic/Geodesic;

    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    .line 153
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    .line 154
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v16

    .line 155
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v18

    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    add-double v1, p1, v1

    .line 156
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v20

    .line 152
    invoke-virtual/range {v13 .. v21}, Lorg/locationtech/proj4j/geodesic/Geodesic;->Inverse(DDDD)Lorg/locationtech/proj4j/geodesic/GeodesicData;

    move-result-object v1

    .line 157
    iget-wide v2, v1, Lorg/locationtech/proj4j/geodesic/GeodesicData;->azi1:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 158
    iget-wide v4, v1, Lorg/locationtech/proj4j/geodesic/GeodesicData;->s12:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    iget-object v6, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->geodesic:Lorg/locationtech/proj4j/geodesic/Geodesic;

    invoke-virtual {v6}, Lorg/locationtech/proj4j/geodesic/Geodesic;->EquatorialRadius()D

    move-result-wide v6

    div-double/2addr v4, v6

    iput-wide v4, v8, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 159
    iget-wide v4, v1, Lorg/locationtech/proj4j/geodesic/GeodesicData;->s12:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double v4, v4, v1

    iget-object v1, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->geodesic:Lorg/locationtech/proj4j/geodesic/Geodesic;

    invoke-virtual {v1}, Lorg/locationtech/proj4j/geodesic/Geodesic;->EquatorialRadius()D

    move-result-wide v1

    div-double/2addr v4, v1

    iput-wide v4, v8, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v8

    :cond_b
    neg-double v9, v9

    .line 141
    :cond_c
    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->Mp:D

    iget-object v7, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->en:[D

    move-wide v5, v13

    move-wide v3, v15

    invoke-static/range {v1 .. v7}, Lorg/locationtech/proj4j/util/ProjectionMath;->mlfn(DDD[D)D

    move-result-wide v1

    sub-double/2addr v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 142
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    iput-wide v3, v8, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double v1, v1, v9

    .line 143
    iput-wide v1, v8, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v8
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    .line 167
    iget-boolean v6, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x3

    const-wide v10, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide/16 v12, 0x0

    if-eqz v6, :cond_8

    .line 170
    invoke-static/range {p1 .. p4}, Lorg/locationtech/proj4j/util/ProjectionMath;->distance(DD)D

    move-result-wide v14

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    cmpl-double v6, v14, v16

    if-lez v6, :cond_1

    sub-double/2addr v14, v10

    cmpl-double v6, v14, v16

    if-gtz v6, :cond_0

    move-wide/from16 v14, v16

    goto :goto_0

    .line 172
    :cond_0
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>()V

    throw v1

    :cond_1
    cmpg-double v6, v14, v10

    if-gez v6, :cond_2

    .line 175
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    iput-wide v1, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 176
    iput-wide v12, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v5

    .line 179
    :cond_2
    :goto_0
    iget v6, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->mode:I

    if-eq v6, v7, :cond_5

    if-ne v6, v9, :cond_3

    goto :goto_1

    :cond_3
    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-ne v6, v8, :cond_4

    sub-double/2addr v9, v14

    .line 194
    iput-wide v9, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    neg-double v3, v3

    .line 195
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    iput-wide v1, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v5

    :cond_4
    sub-double/2addr v14, v9

    .line 197
    iput-wide v14, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 198
    invoke-static/range {p1 .. p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    iput-wide v1, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v5

    .line 180
    :cond_5
    :goto_1
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 181
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 182
    iget v8, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->mode:I

    if-ne v8, v9, :cond_6

    mul-double v3, v3, v6

    div-double/2addr v3, v14

    .line 183
    invoke-static {v3, v4}, Lorg/locationtech/proj4j/util/ProjectionMath;->asin(D)D

    move-result-wide v3

    iput-wide v3, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v1, v1, v6

    mul-double v10, v10, v14

    move-wide/from16 v16, v12

    goto :goto_2

    .line 187
    :cond_6
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->sinphi0:D

    mul-double v8, v8, v10

    mul-double v3, v3, v6

    move-wide/from16 v16, v12

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->cosphi0:D

    mul-double v3, v3, v12

    div-double/2addr v3, v14

    add-double/2addr v8, v3

    invoke-static {v8, v9}, Lorg/locationtech/proj4j/util/ProjectionMath;->asin(D)D

    move-result-wide v3

    iput-wide v3, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 189
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->sinphi0:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v8, v8, v3

    sub-double/2addr v10, v8

    mul-double v10, v10, v14

    .line 190
    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->cosphi0:D

    mul-double v6, v6, v3

    mul-double v1, v1, v6

    :goto_2
    cmpl-double v3, v10, v16

    if-nez v3, :cond_7

    move-wide/from16 v12, v16

    goto :goto_3

    .line 192
    :cond_7
    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    :goto_3
    iput-wide v12, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v5

    :cond_8
    move-wide/from16 v16, v12

    .line 203
    invoke-static/range {p1 .. p4}, Lorg/locationtech/proj4j/util/ProjectionMath;->distance(DD)D

    move-result-wide v12

    cmpg-double v6, v12, v10

    if-gez v6, :cond_9

    .line 204
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    iput-wide v1, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    move-wide/from16 v1, v16

    .line 205
    iput-wide v1, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v5

    .line 208
    :cond_9
    iget v6, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->mode:I

    if-eq v6, v7, :cond_d

    if-ne v6, v9, :cond_a

    goto :goto_5

    :cond_a
    if-ne v6, v8, :cond_b

    .line 222
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->Mp:D

    sub-double/2addr v6, v12

    goto :goto_4

    :cond_b
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->Mp:D

    add-double/2addr v6, v12

    :goto_4
    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    iget-object v11, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->en:[D

    invoke-static {v6, v7, v9, v10, v11}, Lorg/locationtech/proj4j/util/ProjectionMath;->inv_mlfn(DD[D)D

    move-result-wide v6

    iput-wide v6, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 223
    iget v6, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->mode:I

    if-ne v6, v8, :cond_c

    neg-double v3, v3

    :cond_c
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    iput-wide v1, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v5

    .line 209
    :cond_d
    :goto_5
    iget-object v6, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->geodesic:Lorg/locationtech/proj4j/geodesic/Geodesic;

    invoke-virtual {v6}, Lorg/locationtech/proj4j/geodesic/Geodesic;->EquatorialRadius()D

    move-result-wide v6

    mul-double v1, v1, v6

    .line 210
    iget-object v6, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->geodesic:Lorg/locationtech/proj4j/geodesic/Geodesic;

    invoke-virtual {v6}, Lorg/locationtech/proj4j/geodesic/Geodesic;->EquatorialRadius()D

    move-result-wide v6

    mul-double v3, v3, v6

    .line 211
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    mul-double v1, v1, v1

    mul-double v3, v3, v3

    add-double/2addr v1, v3

    .line 212
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    .line 213
    iget-object v8, v0, Lorg/locationtech/proj4j/proj/EquidistantAzimuthalProjection;->geodesic:Lorg/locationtech/proj4j/geodesic/Geodesic;

    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    .line 214
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    .line 215
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    .line 216
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    .line 213
    invoke-virtual/range {v8 .. v16}, Lorg/locationtech/proj4j/geodesic/Geodesic;->Direct(DDDD)Lorg/locationtech/proj4j/geodesic/GeodesicData;

    move-result-object v1

    .line 218
    iget-wide v2, v1, Lorg/locationtech/proj4j/geodesic/GeodesicData;->lat2:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iput-wide v2, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 219
    iget-wide v1, v1, Lorg/locationtech/proj4j/geodesic/GeodesicData;->lon2:D

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 220
    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    sub-double/2addr v1, v3

    iput-wide v1, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 234
    const-string v0, "Equidistant Azimuthal"

    return-object v0
.end method
