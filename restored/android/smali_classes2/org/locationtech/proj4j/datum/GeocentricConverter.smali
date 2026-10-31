.class public Lorg/locationtech/proj4j/datum/GeocentricConverter;
.super Ljava/lang/Object;
.source "GeocentricConverter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:D

.field a2:D

.field b:D

.field b2:D

.field e2:D

.field ep2:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-wide p1, p0, Lorg/locationtech/proj4j/datum/GeocentricConverter;->a:D

    .line 69
    iput-wide p3, p0, Lorg/locationtech/proj4j/datum/GeocentricConverter;->b:D

    mul-double p1, p1, p1

    .line 70
    iput-wide p1, p0, Lorg/locationtech/proj4j/datum/GeocentricConverter;->a2:D

    mul-double p3, p3, p3

    .line 71
    iput-wide p3, p0, Lorg/locationtech/proj4j/datum/GeocentricConverter;->b2:D

    .line 72
    iput-wide p5, p0, Lorg/locationtech/proj4j/datum/GeocentricConverter;->e2:D

    sub-double/2addr p1, p3

    div-double/2addr p1, p3

    .line 73
    iput-wide p1, p0, Lorg/locationtech/proj4j/datum/GeocentricConverter;->ep2:D

    return-void
.end method

.method public constructor <init>(Lorg/locationtech/proj4j/datum/Ellipsoid;)V
    .locals 7

    .line 64
    invoke-virtual {p1}, Lorg/locationtech/proj4j/datum/Ellipsoid;->getA()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/locationtech/proj4j/datum/Ellipsoid;->getB()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/locationtech/proj4j/datum/Ellipsoid;->getEccentricitySquared()D

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/locationtech/proj4j/datum/GeocentricConverter;-><init>(DDD)V

    return-void
.end method


# virtual methods
.method public convertGeocentricToGeodetic(Lorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lorg/locationtech/proj4j/datum/GeocentricConverter;->convertGeocentricToGeodeticIter(Lorg/locationtech/proj4j/ProjCoordinate;)V

    return-void
.end method

.method public convertGeocentricToGeodeticIter(Lorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 167
    iget-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 168
    iget-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 169
    invoke-virtual {v1}, Lorg/locationtech/proj4j/ProjCoordinate;->hasValidZOrdinate()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-wide v9, v1, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    goto :goto_0

    :cond_0
    const-wide/16 v9, 0x0

    :goto_0
    mul-double v11, v2, v2

    mul-double v13, v4, v4

    add-double/2addr v11, v13

    .line 175
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    mul-double v15, v9, v9

    add-double/2addr v11, v15

    .line 176
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    .line 179
    iget-wide v7, v0, Lorg/locationtech/proj4j/datum/GeocentricConverter;->a:D

    div-double v17, v13, v7

    const-wide v19, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v6, v17, v19

    if-gez v6, :cond_2

    div-double v2, v11, v7

    cmpg-double v4, v2, v19

    if-gez v4, :cond_1

    .line 189
    iget-wide v2, v0, Lorg/locationtech/proj4j/datum/GeocentricConverter;->b:D

    neg-double v2, v2

    const-wide/16 v4, 0x0

    .line 190
    iput-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 191
    iput-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 192
    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    return-void

    :cond_1
    const-wide/16 v4, 0x0

    move-wide v7, v4

    goto :goto_1

    .line 198
    :cond_2
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    :goto_1
    div-double v2, v9, v11

    div-double v4, v13, v11

    .line 212
    iget-wide v11, v0, Lorg/locationtech/proj4j/datum/GeocentricConverter;->e2:D

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    sub-double v17, v15, v11

    mul-double v11, v11, v17

    mul-double v11, v11, v4

    mul-double v11, v11, v4

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    sub-double v11, v17, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    div-double v11, v17, v11

    move-wide/from16 v19, v2

    .line 213
    iget-wide v2, v0, Lorg/locationtech/proj4j/datum/GeocentricConverter;->e2:D

    sub-double v2, v17, v2

    mul-double v2, v2, v4

    mul-double v2, v2, v11

    mul-double v11, v11, v19

    const/4 v6, 0x0

    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v21, v2

    .line 221
    iget-wide v2, v0, Lorg/locationtech/proj4j/datum/GeocentricConverter;->a:D

    move-wide/from16 v23, v2

    iget-wide v2, v0, Lorg/locationtech/proj4j/datum/GeocentricConverter;->e2:D

    mul-double v2, v2, v11

    mul-double v2, v2, v11

    sub-double v2, v17, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double v2, v23, v2

    mul-double v23, v13, v21

    mul-double v25, v9, v11

    add-double v23, v23, v25

    move-wide/from16 v25, v2

    .line 224
    iget-wide v2, v0, Lorg/locationtech/proj4j/datum/GeocentricConverter;->e2:D

    mul-double v27, v2, v11

    mul-double v27, v27, v11

    sub-double v27, v17, v27

    mul-double v27, v27, v25

    move-wide/from16 v29, v2

    sub-double v2, v23, v27

    mul-double v23, v29, v25

    add-double v25, v25, v2

    div-double v23, v23, v25

    sub-double v25, v15, v23

    mul-double v25, v25, v23

    mul-double v25, v25, v4

    mul-double v25, v25, v4

    sub-double v25, v17, v25

    .line 227
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v25

    div-double v25, v17, v25

    sub-double v23, v17, v23

    mul-double v23, v23, v4

    mul-double v23, v23, v25

    mul-double v25, v25, v19

    mul-double v21, v21, v25

    mul-double v11, v11, v23

    sub-double v21, v21, v11

    mul-double v21, v21, v21

    const-wide v11, 0x3af357c299a88ea7L    # 1.0E-24

    cmpl-double v27, v21, v11

    if-lez v27, :cond_4

    const/16 v11, 0x1e

    if-lt v6, v11, :cond_3

    goto :goto_3

    :cond_3
    move-wide/from16 v2, v23

    move-wide/from16 v11, v25

    goto :goto_2

    .line 237
    :cond_4
    :goto_3
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    div-double v25, v25, v4

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    .line 239
    iput-wide v7, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 240
    iput-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 241
    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    return-void
.end method

.method public convertGeodeticToGeocentric(Lorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 14

    .line 101
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 102
    iget-wide v2, p1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 103
    invoke-virtual {p1}, Lorg/locationtech/proj4j/ProjCoordinate;->hasValidZOrdinate()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-wide v4, p1, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    const-wide v6, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v8, v2, v6

    if-gez v8, :cond_1

    const-wide v9, -0x4006d795924e300cL    # -1.5723671231216914

    cmpl-double v11, v2, v9

    if-lez v11, :cond_1

    :goto_1
    move-wide v2, v6

    goto :goto_2

    :cond_1
    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v9, v2, v6

    if-lez v9, :cond_2

    const-wide v10, 0x3ff9286a6db1cff4L    # 1.5723671231216914

    cmpg-double v12, v2, v10

    if-gez v12, :cond_2

    goto :goto_1

    :cond_2
    if-ltz v8, :cond_4

    if-gtz v9, :cond_4

    :goto_2
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    cmpl-double v8, v0, v6

    if-lez v8, :cond_3

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    sub-double/2addr v0, v6

    .line 128
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 129
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v8, v6, v6

    .line 131
    iget-wide v10, p0, Lorg/locationtech/proj4j/datum/GeocentricConverter;->a:D

    iget-wide v12, p0, Lorg/locationtech/proj4j/datum/GeocentricConverter;->e2:D

    mul-double v12, v12, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v12, v8, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    div-double/2addr v10, v12

    add-double v12, v10, v4

    mul-double v12, v12, v2

    .line 132
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v12

    .line 133
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v12, v12, v0

    .line 134
    iget-wide v0, p0, Lorg/locationtech/proj4j/datum/GeocentricConverter;->e2:D

    sub-double/2addr v8, v0

    mul-double v10, v10, v8

    add-double/2addr v10, v4

    mul-double v10, v10, v6

    .line 136
    iput-wide v2, p1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 137
    iput-wide v12, p1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 138
    iput-wide v10, p1, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    return-void

    .line 124
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Latitude is out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEqual(Lorg/locationtech/proj4j/datum/GeocentricConverter;)Z
    .locals 5

    .line 84
    iget-wide v0, p0, Lorg/locationtech/proj4j/datum/GeocentricConverter;->a:D

    iget-wide v2, p1, Lorg/locationtech/proj4j/datum/GeocentricConverter;->a:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lorg/locationtech/proj4j/datum/GeocentricConverter;->e2:D

    iget-wide v2, p1, Lorg/locationtech/proj4j/datum/GeocentricConverter;->e2:D

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public overrideWithWGS84Params()V
    .locals 3

    .line 77
    sget-object v0, Lorg/locationtech/proj4j/datum/Ellipsoid;->WGS84:Lorg/locationtech/proj4j/datum/Ellipsoid;

    invoke-virtual {v0}, Lorg/locationtech/proj4j/datum/Ellipsoid;->getA()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/locationtech/proj4j/datum/GeocentricConverter;->a:D

    .line 78
    invoke-virtual {v0}, Lorg/locationtech/proj4j/datum/Ellipsoid;->getEccentricitySquared()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/datum/GeocentricConverter;->e2:D

    return-void
.end method
