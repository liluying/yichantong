.class public Lorg/locationtech/proj4j/proj/Eckert2Projection;
.super Lorg/locationtech/proj4j/proj/Projection;
.source "Eckert2Projection.java"


# static fields
.field private static final C13:D = 0.3333333333333333

.field private static final FXC:D = 0.46065886596178063

.field private static final FYC:D = 1.4472025091165353

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

.method public project(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 4

    const-wide v0, 0x3fdd7b6f52fac55aL    # 0.46065886596178063

    mul-double p1, p1, v0

    .line 34
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double p1, p1, v0

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    sub-double/2addr p1, v0

    const-wide v0, 0x3ff727bdd17583bbL    # 1.4472025091165353

    mul-double p1, p1, v0

    .line 35
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide/16 v0, 0x0

    cmpg-double v2, p3, v0

    if-gez v2, :cond_0

    neg-double p1, p1

    .line 36
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :cond_0
    return-object p5
.end method

.method public projectInverse(DDLorg/locationtech/proj4j/ProjCoordinate;)Lorg/locationtech/proj4j/ProjCoordinate;
    .locals 5

    .line 41
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ff727bdd17583bbL    # 1.4472025091165353

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    sub-double/2addr v2, v0

    const-wide v0, 0x3fdd7b6f52fac55aL    # 0.46065886596178063

    mul-double v0, v0, v2

    div-double/2addr p1, v0

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    const-wide/high16 p1, 0x4010000000000000L    # 4.0

    mul-double v2, v2, v2

    sub-double/2addr p1, v2

    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double p1, p1, v0

    .line 42
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 43
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    cmpl-double v4, p1, v0

    if-ltz v4, :cond_2

    .line 44
    iget-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide v0, 0x3ff000001ad7f29bL    # 1.0000001

    cmpl-double v4, p1, v0

    if-gtz v4, :cond_1

    .line 46
    iget-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    cmpg-double v0, p1, v2

    if-gez v0, :cond_0

    const-wide p1, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_0

    :cond_0
    const-wide p1, 0x3ff921fb54442d18L    # 1.5707963267948966

    :goto_0
    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    goto :goto_1

    .line 44
    :cond_1
    new-instance p1, Lorg/locationtech/proj4j/ProjectionException;

    const-string p2, "I"

    invoke-direct {p1, p2}, Lorg/locationtech/proj4j/ProjectionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_2
    iget-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {p1, p2}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :goto_1
    cmpg-double p1, p3, v2

    if-gez p1, :cond_3

    .line 50
    iget-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    neg-double p1, p1

    iput-wide p1, p5, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    :cond_3
    return-object p5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "Eckert II"

    return-object v0
.end method
