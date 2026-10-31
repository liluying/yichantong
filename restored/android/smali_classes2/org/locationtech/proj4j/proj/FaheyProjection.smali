.class public Lorg/locationtech/proj4j/proj/FaheyProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "FaheyProjection.java"


# static fields
.field private static final TOL:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    return-void
.end method

.method private asqrt(D)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    .line 42
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double p3, p3, v0

    .line 29
    invoke-static {p3, p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide p3

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide v0, 0x3ffd1b3f20a73f75L    # 1.819152

    mul-double v0, v0, p3

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide v0, 0x3fea367e414e7ee9L    # 0.819152

    mul-double p1, p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double p3, p3, p3

    sub-double/2addr v0, p3

    .line 30
    invoke-direct {p0, v0, v1}, Lorg/locationtech/proj4j/proj/FaheyProjection;->asqrt(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 5

    .line 35
    iget-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide v2, 0x3ffd1b3f20a73f75L    # 1.819152

    div-double/2addr v0, v2

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double v2, p3, p3

    sub-double/2addr v0, v2

    .line 36
    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide v0, 0x3fea367e414e7ee9L    # 0.819152

    .line 37
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    mul-double p3, p3, v0

    div-double/2addr p1, p3

    :goto_0
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "Fahey"

    return-object v0
.end method
