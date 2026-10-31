.class public Lorg/locationtech/proj4j/proj/Wagner2Projection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "Wagner2Projection.java"


# static fields
.field private static final C_p1:D = 0.88022

.field private static final C_p2:D = 0.8855

.field private static final C_x:D = 0.92483

.field private static final C_y:D = 1.38725


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

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
    .locals 4

    const-wide v0, 0x3fec5604189374bcL    # 0.8855

    mul-double v0, v0, p3

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, 0x3fec2ac322291fb4L    # 0.88022

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Lorg/locationtech/proj4j/util/ProjectionMath;->asin(D)D

    move-result-wide v0

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide v0, 0x3fed9835158b8280L    # 0.92483

    mul-double p1, p1, v0

    .line 34
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double p1, p1, v0

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide p1, 0x3ff6322d0e560419L    # 1.38725

    mul-double p3, p3, p1

    .line 35
    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 2

    const-wide v0, 0x3ff6322d0e560419L    # 1.38725

    div-double/2addr p3, v0

    .line 40
    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide v0, 0x3fed9835158b8280L    # 0.92483

    .line 41
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double p3, p3, v0

    div-double/2addr p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 42
    iget-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    const-wide p3, 0x3fec2ac322291fb4L    # 0.88022

    div-double/2addr p1, p3

    invoke-static {p1, p2}, Lorg/locationtech/proj4j/util/ProjectionMath;->asin(D)D

    move-result-wide p1

    const-wide p3, 0x3fec5604189374bcL    # 0.8855

    div-double/2addr p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "Wagner II"

    return-object v0
.end method
