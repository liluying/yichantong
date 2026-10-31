.class public Lorg/locationtech/proj4j/proj/KrovakProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "KrovakProjection.java"


# instance fields
.field private ad:D

.field private alfa:D

.field czech:Z

.field private k:D

.field private n:D

.field private ro0:D

.field private s0:D

.field private s45:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lorg/locationtech/proj4j/proj/KrovakProjection;->czech:Z

    const-wide/high16 v0, -0x3fb2000000000000L    # -60.0

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLatitude:D

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLatitude:D

    const-wide v0, -0x3fa9800000000000L    # -90.0

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLongitude:D

    const-wide v0, 0x4056800000000000L    # 90.0

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLongitude:D

    .line 43
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/KrovakProjection;->initialize()V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 21

    move-object/from16 v0, p0

    .line 48
    invoke-super {v0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    const-wide v1, 0x3fe921fb54442d15L    # 0.785398163397448

    .line 52
    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->s45:D

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double v1, v1, v3

    .line 54
    iget-wide v5, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 61
    iput-wide v7, v0, Lorg/locationtech/proj4j/proj/Projection;->a:D

    const-wide v9, 0x3f7b5696273aa532L    # 0.006674372230614

    .line 64
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    iput-wide v11, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    .line 66
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x4010000000000000L    # 4.0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double v11, v11, v9

    const-wide v13, 0x3fefc952d3b18ab6L    # 0.993325627769386

    div-double/2addr v11, v13

    add-double/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    iput-wide v11, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->alfa:D

    .line 69
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    move-wide v15, v7

    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->alfa:D

    div-double/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->asin(D)D

    move-result-wide v7

    .line 70
    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v11, v11, v17

    add-double/2addr v11, v15

    move-wide/from16 v17, v9

    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v9, v9, v19

    sub-double v9, v15, v9

    div-double/2addr v11, v9

    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->alfa:D

    move-wide/from16 v19, v13

    iget-wide v13, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    mul-double v9, v9, v13

    div-double/2addr v9, v3

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    div-double/2addr v7, v3

    .line 72
    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->s45:D

    add-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    div-double v11, v5, v3

    iget-wide v13, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->s45:D

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    iget-wide v13, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->alfa:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    div-double/2addr v7, v11

    mul-double v7, v7, v9

    iput-wide v7, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->k:D

    .line 74
    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    .line 75
    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/Projection;->a:D

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    mul-double v9, v9, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double v3, v3, v17

    sub-double v3, v15, v3

    div-double/2addr v9, v3

    const-wide v3, 0x3ff5ebdca31954deL    # 1.37008346281555

    .line 76
    iput-wide v3, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->s0:D

    .line 77
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iput-wide v3, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->n:D

    mul-double v7, v7, v9

    .line 78
    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->s0:D

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    div-double/2addr v7, v3

    iput-wide v7, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->ro0:D

    const-wide v3, 0x3ff0acb8f1a75ed0L    # 1.04216856380474

    sub-double/2addr v1, v3

    .line 79
    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->ad:D

    return-void
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 8

    .line 87
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    .line 88
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/KrovakProjection;->alfa:D

    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    .line 87
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 90
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/KrovakProjection;->k:D

    div-double/2addr p3, v4

    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/KrovakProjection;->s45:D

    add-double/2addr p3, v6

    invoke-static {p3, p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide p3

    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/KrovakProjection;->alfa:D

    invoke-static {p3, p4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    mul-double v2, v2, p3

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide p3

    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/KrovakProjection;->s45:D

    sub-double/2addr p3, v0

    mul-double p3, p3, v4

    neg-double p1, p1

    .line 92
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/KrovakProjection;->alfa:D

    mul-double p1, p1, v0

    .line 94
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/KrovakProjection;->ad:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/KrovakProjection;->ad:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v2, v2, v6

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v2, v2, v6

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    .line 95
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double p3, p3, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    div-double/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    .line 96
    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/KrovakProjection;->n:D

    mul-double p3, p3, p1

    .line 97
    iget-wide p1, p0, Lorg/locationtech/proj4j/proj/KrovakProjection;->ro0:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/KrovakProjection;->s0:D

    div-double/2addr v2, v4

    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/KrovakProjection;->s45:D

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/KrovakProjection;->n:D

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double p1, p1, v2

    div-double/2addr v0, v4

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/KrovakProjection;->s45:D

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/KrovakProjection;->n:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr p1, v0

    .line 100
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v0, v0, p1

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->a:D

    div-double/2addr v0, v2

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 101
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/Projection;->a:D

    div-double/2addr p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 103
    iget-boolean p3, p0, Lorg/locationtech/proj4j/proj/KrovakProjection;->czech:Z

    if-nez p3, :cond_0

    .line 104
    iget-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    mul-double p3, p3, v0

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double p1, p1, v0

    .line 105
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    :cond_0
    return-object p5
.end method

.method protected projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    .line 121
    iput-wide v3, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 122
    iput-wide v1, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 124
    iget-boolean v6, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->czech:Z

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    if-nez v6, :cond_0

    mul-double v3, v3, v7

    .line 125
    iput-wide v3, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double v1, v1, v7

    .line 126
    iput-wide v1, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 129
    :cond_0
    iget-wide v1, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double v1, v1, v1

    iget-wide v3, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v3, v3, v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 130
    iget-wide v3, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iget-wide v9, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    .line 131
    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->s0:D

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    div-double/2addr v3, v9

    .line 132
    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->ro0:D

    div-double/2addr v9, v1

    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->n:D

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double v1, v11, v1

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->s0:D

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v13

    move-wide v15, v7

    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->s45:D

    add-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double v1, v1, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->s45:D

    sub-double/2addr v1, v6

    mul-double v1, v1, v13

    .line 134
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->ad:D

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->ad:D

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v8, v8, v17

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v8, v8, v17

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    .line 135
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    .line 137
    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->alfa:D

    div-double/2addr v1, v8

    sub-double/2addr v3, v1

    iput-wide v3, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const/4 v1, 0x0

    move-wide v2, v6

    .line 145
    :goto_0
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->k:D

    move-wide/from16 p1, v11

    iget-wide v11, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->alfa:D

    div-double v10, v15, v11

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double v10, v6, v13

    move-wide/from16 p3, v13

    iget-wide v13, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->s45:D

    add-double/2addr v10, v13

    .line 146
    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->alfa:D

    div-double v12, p1, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double v8, v8, v10

    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    .line 147
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double v10, v10, v12

    add-double v10, v10, p1

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v12, v12, v17

    sub-double v12, p1, v12

    div-double/2addr v10, v12

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    div-double v12, v12, p3

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double v8, v8, v10

    .line 145
    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/KrovakProjection;->s45:D

    sub-double/2addr v8, v10

    mul-double v8, v8, p3

    iput-wide v8, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    sub-double/2addr v2, v8

    .line 150
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v8, 0x3cd203af9ee75616L    # 1.0E-15

    cmpg-double v4, v2, v8

    if-gez v4, :cond_1

    const/4 v1, 0x1

    .line 151
    :cond_1
    iget-wide v2, v5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    if-eqz v1, :cond_2

    .line 156
    iget-wide v1, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    sub-double/2addr v1, v3

    iput-wide v1, v5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v5

    :cond_2
    move-wide/from16 v11, p1

    move-wide/from16 v13, p3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 162
    const-string v0, "Krovak"

    return-object v0
.end method
