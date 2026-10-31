.class public Lorg/locationtech/proj4j/proj/HatanoProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "HatanoProjection.java"


# static fields
.field private static final CN:D = 2.67595

.field private static final CS:D = 2.43763

.field private static final EPS:D = 1.0E-7

.field private static final FXC:D = 0.85

.field private static final FYCN:D = 1.75859

.field private static final FYCS:D = 1.93052

.field private static final NITER:I = 0x14

.field private static final ONETOL:D = 1.000001

.field private static final RCN:D = 0.3736990601468637

.field private static final RCS:D = 0.4102345310814193

.field private static final RXC:D = 1.1764705882352942

.field private static final RYCN:D = 0.5686373742600607

.field private static final RYCS:D = 0.5179951515653813


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

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 14

    move-object/from16 v0, p5

    .line 46
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double v5, p3, v3

    if-gez v5, :cond_0

    const-wide v5, 0x40038044284dfce3L    # 2.43763

    goto :goto_0

    :cond_0
    const-wide v5, 0x40056858793dd97fL    # 2.67595

    :goto_0
    mul-double v1, v1, v5

    const/16 v5, 0x14

    move-wide/from16 v5, p3

    const/16 v7, 0x14

    :goto_1
    if-lez v7, :cond_2

    .line 48
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    add-double/2addr v8, v5

    sub-double/2addr v8, v1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    add-double/2addr v12, v10

    div-double/2addr v8, v12

    sub-double/2addr v5, v8

    .line 49
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v12, v8, v10

    if-gez v12, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    const-wide v1, 0x3feb333333333333L    # 0.85

    mul-double v1, v1, p1

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v5, v5, v7

    .line 51
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v1, v1, v7

    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 52
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    cmpg-double v7, v5, v3

    if-gez v7, :cond_3

    const-wide v3, 0x3ffee368f08461faL    # 1.93052

    goto :goto_3

    :cond_3
    const-wide v3, 0x3ffc232f44912989L    # 1.75859

    :goto_3
    mul-double v1, v1, v3

    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v0
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 19

    move-object/from16 v0, p5

    const-wide/16 v1, 0x0

    cmpg-double v3, p3, v1

    if-gez v3, :cond_0

    const-wide v4, 0x3fe0936a916eb74eL    # 0.5179951515653813

    goto :goto_0

    :cond_0
    const-wide v4, 0x3fe2324701b75e65L    # 0.5686373742600607

    :goto_0
    mul-double v4, v4, p3

    .line 60
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, -0x4006de04abbbd2e8L    # -1.5707963267948966

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-string v12, "I"

    const-wide v13, 0x3ff000010c6f7a0bL    # 1.000001

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v17, v6, v15

    if-lez v17, :cond_3

    .line 61
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v17, v6, v13

    if-gtz v17, :cond_2

    cmpl-double v6, v4, v1

    if-lez v6, :cond_1

    move-wide v4, v10

    goto :goto_1

    :cond_1
    move-wide v4, v8

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v0, v12}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    :goto_1
    const-wide v6, 0x3ff2d2d2d2d2d2d3L    # 1.1764705882352942

    mul-double v6, v6, p1

    .line 65
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    div-double v6, v6, v17

    iput-wide v6, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    add-double/2addr v4, v4

    .line 67
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    if-gez v3, :cond_4

    const-wide v6, 0x3fda414855abd058L    # 0.4102345310814193

    goto :goto_2

    :cond_4
    const-wide v6, 0x3fd7eaaf76781c20L    # 0.3736990601468637

    :goto_2
    mul-double v4, v4, v6

    iput-wide v4, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 68
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v5, v3, v15

    if-lez v5, :cond_7

    .line 69
    iget-wide v3, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v5, v3, v13

    if-gtz v5, :cond_6

    .line 70
    iget-wide v3, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    cmpl-double v5, v3, v1

    if-lez v5, :cond_5

    move-wide v8, v10

    :cond_5
    iput-wide v8, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v0

    .line 69
    :cond_6
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v0, v12}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_7
    iget-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 81
    const-string v0, "Hatano Asymmetrical Equal Area"

    return-object v0
.end method
