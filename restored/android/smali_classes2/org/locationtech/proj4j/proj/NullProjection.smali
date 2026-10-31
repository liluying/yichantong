.class public Lorg/locationtech/proj4j/proj/NullProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "NullProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    .line 28
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    return-void
.end method


# virtual methods
.method public isRectilinear()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(Lorg/locationtech/proj4j/ProjCoordinate;Lorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 2

    .line 32
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    iput-wide v0, p2, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 33
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iput-wide v0, p2, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p2
.end method

.method public projectInverse(Lorg/locationtech/proj4j/ProjCoordinate;Lorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 2

    .line 38
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    iput-wide v0, p2, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 39
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iput-wide v0, p2, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "Null"

    return-object v0
.end method
