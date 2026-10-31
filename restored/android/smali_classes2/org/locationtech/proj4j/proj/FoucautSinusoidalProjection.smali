.class public Lorg/locationtech/proj4j/proj/FoucautSinusoidalProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "FoucautSinusoidalProjection.java"


# static fields
.field private static final LOOP_TOL:D = 1.0E-7

.field private static final MAX_ITER:I = 0xa


# instance fields
.field private n:D

.field private n1:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
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

.method public initialize()V
    .locals 5

    .line 63
    invoke-super {p0}, Lorg/locationtech/proj4j/proj/Projection;->initialize()V

    .line 65
    iget-wide v0, p0, Lorg/locationtech/proj4j/proj/FoucautSinusoidalProjection;->n:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_0

    sub-double/2addr v2, v0

    .line 67
    iput-wide v2, p0, Lorg/locationtech/proj4j/proj/FoucautSinusoidalProjection;->n1:D

    return-void

    .line 66
    :cond_0
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    const-string v1, "-99"

    invoke-direct {v0, v1}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 6

    .line 35
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double p1, p1, v0

    .line 36
    iget-wide v2, p0, Lorg/locationtech/proj4j/proj/FoucautSinusoidalProjection;->n:D

    iget-wide v4, p0, Lorg/locationtech/proj4j/proj/FoucautSinusoidalProjection;->n1:D

    mul-double v0, v0, v4

    add-double/2addr v0, v2

    div-double/2addr p1, v0

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double v2, v2, p3

    .line 37
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double v4, v4, p1

    add-double/2addr v2, v4

    iput-wide v2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    .line 45
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/FoucautSinusoidalProjection;->n:D

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_3

    .line 46
    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const/16 v4, 0xa

    :goto_0
    if-lez v4, :cond_1

    .line 48
    iget-wide v8, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iget-wide v10, v0, Lorg/locationtech/proj4j/proj/FoucautSinusoidalProjection;->n:D

    mul-double v10, v10, v8

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/FoucautSinusoidalProjection;->n1:D

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    sub-double/2addr v10, v1

    iget-wide v12, v0, Lorg/locationtech/proj4j/proj/FoucautSinusoidalProjection;->n:D

    iget-wide v14, v0, Lorg/locationtech/proj4j/proj/FoucautSinusoidalProjection;->n1:D

    move-wide/from16 v16, v6

    iget-wide v6, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 49
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v14, v14, v5

    add-double/2addr v12, v14

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    iput-wide v8, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 50
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v9, v5, v7

    if-gez v9, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    move-wide/from16 v6, v16

    goto :goto_0

    :cond_1
    move-wide/from16 v16, v6

    :goto_1
    if-nez v4, :cond_4

    cmpg-double v4, v1, v16

    if-gez v4, :cond_2

    const-wide v1, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_2

    :cond_2
    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 54
    :goto_2
    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_3

    .line 56
    :cond_3
    invoke-static {v1, v2}, Lorg/locationtech/proj4j/util/ProjectionMath;->asin(D)D

    move-result-wide v1

    iput-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 57
    :cond_4
    :goto_3
    iget-wide v1, v3, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 58
    iget-wide v4, v0, Lorg/locationtech/proj4j/proj/FoucautSinusoidalProjection;->n:D

    iget-wide v6, v0, Lorg/locationtech/proj4j/proj/FoucautSinusoidalProjection;->n1:D

    mul-double v6, v6, v1

    add-double/2addr v4, v6

    mul-double v4, v4, p1

    div-double/2addr v4, v1

    iput-wide v4, v3, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 75
    const-string v0, "Foucaut Sinusoidal"

    return-object v0
.end method
