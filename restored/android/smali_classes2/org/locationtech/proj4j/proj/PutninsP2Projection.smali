.class public Lorg/locationtech/proj4j/proj/PutninsP2Projection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "PutninsP2Projection.java"


# static fields
.field private static final C_p:D = 0.6141848493043784

.field private static final C_x:D = 1.8949

.field private static final C_y:D = 1.71848

.field private static final EPS:D = 1.0E-10

.field private static final NITER:I = 0xa

.field private static final PI_DIV_3:D = 1.0471975511965976


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
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
    .locals 17

    move-object/from16 v0, p5

    const-wide v1, 0x3fe3a766fc2ec076L    # 0.6141848493043784

    .line 38
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    mul-double v1, p3, p3

    .line 40
    iget-wide v5, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide v7, 0x3f72f61169b4cf80L    # 0.0046292

    mul-double v7, v7, v1

    const-wide v9, 0x3f82a2c63e125f53L    # 0.00909953

    add-double/2addr v7, v9

    mul-double v1, v1, v7

    const-wide v7, 0x3fe3b3e35c5b4aa9L    # 0.615709

    add-double/2addr v1, v7

    mul-double v5, v5, v1

    iput-wide v5, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const/16 v1, 0xa

    :goto_0
    if-lez v1, :cond_1

    .line 42
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 43
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    .line 44
    iget-wide v9, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double v13, v5, v11

    mul-double v15, v7, v13

    add-double v15, p3, v15

    sub-double/2addr v15, v3

    mul-double v5, v5, v13

    add-double/2addr v5, v11

    mul-double v7, v7, v7

    sub-double/2addr v5, v7

    div-double/2addr v15, v5

    sub-double/2addr v9, v15

    iput-wide v9, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 46
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v5, v7

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_3

    const-wide/16 v1, 0x0

    cmpg-double v3, p3, v1

    if-gez v3, :cond_2

    const-wide v1, -0x400f3eadc7d28c9bL    # -1.0471975511965976

    goto :goto_2

    :cond_2
    const-wide v1, 0x3ff0c152382d7365L    # 1.0471975511965976

    .line 50
    :goto_2
    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :cond_3
    const-wide v1, 0x3ffe5182a9930be1L    # 1.8949

    mul-double v1, v1, p1

    .line 51
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v3, v5

    mul-double v1, v1, v3

    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide v1, 0x3ffb7ee4e26d4802L    # 1.71848

    .line 52
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    iput-wide v3, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v0
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 4

    const-wide v0, 0x3ffb7ee4e26d4802L    # 1.71848

    div-double/2addr p3, v0

    .line 59
    invoke-static {p3, p4}, Lorg/locationtech/proj4j/util/ProjectionMath;->asin(D)D

    move-result-wide p3

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 60
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v0, p3, v0

    const-wide v2, 0x3ffe5182a9930be1L    # 1.8949

    mul-double v0, v0, v2

    div-double/2addr p1, v0

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 61
    iget-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p3, v2

    mul-double v0, v0, p3

    add-double/2addr p1, v0

    const-wide p3, 0x3fe3a766fc2ec076L    # 0.6141848493043784

    div-double/2addr p1, p3

    invoke-static {p1, p2}, Lorg/locationtech/proj4j/util/ProjectionMath;->asin(D)D

    move-result-wide p1

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 70
    const-string v0, "Putnins P2"

    return-object v0
.end method
