.class public Lorg/locationtech/proj4j/proj/Eckert4Projection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "Eckert4Projection.java"


# static fields
.field private static final C_p:D = 3.5707963267948966

.field private static final C_x:D = 0.4222382003157712

.field private static final C_y:D = 1.3265004281770023

.field private static final EPS:D = 1.0E-7

.field private static final RC_p:D = 0.2800495767557787

.field private static final RC_y:D = 0.7538633073600218


# instance fields
.field private final NITER:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    const/4 v0, 0x6

    .line 33
    iput v0, p0, Lorg/locationtech/proj4j/proj/Eckert4Projection;->NITER:I

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
    .locals 16

    move-object/from16 v0, p5

    const-wide v1, 0x400c90fdaa22168cL    # 3.5707963267948966

    .line 39
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    mul-double v1, p3, p3

    const-wide v5, 0x3f80eedc4133fcddL    # 0.00826809

    mul-double v5, v5, v1

    const-wide v7, 0x3f9668fec71adc24L    # 0.0218849

    add-double/2addr v5, v7

    mul-double v1, v1, v5

    const-wide v5, 0x3feca5375c8d9f90L    # 0.895168

    add-double/2addr v1, v5

    mul-double v1, v1, p3

    const/4 v5, 0x6

    :goto_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-lez v5, :cond_1

    .line 43
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 44
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    add-double/2addr v12, v8

    mul-double v14, v10, v12

    add-double/2addr v14, v1

    sub-double/2addr v14, v3

    mul-double v8, v8, v12

    add-double/2addr v8, v6

    mul-double v10, v10, v10

    sub-double/2addr v8, v10

    div-double/2addr v14, v8

    sub-double/2addr v1, v14

    .line 47
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v12, v8, v10

    if-gez v12, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-wide v3, 0x3ff539588352674fL    # 1.3265004281770023

    const-wide v8, 0x3fdb05f35f5e99c0L    # 0.4222382003157712

    if-nez v5, :cond_3

    mul-double v5, p1, v8

    .line 51
    iput-wide v5, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide/16 v5, 0x0

    cmpg-double v7, v1, v5

    if-gez v7, :cond_2

    const-wide v3, -0x400ac6a77cad98b1L    # -1.3265004281770023

    .line 52
    :cond_2
    iput-wide v3, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v0

    :cond_3
    mul-double v8, v8, p1

    .line 54
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    add-double/2addr v10, v6

    mul-double v8, v8, v10

    iput-wide v8, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 55
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v1, v1, v3

    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v0
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 4

    const-wide v0, 0x3ff539588352674fL    # 1.3265004281770023

    div-double/2addr p3, v0

    .line 63
    invoke-static {p3, p4}, Lorg/locationtech/proj4j/util/ProjectionMath;->asin(D)D

    move-result-wide p3

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 64
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, p3

    const-wide v2, 0x3fdb05f35f5e99c0L    # 0.4222382003157712

    mul-double v0, v0, v2

    div-double/2addr p1, v0

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 65
    iget-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-double/2addr p3, v2

    mul-double v0, v0, p3

    add-double/2addr p1, v0

    const-wide p3, 0x400c90fdaa22168cL    # 3.5707963267948966

    div-double/2addr p1, p3

    invoke-static {p1, p2}, Lorg/locationtech/proj4j/util/ProjectionMath;->asin(D)D

    move-result-wide p1

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 78
    const-string v0, "Eckert IV"

    return-object v0
.end method
