.class public Lorg/locationtech/proj4j/proj/LagrangeProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "LagrangeProjection.java"


# static fields
.field private static final TOL:D = 1.0E-10


# instance fields
.field private a1:D

.field private hrw:D

.field private phi1:D

.field private rw:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    const-wide v0, 0x3ff6666666666666L    # 1.4

    .line 32
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LagrangeProjection;->rw:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 94
    :cond_0
    instance-of v1, p1, Lorg/locationtech/proj4j/proj/LagrangeProjection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 95
    move-object v1, p1

    check-cast v1, Lorg/locationtech/proj4j/proj/LagrangeProjection;

    .line 96
    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/LagrangeProjection;->rw:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/LagrangeProjection;->rw:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lorg/locationtech/proj4j/proj/Projection;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getW()D
    .locals 2

    .line 60
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LagrangeProjection;->rw:D

    return-wide v0
.end method

.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 103
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LagrangeProjection;->rw:D

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
    .locals 7

    .line 64
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    .line 65
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LagrangeProjection;->rw:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v0, v2, v0

    .line 67
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LagrangeProjection;->rw:D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v4

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LagrangeProjection;->hrw:D

    .line 68
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude1:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LagrangeProjection;->phi1:D

    .line 69
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LagrangeProjection;->phi1:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v6, v0, v4

    if-ltz v6, :cond_0

    .line 71
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LagrangeProjection;->phi1:D

    sub-double v4, v2, v0

    add-double/2addr v0, v2

    div-double/2addr v4, v0

    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LagrangeProjection;->hrw:D

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LagrangeProjection;->a1:D

    return-void

    .line 70
    :cond_0
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    const-string v1, "-22"

    invoke-direct {v0, v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    const-string v1, "-27"

    invoke-direct {v0, v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isConformal()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 10

    .line 41
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v6, v0, v4

    if-gez v6, :cond_1

    const-wide/16 p1, 0x0

    .line 42
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    cmpg-double v0, p3, p1

    if-gez v0, :cond_0

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    .line 43
    :cond_0
    iput-wide v2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5

    .line 45
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    .line 46
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LagrangeProjection;->a1:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v8, p3, v6

    sub-double p3, v6, p3

    div-double/2addr v8, p3

    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/LagrangeProjection;->hrw:D

    invoke-static {v8, v9, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    mul-double v0, v0, p3

    div-double/2addr v6, v0

    add-double p3, v0, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double p3, p3, v8

    .line 47
    iget-wide v8, p0, Lorg/locationtech/proj4j/proj/LagrangeProjection;->rw:D

    mul-double p1, p1, v8

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    add-double/2addr p3, v8

    cmpg-double v8, p3, v4

    if-ltz v8, :cond_2

    .line 49
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double p1, p1, v2

    div-double/2addr p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    sub-double/2addr v0, v6

    div-double/2addr v0, p3

    .line 50
    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5

    .line 48
    :cond_2
    new-instance p1, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {p1}, Lorg/locationtech/proj4j/ProjectionException;-><init>()V

    throw p1
.end method

.method public setW(D)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/LagrangeProjection;->rw:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 86
    const-string v0, "Lagrange"

    return-object v0
.end method
