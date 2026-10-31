.class public Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "GeostationarySatelliteProjection.java"


# instance fields
.field private _c:D

.field private _radiusG:D

.field private _radiusG1:D

.field private _radiusP:D

.field private _radiusP2:D

.field private _radiusPInv2:D

.field protected heightOfOrbit:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    const-wide v0, 0x4181106338000000L    # 3.5785831E7

    .line 22
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->heightOfOrbit:D

    .line 35
    const-string v0, "Geostationary"

    iput-object v0, p0, Lorg/locationtech/proj4j/proj/Projection;->name:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->initialize()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 214
    :cond_0
    instance-of v1, p1, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 215
    move-object v1, p1

    check-cast v1, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;

    .line 216
    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->heightOfOrbit:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->heightOfOrbit:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lorg/locationtech/proj4j/proj/Projection;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getHeightOfOrbit()D
    .locals 2

    .line 56
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->heightOfOrbit:D

    return-wide v0
.end method

.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 223
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->heightOfOrbit:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 4

    .line 41
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    .line 42
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->heightOfOrbit:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->a:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusG1:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusG:D

    mul-double v0, v0, v0

    sub-double/2addr v0, v2

    .line 43
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_c:D

    .line 44
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-nez v0, :cond_0

    .line 45
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusP:D

    .line 46
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusP2:D

    .line 47
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->rone_es:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusPInv2:D

    return-void

    .line 49
    :cond_0
    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusPInv2:D

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusP2:D

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusP:D

    return-void
.end method

.method public isEqualArea()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 1

    .line 66
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual/range {p0 .. p5}, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->project_s(DDLorg/locationtech/proj4j/ProjCoordinate;)V

    return-object p5

    .line 69
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->project_e(DDLorg/locationtech/proj4j/ProjCoordinate;)V

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 1

    .line 123
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual/range {p0 .. p5}, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->projectInverse_s(DDLorg/locationtech/proj4j/ProjCoordinate;)V

    return-object p5

    .line 126
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->projectInverse_e(DDLorg/locationtech/proj4j/ProjCoordinate;)V

    return-object p5
.end method

.method public projectInverse_e(DDLorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 165
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusG1:D

    div-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    .line 166
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusG1:D

    div-double v4, p3, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, v2, v3}, Lorg/locationtech/proj4j/util/ProjectionMath;->hypot(DD)D

    move-result-wide v8

    mul-double v4, v4, v8

    .line 169
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusP:D

    div-double v8, v4, v8

    mul-double v10, v2, v2

    mul-double v8, v8, v8

    add-double/2addr v10, v8

    add-double/2addr v10, v6

    .line 171
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusG:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v8

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    mul-double v6, v6, v12

    mul-double v14, v6, v6

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    mul-double v16, v16, v10

    move-wide/from16 p1, v8

    .line 172
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_c:D

    mul-double v16, v16, v8

    sub-double v14, v14, v16

    const-wide/16 v8, 0x0

    cmpg-double v16, v14, v8

    if-ltz v16, :cond_0

    neg-double v6, v6

    .line 177
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double v10, v10, p1

    div-double/2addr v6, v10

    .line 178
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusG:D

    mul-double v12, v12, v6

    add-double/2addr v8, v12

    mul-double v2, v2, v6

    mul-double v4, v4, v6

    .line 183
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 184
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    .line 185
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusPInv2:D

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    .line 187
    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 188
    iput-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-void

    .line 173
    :cond_0
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>()V

    throw v1
.end method

.method public projectInverse_s(DDLorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 136
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusG:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    div-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    .line 137
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusG:D

    sub-double/2addr v6, v4

    div-double v6, p3, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double v8, v2, v2

    add-double v10, v8, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double v6, v6, v10

    mul-double v10, v6, v6

    add-double/2addr v8, v10

    add-double/2addr v8, v4

    .line 141
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusG:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v10

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    mul-double v4, v4, v12

    mul-double v14, v4, v4

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    mul-double v16, v16, v8

    move-wide/from16 p1, v10

    .line 142
    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_c:D

    mul-double v16, v16, v10

    sub-double v14, v14, v16

    const-wide/16 v10, 0x0

    cmpg-double v16, v14, v10

    if-ltz v16, :cond_0

    neg-double v4, v4

    .line 147
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    sub-double/2addr v4, v10

    mul-double v8, v8, p1

    div-double/2addr v4, v8

    .line 148
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusG:D

    mul-double v12, v12, v4

    add-double/2addr v8, v12

    mul-double v2, v2, v4

    mul-double v6, v6, v4

    .line 153
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 154
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v6, v6, v4

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    .line 156
    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 157
    iput-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-void

    .line 143
    :cond_0
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>()V

    throw v1
.end method

.method public project_e(DDLorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 10

    .line 98
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusP2:D

    invoke-static {p3, p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide p3

    mul-double v0, v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p3

    .line 102
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusP:D

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/locationtech/proj4j/util/ProjectionMath;->hypot(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 103
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    .line 104
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double p1, p1, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double p1, p1, v4

    .line 105
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double v0, v0, p3

    .line 108
    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusG:D

    sub-double v4, p3, v2

    mul-double v4, v4, v2

    mul-double v6, p1, p1

    sub-double/2addr v4, v6

    mul-double v6, v0, v0

    iget-wide v8, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusPInv2:D

    mul-double v6, v6, v8

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v8, v4, v6

    if-gez v8, :cond_0

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 109
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 110
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-void

    :cond_0
    sub-double/2addr p3, v2

    .line 117
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusG1:D

    div-double v4, p1, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    iput-wide v2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 118
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusG1:D

    invoke-static {p1, p2, p3, p4}, Lorg/locationtech/proj4j/util/ProjectionMath;->hypot(DD)D

    move-result-wide p1

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    mul-double v2, v2, p1

    iput-wide v2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-void
.end method

.method public project_s(DDLorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 9

    .line 77
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 78
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    .line 79
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double p1, p1, v0

    .line 80
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    .line 83
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusG:D

    sub-double v4, v0, v2

    mul-double v4, v4, v2

    mul-double v6, p1, p1

    sub-double/2addr v4, v6

    mul-double v6, p3, p3

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v8, v4, v6

    if-gez v8, :cond_0

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 84
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 85
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-void

    :cond_0
    sub-double/2addr v0, v2

    .line 92
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusG1:D

    div-double v4, p1, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    iput-wide v2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 93
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->_radiusG1:D

    invoke-static {p1, p2, v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->hypot(DD)D

    move-result-wide p1

    div-double/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    mul-double v2, v2, p1

    iput-wide v2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-void
.end method

.method public setHeightOfOrbit(D)V
    .locals 0

    .line 61
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/GeostationarySatelliteProjection;->heightOfOrbit:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 206
    const-string v0, "Geostationary Satellite"

    return-object v0
.end method
