.class public Lorg/locationtech/proj4j/proj/HammerProjection;
.super Lorg/locationtech/proj4j/proj/PseudoCylindricalProjection;
.source "HammerProjection.java"


# instance fields
.field private m:D

.field private rm:D

.field private w:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/PseudoCylindricalProjection;-><init>()V

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 29
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/HammerProjection;->w:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 30
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/HammerProjection;->m:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 93
    :cond_0
    instance-of v1, p1, Lorg/locationtech/proj4j/proj/HammerProjection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 94
    move-object v1, p1

    check-cast v1, Lorg/locationtech/proj4j/proj/HammerProjection;

    .line 95
    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/HammerProjection;->m:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/HammerProjection;->m:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/HammerProjection;->w:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/HammerProjection;->w:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    .line 98
    invoke-super {p0, p1}, Lorg/locationtech/proj4j/proj/Projection;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getM()D
    .locals 2

    .line 81
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/HammerProjection;->m:D

    return-wide v0
.end method

.method public getW()D
    .locals 2

    .line 73
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/HammerProjection;->w:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 105
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/HammerProjection;->m:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Lorg/locationtech/proj4j/proj/HammerProjection;->w:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 7

    .line 46
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    .line 47
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/HammerProjection;->w:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/HammerProjection;->w:D

    const-string v2, "-27"

    const-wide/16 v3, 0x0

    cmpg-double v5, v0, v3

    if-lez v5, :cond_1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 50
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/HammerProjection;->w:D

    .line 51
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/HammerProjection;->m:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/HammerProjection;->m:D

    cmpg-double v5, v0, v3

    if-lez v5, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double v5, v0, v0

    .line 55
    iput-wide v5, p0, Lorg/locationtech/proj4j/proj/HammerProjection;->rm:D

    .line 56
    iget-wide v5, p0, Lorg/locationtech/proj4j/proj/HammerProjection;->w:D

    div-double/2addr v0, v5

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/HammerProjection;->m:D

    .line 57
    iput-wide v3, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    return-void

    .line 52
    :cond_0
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v0, v2}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v0, v2}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEqualArea()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 6

    .line 39
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/HammerProjection;->w:D

    mul-double p1, p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 40
    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/HammerProjection;->m:D

    mul-double v4, v4, v2

    mul-double v4, v4, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double v4, v4, p1

    iput-wide v4, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 41
    iget-wide p1, p0, Lorg/locationtech/proj4j/proj/HammerProjection;->rm:D

    mul-double p1, p1, v2

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public setM(D)V
    .locals 0

    .line 77
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/HammerProjection;->m:D

    return-void
.end method

.method public setW(D)V
    .locals 0

    .line 69
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/HammerProjection;->w:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 85
    const-string v0, "Hammer & Eckert-Greifendorff"

    return-object v0
.end method
