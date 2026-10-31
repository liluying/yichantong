.class public Lorg/locationtech/proj4j/proj/NicolosiProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "NicolosiProjection.java"


# static fields
.field private static final EPS:D = 1.0E-10


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    return-void
.end method


# virtual methods
.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 29

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    const-wide v9, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v11, v5, v9

    if-gez v11, :cond_0

    .line 31
    iput-wide v7, v4, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 32
    iput-wide v2, v4, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v4

    .line 33
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v11, v5, v9

    if-gez v11, :cond_1

    .line 34
    iput-wide v0, v4, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 35
    iput-wide v7, v4, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v4

    .line 36
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v11, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v13, v5, v9

    if-gez v13, :cond_2

    .line 37
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v0, v0, v5

    iput-wide v0, v4, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 38
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, v11

    iput-wide v0, v4, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v4

    .line 39
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    sub-double/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v13, v5, v9

    if-gez v13, :cond_3

    .line 40
    iput-wide v7, v4, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 41
    iput-wide v2, v4, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v4

    :cond_3
    div-double v5, v11, v0

    div-double v9, v0, v11

    sub-double/2addr v5, v9

    div-double v9, v2, v11

    mul-double v13, v9, v9

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    sub-double v13, v15, v13

    .line 47
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    sub-double v9, v17, v9

    div-double/2addr v13, v9

    div-double v9, v5, v13

    mul-double v9, v9, v9

    mul-double v19, v5, v17

    div-double v19, v19, v13

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    mul-double v5, v5, v21

    sub-double v19, v19, v5

    add-double v5, v9, v15

    div-double v19, v19, v5

    div-double v23, v17, v9

    mul-double v21, v21, v13

    add-double v23, v23, v21

    div-double v21, v15, v9

    add-double v21, v21, v15

    div-double v23, v23, v21

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v27, v19, v19

    mul-double v25, v25, v25

    div-double v25, v25, v5

    add-double v27, v27, v25

    .line 53
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    cmpg-double v25, v0, v7

    if-gez v25, :cond_4

    neg-double v5, v5

    :cond_4
    add-double v19, v19, v5

    mul-double v0, v19, v11

    .line 54
    iput-wide v0, v4, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double v0, v23, v23

    mul-double v5, v17, v17

    div-double/2addr v5, v9

    mul-double v13, v13, v17

    add-double/2addr v5, v13

    sub-double/2addr v5, v15

    div-double v5, v5, v21

    sub-double/2addr v0, v5

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    cmpg-double v5, v2, v7

    if-gez v5, :cond_5

    goto :goto_0

    :cond_5
    neg-double v0, v0

    :goto_0
    add-double v23, v23, v0

    mul-double v0, v23, v11

    .line 57
    iput-wide v0, v4, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "Nicolosi Globular"

    return-object v0
.end method
