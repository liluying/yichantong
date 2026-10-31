.class public Lorg/locationtech/proj4j/proj/FoucautProjection;
.super Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;
.source "FoucautProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const/4 v5, 0x1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    move-object v0, p0

    .line 25
    invoke-direct/range {v0 .. v5}, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;-><init>(DDZ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hasInverse()Z
    .locals 1

    .line 22
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->hasInverse()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 22
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 0

    .line 22
    invoke-super/range {p0 .. p5}, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 0

    .line 22
    invoke-super/range {p0 .. p5}, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "Foucaut"

    return-object v0
.end method
