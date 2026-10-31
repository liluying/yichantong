.class public abstract Lcom/qianhe/baselib/utils/GeoCoordsDistanceUtils;
.super Ljava/lang/Object;
.source "GeoCoordsDistanceUtils.java"


# direct methods
.method public static calculateEcefDistance3D(DDDDDD)D
    .locals 0

    sub-double/2addr p0, p6

    sub-double/2addr p2, p8

    sub-double/2addr p4, p10

    mul-double p0, p0, p0

    mul-double p2, p2, p2

    add-double/2addr p0, p2

    mul-double p4, p4, p4

    add-double/2addr p0, p4

    .line 21
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static calculateEcefDistance3D([D[D)D
    .locals 13

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 28
    array-length v0, p0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    array-length v0, p1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 31
    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/4 v6, 0x2

    aget-wide v7, p0, v6

    aget-wide v9, p1, v0

    aget-wide v11, p1, v3

    aget-wide p0, p1, v6

    move-wide v3, v4

    move-wide v5, v7

    move-wide v7, v9

    move-wide v9, v11

    move-wide v11, p0

    invoke-static/range {v1 .. v12}, Lcom/qianhe/baselib/utils/GeoCoordsDistanceUtils;->calculateEcefDistance3D(DDDDDD)D

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public static calculateGeodeticDistance3D(DDDDDD)D
    .locals 9

    .line 53
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    const/4 v1, 0x3

    .line 54
    new-array v7, v1, [D

    .line 55
    new-array v8, v1, [D

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    .line 56
    invoke-virtual/range {v0 .. v7}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geodeticToXyzOnly(DDD[D)Z

    move-result p0

    move-object p1, v7

    if-eqz p0, :cond_1

    move-wide v1, p6

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    move-object v7, v8

    .line 57
    invoke-virtual/range {v0 .. v7}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geodeticToXyzOnly(DDD[D)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {p1, v7}, Lcom/qianhe/baselib/utils/GeoCoordsDistanceUtils;->calculateEcefDistance3D([D[D)D

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public static calculateGeodeticDistance3D([D[D)D
    .locals 13

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 41
    array-length v0, p0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    array-length v0, p1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 44
    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/4 v6, 0x2

    aget-wide v7, p0, v6

    aget-wide v9, p1, v0

    aget-wide v11, p1, v3

    aget-wide p0, p1, v6

    move-wide v3, v4

    move-wide v5, v7

    move-wide v7, v9

    move-wide v9, v11

    move-wide v11, p0

    invoke-static/range {v1 .. v12}, Lcom/qianhe/baselib/utils/GeoCoordsDistanceUtils;->calculateGeodeticDistance3D(DDDDDD)D

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method
