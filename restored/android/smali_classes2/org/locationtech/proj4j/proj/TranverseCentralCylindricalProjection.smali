.class public Lorg/locationtech/proj4j/proj/TranverseCentralCylindricalProjection;
.super Lorg/locationtech/proj4j/proj/CylindricalProjection;
.source "TranverseCentralCylindricalProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/CylindricalProjection;-><init>()V

    const-wide/high16 v0, -0x3fb2000000000000L    # -60.0

    .line 29
    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->degToRad(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->minLongitude:D

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    .line 30
    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->degToRad(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->maxLongitude:D

    return-void
.end method


# virtual methods
.method public isRectilinear()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 7

    .line 36
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v4, v0, v0

    sub-double/2addr v2, v4

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v6, v2, v4

    if-ltz v6, :cond_0

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 40
    invoke-static {p3, p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide p3

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5

    .line 38
    :cond_0
    new-instance p1, Lorg/locationtech/proj4j/ProjectionException;

    const-string p2, "F"

    invoke-direct {p1, p2}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "Transverse Central Cylindrical"

    return-object v0
.end method
