.class public Lorg/locationtech/proj4j/proj/ObliqueStereographicAlternativeProjection;
.super Lorg/locationtech/proj4j/proj/GaussProjection;
.source "ObliqueStereographicAlternativeProjection.java"


# instance fields
.field private R2:D

.field private cosc0:D

.field private sinc0:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/GaussProjection;-><init>()V

    return-void
.end method


# virtual methods
.method public OLDproject(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 36
    invoke-super/range {p0 .. p5}, Lorg/locationtech/proj4j/proj/GaussProjection;->project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;

    .line 37
    iget-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 38
    iget-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 39
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 40
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 41
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 42
    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/ObliqueStereographicAlternativeProjection;->R2:D

    mul-double v10, v10, v12

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/ObliqueStereographicAlternativeProjection;->sinc0:D

    mul-double v12, v12, v6

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/ObliqueStereographicAlternativeProjection;->cosc0:D

    mul-double v14, v14, v4

    mul-double v14, v14, v8

    add-double/2addr v12, v14

    div-double/2addr v10, v12

    mul-double v12, v10, v4

    .line 43
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v12, v12, v2

    iput-wide v12, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 44
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/ObliqueStereographicAlternativeProjection;->cosc0:D

    mul-double v2, v2, v6

    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/ObliqueStereographicAlternativeProjection;->sinc0:D

    mul-double v6, v6, v4

    mul-double v6, v6, v8

    sub-double/2addr v2, v6

    mul-double v10, v10, v2

    iput-wide v10, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v1
.end method

.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public initialize()V
    .locals 4

    .line 86
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/GaussProjection;->initialize()V

    .line 87
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/GaussProjection;->phic0:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/ObliqueStereographicAlternativeProjection;->sinc0:D

    .line 88
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/GaussProjection;->phic0:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/ObliqueStereographicAlternativeProjection;->cosc0:D

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 89
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/GaussProjection;->rc:D

    mul-double v2, v2, v0

    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/ObliqueStereographicAlternativeProjection;->R2:D

    return-void
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 49
    invoke-super/range {p0 .. p5}, Lorg/locationtech/proj4j/proj/GaussProjection;->project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;

    .line 50
    iget-wide v2, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 51
    iget-wide v4, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 52
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 53
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 54
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 55
    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/ObliqueStereographicAlternativeProjection;->R2:D

    mul-double v10, v10, v12

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/ObliqueStereographicAlternativeProjection;->sinc0:D

    mul-double v12, v12, v6

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/ObliqueStereographicAlternativeProjection;->cosc0:D

    mul-double v14, v14, v4

    mul-double v14, v14, v8

    add-double/2addr v12, v14

    div-double/2addr v10, v12

    mul-double v12, v10, v4

    .line 56
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v12, v12, v2

    iput-wide v12, v1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 57
    iget-wide v2, v0, Lorg/locationtech/proj4j/proj/ObliqueStereographicAlternativeProjection;->cosc0:D

    mul-double v2, v2, v6

    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/ObliqueStereographicAlternativeProjection;->sinc0:D

    mul-double v6, v6, v4

    mul-double v6, v6, v8

    sub-double/2addr v2, v6

    mul-double v10, v10, v2

    iput-wide v10, v1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v1
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 15

    .line 62
    iget-wide v1, p0, Lorg/locationtech/proj4j/proj/Projection;->scaleFactor:D

    div-double v3, p1, v1

    div-double v1, p3, v1

    mul-double v5, v3, v3

    mul-double v7, v1, v1

    add-double/2addr v5, v7

    .line 64
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-eqz v9, :cond_0

    .line 68
    iget-wide v7, p0, Lorg/locationtech/proj4j/proj/ObliqueStereographicAlternativeProjection;->R2:D

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double v7, v7, v9

    .line 69
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .line 70
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 71
    iget-wide v11, p0, Lorg/locationtech/proj4j/proj/ObliqueStereographicAlternativeProjection;->sinc0:D

    mul-double v11, v11, v7

    mul-double v13, v1, v9

    move-wide/from16 p1, v1

    iget-wide v1, p0, Lorg/locationtech/proj4j/proj/ObliqueStereographicAlternativeProjection;->cosc0:D

    mul-double v13, v13, v1

    div-double/2addr v13, v5

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    mul-double v3, v3, v9

    .line 72
    iget-wide v11, p0, Lorg/locationtech/proj4j/proj/ObliqueStereographicAlternativeProjection;->cosc0:D

    mul-double v5, v5, v11

    mul-double v5, v5, v7

    iget-wide v7, p0, Lorg/locationtech/proj4j/proj/ObliqueStereographicAlternativeProjection;->sinc0:D

    mul-double v7, v7, p1

    mul-double v7, v7, v9

    sub-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    :goto_0
    move-object v0, p0

    move-object/from16 v5, p5

    move-wide v3, v1

    move-wide v1, v7

    goto :goto_1

    .line 75
    :cond_0
    iget-wide v1, p0, Lorg/locationtech/proj4j/proj/GaussProjection;->phic0:D

    goto :goto_0

    .line 78
    :goto_1
    invoke-super/range {v0 .. v5}, Lorg/locationtech/proj4j/proj/GaussProjection;->projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 93
    const-string v0, "Oblique Stereographic Alternative"

    return-object v0
.end method
