.class public Lorg/locationtech/proj4j/proj/Wagner3Projection;
.super Lorg/locationtech/proj4j/proj/PseudoCylindricalProjection;
.source "Wagner3Projection.java"


# static fields
.field private static final TWOTHIRD:D = 0.6666666666666666


# instance fields
.field private C_x:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/PseudoCylindricalProjection;-><init>()V

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
    .locals 6

    .line 43
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    .line 44
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->trueScaleLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/Projection;->trueScaleLatitude:D

    mul-double v4, v4, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Wagner3Projection;->C_x:D

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    return-void
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 2

    .line 31
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Wagner3Projection;->C_x:D

    mul-double v0, v0, p1

    const-wide p1, 0x3fe5555555555555L    # 0.6666666666666666

    mul-double p1, p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double v0, v0, p1

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 32
    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 4

    .line 37
    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 38
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/Wagner3Projection;->C_x:D

    const-wide v2, 0x3fe5555555555555L    # 0.6666666666666666

    mul-double p3, p3, v2

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double v0, v0, p3

    div-double/2addr p1, v0

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "Wagner III"

    return-object v0
.end method
