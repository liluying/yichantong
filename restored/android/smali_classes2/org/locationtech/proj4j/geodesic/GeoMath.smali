.class public Lorg/locationtech/proj4j/geodesic/GeoMath;
.super Ljava/lang/Object;
.source "GeoMath.java"


# static fields
.field public static final digits:I = 0x35


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AngDiff(Lorg/locationtech/proj4j/geodesic/Pair;DD)V
    .locals 7

    neg-double v0, p1

    const-wide v2, 0x4076800000000000L    # 360.0

    .line 164
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v0

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v4

    invoke-static {p0, v0, v1, v4, v5}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sum(Lorg/locationtech/proj4j/geodesic/Pair;DD)V

    .line 165
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    invoke-static {p0, v0, v1, v2, v3}, Lorg/locationtech/proj4j/geodesic/GeoMath;->sum(Lorg/locationtech/proj4j/geodesic/Pair;DD)V

    .line 166
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v6, v0, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 170
    :cond_1
    :goto_0
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    iget-wide v4, p0, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    cmpl-double v6, v4, v2

    if-nez v6, :cond_2

    sub-double/2addr p3, p1

    goto :goto_1

    :cond_2
    neg-double p3, v4

    :goto_1
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    return-void
.end method

.method public static AngNormalize(D)D
    .locals 7

    const-wide v0, 0x4076800000000000L    # 360.0

    .line 132
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v0

    .line 133
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide v0
.end method

.method public static AngRound(D)D
    .locals 5

    .line 117
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fb0000000000000L    # 0.0625

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    sub-double v0, v2, v0

    sub-double v0, v2, v0

    .line 120
    :cond_0
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static LatFix(D)D
    .locals 5

    .line 144
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    :cond_0
    return-wide p0
.end method

.method public static atan2d(DD)D
    .locals 8

    .line 257
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const/4 v4, 0x2

    cmpl-double v5, v0, v2

    if-lez v5, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-wide v6, p2

    move-wide p2, p0

    move-wide p0, v6

    :goto_0
    const-wide/16 v1, 0x0

    cmpg-double v3, p0, v1

    if-gez v3, :cond_1

    neg-double p0, p0

    add-int/lit8 v0, v0, 0x1

    .line 260
    :cond_1
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    if-eq v0, v4, :cond_3

    const/4 p2, 0x3

    if-eq v0, p2, :cond_2

    return-wide p0

    :cond_2
    const-wide p2, -0x3fa9800000000000L    # -90.0

    add-double/2addr p0, p2

    return-wide p0

    :cond_3
    const-wide p2, 0x4056800000000000L    # 90.0

    :goto_1
    sub-double/2addr p2, p0

    return-wide p2

    :cond_4
    const-wide v0, 0x4066800000000000L    # 180.0

    .line 268
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide p2

    goto :goto_1
.end method

.method public static atanh(D)D
    .locals 8

    .line 40
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v4, v0, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v0

    div-double/2addr v4, v6

    .line 41
    invoke-static {v4, v5}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v0

    div-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v4, p0, v2

    if-lez v4, :cond_0

    return-wide v0

    :cond_0
    cmpg-double v4, p0, v2

    if-gez v4, :cond_1

    neg-double p0, v0

    :cond_1
    return-wide p0
.end method

.method public static norm(Lorg/locationtech/proj4j/geodesic/Pair;DD)V
    .locals 2

    .line 54
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    div-double/2addr p1, v0

    .line 55
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    div-double/2addr p3, v0

    iput-wide p3, p0, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    return-void
.end method

.method public static polyval(I[DID)D
    .locals 5

    if-gez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 96
    aget-wide v1, p1, p2

    move p2, v0

    move-wide v0, v1

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_1

    mul-double v0, v0, p3

    add-int/lit8 v2, p2, 0x1

    .line 97
    aget-wide v3, p1, p2

    add-double/2addr v0, v3

    move p2, v2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static sincosd(Lorg/locationtech/proj4j/geodesic/Pair;D)V
    .locals 9

    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double v0, p1, v0

    const-wide v2, 0x4056800000000000L    # 90.0

    div-double v2, v0, v2

    .line 188
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v3, v2

    mul-int/lit8 v2, v3, 0x5a

    int-to-double v4, v2

    sub-double/2addr v0, v4

    .line 191
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 193
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    and-int/lit8 v2, v3, 0x3

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    neg-double v0, v0

    :goto_0
    move-wide v7, v4

    move-wide v4, v0

    move-wide v0, v7

    goto :goto_1

    :cond_0
    neg-double v4, v4

    neg-double v0, v0

    goto :goto_1

    :cond_1
    neg-double v4, v4

    goto :goto_0

    :cond_2
    :goto_1
    const-wide/16 v2, 0x0

    cmpl-double v6, v4, v2

    if-nez v6, :cond_3

    .line 201
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v4

    .line 202
    :cond_3
    iput-wide v4, p0, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    return-void
.end method

.method public static sincosde(Lorg/locationtech/proj4j/geodesic/Pair;DD)V
    .locals 7

    const-wide v0, 0x4056800000000000L    # 90.0

    div-double v0, p1, v0

    .line 224
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    mul-int/lit8 v0, v1, 0x5a

    int-to-double v2, v0

    sub-double v2, p1, v2

    add-double/2addr v2, p3

    .line 227
    invoke-static {v2, v3}, Lorg/locationtech/proj4j/geodesic/GeoMath;->AngRound(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p3

    .line 229
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    and-int/lit8 v0, v1, 0x3

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    neg-double p3, p3

    :goto_0
    move-wide v5, v2

    move-wide v2, p3

    move-wide p3, v5

    goto :goto_1

    :cond_0
    neg-double v2, v2

    neg-double p3, p3

    goto :goto_1

    :cond_1
    neg-double v2, v2

    goto :goto_0

    :cond_2
    :goto_1
    const-wide/16 v0, 0x0

    cmpl-double v4, v2, v0

    if-nez v4, :cond_3

    .line 237
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v2

    .line 238
    :cond_3
    iput-wide v2, p0, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    add-double/2addr p3, v0

    iput-wide p3, p0, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    return-void
.end method

.method public static sq(D)D
    .locals 0

    .line 0
    mul-double p0, p0, p0

    return-wide p0
.end method

.method public static sum(Lorg/locationtech/proj4j/geodesic/Pair;DD)V
    .locals 6

    add-double v0, p1, p3

    sub-double v2, v0, p3

    sub-double v4, v0, v2

    sub-double/2addr v2, p1

    sub-double/2addr v4, p3

    const-wide/16 p1, 0x0

    cmpl-double p3, v0, p1

    if-eqz p3, :cond_0

    add-double/2addr v2, v4

    sub-double/2addr p1, v2

    goto :goto_0

    :cond_0
    move-wide p1, v0

    .line 77
    :goto_0
    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Pair;->first:D

    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Pair;->second:D

    return-void
.end method
