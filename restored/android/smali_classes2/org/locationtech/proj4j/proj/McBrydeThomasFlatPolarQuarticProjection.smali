.class public Lorg/locationtech/proj4j/proj/McBrydeThomasFlatPolarQuarticProjection;
.super Lorg/locationtech/proj4j/proj/PseudoCylindricalProjection;
.source "McBrydeThomasFlatPolarQuarticProjection.java"


# static fields
.field private static final C:D = 1.7071067811865475

.field private static final EPS:D = 1.0E-7

.field private static final FXC:D = 0.3124597141037825

.field private static final FYC:D = 1.874758284622695

.field private static final NITER:I = 0x14

.field private static final ONETOL:D = 1.000001

.field private static final RC:D = 0.585786437626905

.field private static final RXC:D = 3.2004125807650623

.field private static final RYC:D = 0.533402096794177


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/PseudoCylindricalProjection;-><init>()V

    return-void
.end method


# virtual methods
.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isEqualArea()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 15

    move-object/from16 v0, p5

    const-wide v1, 0x3ffb504f333f9de6L    # 1.7071067811865475

    .line 42
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    const/16 v1, 0x14

    :goto_0
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    if-lez v1, :cond_1

    .line 44
    iget-wide v7, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v9, p3, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    add-double/2addr v11, v13

    sub-double/2addr v11, v3

    .line 45
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v9, v9, v5

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    add-double/2addr v9, v13

    div-double/2addr v11, v9

    sub-double/2addr v7, v11

    iput-wide v7, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 46
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

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
    const-wide v1, 0x3fd3ff5707592b1aL    # 0.3124597141037825

    mul-double v1, v1, p1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 48
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v3

    mul-double v3, p3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    div-double/2addr v7, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v5

    mul-double v1, v1, v7

    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide v1, 0x3ffdff028b05c0a7L    # 1.874758284622695

    .line 49
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    iput-wide v3, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v0
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 18

    move-object/from16 v0, p5

    const-wide v1, 0x3fe111a1462b2982L    # 0.533402096794177

    mul-double v1, v1, p3

    .line 57
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const-wide/16 v7, 0x0

    const-string v9, "I"

    const-wide v10, 0x3ff000010c6f7a0bL    # 1.000001

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v14, v3, v12

    if-lez v14, :cond_2

    .line 58
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v14, v3, v10

    if-gtz v14, :cond_1

    cmpg-double v3, v1, v7

    if-gez v3, :cond_0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const-wide v3, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    goto :goto_0

    :cond_0
    const-wide v3, 0x400921fb54442d18L    # Math.PI

    move-wide v1, v12

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v0, v9}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    mul-double v3, v3, v5

    :goto_0
    const-wide v14, 0x40099a71e940be43L    # 3.2004125807650623

    mul-double v14, v14, p1

    .line 63
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v5, v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    div-double v16, v16, v5

    add-double v16, v16, v12

    div-double v14, v14, v16

    iput-wide v14, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 64
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    const-wide v3, 0x3fe2bec333018867L    # 0.585786437626905

    mul-double v1, v1, v3

    .line 65
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v5, v3, v12

    if-lez v5, :cond_5

    .line 66
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v5, v3, v10

    if-gtz v5, :cond_4

    cmpg-double v3, v1, v7

    if-gez v3, :cond_3

    const-wide v1, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_1

    :cond_3
    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto :goto_1

    .line 67
    :cond_4
    new-instance v0, Lorg/locationtech/proj4j/ProjectionException;

    invoke-direct {v0, v9}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_5
    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    .line 72
    :goto_1
    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 85
    const-string v0, "McBryde-Thomas Flat-Polar Quartic"

    return-object v0
.end method
