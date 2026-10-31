.class public Lorg/locationtech/proj4j/proj/CassiniProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "CassiniProjection.java"


# static fields
.field private static final C1:D = 0.16666666666666666

.field private static final C2:D = 0.008333333333333333

.field private static final C3:D = 0.041666666666666664

.field private static final C4:D = 0.3333333333333333

.field private static final C5:D = 0.06666666666666667

.field private static final EPS10:D = 1.0E-10


# instance fields
.field private a1:D

.field private a2:D

.field private c:D

.field private d2:D

.field private dd:D

.field private en:[D

.field private m0:D

.field private n:D

.field private r:D

.field private t:D

.field private tn:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 46
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    const-wide/16 v0, 0x0

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLongitude:D

    const-wide v0, -0x3fa9800000000000L    # -90.0

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLongitude:D

    const-wide v0, 0x4056800000000000L    # 90.0

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLongitude:D

    .line 51
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/CassiniProjection;->initialize()V

    return-void
.end method


# virtual methods
.method public getEPSGCode()I
    .locals 1

    .line 0
    const/16 v0, 0x264e

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

    .line 97
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    .line 98
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-nez v0, :cond_1

    .line 99
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->enfn(D)[D

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/proj4j/proj/CassiniProjection;->en:[D

    if-eqz v0, :cond_0

    .line 101
    iget-wide v1, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget-wide v5, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    iget-object v7, p0, Lorg/locationtech/proj4j/proj/CassiniProjection;->en:[D

    invoke-static/range {v1 .. v7}, Lorg/locationtech/proj4j/util/ProjectionMath;->mlfn(DDD[D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/CassiniProjection;->m0:D

    return-void

    .line 100
    :cond_0
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v0}, Lorg/locationtech/proj4j/ProjectionException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 55
    iget-boolean v2, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-eqz v2, :cond_0

    .line 56
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 57
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    sub-double/2addr v2, v4

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v1

    .line 59
    :cond_0
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iput-wide v6, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->n:D

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    iput-wide v8, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->c:D

    iget-object v10, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->en:[D

    move-wide/from16 v4, p3

    invoke-static/range {v4 .. v10}, Lorg/locationtech/proj4j/util/ProjectionMath;->mlfn(DDD[D)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 60
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->n:D

    mul-double v2, v2, v4

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double v2, v4, v2

    iput-wide v2, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->n:D

    .line 61
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->tn:D

    mul-double v6, v2, v2

    iput-wide v6, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->t:D

    .line 62
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->c:D

    mul-double v10, p1, v8

    iput-wide v10, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->a1:D

    .line 63
    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    mul-double v14, v12, v8

    sub-double v12, v4, v12

    div-double/2addr v14, v12

    mul-double v8, v8, v14

    iput-wide v8, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->c:D

    mul-double v12, v10, v10

    .line 64
    iput-wide v12, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->a2:D

    .line 65
    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->n:D

    mul-double v10, v10, v14

    mul-double v16, v12, v6

    const-wide/high16 v18, 0x4020000000000000L    # 8.0

    sub-double v20, v18, v6

    mul-double v18, v18, v8

    add-double v20, v20, v18

    mul-double v20, v20, v12

    const-wide v18, 0x3f81111111111111L    # 0.008333333333333333

    mul-double v20, v20, v18

    const-wide v18, 0x3fc5555555555555L    # 0.16666666666666666

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    sub-double v4, v4, v16

    mul-double v10, v10, v4

    iput-wide v10, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 67
    iget-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->m0:D

    mul-double v14, v14, v2

    mul-double v14, v14, v12

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    sub-double/2addr v2, v6

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    mul-double v8, v8, v6

    add-double/2addr v2, v8

    mul-double v2, v2, v12

    const-wide v6, 0x3fa5555555555555L    # 0.041666666666666664

    mul-double v2, v2, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v6

    mul-double v14, v14, v2

    sub-double/2addr v10, v14

    sub-double/2addr v4, v10

    iput-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v1
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 74
    iget-boolean v2, v0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-eqz v2, :cond_0

    .line 75
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    add-double v2, p3, v2

    iput-wide v2, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->dd:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 76
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->dd:D

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v1

    .line 80
    :cond_0
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->m0:D

    add-double v2, v2, p3

    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    iget-object v6, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->en:[D

    invoke-static {v2, v3, v4, v5, v6}, Lorg/locationtech/proj4j/util/ProjectionMath;->inv_mlfn(DD[D)D

    move-result-wide v2

    .line 81
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    iput-wide v4, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->tn:D

    mul-double v4, v4, v4

    iput-wide v4, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->t:D

    .line 82
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iput-wide v4, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->n:D

    .line 83
    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    mul-double v6, v6, v4

    mul-double v6, v6, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v6, v4, v6

    div-double v6, v4, v6

    iput-wide v6, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->r:D

    .line 84
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iput-wide v6, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->n:D

    .line 85
    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->r:D

    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    sub-double v10, v4, v10

    mul-double v10, v10, v6

    mul-double v8, v8, v10

    iput-wide v8, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->r:D

    div-double v10, p1, v6

    .line 86
    iput-wide v10, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->dd:D

    mul-double v12, v10, v10

    .line 87
    iput-wide v12, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->d2:D

    .line 88
    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->tn:D

    mul-double v6, v6, v14

    div-double/2addr v6, v8

    mul-double v6, v6, v12

    iget-wide v8, v0, Lorg/locationtech/proj4j/proj/CassiniProjection;->t:D

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    mul-double v16, v8, v14

    add-double v16, v16, v4

    mul-double v16, v16, v12

    const-wide v18, 0x3fa5555555555555L    # 0.041666666666666664

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    sub-double v18, v18, v16

    mul-double v6, v6, v18

    sub-double v6, v2, v6

    iput-wide v6, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v6, v8, v12

    mul-double v8, v8, v14

    add-double/2addr v8, v4

    mul-double v8, v8, v12

    const-wide v12, 0x3fb1111111111111L    # 0.06666666666666667

    mul-double v8, v8, v12

    const-wide v12, -0x402aaaaaaaaaaaabL    # -0.3333333333333333

    add-double/2addr v8, v12

    mul-double v6, v6, v8

    add-double/2addr v6, v4

    mul-double v10, v10, v6

    .line 91
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double/2addr v10, v2

    iput-wide v10, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 117
    const-string v0, "Cassini"

    return-object v0
.end method
