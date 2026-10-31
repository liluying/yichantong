.class public Lorg/locationtech/proj4j/proj/RectangularPolyconicProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "RectangularPolyconicProjection.java"


# static fields
.field private static final EPS:D = 1.0E-9


# instance fields
.field private fxa:D

.field private fxb:D

.field private mode:Z

.field private phi0:D

.field private phi1:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 0

    .line 53
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    return-void
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 6

    .line 37
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/RectangularPolyconicProjection;->mode:Z

    if-eqz v0, :cond_0

    .line 38
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/RectangularPolyconicProjection;->fxb:D

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/RectangularPolyconicProjection;->fxa:D

    :goto_0
    mul-double p1, p1, v0

    goto :goto_1

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    goto :goto_0

    .line 41
    :goto_1
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    add-double/2addr p1, p1

    .line 42
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 43
    iget-wide p1, p0, Lorg/locationtech/proj4j/proj/RectangularPolyconicProjection;->phi0:D

    neg-double p1, p1

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5

    .line 45
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v0, v2, v0

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 46
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget-wide v4, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v0, v0, v4

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 47
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/RectangularPolyconicProjection;->phi0:D

    sub-double/2addr p3, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    sub-double/2addr v2, p1

    iget-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v2, v2, p1

    add-double/2addr p3, v2

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "Rectangular Polyconic"

    return-object v0
.end method
