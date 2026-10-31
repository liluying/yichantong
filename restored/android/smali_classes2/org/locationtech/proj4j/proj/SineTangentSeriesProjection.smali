.class Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;
.super Lorg/locationtech/proj4j/proj/ConicProjection;
.source "SineTangentSeriesProjection.java"


# instance fields
.field private C_p:D

.field private C_x:D

.field private C_y:D

.field private tan_mode:Z


# direct methods
.method protected constructor <init>(DDZ)V
    .locals 2

    .line 33
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/ConicProjection;-><init>()V

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/Projection;->es:D

    div-double v0, p3, p1

    .line 35
    iput-wide v0, p0, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->C_x:D

    .line 36
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->C_y:D

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    div-double/2addr p1, p3

    .line 37
    iput-wide p1, p0, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->C_p:D

    .line 38
    iput-boolean p5, p0, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->tan_mode:Z

    .line 39
    invoke-virtual {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 82
    :cond_0
    instance-of v1, p1, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 83
    move-object v1, p1

    check-cast v1, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;

    .line 84
    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->C_x:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->C_x:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->C_y:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->C_y:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_1

    iget-wide v3, p0, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->C_p:D

    iget-wide v5, v1, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->C_p:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_1

    iget-boolean v3, p0, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->tan_mode:Z

    iget-boolean v1, v1, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->tan_mode:Z

    if-ne v3, v1, :cond_1

    .line 89
    invoke-super {p0, p1}, Lorg/locationtech/proj4j/proj/Projection;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 96
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->C_x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->C_y:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->C_p:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-boolean v3, p0, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->tan_mode:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 2

    .line 45
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->C_x:D

    mul-double v0, v0, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double v0, v0, p1

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 46
    iget-wide p1, p0, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->C_y:D

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 47
    iget-wide p1, p0, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->C_p:D

    mul-double p3, p3, p1

    .line 48
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    .line 49
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->tan_mode:Z

    if-eqz v0, :cond_0

    .line 50
    iget-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double p1, p1, p1

    mul-double v0, v0, p1

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 51
    iget-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {p3, p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5

    .line 53
    :cond_0
    iget-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    div-double/2addr v0, p1

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 54
    iget-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 4

    .line 62
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->C_y:D

    div-double/2addr p3, v0

    .line 63
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->tan_mode:Z

    if-eqz v0, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Math;->atan(D)D

    move-result-wide p3

    goto :goto_0

    :cond_0
    invoke-static {p3, p4}, Lorg/locationtech/proj4j/util/ProjectionMath;->asin(D)D

    move-result-wide p3

    :goto_0
    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    .line 64
    iget-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->C_p:D

    div-double/2addr v0, v2

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 65
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->C_x:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    div-double/2addr p1, v2

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 66
    iget-boolean v0, p0, Lorg/locationtech/proj4j/proj/SineTangentSeriesProjection;->tan_mode:Z

    if-eqz v0, :cond_1

    mul-double p3, p3, p3

    div-double/2addr p1, p3

    .line 67
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object p5

    :cond_1
    mul-double p1, p1, p3

    .line 69
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object p5
.end method
