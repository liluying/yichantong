.class public Lorg/locationtech/proj4j/proj/MercatorProjection;
.super Lorg/locationtech/proj4j/proj/CylindricalProjection;
.source "MercatorProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/CylindricalProjection;-><init>()V

    const-wide v0, -0x3faac00000000000L    # -85.0

    .line 28
    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->degToRad(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLatitude:D

    const-wide v0, 0x4055400000000000L    # 85.0

    .line 29
    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->degToRad(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLatitude:D

    return-void
.end method


# virtual methods
.method public getEPSGCode()I
    .locals 1

    .line 0
    const/16 v0, 0x264c

    return v0
.end method

.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isRectilinear()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 6

    .line 33
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-eqz v0, :cond_0

    .line 34
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    mul-double p1, p1, v0

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    mul-double p3, p3, p1

    const-wide p1, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr p3, p1

    .line 35
    invoke-static {p3, p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    mul-double v0, v0, p1

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5

    .line 37
    :cond_0
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    mul-double p1, p1, v0

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    neg-double p1, v0

    .line 38
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    move-wide v0, p3

    invoke-static/range {v0 .. v5}, Lorg/locationtech/proj4j/util/ProjectionMath;->tsfn(DDD)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->log(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 2

    .line 44
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/Projection;->spherical:Z

    if-eqz v0, :cond_0

    neg-double p3, p3

    .line 45
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    div-double/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->exp(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->atan(D)D

    move-result-wide p3

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double p3, p3, v0

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v0, p3

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 46
    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    div-double/2addr p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object p5

    :cond_0
    neg-double p3, p3

    .line 48
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    div-double/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->exp(D)D

    move-result-wide p3

    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->e:D

    invoke-static {p3, p4, v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->phi2(DD)D

    move-result-wide p3

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 49
    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    div-double/2addr p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 70
    const-string v0, "Mercator"

    return-object v0
.end method
