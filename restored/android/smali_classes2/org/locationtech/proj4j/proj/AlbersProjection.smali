.class public Lorg/locationtech/proj4j/proj/AlbersProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "AlbersProjection.java"


# static fields
.field private static final EPS10:D = 1.0E-10

.field private static final EPSILON:D = 1.0E-7

.field private static final N_ITER:I = 0xf

.field private static final TOL:D = 1.0E-10

.field private static final TOL7:D = 1.0E-7


# instance fields
.field private c:D

.field private dd:D

.field private ec:D

.field private en:[D

.field private n:D

.field private n2:D

.field private phi1:D

.field private phi2:D

.field private rho0:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    const-wide/16 v0, 0x0

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLatitude:D

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLatitude:D

    const-wide v0, 0x4046c00000000000L    # 45.5

    .line 50
    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->degToRad(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude1:D

    const-wide v0, 0x403d800000000000L    # 29.5

    .line 51
    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->degToRad(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude2:D

    .line 52
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/AlbersProjection;->initialize()V

    return-void
.end method

.method private static phi1_(DDD)D
    .locals 17

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double v2, p0, v0

    .line 59
    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v6, p2, v4

    if-gez v6, :cond_0

    return-wide v2

    :cond_0
    const/16 v4, 0xf

    .line 64
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    .line 65
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v9, p2, v5

    mul-double v11, v9, v9

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double v11, v13, v11

    mul-double v15, v11, v0

    mul-double v15, v15, v11

    div-double/2addr v15, v7

    div-double v7, p0, p4

    div-double/2addr v5, v11

    sub-double/2addr v7, v5

    div-double v5, v0, p2

    sub-double v11, v13, v9

    add-double/2addr v9, v13

    div-double/2addr v11, v9

    .line 69
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    mul-double v5, v5, v9

    add-double/2addr v7, v5

    mul-double v15, v15, v7

    add-double/2addr v2, v15

    .line 72
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpl-double v9, v5, v7

    if-lez v9, :cond_2

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_1

    :cond_2
    if-eqz v4, :cond_3

    return-wide v2

    :cond_3
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    return-wide v0
.end method


# virtual methods
.method public getEPSGCode()I
    .locals 1

    .line 0
    const/16 v0, 0x265e

    return v0
.end method

.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public initialize()V
    .locals 21

    move-object/from16 v0, p0

    .line 118
    invoke-super {v0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    .line 122
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude1:D

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->phi1:D

    .line 123
    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude2:D

    iput-wide v3, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->phi2:D

    add-double/2addr v1, v3

    .line 125
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v5, v1, v3

    if-ltz v5, :cond_5

    .line 127
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->phi1:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->n:D

    .line 128
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->phi1:D

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 129
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->phi1:D

    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->phi2:D

    sub-double/2addr v1, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v9, v1, v3

    if-ltz v9, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 131
    :goto_0
    iget-boolean v2, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    if-nez v2, :cond_3

    .line 134
    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    invoke-static {v9, v10}, Lorg/locationtech/proj4j/util/ProjectionMath;->enfn(D)[D

    move-result-object v2

    iput-object v2, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->en:[D

    if-eqz v2, :cond_2

    .line 136
    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    invoke-static/range {v5 .. v10}, Lorg/locationtech/proj4j/util/ProjectionMath;->msfn(DDD)D

    move-result-wide v13

    .line 137
    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    invoke-static/range {v5 .. v10}, Lorg/locationtech/proj4j/util/ProjectionMath;->qsfn(DDD)D

    move-result-wide v5

    if-eqz v1, :cond_1

    .line 141
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->phi2:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    .line 142
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->phi2:D

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    .line 143
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    move-wide/from16 v19, v1

    invoke-static/range {v15 .. v20}, Lorg/locationtech/proj4j/util/ProjectionMath;->msfn(DDD)D

    move-result-wide v1

    .line 144
    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    move-wide/from16 v17, v7

    move-wide/from16 v19, v9

    invoke-static/range {v15 .. v20}, Lorg/locationtech/proj4j/util/ProjectionMath;->qsfn(DDD)D

    move-result-wide v7

    mul-double v9, v13, v13

    mul-double v1, v1, v1

    sub-double/2addr v9, v1

    sub-double/2addr v7, v5

    div-double/2addr v9, v7

    .line 145
    iput-wide v9, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->n:D

    .line 147
    :cond_1
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    mul-double v1, v1, v3

    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    sub-double v7, v11, v3

    add-double/2addr v3, v11

    div-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    div-double/2addr v1, v3

    sub-double v1, v11, v1

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->ec:D

    mul-double v13, v13, v13

    .line 149
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->n:D

    mul-double v5, v5, v1

    add-double/2addr v13, v5

    iput-wide v13, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->c:D

    div-double/2addr v11, v1

    .line 150
    iput-wide v11, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->dd:D

    .line 151
    iget-wide v3, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    invoke-static/range {v5 .. v10}, Lorg/locationtech/proj4j/util/ProjectionMath;->qsfn(DDD)D

    move-result-wide v3

    mul-double v1, v1, v3

    sub-double/2addr v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    mul-double v11, v11, v1

    iput-wide v11, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->rho0:D

    return-void

    .line 135
    :cond_2
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    const-string v2, "0"

    invoke-direct {v1, v2}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-eqz v1, :cond_4

    .line 154
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->n:D

    iget-wide v9, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->phi2:D

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    add-double/2addr v1, v9

    mul-double v1, v1, v3

    iput-wide v1, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->n:D

    .line 155
    :cond_4
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->n:D

    add-double v3, v1, v1

    iput-wide v3, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->n2:D

    mul-double v7, v7, v7

    mul-double v5, v5, v3

    add-double/2addr v7, v5

    .line 156
    iput-wide v7, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->c:D

    div-double/2addr v11, v1

    .line 157
    iput-wide v11, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->dd:D

    .line 158
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v3, v3, v1

    sub-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    mul-double v11, v11, v1

    iput-wide v11, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->rho0:D

    return-void

    .line 126
    :cond_5
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    const-string v2, "-21"

    invoke-direct {v1, v2}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isEqualArea()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 10

    .line 78
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/AlbersProjection;->c:D

    iget-boolean v2, p0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/AlbersProjection;->n:D

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    iget-wide v8, p0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    invoke-static/range {v4 .. v9}, Lorg/locationtech/proj4j/util/ProjectionMath;->qsfn(DDD)D

    move-result-wide p3

    :goto_0
    mul-double v2, v2, p3

    goto :goto_1

    :cond_0
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/AlbersProjection;->n2:D

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    goto :goto_0

    :goto_1
    sub-double/2addr v0, v2

    const-wide/16 p3, 0x0

    cmpg-double v2, v0, p3

    if-ltz v2, :cond_1

    .line 80
    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/AlbersProjection;->dd:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double p3, p3, v0

    .line 81
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/AlbersProjection;->n:D

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, p3

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 82
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/AlbersProjection;->rho0:D

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double p3, p3, p1

    sub-double/2addr v0, p3

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5

    .line 79
    :cond_1
    new-instance p1, Lorg/locationtech/proj4j/ProjectionException;

    const-string p2, "F"

    invoke-direct {p1, p2}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p5

    .line 88
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->rho0:D

    sub-double v4, v4, p3

    invoke-static {v1, v2, v4, v5}, Lorg/locationtech/proj4j/util/ProjectionMath;->distance(DD)D

    move-result-wide v6

    const-wide v10, -0x4006de04abbbd2e8L    # -1.5707963267948966

    const-wide/16 v12, 0x0

    cmpl-double v14, v6, v12

    if-eqz v14, :cond_6

    .line 90
    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->n:D

    cmpg-double v16, v14, v12

    if-gez v16, :cond_0

    neg-double v6, v6

    neg-double v1, v1

    neg-double v4, v4

    .line 95
    :cond_0
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->dd:D

    div-double/2addr v6, v8

    .line 96
    iget-boolean v8, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-nez v8, :cond_4

    .line 97
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->c:D

    mul-double v6, v6, v6

    sub-double/2addr v8, v6

    div-double v16, v8, v14

    .line 98
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->ec:D

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v14, v6, v8

    if-lez v14, :cond_2

    .line 99
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/Projection;->one_es:D

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-static/range {v16 .. v21}, Lorg/locationtech/proj4j/proj/AlbersProjection;->phi1_(DDD)D

    move-result-wide v6

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_1

    goto :goto_2

    .line 100
    :cond_1
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    const-string v2, "I"

    invoke-direct {v1, v2}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    cmpg-double v6, v16, v12

    if-gez v6, :cond_3

    :goto_0
    move-wide v8, v10

    goto :goto_1

    :cond_3
    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    :goto_1
    move-wide v6, v8

    goto :goto_2

    .line 103
    :cond_4
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->c:D

    mul-double v14, v6, v6

    sub-double/2addr v8, v14

    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->n2:D

    div-double/2addr v8, v14

    iput-wide v8, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v16, v8, v14

    if-gtz v16, :cond_5

    .line 104
    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    goto :goto_2

    :cond_5
    cmpg-double v8, v6, v12

    if-gez v8, :cond_3

    goto :goto_0

    .line 107
    :goto_2
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->n:D

    div-double/2addr v1, v4

    .line 108
    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 109
    iput-wide v6, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v3

    .line 111
    :cond_6
    iput-wide v12, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 112
    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/AlbersProjection;->n:D

    cmpl-double v4, v1, v12

    if-lez v4, :cond_7

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto :goto_3

    :cond_7
    move-wide v8, v10

    :goto_3
    iput-wide v8, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 181
    const-string v0, "Albers Equal Area"

    return-object v0
.end method
