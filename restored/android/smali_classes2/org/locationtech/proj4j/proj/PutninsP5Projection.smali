.class public Lorg/locationtech/proj4j/proj/PutninsP5Projection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "PutninsP5Projection.java"


# static fields
.field private static final C:D = 1.01346

.field private static final D:D = 1.2158542


# instance fields
.field protected A:D

.field protected B:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 33
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/PutninsP5Projection;->A:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 34
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/PutninsP5Projection;->B:D

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
    .locals 10

    const-wide v0, 0x3ff03721d53cddd7L    # 1.01346

    mul-double p1, p1, v0

    .line 38
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/PutninsP5Projection;->A:D

    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/PutninsP5Projection;->B:D

    const-wide v6, 0x3ff37423889b4495L    # 1.2158542

    mul-double v6, v6, p3

    mul-double v6, v6, p3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    sub-double/2addr v2, v4

    mul-double p1, p1, v2

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double p3, p3, v0

    .line 39
    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 8

    const-wide v0, 0x3ff03721d53cddd7L    # 1.01346

    div-double/2addr p3, v0

    .line 44
    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 45
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/PutninsP5Projection;->A:D

    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/PutninsP5Projection;->B:D

    const-wide v6, 0x3ff37423889b4495L    # 1.2158542

    mul-double v6, v6, p3

    mul-double v6, v6, p3

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    mul-double v4, v4, p3

    sub-double/2addr v2, v4

    mul-double v2, v2, v0

    div-double/2addr p1, v2

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "Putnins P5"

    return-object v0
.end method
