.class public Lorg/locationtech/proj4j/proj/TransverseCylindricalEqualArea;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "TransverseCylindricalEqualArea.java"


# instance fields
.field private rk0:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    .line 29
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/TransverseCylindricalEqualArea;->initialize()V

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
    .locals 4

    .line 50
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 51
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/TransverseCylindricalEqualArea;->rk0:D

    return-void
.end method

.method public isRectilinear()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 4

    .line 33
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/TransverseCylindricalEqualArea;->rk0:D

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 34
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    invoke-static {p3, p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide p3

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    sub-double/2addr p1, p3

    mul-double v0, v0, p1

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 4

    .line 41
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/TransverseCylindricalEqualArea;->rk0:D

    mul-double v0, v0, p3

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->projectionLatitude:D

    add-double/2addr v0, v2

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 42
    iget-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    mul-double v0, v0, v2

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double v2, p1, p1

    sub-double/2addr v0, v2

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 44
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    iput-wide v2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 45
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double v0, v0, p3

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "Transverse Cylindrical Equal Area"

    return-object v0
.end method
