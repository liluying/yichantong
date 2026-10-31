.class public Lorg/locationtech/proj4j/proj/McBrydeThomasFlatPolarSine2Projection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "McBrydeThomasFlatPolarSine2Projection.java"


# static fields
.field private static final C1:D = 0.45503

.field private static final C1_2:D = 0.3333333333333333

.field private static final C2:D = 1.36509

.field private static final C3:D = 1.41546

.field private static final C_x:D = 0.22248

.field private static final C_y:D = 1.44492

.field private static final LOOP_TOL:D = 1.0E-7

.field private static final MAX_ITER:I = 0xa


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
    .locals 15

    move-object/from16 v0, p5

    const-wide v1, 0x3ff6a5b9628cbd12L    # 1.41546

    .line 40
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    const/16 v1, 0xa

    :goto_0
    const-wide v5, 0x3ff5d7689ca18bd6L    # 1.36509

    if-lez v1, :cond_1

    div-double v7, p3, v5

    .line 43
    iget-wide v9, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide v11, 0x3fdd1f36262cba73L    # 0.45503

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double v13, v13, v11

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    add-double/2addr v13, v11

    sub-double/2addr v13, v3

    const-wide v11, 0x3fd5555555555555L    # 0.3333333333333333

    .line 44
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v11

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    add-double/2addr v7, v11

    div-double/2addr v13, v7

    sub-double/2addr v9, v13

    iput-wide v9, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 45
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v2, v7, v9

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    div-double v1, p3, v5

    const-wide v3, 0x3fcc7a398201cd60L    # 0.22248

    mul-double v3, v3, p1

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    .line 49
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    div-double/2addr v7, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v5

    mul-double v3, v3, v7

    iput-wide v3, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide v3, 0x3ff71e646f156191L    # 1.44492

    .line 50
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v1, v1, v3

    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v0
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 4

    const-wide v0, 0x3ff71e646f156191L    # 1.44492

    div-double/2addr p3, v0

    .line 57
    invoke-static {p3, p4}, Lorg/locationtech/proj4j/util/ProjectionMath;->asin(D)D

    move-result-wide p3

    const-wide v0, 0x3ff5d7689ca18bd6L    # 1.36509

    mul-double v0, v0, p3

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v0, v0, v2

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide v2, 0x3fcc7a398201cd60L    # 0.22248

    mul-double v0, v0, v2

    div-double/2addr p1, v0

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide p1, 0x3fdd1f36262cba73L    # 0.45503

    .line 59
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double p3, p3, p1

    iget-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    add-double/2addr p3, p1

    const-wide p1, 0x3ff6a5b9628cbd12L    # 1.41546

    div-double/2addr p3, p1

    invoke-static {p3, p4}, Lorg/locationtech/proj4j/util/ProjectionMath;->asin(D)D

    move-result-wide p1

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "McBryde-Thomas Flat-Pole Sine (No. 2)"

    return-object v0
.end method
