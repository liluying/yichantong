.class public Lorg/locationtech/proj4j/proj/GallProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "GallProjection.java"


# static fields
.field private static final RXF:D = 1.4142135623730951

.field private static final RYF:D = 0.585786437626905

.field private static final XF:D = 0.7071067811865476

.field private static final YF:D = 1.7071067811865475


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
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
    .locals 2

    const-wide v0, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    mul-double p1, p1, v0

    .line 32
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    mul-double p3, p3, p1

    .line 33
    invoke-static {p3, p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    const-wide p3, 0x3ffb504f333f9de6L    # 1.7071067811865475

    mul-double p1, p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 2

    const-wide v0, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    mul-double p1, p1, v0

    .line 38
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide p1, 0x3fe2bec333018867L    # 0.585786437626905

    mul-double p3, p3, p1

    .line 39
    invoke-static {p3, p4}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    mul-double p1, p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "Gall (Gall Stereographic)"

    return-object v0
.end method
