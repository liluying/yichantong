.class public Lorg/locationtech/proj4j/proj/PutninsP4Projection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "PutninsP4Projection.java"


# instance fields
.field protected C_x:D

.field protected C_y:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    const-wide v0, 0x3febf820199d5761L    # 0.874038744

    .line 31
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/PutninsP4Projection;->C_x:D

    const-wide v0, 0x400f10e655340efbL    # 3.883251825

    .line 32
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/PutninsP4Projection;->C_y:D

    return-void
.end method


# virtual methods
.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isEqualArea()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 2

    const-wide v0, 0x3fec48c5ffdca235L    # 0.883883476

    .line 36
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double p3, p3, v0

    invoke-static {p3, p4}, Lorg/locationtech/proj4j/util/ProjectionMath;->asin(D)D

    move-result-wide p3

    .line 37
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/PutninsP4Projection;->C_x:D

    mul-double v0, v0, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double v0, v0, p1

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide p1, 0x3fd555555555554fL    # 0.333333333333333

    mul-double p3, p3, p1

    .line 38
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    div-double/2addr v0, p1

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 39
    iget-wide p1, p0, Lorg/locationtech/proj4j/proj/PutninsP4Projection;->C_y:D

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 2

    .line 44
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/PutninsP4Projection;->C_y:D

    div-double/2addr p3, v0

    invoke-static {p3, p4}, Lorg/locationtech/proj4j/util/ProjectionMath;->asin(D)D

    move-result-wide p3

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 45
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/PutninsP4Projection;->C_x:D

    div-double/2addr p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 46
    iget-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    mul-double p3, p3, v0

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 47
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    div-double/2addr p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 48
    iget-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    const-wide p3, 0x3ff21a1852065d11L    # 1.13137085

    mul-double p1, p1, p3

    invoke-static {p1, p2}, Lorg/locationtech/proj4j/util/ProjectionMath;->asin(D)D

    move-result-wide p1

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "Putnins P4"

    return-object v0
.end method
