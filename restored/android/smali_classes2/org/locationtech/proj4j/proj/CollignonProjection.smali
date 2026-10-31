.class public Lorg/locationtech/proj4j/proj/CollignonProjection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "CollignonProjection.java"


# static fields
.field private static final FXC:D = 1.1283791670955126

.field private static final FYC:D = 1.772453850905516

.field private static final ONEEPS:D = 1.0000001


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

.method public isEqualArea()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 5

    .line 33
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double p3, v0, p3

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide/16 v2, 0x0

    cmpg-double v4, p3, v2

    if-gtz v4, :cond_0

    .line 34
    iput-wide v2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :goto_0
    const-wide p3, 0x3ff20dd750429b6dL    # 1.1283791670955126

    mul-double p1, p1, p3

    .line 37
    iget-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    mul-double p1, p1, p3

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide p1, 0x3ffc5bf891b4ef6bL    # 1.772453850905516

    sub-double/2addr v0, p3

    mul-double v0, v0, p1

    .line 38
    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 9

    const-wide v0, 0x3ffc5bf891b4ef6bL    # 1.772453850905516

    div-double/2addr p3, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p3, v0

    mul-double v2, p3, p3

    sub-double v2, v0, v2

    .line 44
    iput-wide v2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v0

    if-gez v6, :cond_0

    .line 45
    invoke-static {p3, p4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    iput-wide v2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_1

    .line 46
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v6, 0x3ff000001ad7f29bL    # 1.0000001

    cmpl-double v8, v2, v6

    if-gtz v8, :cond_3

    cmpg-double v2, p3, v4

    if-gez v2, :cond_1

    const-wide v2, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_0

    :cond_1
    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 47
    :goto_0
    iput-wide v2, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 48
    :goto_1
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    cmpg-double v2, v0, v4

    if-gtz v2, :cond_2

    .line 49
    iput-wide v4, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    goto :goto_2

    :cond_2
    const-wide v2, 0x3ff20dd750429b6dL    # 1.1283791670955126

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double v0, v0, v2

    div-double/2addr p1, v0

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 52
    :goto_2
    iput-wide p3, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    return-object p5

    .line 46
    :cond_3
    new-instance p1, Lorg/locationtech/proj4j/ProjectionException;

    const-string p2, "I"

    invoke-direct {p1, p2}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "Collignon"

    return-object v0
.end method
