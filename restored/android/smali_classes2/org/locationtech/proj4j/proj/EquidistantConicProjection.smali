.class public Lorg/locationtech/proj4j/proj/EquidistantConicProjection;
.super Lorg/locationtech/proj4j/proj/ConicProjection;
.source "EquidistantConicProjection.java"


# instance fields
.field private eccentricity:D

.field private eccentricity2:D

.field private eccentricity4:D

.field private eccentricity6:D

.field private f:D

.field private n:D

.field private northPole:Z

.field private radius:D

.field private rho0:D

.field private standardLatitude1:D

.field private standardLatitude2:D


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 42
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/ConicProjection;-><init>()V

    const-wide v0, 0x3fea53b6cbd987c6L    # 0.822719

    .line 33
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->eccentricity:D

    mul-double v0, v0, v0

    .line 34
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->eccentricity2:D

    mul-double v2, v0, v0

    .line 35
    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->eccentricity4:D

    mul-double v0, v0, v2

    .line 36
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->eccentricity6:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 37
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->radius:D

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 43
    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->degToRad(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLatitude:D

    const-wide v0, 0x4051800000000000L    # 70.0

    .line 44
    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->degToRad(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLatitude:D

    const-wide v0, -0x3fa9800000000000L    # -90.0

    .line 45
    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->degToRad(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLongitude:D

    const-wide v0, 0x4056800000000000L    # 90.0

    .line 46
    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->degToRad(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLongitude:D

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->standardLatitude1:D

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->standardLatitude2:D

    const-wide/16 v0, 0x0

    .line 50
    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->degToRad(D)D

    move-result-wide v3

    const-wide v0, 0x4042c00000000000L    # 37.5

    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->degToRad(D)D

    move-result-wide v5

    iget-wide v7, p0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->standardLatitude1:D

    iget-wide v9, p0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->standardLatitude2:D

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->initialize(DDDD)V

    return-void
.end method

.method private initialize(DDDD)V
    .locals 21

    move-object/from16 v0, p0

    .line 93
    invoke-super {v0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    const-wide/16 v1, 0x0

    cmpl-double v3, p3, v1

    if-lez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 96
    :goto_0
    iput-boolean v1, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->northPole:Z

    if-eqz v1, :cond_1

    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto :goto_1

    :cond_1
    const-wide v1, -0x4006de04abbbd2e8L    # -1.5707963267948966

    .line 97
    :goto_1
    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    mul-double v3, p5, v1

    const-wide v5, 0x3fe921fb54442d18L    # 0.7853981633974483

    sub-double v3, v5, v3

    .line 99
    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->eccentricity:D

    .line 100
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v7, v7, v9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v7, v9, v7

    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->eccentricity:D

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double v11, v11, v13

    add-double/2addr v11, v9

    div-double/2addr v7, v11

    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->eccentricity:D

    mul-double v11, v11, v1

    .line 99
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double/2addr v3, v7

    .line 101
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->eccentricity2:D

    .line 102
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    move-wide v15, v1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    mul-double v11, v11, v13

    sub-double v11, v9, v11

    .line 101
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    div-double/2addr v7, v11

    mul-double v11, p7, v15

    sub-double v11, v5, v11

    .line 103
    invoke-static {v11, v12}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    iget-wide v13, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->eccentricity:D

    .line 104
    invoke-static/range {p7 .. p8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v13, v13, v17

    sub-double v13, v9, v13

    move-wide/from16 v17, v5

    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->eccentricity:D

    invoke-static/range {p7 .. p8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v5, v5, v19

    add-double/2addr v5, v9

    div-double/2addr v13, v5

    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->eccentricity:D

    mul-double v5, v5, v15

    .line 103
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v11, v5

    .line 105
    invoke-static/range {p7 .. p8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    iget-wide v13, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->eccentricity2:D

    move-wide/from16 v19, v9

    .line 106
    invoke-static/range {p7 .. p8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double v13, v13, v1

    sub-double v9, v19, v13

    .line 105
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double/2addr v5, v1

    mul-double v1, p3, v15

    sub-double v1, v17, v1

    .line 107
    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->eccentricity:D

    .line 108
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double v9, v9, v13

    sub-double v9, v19, v9

    iget-wide v13, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->eccentricity:D

    .line 109
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v13, v13, v17

    add-double v13, v13, v19

    div-double/2addr v9, v13

    iget-wide v13, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->eccentricity:D

    mul-double v13, v13, v15

    .line 108
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    div-double/2addr v1, v9

    cmpl-double v9, p5, p7

    if-eqz v9, :cond_2

    .line 112
    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    sub-double/2addr v9, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    sub-double/2addr v5, v11

    div-double/2addr v9, v5

    iput-wide v9, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->n:D

    goto :goto_2

    .line 114
    :cond_2
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->n:D

    .line 116
    :goto_2
    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->n:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double v5, v5, v3

    div-double/2addr v7, v5

    iput-wide v7, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->f:D

    move-wide/from16 v3, p1

    .line 117
    iput-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    .line 118
    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->radius:D

    mul-double v3, v3, v7

    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->n:D

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double v3, v3, v1

    iput-wide v3, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->rho0:D

    return-void
.end method


# virtual methods
.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public inverseProject(Lorg/locationtech/proj4j/ProjCoordinate;Lorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 72
    iget-wide v3, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->rho0:D

    iget-wide v7, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    sub-double/2addr v5, v7

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    .line 73
    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->n:D

    div-double/2addr v3, v5

    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    add-double/2addr v3, v5

    iput-wide v3, v2, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 75
    iget-wide v3, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double v3, v3, v3

    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->rho0:D

    iget-wide v7, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    sub-double v9, v5, v7

    sub-double/2addr v5, v7

    mul-double v9, v9, v5

    add-double/2addr v3, v9

    .line 76
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 77
    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->n:D

    const-wide/16 v7, 0x0

    cmpg-double v1, v5, v7

    if-gez v1, :cond_0

    neg-double v3, v3

    .line 79
    :cond_0
    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->radius:D

    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->f:D

    mul-double v9, v9, v11

    div-double/2addr v3, v9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    div-double v5, v9, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    .line 80
    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v5, v5, v11

    const-wide v13, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v5, v13, v5

    const/4 v1, 0x0

    move-wide v15, v9

    move-wide/from16 v17, v15

    :goto_0
    const/16 v9, 0x64

    if-ge v1, v9, :cond_1

    const-wide v9, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v19, v15, v9

    if-lez v19, :cond_1

    .line 83
    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->eccentricity:D

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v7, v7, v9

    sub-double v9, v17, v7

    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->eccentricity:D

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double v7, v7, v15

    add-double v7, v7, v17

    div-double/2addr v9, v7

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    .line 84
    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->eccentricity:D

    mul-double v7, v7, v15

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double v7, v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    mul-double v7, v7, v11

    sub-double v7, v13, v7

    .line 85
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    sub-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    add-int/lit8 v1, v1, 0x1

    move-wide v5, v7

    goto :goto_0

    .line 88
    :cond_1
    iput-wide v7, v2, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v2
.end method

.method public project(Lorg/locationtech/proj4j/ProjCoordinate;Lorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 12

    .line 54
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->normalizeLongitude(D)D

    move-result-wide v0

    .line 55
    iget-wide v2, p1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 58
    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->eccentricity:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v4, v6, v4

    iget-wide v8, p0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->eccentricity:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v8, v8, v10

    add-double/2addr v8, v6

    div-double/2addr v4, v8

    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->eccentricity:D

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v6, 0x3fe921fb54442d18L    # 0.7853981633974483

    mul-double v2, v2, v8

    sub-double/2addr v6, v2

    .line 59
    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmpl-double p1, v2, v6

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    div-double/2addr v2, v4

    .line 60
    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->n:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 61
    :goto_0
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->radius:D

    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->f:D

    mul-double v2, v2, v4

    mul-double v2, v2, v6

    .line 62
    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->n:D

    mul-double v4, v4, v0

    .line 64
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, v2

    iput-wide v0, p2, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 65
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/EquidistantConicProjection;->rho0:D

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 126
    const-string v0, "Equidistant Conic"

    return-object v0
.end method
