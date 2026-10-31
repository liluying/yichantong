.class public Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;
.super Lorg/locationtech/proj4j/proj/CylindricalProjection;
.source "ObliqueMercatorProjection.java"


# static fields
.field private static final TOL:D = 1.0E-7


# instance fields
.field private Gamma:D

.field private al:D

.field private bl:D

.field private cosgam:D

.field private cosrot:D

.field private el:D

.field private ellips:Z

.field private lam1:D

.field private lam2:D

.field private lamc:D

.field private no_uoff:Z

.field private phi1:D

.field private phi2:D

.field private rot:Z

.field private singam:D

.field private sinrot:D

.field private u_0:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 39
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/CylindricalProjection;-><init>()V

    .line 40
    sget-object v0, Lorg/locationtech/proj4j/datum/Ellipsoid;->WGS84:Lorg/locationtech/proj4j/datum/Ellipsoid;

    iput-object v0, p0, Lorg/locationtech/proj4j/proj/Projection;->ellipsoid:Lorg/locationtech/proj4j/datum/Ellipsoid;

    const-wide/16 v0, 0x0

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    const-wide/high16 v0, -0x3fb2000000000000L    # -60.0

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLongitude:D

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLongitude:D

    const-wide/high16 v0, -0x3fac000000000000L    # -80.0

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLatitude:D

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLatitude:D

    const-wide v0, -0x3fb9800000000000L    # -45.0

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->alpha:D

    .line 48
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->initialize()V

    return-void
.end method

.method public constructor <init>(Lorg/locationtech/proj4j/datum/Ellipsoid;DDDDDD)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/CylindricalProjection;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lorg/locationtech/proj4j/proj/Projection;->setEllipsoid(Lorg/locationtech/proj4j/datum/Ellipsoid;)V

    .line 56
    iput-wide p2, p0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->lamc:D

    .line 57
    iput-wide p4, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    .line 58
    iput-wide p6, p0, Lorg/locationtech/proj4j/proj/Projection;->alpha:D

    .line 59
    iput-wide p8, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    .line 60
    iput-wide p10, p0, Lorg/locationtech/proj4j/proj/Projection;->falseEasting:D

    .line 61
    iput-wide p12, p0, Lorg/locationtech/proj4j/proj/Projection;->falseNorthing:D

    .line 62
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->initialize()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 251
    :cond_0
    instance-of v1, p1, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 252
    move-object v1, p1

    check-cast v1, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;

    .line 253
    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->Gamma:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->Gamma:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->alpha:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/Projection;->alpha:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->lonc:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/Projection;->lonc:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    .line 257
    invoke-super {p0, p1}, Lorg/locationtech/proj4j/proj/Projection;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 264
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->Gamma:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Lorg/locationtech/proj4j/proj/Projection;->alpha:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->lonc:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 26

    move-object/from16 v0, p0

    .line 66
    invoke-super {v0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    const/4 v1, 0x1

    .line 70
    iput-boolean v1, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->rot:Z

    .line 71
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/Projection;->lonc:D

    iput-wide v2, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->lamc:D

    .line 74
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/Projection;->alpha:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    .line 76
    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->Gamma:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide v6, 0x3e7ad7f29abcaf48L    # 1.0E-7

    if-nez v2, :cond_1

    .line 78
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/Projection;->alpha:D

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v10, v8, v6

    if-lez v10, :cond_0

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    .line 79
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    sub-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v10, v8, v6

    if-lez v10, :cond_0

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/Projection;->alpha:D

    .line 80
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    sub-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v10, v8, v6

    if-lez v10, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    const-string v2, "Obl 1"

    invoke-direct {v1, v2}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_1
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->phi1:D

    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->phi2:D

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v10, v8, v6

    if-lez v10, :cond_12

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->phi1:D

    .line 84
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v10, v8, v6

    if-lez v10, :cond_12

    sub-double/2addr v8, v4

    .line 85
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v10, v8, v6

    if-lez v10, :cond_12

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    .line 86
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    sub-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v10, v8, v6

    if-lez v10, :cond_12

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->phi2:D

    .line 87
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    sub-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v10, v8, v6

    if-lez v10, :cond_12

    .line 89
    :goto_0
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_3

    move-wide v10, v6

    goto :goto_2

    :cond_3
    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 90
    :goto_2
    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v12, v14

    if-lez v1, :cond_8

    .line 91
    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    .line 92
    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 93
    iget-boolean v1, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-nez v1, :cond_4

    .line 94
    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    mul-double v18, v14, v20

    mul-double v18, v18, v20

    sub-double v18, v6, v18

    move-wide/from16 v24, v4

    mul-double v4, v12, v12

    .line 95
    iput-wide v4, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    mul-double v14, v14, v4

    mul-double v14, v14, v4

    .line 96
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    div-double/2addr v14, v4

    add-double/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iput-wide v4, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    .line 97
    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    mul-double v14, v14, v4

    mul-double v14, v14, v10

    div-double v14, v14, v18

    iput-wide v14, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->al:D

    mul-double v4, v4, v10

    .line 98
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double v12, v12, v10

    div-double/2addr v4, v12

    goto :goto_3

    :cond_4
    move-wide/from16 v24, v4

    .line 100
    iput-wide v6, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    .line 101
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    iput-wide v4, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->al:D

    div-double v4, v6, v12

    :goto_3
    mul-double v10, v4, v4

    sub-double/2addr v10, v6

    cmpg-double v1, v10, v8

    if-gtz v1, :cond_5

    move-wide v10, v8

    goto :goto_4

    .line 107
    :cond_5
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 108
    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    cmpg-double v1, v12, v8

    if-gez v1, :cond_6

    neg-double v10, v10

    :cond_6
    :goto_4
    add-double/2addr v10, v4

    .line 111
    iput-wide v10, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->el:D

    .line 112
    iget-boolean v1, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-nez v1, :cond_7

    .line 113
    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    move-wide/from16 v18, v12

    move-wide/from16 v22, v14

    invoke-static/range {v18 .. v23}, Lorg/locationtech/proj4j/util/ProjectionMath;->tsfn(DDD)D

    move-result-wide v12

    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double v12, v12, v10

    iput-wide v12, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->el:D

    goto :goto_5

    .line 115
    :cond_7
    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    sub-double v12, v24, v12

    mul-double v12, v12, v16

    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    mul-double v12, v12, v10

    iput-wide v12, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->el:D

    goto :goto_5

    :cond_8
    move-wide/from16 v24, v4

    div-double v4, v6, v10

    .line 117
    iput-wide v4, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    .line 118
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    iput-wide v4, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->al:D

    .line 119
    iput-wide v6, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->el:D

    move-wide v4, v6

    move-wide v10, v4

    :goto_5
    if-eqz v2, :cond_9

    if-nez v3, :cond_a

    :cond_9
    move-wide/from16 v22, v6

    goto/16 :goto_8

    .line 134
    :cond_a
    iget-boolean v1, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-nez v1, :cond_b

    .line 135
    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->phi1:D

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    invoke-static/range {v10 .. v15}, Lorg/locationtech/proj4j/util/ProjectionMath;->tsfn(DDD)D

    move-result-wide v1

    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 136
    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->phi2:D

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    invoke-static/range {v10 .. v15}, Lorg/locationtech/proj4j/util/ProjectionMath;->tsfn(DDD)D

    move-result-wide v10

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    goto :goto_6

    .line 138
    :cond_b
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->phi1:D

    sub-double v1, v24, v1

    mul-double v1, v1, v16

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    .line 139
    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->phi2:D

    sub-double v10, v24, v10

    mul-double v10, v10, v16

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    .line 141
    :goto_6
    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->el:D

    div-double v14, v12, v1

    sub-double v18, v10, v1

    add-double v20, v10, v1

    div-double v18, v18, v20

    mul-double v12, v12, v12

    mul-double v10, v10, v1

    sub-double v1, v12, v10

    add-double/2addr v12, v10

    div-double/2addr v1, v12

    .line 145
    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->lam1:D

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->lam2:D

    sub-double v20, v10, v12

    const-wide v22, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide v24, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v3, v20, v22

    if-gez v3, :cond_c

    sub-double v12, v12, v24

    .line 146
    iput-wide v12, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->lam2:D

    goto :goto_7

    :cond_c
    const-wide v22, 0x400921fb54442d18L    # Math.PI

    cmpl-double v3, v20, v22

    if-lez v3, :cond_d

    add-double v12, v12, v24

    .line 148
    iput-wide v12, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->lam2:D

    .line 149
    :cond_d
    :goto_7
    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->lam2:D

    add-double v20, v10, v12

    mul-double v20, v20, v16

    move-wide/from16 v22, v6

    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    mul-double v6, v6, v16

    sub-double/2addr v10, v12

    mul-double v6, v6, v10

    .line 150
    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double v1, v1, v6

    div-double v1, v1, v18

    .line 149
    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    div-double/2addr v1, v6

    sub-double v20, v20, v1

    invoke-static/range {v20 .. v21}, Lorg/locationtech/proj4j/util/ProjectionMath;->normalizeLongitude(D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    .line 151
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->lam1:D

    sub-double/2addr v10, v1

    invoke-static {v10, v11}, Lorg/locationtech/proj4j/util/ProjectionMath;->normalizeLongitude(D)D

    move-result-wide v1

    mul-double v6, v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v1, v1, v6

    div-double v6, v22, v14

    sub-double/2addr v14, v6

    div-double/2addr v1, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    .line 153
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    iput-wide v6, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->Gamma:D

    .line 154
    iput-wide v6, v0, Lorg/locationtech/proj4j/proj/Projection;->alpha:D

    goto :goto_a

    :goto_8
    if-nez v2, :cond_e

    .line 123
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->alpha:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    div-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    if-eqz v3, :cond_f

    .line 125
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/Projection;->alpha:D

    iput-wide v6, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->Gamma:D

    goto :goto_9

    .line 128
    :cond_e
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->Gamma:D

    .line 129
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    iput-wide v6, v0, Lorg/locationtech/proj4j/proj/Projection;->alpha:D

    .line 131
    :cond_f
    :goto_9
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->lamc:D

    div-double v12, v22, v10

    sub-double/2addr v10, v12

    mul-double v10, v10, v16

    .line 132
    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    mul-double v10, v10, v12

    .line 131
    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    div-double/2addr v10, v12

    sub-double/2addr v6, v10

    iput-wide v6, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    .line 156
    :goto_a
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iput-wide v6, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->singam:D

    .line 157
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->cosgam:D

    .line 158
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->Gamma:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->sinrot:D

    .line 159
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->Gamma:D

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->cosrot:D

    .line 161
    iget-boolean v1, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->no_uoff:Z

    if-eqz v1, :cond_10

    move-wide v1, v8

    goto :goto_b

    :cond_10
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->al:D

    mul-double v4, v4, v4

    sub-double v4, v4, v22

    .line 162
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->cosrot:D

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    :goto_b
    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->u_0:D

    .line 163
    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    cmpg-double v5, v3, v8

    if-gez v5, :cond_11

    neg-double v1, v1

    .line 164
    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->u_0:D

    :cond_11
    return-void

    .line 87
    :cond_12
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    const-string v2, "Obl 2"

    invoke-direct {v1, v2}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 178
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    mul-double v2, v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 179
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide v14, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v16, v4, v14

    if-gtz v16, :cond_1

    cmpg-double v2, p3, v8

    if-gez v2, :cond_0

    .line 180
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->singam:D

    neg-double v2, v2

    goto :goto_0

    :cond_0
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->singam:D

    .line 181
    :goto_0
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->al:D

    mul-double v4, v4, p3

    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    div-double/2addr v4, v6

    move-wide/from16 v16, v10

    move-wide/from16 v20, v12

    goto/16 :goto_3

    .line 183
    :cond_1
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->el:D

    move-wide/from16 v16, v6

    iget-boolean v6, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-nez v6, :cond_2

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    move-wide/from16 v18, p3

    move-wide/from16 v22, v6

    invoke-static/range {v18 .. v23}, Lorg/locationtech/proj4j/util/ProjectionMath;->tsfn(DDD)D

    move-result-wide v6

    move-wide/from16 v18, v8

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    goto :goto_1

    :cond_2
    move-wide/from16 v18, v8

    sub-double v6, v16, p3

    mul-double v6, v6, v10

    .line 184
    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    :goto_1
    div-double/2addr v4, v6

    div-double v6, v12, v4

    sub-double v8, v4, v6

    mul-double v8, v8, v10

    move-wide/from16 v16, v10

    .line 186
    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->singam:D

    mul-double v10, v10, v8

    move-wide/from16 v20, v12

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->cosgam:D

    mul-double v12, v12, v2

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v10, v10, v12

    add-double/2addr v4, v6

    div-double v4, v10, v4

    .line 187
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    mul-double v6, v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 188
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v22, v10, v12

    if-ltz v22, :cond_4

    .line 189
    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->al:D

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->cosgam:D

    mul-double v8, v8, v12

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->singam:D

    mul-double v2, v2, v12

    add-double/2addr v8, v2

    div-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    mul-double v10, v10, v2

    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    div-double v8, v10, v2

    cmpg-double v10, v6, v18

    if-gez v10, :cond_3

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    .line 191
    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->al:D

    mul-double v10, v10, v6

    div-double/2addr v10, v2

    add-double v2, v8, v10

    :goto_2
    move-wide/from16 v24, v4

    move-wide v4, v2

    move-wide/from16 v2, v24

    goto :goto_3

    :cond_3
    move-wide v2, v4

    move-wide v4, v8

    goto :goto_3

    .line 193
    :cond_4
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->al:D

    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    mul-double v2, v2, v6

    mul-double v2, v2, p1

    goto :goto_2

    .line 195
    :goto_3
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    sub-double v6, v6, v20

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v8, v6, v14

    if-lez v8, :cond_6

    .line 196
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->al:D

    mul-double v6, v6, v16

    sub-double v12, v20, v2

    add-double v2, v2, v20

    div-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double v6, v6, v2

    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    div-double/2addr v6, v2

    .line 197
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->u_0:D

    sub-double/2addr v4, v2

    .line 198
    iget-boolean v2, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->rot:Z

    if-nez v2, :cond_5

    .line 199
    iput-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 200
    iput-wide v6, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v1

    .line 202
    :cond_5
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->cosrot:D

    mul-double v8, v6, v2

    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->sinrot:D

    mul-double v12, v4, v10

    add-double/2addr v8, v12

    iput-wide v8, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double v4, v4, v2

    mul-double v6, v6, v10

    sub-double/2addr v4, v6

    .line 203
    iput-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v1

    .line 195
    :cond_6
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    const-string v2, "Obl 3"

    invoke-direct {v1, v2}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 211
    iget-boolean v2, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->rot:Z

    if-nez v2, :cond_0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    goto :goto_0

    .line 215
    :cond_0
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->cosrot:D

    mul-double v4, p1, v2

    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->sinrot:D

    mul-double v8, p3, v6

    sub-double/2addr v4, v8

    mul-double v2, v2, p3

    mul-double v6, v6, p1

    add-double/2addr v2, v6

    .line 218
    :goto_0
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->u_0:D

    add-double/2addr v2, v6

    .line 219
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    neg-double v6, v6

    mul-double v6, v6, v4

    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->al:D

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v8, v6, v4

    sub-double v10, v4, v8

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v10, v10, v12

    .line 221
    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    mul-double v12, v12, v2

    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->al:D

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 222
    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->cosgam:D

    mul-double v14, v14, v12

    move-wide/from16 p1, v6

    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->singam:D

    mul-double v6, v6, v10

    add-double/2addr v14, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v6

    add-double/2addr v4, v8

    div-double/2addr v14, v4

    .line 223
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    sub-double v4, v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v8, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpg-double v18, v4, v8

    if-gez v18, :cond_2

    const-wide/16 v2, 0x0

    .line 224
    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    cmpg-double v4, v14, v2

    if-gez v4, :cond_1

    const-wide v16, -0x4006de04abbbd2e8L    # -1.5707963267948966

    :cond_1
    move-wide/from16 v2, v16

    .line 225
    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v1

    .line 227
    :cond_2
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->el:D

    add-double v8, v14, p1

    sub-double v14, p1, v14

    div-double/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double/2addr v4, v8

    iput-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 228
    iget-boolean v8, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-nez v8, :cond_3

    .line 229
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    div-double v6, p1, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    invoke-static {v4, v5, v6, v7}, Lorg/locationtech/proj4j/util/ProjectionMath;->phi2(DD)D

    move-result-wide v4

    iput-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_1

    .line 231
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    mul-double v4, v4, v6

    sub-double v4, v16, v4

    iput-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 232
    :goto_1
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->cosgam:D

    mul-double v10, v10, v4

    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->singam:D

    mul-double v12, v12, v4

    sub-double/2addr v10, v12

    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    mul-double v4, v4, v2

    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->al:D

    div-double/2addr v4, v2

    .line 233
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 232
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    neg-double v2, v2

    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->bl:D

    div-double/2addr v2, v4

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v1
.end method

.method public setGamma(D)V
    .locals 0

    .line 168
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->Gamma:D

    return-void
.end method

.method public setNoUoff(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lorg/locationtech/proj4j/proj/ObliqueMercatorProjection;->no_uoff:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 243
    const-string v0, "Oblique Mercator"

    return-object v0
.end method
