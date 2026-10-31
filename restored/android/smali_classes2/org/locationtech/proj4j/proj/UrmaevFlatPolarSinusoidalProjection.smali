.class public Lorg/locationtech/proj4j/proj/UrmaevFlatPolarSinusoidalProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "UrmaevFlatPolarSinusoidalProjection.java"


# static fields
.field private static final C_x:D = 0.8773826753

.field private static final Cy:D = 1.139753528477


# instance fields
.field private C_y:D

.field private n:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    const-wide v0, 0x3febb67ae8584caaL    # 0.8660254037844386

    .line 33
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/UrmaevFlatPolarSinusoidalProjection;->n:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 82
    :cond_0
    instance-of v1, p1, Lorg/locationtech/proj4j/proj/UrmaevFlatPolarSinusoidalProjection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 83
    move-object v1, p1

    check-cast v1, Lorg/locationtech/proj4j/proj/UrmaevFlatPolarSinusoidalProjection;

    .line 84
    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/UrmaevFlatPolarSinusoidalProjection;->n:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/UrmaevFlatPolarSinusoidalProjection;->n:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lorg/locationtech/proj4j/proj/Projection;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getN()D
    .locals 2

    .line 70
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/UrmaevFlatPolarSinusoidalProjection;->n:D

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

    .line 91
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/UrmaevFlatPolarSinusoidalProjection;->n:D

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
    .locals 5

    .line 58
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    .line 59
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/UrmaevFlatPolarSinusoidalProjection;->n:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_0

    const-wide v2, 0x3ff23c6e3224f2f9L    # 1.139753528477

    div-double/2addr v2, v0

    .line 61
    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/UrmaevFlatPolarSinusoidalProjection;->C_y:D

    return-void

    .line 60
    :cond_0
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    const-string v1, "-40"

    invoke-direct {v0, v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 4

    .line 40
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/UrmaevFlatPolarSinusoidalProjection;->n:D

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->asin(D)D

    move-result-wide v0

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide v0, 0x3fec1384d50fb212L    # 0.8773826753

    mul-double p1, p1, v0

    .line 41
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double p1, p1, v0

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 42
    iget-wide p1, p0, Lorg/locationtech/proj4j/proj/UrmaevFlatPolarSinusoidalProjection;->C_y:D

    mul-double p1, p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 4

    .line 47
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/UrmaevFlatPolarSinusoidalProjection;->C_y:D

    div-double/2addr p3, v0

    .line 48
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/UrmaevFlatPolarSinusoidalProjection;->n:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->asin(D)D

    move-result-wide v0

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide v0, 0x3fec1384d50fb212L    # 0.8773826753

    .line 49
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double p3, p3, v0

    div-double/2addr p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object p5
.end method

.method public setN(D)V
    .locals 0

    .line 66
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/UrmaevFlatPolarSinusoidalProjection;->n:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 74
    const-string v0, "Urmaev Flat-Polar Sinusoidal"

    return-object v0
.end method
