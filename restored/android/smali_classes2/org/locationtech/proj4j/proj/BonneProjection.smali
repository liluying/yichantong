.class public Lorg/locationtech/proj4j/proj/BonneProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "BonneProjection.java"


# instance fields
.field private am1:D

.field private cphi1:D

.field private en:[D

.field private m1:D

.field private phi1:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

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
    .locals 15

    .line 93
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 98
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/BonneProjection;->phi1:D

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v6, v2, v4

    if-ltz v6, :cond_2

    .line 101
    iget-boolean v2, p0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-nez v2, :cond_0

    .line 102
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->enfn(D)[D

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/proj4j/proj/BonneProjection;->en:[D

    .line 103
    iget-wide v8, p0, Lorg/locationtech/proj4j/proj/BonneProjection;->phi1:D

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    iput-wide v10, p0, Lorg/locationtech/proj4j/proj/BonneProjection;->am1:D

    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/BonneProjection;->phi1:D

    .line 104
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    iget-object v14, p0, Lorg/locationtech/proj4j/proj/BonneProjection;->en:[D

    .line 103
    invoke-static/range {v8 .. v14}, Lorg/locationtech/proj4j/util/ProjectionMath;->mlfn(DDD[D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/BonneProjection;->m1:D

    .line 105
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/BonneProjection;->am1:D

    mul-double v0, v0, v2

    mul-double v0, v0, v2

    sub-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/BonneProjection;->am1:D

    mul-double v0, v0, v2

    div-double/2addr v12, v0

    iput-wide v12, p0, Lorg/locationtech/proj4j/proj/BonneProjection;->am1:D

    return-void

    .line 107
    :cond_0
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/BonneProjection;->phi1:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v2, v4

    cmpl-double v4, v2, v0

    if-ltz v4, :cond_1

    const-wide/16 v0, 0x0

    .line 108
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/BonneProjection;->cphi1:D

    return-void

    .line 110
    :cond_1
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/BonneProjection;->phi1:D

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    div-double/2addr v6, v0

    iput-wide v6, p0, Lorg/locationtech/proj4j/proj/BonneProjection;->cphi1:D

    return-void

    .line 100
    :cond_2
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    const-string v1, "-23"

    invoke-direct {v0, v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEqualArea()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 9

    .line 34
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-eqz v0, :cond_1

    .line 37
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/BonneProjection;->cphi1:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/BonneProjection;->phi1:D

    add-double/2addr v0, v2

    sub-double/2addr v0, p3

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    .line 39
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double p3, p3, v0

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 40
    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/BonneProjection;->cphi1:D

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double v0, v0, p1

    sub-double/2addr p3, v0

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5

    :cond_0
    const-wide/16 p1, 0x0

    .line 42
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object p5

    .line 46
    :cond_1
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/BonneProjection;->am1:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/BonneProjection;->m1:D

    add-double/2addr v0, v2

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget-object v8, p0, Lorg/locationtech/proj4j/proj/BonneProjection;->en:[D

    move-wide v2, p3

    invoke-static/range {v2 .. v8}, Lorg/locationtech/proj4j/util/ProjectionMath;->mlfn(DDD[D)D

    move-result-wide p3

    sub-double/2addr v0, p3

    mul-double v6, v6, p1

    .line 47
    iget-wide p1, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    mul-double p1, p1, v4

    mul-double p1, p1, v4

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    mul-double p1, p1, v0

    div-double/2addr v6, p1

    .line 48
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double p1, p1, v0

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 49
    iget-wide p1, p0, Lorg/locationtech/proj4j/proj/BonneProjection;->am1:D

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double v0, v0, p3

    sub-double/2addr p1, v0

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p5

    .line 55
    iget-boolean v4, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    const-wide/16 v5, 0x0

    const-string v9, "I"

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-eqz v4, :cond_2

    .line 58
    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/BonneProjection;->cphi1:D

    sub-double v12, v12, p3

    iput-wide v12, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v1, v2, v12, v13}, Lorg/locationtech/proj4j/util/ProjectionMath;->distance(DD)D

    move-result-wide v12

    .line 59
    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/BonneProjection;->cphi1:D

    const-wide v16, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/BonneProjection;->phi1:D

    add-double/2addr v14, v7

    sub-double/2addr v14, v12

    iput-wide v14, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 60
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v4, v7, v10

    if-gtz v4, :cond_1

    .line 61
    iget-wide v7, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    sub-double/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v4, v7, v16

    if-gtz v4, :cond_0

    .line 62
    iput-wide v5, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v3

    .line 64
    :cond_0
    invoke-static/range {p1 .. p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    mul-double v12, v12, v1

    iget-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    div-double/2addr v12, v1

    iput-wide v12, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v3

    .line 60
    :cond_1
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1, v9}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-wide v16, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 68
    iget-wide v7, v0, Lorg/locationtech/proj4j/proj/BonneProjection;->am1:D

    sub-double v7, v7, p3

    iput-wide v7, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v1, v2, v7, v8}, Lorg/locationtech/proj4j/util/ProjectionMath;->distance(DD)D

    move-result-wide v7

    .line 69
    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/BonneProjection;->am1:D

    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/BonneProjection;->m1:D

    add-double/2addr v12, v14

    sub-double/2addr v12, v7

    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    iget-object v4, v0, Lorg/locationtech/proj4j/proj/BonneProjection;->en:[D

    invoke-static {v12, v13, v14, v15, v4}, Lorg/locationtech/proj4j/util/ProjectionMath;->inv_mlfn(DD[D)D

    move-result-wide v12

    iput-wide v12, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 70
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpg-double v4, v12, v10

    if-gez v4, :cond_3

    .line 71
    iget-wide v4, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 72
    invoke-static/range {p1 .. p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    mul-double v7, v7, v1

    iget-wide v1, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    mul-double v1, v1, v4

    mul-double v1, v1, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v1

    .line 73
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    mul-double v7, v7, v1

    iget-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    div-double/2addr v7, v1

    iput-wide v7, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v3

    :cond_3
    sub-double/2addr v12, v10

    .line 74
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v4, v1, v16

    if-gtz v4, :cond_4

    .line 75
    iput-wide v5, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v3

    .line 76
    :cond_4
    new-instance v1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v1, v9}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 115
    const-string v0, "Bonne"

    return-object v0
.end method
