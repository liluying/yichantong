.class public Lorg/locationtech/proj4j/proj/LinearProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "LinearProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
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

.method public inverseProject(Lorg/locationtech/proj4j/ProjCoordinate;Lorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 2

    .line 38
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    iput-wide v0, p2, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 39
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iput-wide v0, p2, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p2
.end method

.method public inverseTransform([DI[DII)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int/lit8 v1, p4, 0x1

    add-int/lit8 v2, p2, 0x1

    .line 45
    aget-wide v3, p1, p2

    aput-wide v3, p3, p4

    add-int/lit8 p4, p4, 0x2

    add-int/lit8 p2, p2, 0x2

    .line 46
    aget-wide v2, p1, v2

    aput-wide v2, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isRectilinear()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(Lorg/locationtech/proj4j/ProjCoordinate;Lorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 2

    .line 25
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    iput-wide v0, p2, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 26
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iput-wide v0, p2, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "Linear"

    return-object v0
.end method

.method public transform([DI[DII)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int/lit8 v1, p4, 0x1

    add-int/lit8 v2, p2, 0x1

    .line 32
    aget-wide v3, p1, p2

    aput-wide v3, p3, p4

    add-int/lit8 p4, p4, 0x2

    add-int/lit8 p2, p2, 0x2

    .line 33
    aget-wide v2, p1, v2

    aput-wide v2, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
