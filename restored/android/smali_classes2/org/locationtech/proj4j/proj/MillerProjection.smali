.class public Lorg/locationtech/proj4j/proj/MillerProjection;
.super Lorg/locationtech/proj4j/proj/CylindricalProjection;
.source "MillerProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/CylindricalProjection;-><init>()V

    return-void
.end method


# virtual methods
.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 0

    .line 32
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide p1, 0x3fd999999999999aL    # 0.4

    mul-double p3, p3, p1

    const-wide p1, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr p3, p1

    .line 33
    invoke-static {p3, p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    const-wide/high16 p3, 0x3ff4000000000000L    # 1.25

    mul-double p1, p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 0

    .line 38
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide p1, 0x3fe999999999999aL    # 0.8

    mul-double p3, p3, p1

    .line 39
    invoke-static {p3, p4}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    const-wide p3, 0x3fe921fb54442d18L    # 0.7853981633974483

    sub-double/2addr p1, p3

    const-wide/high16 p3, 0x4004000000000000L    # 2.5

    mul-double p1, p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "Miller Cylindrical"

    return-object v0
.end method
