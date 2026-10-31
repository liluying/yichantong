.class public Lorg/locationtech/proj4j/proj/AugustProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "AugustProjection.java"


# static fields
.field private static final M:D = 1.333333333333333


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/locationtech/proj4j/proj/Projection;-><init>()V

    return-void
.end method


# virtual methods
.method public hasInverse()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isConformal()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 17

    move-object/from16 v0, p5

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    mul-double v3, p3, v1

    .line 31
    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    mul-double v5, v3, v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double v5, v7, v5

    .line 32
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double v1, v1, p1

    .line 33
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v9, v9, v5

    add-double/2addr v9, v7

    .line 34
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v1, v1, v5

    div-double/2addr v1, v9

    div-double/2addr v3, v9

    const-wide v5, 0x3ff5555555555554L    # 1.333333333333333

    mul-double v7, v1, v5

    mul-double v1, v1, v1

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    add-double v11, v1, v9

    mul-double v13, v3, v3

    mul-double v15, v13, v9

    sub-double/2addr v11, v15

    mul-double v7, v7, v11

    .line 36
    iput-wide v7, v0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    mul-double v3, v3, v5

    mul-double v1, v1, v9

    add-double/2addr v1, v9

    sub-double/2addr v1, v13

    mul-double v3, v3, v1

    .line 37
    iput-wide v3, v0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "August Epicycloidal"

    return-object v0
.end method
