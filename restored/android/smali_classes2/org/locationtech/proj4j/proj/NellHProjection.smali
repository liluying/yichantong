.class public Lorg/locationtech/proj4j/proj/NellHProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "NellHProjection.java"


# static fields
.field private static final EPS:D = 1.0E-7

.field private static final NITER:I = 0x9


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
    .locals 6

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double p1, p1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 31
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    add-double/2addr v4, v2

    mul-double p1, p1, v4

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double v0, v0, p3

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    sub-double/2addr p3, p1

    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    mul-double p3, p3, p1

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 16

    move-object/from16 v0, p5

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    mul-double v3, p3, v1

    const/16 v5, 0x9

    :goto_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    if-lez v5, :cond_1

    .line 42
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 43
    iget-wide v12, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    div-double v14, p3, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    sub-double v14, p3, v14

    sub-double/2addr v14, v3

    mul-double v10, v10, v10

    div-double v10, v1, v10

    sub-double v10, v6, v10

    div-double/2addr v14, v10

    sub-double/2addr v12, v14

    iput-wide v12, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 44
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v14, v10, v12

    if-gez v14, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v5, :cond_3

    const-wide/16 v1, 0x0

    cmpg-double v5, v3, v1

    if-gez v5, :cond_2

    const-wide v1, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_2

    :cond_2
    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 48
    :goto_2
    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double v1, p1, v8

    .line 49
    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v0

    :cond_3
    mul-double v1, p1, v8

    .line 51
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    add-double/2addr v3, v6

    div-double/2addr v1, v3

    iput-wide v1, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "Nell-Hammer"

    return-object v0
.end method
