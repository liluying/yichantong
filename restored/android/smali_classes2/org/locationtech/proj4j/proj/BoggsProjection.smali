.class public Lorg/locationtech/proj4j/proj/BoggsProjection;
.super Lorg/locationtech/proj4j/proj/PseudoCylindricalProjection;
.source "BoggsProjection.java"


# static fields
.field private static final EPS:D = 1.0E-7

.field private static final FXC:D = 2.00276

.field private static final FXC2:D = 1.11072

.field private static final FYC:D = 0.49931

.field private static final FYC2:D = 1.4142135623730951

.field private static final NITER:I = 0x14

.field private static final ONETOL:D = 1.000001


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/PseudoCylindricalProjection;-><init>()V

    return-void
.end method


# virtual methods
.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isEqualArea()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 14

    move-object/from16 v0, p5

    .line 40
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    const-wide/16 v1, 0x0

    .line 41
    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    move-wide/from16 v6, p3

    goto :goto_2

    .line 43
    :cond_0
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double v1, v1, v5

    const/16 v5, 0x14

    move-wide/from16 v6, p3

    :goto_0
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-lez v5, :cond_2

    .line 45
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    add-double/2addr v10, v6

    sub-double/2addr v10, v1

    .line 46
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    add-double/2addr v12, v8

    div-double/2addr v10, v12

    sub-double/2addr v6, v10

    .line 47
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpg-double v12, v10, v3

    if-gez v12, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v1

    const-wide v1, 0x400005a708ede54bL    # 2.00276

    mul-double v1, v1, p1

    .line 50
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    div-double/2addr v8, v3

    const-wide v3, 0x3ff1c58255b035bdL    # 1.11072

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    div-double/2addr v3, v10

    add-double/2addr v8, v3

    div-double/2addr v1, v8

    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    :goto_2
    const-wide v1, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    .line 52
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    add-double v1, p3, v3

    const-wide v3, 0x3fdff4b1ee243569L    # 0.49931

    mul-double v1, v1, v3

    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "Boggs Eumorphic"

    return-object v0
.end method
