.class public abstract Lcom/qianhe/baselib/utils/CoordsCalculUtils;
.super Ljava/lang/Object;
.source "CoordsCalculUtils.java"


# static fields
.field private static final crsFactory:Lorg/locationtech/proj4j/CRSFactory;

.field private static final ctFactory:Lorg/locationtech/proj4j/CoordinateTransformFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lorg/locationtech/proj4j/CRSFactory;

    invoke-direct {v0}, Lorg/locationtech/proj4j/CRSFactory;-><init>()V

    sput-object v0, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->crsFactory:Lorg/locationtech/proj4j/CRSFactory;

    .line 21
    new-instance v0, Lorg/locationtech/proj4j/CoordinateTransformFactory;

    invoke-direct {v0}, Lorg/locationtech/proj4j/CoordinateTransformFactory;-><init>()V

    sput-object v0, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->ctFactory:Lorg/locationtech/proj4j/CoordinateTransformFactory;

    return-void
.end method

.method public static calculateDistanceGAUSS([D[D)D
    .locals 7

    const/4 v0, 0x0

    .line 100
    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    sub-double/2addr v1, v3

    const/4 v0, 0x1

    .line 101
    aget-wide v3, p1, v0

    aget-wide v5, p0, v0

    sub-double/2addr v3, v5

    mul-double v1, v1, v1

    mul-double v3, v3, v3

    add-double/2addr v1, v3

    .line 102
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static calculateDistanceGeodetic([D[D)D
    .locals 9

    .line 81
    :try_start_0
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToEcef([D)[D

    move-result-object p0

    .line 82
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToEcef([D)[D

    move-result-object p1

    const/4 v0, 0x0

    .line 84
    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    sub-double/2addr v1, v3

    const/4 v0, 0x1

    .line 85
    aget-wide v3, p1, v0

    aget-wide v5, p0, v0

    sub-double/2addr v3, v5

    const/4 v0, 0x2

    .line 86
    aget-wide v5, p1, v0

    aget-wide v7, p0, v0

    sub-double/2addr v5, v7

    mul-double v1, v1, v1

    mul-double v3, v3, v3

    add-double/2addr v1, v3

    mul-double v5, v5, v5

    add-double/2addr v1, v5

    .line 87
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 89
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "\u8ba1\u7b97\u8ddd\u79bb\u5931\u8d25"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static calculatePointOnLineDirection([D[DD)[D
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 31
    :try_start_0
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToEcef([D)[D

    move-result-object v4

    .line 32
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v5

    move-object/from16 v6, p1

    invoke-virtual {v5, v6}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToEcef([D)[D

    move-result-object v5

    .line 33
    aget-wide v6, v4, v3

    .line 34
    aget-wide v8, v4, v2

    .line 35
    aget-wide v10, v4, v1

    .line 37
    aget-wide v12, v5, v3

    .line 38
    aget-wide v14, v5, v2

    .line 39
    aget-wide v4, v5, v1

    sub-double/2addr v12, v6

    sub-double/2addr v14, v8

    sub-double/2addr v4, v10

    mul-double v16, v12, v12

    mul-double v18, v14, v14

    add-double v16, v16, v18

    mul-double v18, v4, v4

    add-double v16, v16, v18

    .line 47
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    const-wide v18, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v20, v16, v18

    if-gez v20, :cond_0

    .line 51
    aget-wide v4, v0, v3

    aget-wide v6, v0, v2

    aget-wide v8, v0, v1

    const/4 v0, 0x3

    new-array v0, v0, [D

    aput-wide v4, v0, v3

    aput-wide v6, v0, v2

    aput-wide v8, v0, v1

    return-object v0

    :cond_0
    div-double v12, v12, v16

    div-double v14, v14, v16

    div-double v4, v4, v16

    mul-double v12, v12, p2

    add-double v17, v6, v12

    mul-double v14, v14, p2

    add-double v19, v8, v14

    mul-double v4, v4, p2

    add-double v21, v10, v4

    .line 64
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v22}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertEcefToGeodetic(DDD)[D

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "\u8ba1\u7b97C\u70b9\u5750\u6807\u5931\u8d25"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static calculateSlopeThirdPointFromA([D[DDDZ)[D
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 238
    aget-wide v2, p1, v1

    aget-wide v4, p0, v1

    sub-double/2addr v2, v4

    const/4 v4, 0x1

    .line 239
    aget-wide v5, p1, v4

    aget-wide v7, p0, v4

    sub-double/2addr v5, v7

    mul-double v7, v2, v2

    mul-double v9, v5, v5

    add-double/2addr v7, v9

    .line 240
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    const-wide v9, 0x3d719799812dea11L    # 1.0E-12

    cmpl-double p1, v7, v9

    if-ltz p1, :cond_0

    div-double/2addr v2, v7

    div-double/2addr v5, v7

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    .line 250
    :goto_0
    aget-wide v7, p0, v1

    mul-double v2, v2, p4

    add-double/2addr v7, v2

    .line 251
    aget-wide v2, p0, v4

    mul-double v5, v5, p4

    add-double/2addr v2, v5

    if-eqz p6, :cond_1

    .line 252
    aget-wide v5, p0, v0

    add-double/2addr v5, p2

    goto :goto_1

    :cond_1
    aget-wide v5, p0, v0

    sub-double/2addr v5, p2

    :goto_1
    const/4 p0, 0x3

    .line 253
    new-array p0, p0, [D

    aput-wide v7, p0, v1

    aput-wide v2, p0, v4

    aput-wide v5, p0, v0

    return-object p0
.end method

.method public static distancePointToLine([D[D[D)D
    .locals 0

    .line 112
    invoke-static {p0, p1, p2}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->signedDistancePointToLine([D[D[D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distancePointToSegment([D[D[D)D
    .locals 15

    const/4 v0, 0x0

    .line 155
    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    sub-double/2addr v1, v3

    const/4 v5, 0x1

    .line 156
    aget-wide v6, p1, v5

    aget-wide v8, p0, v5

    sub-double/2addr v6, v8

    .line 159
    aget-wide v10, p2, v0

    sub-double/2addr v10, v3

    .line 160
    aget-wide v3, p2, v5

    sub-double/2addr v3, v8

    mul-double v8, v1, v1

    mul-double v12, v6, v6

    add-double/2addr v8, v12

    const-wide/16 v12, 0x0

    cmpl-double v14, v8, v12

    if-nez v14, :cond_0

    mul-double v10, v10, v10

    mul-double v3, v3, v3

    add-double/2addr v10, v3

    .line 167
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    :cond_0
    mul-double v10, v10, v1

    mul-double v3, v3, v6

    add-double/2addr v10, v3

    div-double/2addr v10, v8

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 175
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 178
    aget-wide v8, p0, v0

    mul-double v1, v1, v3

    add-double/2addr v8, v1

    aget-wide v1, p0, v5

    mul-double v3, v3, v6

    add-double/2addr v1, v3

    const/4 p0, 0x2

    new-array p0, p0, [D

    aput-wide v8, p0, v0

    aput-wide v1, p0, v5

    .line 184
    aget-wide v1, p2, v0

    aget-wide v3, p0, v0

    sub-double/2addr v1, v3

    .line 185
    aget-wide v3, p2, v5

    aget-wide v5, p0, v5

    sub-double/2addr v3, v5

    mul-double v1, v1, v1

    mul-double v3, v3, v3

    add-double/2addr v1, v3

    .line 187
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-float p0, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    return-wide v0
.end method

.method public static projectParamOnLine([D[D[D)D
    .locals 13

    const/4 v0, 0x0

    .line 134
    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    sub-double/2addr v1, v3

    const/4 v5, 0x1

    .line 135
    aget-wide v6, p1, v5

    aget-wide v8, p0, v5

    sub-double/2addr v6, v8

    mul-double p0, v1, v1

    mul-double v10, v6, v6

    add-double/2addr p0, v10

    const-wide/16 v10, 0x0

    cmpl-double v12, p0, v10

    if-nez v12, :cond_0

    return-wide v10

    .line 140
    :cond_0
    aget-wide v10, p2, v0

    sub-double/2addr v10, v3

    mul-double v10, v10, v1

    aget-wide v0, p2, v5

    sub-double/2addr v0, v8

    mul-double v0, v0, v6

    add-double/2addr v10, v0

    div-double/2addr v10, p0

    return-wide v10
.end method

.method public static signedDistancePointToLine([D[D[D)D
    .locals 10

    const/4 v0, 0x0

    .line 120
    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    sub-double/2addr v1, v3

    const/4 v5, 0x1

    .line 121
    aget-wide v6, p1, v5

    aget-wide v8, p0, v5

    sub-double/2addr v6, v8

    .line 122
    aget-wide p0, p2, v5

    sub-double/2addr p0, v8

    mul-double p0, p0, v1

    aget-wide v8, p2, v0

    sub-double/2addr v8, v3

    mul-double v8, v8, v6

    sub-double/2addr p0, v8

    mul-double v1, v1, v1

    mul-double v6, v6, v6

    add-double/2addr v1, v6

    .line 123
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p2, v0, v2

    if-nez p2, :cond_0

    return-wide v2

    :cond_0
    div-double/2addr p0, v0

    return-wide p0
.end method
