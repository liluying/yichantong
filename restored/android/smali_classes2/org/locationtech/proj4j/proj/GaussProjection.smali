.class public Lorg/locationtech/proj4j/proj/GaussProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "GaussProjection.java"


# static fields
.field private static final DEL_TOL:D = 1.0E-14

.field private static final MAX_ITER:I = 0x14


# instance fields
.field private C:D

.field private K:D

.field protected phic0:D

.field private ratexp:D

.field protected rc:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    return-void
.end method

.method private static srat(DD)D
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, p0

    add-double/2addr p0, v0

    div-double/2addr v2, p0

    .line 79
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public initialize()V
    .locals 12

    .line 67
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    .line 68
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 69
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v2

    .line 71
    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iget-wide v8, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    mul-double v10, v8, v0

    mul-double v10, v10, v0

    sub-double v10, v6, v10

    div-double/2addr v4, v10

    iput-wide v4, p0, Lorg/locationtech/proj4j/proj/GaussProjection;->rc:D

    mul-double v4, v8, v2

    mul-double v4, v4, v2

    sub-double v2, v6, v8

    div-double/2addr v4, v2

    add-double/2addr v4, v6

    .line 72
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/GaussProjection;->C:D

    div-double v2, v0, v2

    .line 73
    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/GaussProjection;->phic0:D

    .line 74
    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/GaussProjection;->C:D

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v6

    iget-wide v8, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    mul-double v4, v4, v8

    iput-wide v4, p0, Lorg/locationtech/proj4j/proj/GaussProjection;->ratexp:D

    mul-double v2, v2, v6

    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v2, v4

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    iget-wide v8, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    mul-double v8, v8, v6

    add-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/GaussProjection;->C:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    mul-double v6, v6, v0

    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/GaussProjection;->ratexp:D

    invoke-static {v6, v7, v0, v1}, Lorg/locationtech/proj4j/proj/GaussProjection;->srat(DD)D

    move-result-wide v0

    mul-double v4, v4, v0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/GaussProjection;->K:D

    return-void
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 6

    .line 42
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/GaussProjection;->K:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, p3

    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/GaussProjection;->C:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double v2, v2, p3

    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/GaussProjection;->ratexp:D

    invoke-static {v2, v3, p3, p4}, Lorg/locationtech/proj4j/proj/GaussProjection;->srat(DD)D

    move-result-wide p3

    mul-double v0, v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p3

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double p3, p3, v0

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr p3, v0

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 43
    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/GaussProjection;->C:D

    mul-double p3, p3, p1

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 9

    .line 48
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/GaussProjection;->C:D

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, p3

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v0, v2

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/GaussProjection;->K:D

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/GaussProjection;->C:D

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const/16 v2, 0x14

    :goto_0
    if-lez v2, :cond_1

    .line 53
    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    iget-wide v7, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    mul-double v7, v7, v5

    invoke-static {v3, v4, v7, v8}, Lorg/locationtech/proj4j/proj/GaussProjection;->srat(DD)D

    move-result-wide v3

    mul-double v3, v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v3, v3, v5

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v3, v5

    sub-double p3, v3, p3

    .line 54
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    const-wide v5, 0x3d06849b86a12b9bL    # 1.0E-14

    cmpg-double v7, p3, v5

    if-gez v7, :cond_0

    move-wide p3, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    move-wide p3, v3

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v2, :cond_2

    .line 61
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 62
    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5

    .line 59
    :cond_2
    new-instance p1, Lorg/locationtech/proj4j/ProjectionException;

    sget-object p2, Lorg/locationtech/proj4j/ProjectionException;->ERR_17:Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Lorg/locationtech/proj4j/proj/Projection;Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 87
    const-string v0, "Gauss"

    return-object v0
.end method
