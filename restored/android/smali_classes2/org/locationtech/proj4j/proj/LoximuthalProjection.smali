.class public Lorg/locationtech/proj4j/proj/LoximuthalProjection;
.super Lorg/locationtech/proj4j/proj/PseudoCylindricalProjection;
.source "LoximuthalProjection.java"


# static fields
.field private static final EPS:D = 1.0E-8

.field private static final FC:D = 0.9213177319235613

.field private static final RP:D = 0.3183098861837907


# instance fields
.field private cosphi1:D

.field private phi1:D

.field private tanphi1:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 35
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/PseudoCylindricalProjection;-><init>()V

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LoximuthalProjection;->phi1:D

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LoximuthalProjection;->cosphi1:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 38
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/LoximuthalProjection;->phi1:D

    mul-double v2, v2, v0

    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/LoximuthalProjection;->tanphi1:D

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
    .locals 8

    .line 43
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LoximuthalProjection;->phi1:D

    sub-double v0, p3, v0

    const-wide v2, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 45
    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/LoximuthalProjection;->cosphi1:D

    mul-double p1, p1, p3

    goto :goto_1

    :cond_0
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double p3, p3, v4

    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr p3, v4

    .line 48
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v6, v4, v2

    if-ltz v6, :cond_2

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v6, v4, v2

    if-gez v6, :cond_1

    goto :goto_0

    :cond_1
    mul-double p1, p1, v0

    .line 51
    invoke-static {p3, p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide p3

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/LoximuthalProjection;->tanphi1:D

    div-double/2addr p3, v2

    invoke-static {p3, p4}, Ljava/lang/Math;->log(D)D

    move-result-wide p3

    div-double/2addr p1, p3

    goto :goto_1

    :cond_2
    :goto_0
    const-wide/16 p1, 0x0

    .line 53
    :goto_1
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 54
    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 10

    .line 59
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/LoximuthalProjection;->phi1:D

    add-double/2addr v0, p3

    .line 61
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    .line 62
    iget-wide p3, p0, Lorg/locationtech/proj4j/proj/LoximuthalProjection;->cosphi1:D

    :goto_0
    div-double/2addr p1, p3

    goto :goto_2

    :cond_0
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, p3

    const-wide v6, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v2, v6

    .line 63
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v8, v6, v4

    if-ltz v8, :cond_2

    .line 64
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v8, v6, v4

    if-gez v8, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/LoximuthalProjection;->tanphi1:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double p1, p1, v2

    goto :goto_0

    :cond_2
    :goto_1
    const-wide/16 p1, 0x0

    .line 69
    :goto_2
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 70
    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "Loximuthal"

    return-object v0
.end method
