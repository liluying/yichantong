.class public abstract Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;
.super Lcom/qianhe/baselib/utils/workchecker/BaseChecker;
.source "SlopePositionChecker.java"


# direct methods
.method private static angleBetweenVectors([D[D)D
    .locals 13

    const/4 v0, 0x0

    .line 312
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    mul-double v3, v3, v1

    const/4 v5, 0x1

    aget-wide v6, p0, v5

    aget-wide v8, p1, v5

    mul-double v8, v8, v6

    add-double/2addr v3, v8

    const/4 v8, 0x2

    aget-wide v9, p0, v8

    aget-wide v11, p1, v8

    mul-double v11, v11, v9

    add-double/2addr v3, v11

    mul-double v1, v1, v1

    mul-double v6, v6, v6

    add-double/2addr v1, v6

    mul-double v9, v9, v9

    add-double/2addr v1, v9

    .line 315
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 316
    aget-wide v6, p1, v0

    mul-double v6, v6, v6

    aget-wide v9, p1, v5

    mul-double v9, v9, v9

    add-double/2addr v6, v9

    aget-wide p0, p1, v8

    mul-double p0, p0, p0

    add-double/2addr v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    mul-double v1, v1, p0

    div-double/2addr v3, v1

    .line 319
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static applySlopeParamsFromAC(Lcom/qianhe/baselib/bean/ShuaPoEntity;)V
    .locals 7

    .line 144
    invoke-static {p0}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->calculateHeightAndFlatFromAC(Lcom/qianhe/baselib/bean/ShuaPoEntity;)[D

    move-result-object v0

    const/4 v1, 0x0

    .line 145
    aget-wide v1, v0, v1

    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->heigth:D

    const/4 v3, 0x1

    .line 146
    aget-wide v3, v0, v3

    iput-wide v3, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->flatDistance:D

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_0

    cmpl-double v0, v1, v5

    if-lez v0, :cond_0

    div-double/2addr v1, v3

    const-wide v3, 0x40c3880000000000L    # 10000.0

    mul-double v1, v1, v3

    .line 148
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->ratio:D

    return-void

    .line 150
    :cond_0
    iput-wide v5, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->ratio:D

    return-void
.end method

.method public static calculateAbcRatioFromEntity(Lcom/qianhe/baselib/bean/ShuaPoEntity;)D
    .locals 6

    .line 117
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east1:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north1:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east3:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_2

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north3:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_2

    :cond_1
    return-wide v2

    .line 120
    :cond_2
    invoke-static {p0}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->calculateHeightAndFlatFromAC(Lcom/qianhe/baselib/bean/ShuaPoEntity;)[D

    move-result-object p0

    const/4 v0, 0x0

    .line 121
    aget-wide v0, p0, v0

    const/4 v4, 0x1

    .line 122
    aget-wide v4, p0, v4

    cmpl-double p0, v4, v2

    if-lez p0, :cond_3

    cmpl-double p0, v0, v2

    if-lez p0, :cond_3

    div-double/2addr v0, v4

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double v0, v0, v2

    .line 124
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0

    :cond_3
    return-wide v2
.end method

.method public static calculateHeightAndFlatFromAC(Lcom/qianhe/baselib/bean/ShuaPoEntity;)[D
    .locals 11

    .line 131
    invoke-static {p0}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->resolvePointAElevation(Lcom/qianhe/baselib/bean/ShuaPoEntity;)D

    move-result-wide v0

    .line 132
    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east1:D

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north1:D

    const/4 v6, 0x2

    new-array v7, v6, [D

    const/4 v8, 0x0

    aput-wide v2, v7, v8

    const/4 v2, 0x1

    aput-wide v4, v7, v2

    iget-wide v3, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east3:D

    iget-wide v9, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north3:D

    new-array v5, v6, [D

    aput-wide v3, v5, v8

    aput-wide v9, v5, v2

    invoke-static {v7, v5}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v3

    .line 135
    iget v5, p0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v7, Lcom/qianhe/baselib/enums/ShuaPoEnum;->UP:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    invoke-virtual {v7}, Lcom/qianhe/baselib/enums/ShuaPoEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_0

    .line 136
    iget-wide v9, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation3:D

    sub-double/2addr v9, v0

    goto :goto_0

    .line 137
    :cond_0
    iget-wide v9, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation3:D

    sub-double v9, v0, v9

    :goto_0
    const-wide/16 v0, 0x0

    .line 138
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 139
    new-array p0, v6, [D

    aput-wide v0, p0, v8

    aput-wide v3, p0, v2

    return-object p0
.end method

.method private static calculateHypotenuse(DD)D
    .locals 0

    .line 299
    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    .line 301
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static calculatePlaneEquation([D[D[D)[D
    .locals 27

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 243
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v4

    move-object/from16 v5, p0

    invoke-virtual {v4, v5}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToEcef([D)[D

    move-result-object v4

    .line 244
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v6

    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToEcef([D)[D

    move-result-object v6

    .line 245
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v8

    move-object/from16 v9, p2

    invoke-virtual {v8, v9}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToEcef([D)[D

    move-result-object v8

    .line 247
    invoke-static/range {p0 .. p2}, Lcom/qianhe/baselib/utils/workchecker/BaseChecker;->isVectorLeft([D[D[D)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v26, v6

    move-object v6, v4

    move-object/from16 v4, v26

    .line 255
    :goto_0
    aget-wide v9, v4, v3

    aget-wide v11, v6, v3

    sub-double/2addr v9, v11

    aget-wide v13, v4, v2

    aget-wide v15, v6, v2

    sub-double/2addr v13, v15

    aget-wide v17, v4, v1

    aget-wide v4, v6, v1

    sub-double v17, v17, v4

    new-array v6, v0, [D

    aput-wide v9, v6, v3

    aput-wide v13, v6, v2

    aput-wide v17, v6, v1

    .line 256
    aget-wide v9, v8, v3

    sub-double/2addr v9, v11

    aget-wide v13, v8, v2

    sub-double/2addr v13, v15

    aget-wide v7, v8, v1

    sub-double/2addr v7, v4

    const/16 v17, 0x2

    new-array v1, v0, [D

    aput-wide v9, v1, v3

    aput-wide v13, v1, v2

    aput-wide v7, v1, v17

    .line 259
    aget-wide v7, v6, v2

    aget-wide v9, v1, v17

    mul-double v13, v7, v9

    aget-wide v18, v6, v17

    aget-wide v20, v1, v2

    mul-double v22, v18, v20

    sub-double v13, v13, v22

    .line 260
    aget-wide v22, v1, v3

    mul-double v18, v18, v22

    aget-wide v24, v6, v3

    mul-double v9, v9, v24

    sub-double v18, v18, v9

    mul-double v24, v24, v20

    mul-double v7, v7, v22

    sub-double v24, v24, v7

    mul-double v11, v11, v13

    mul-double v15, v15, v18

    add-double/2addr v11, v15

    mul-double v4, v4, v24

    add-double/2addr v11, v4

    neg-double v4, v11

    const/4 v1, 0x4

    .line 266
    new-array v1, v1, [D

    aput-wide v13, v1, v3

    aput-wide v18, v1, v2

    aput-wide v24, v1, v17

    aput-wide v4, v1, v0

    return-object v1
.end method

.method public static calculatePointOnLineDirectionGAUSS(DDDDD)[D
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    sub-double v3, p4, p0

    sub-double v5, p6, p2

    mul-double v7, v3, v3

    mul-double v9, v5, v5

    add-double/2addr v7, v9

    .line 349
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v11, v7, v9

    if-nez v11, :cond_0

    .line 353
    new-array v2, v2, [D

    aput-wide p0, v2, v1

    aput-wide p2, v2, v0

    return-object v2

    :cond_0
    div-double/2addr v3, v7

    div-double/2addr v5, v7

    mul-double v3, v3, p8

    add-double/2addr p0, v3

    mul-double v5, v5, p8

    add-double/2addr p2, v5

    const/4 v3, 0x3

    .line 364
    new-array v3, v3, [D

    aput-wide p0, v3, v1

    aput-wide p2, v3, v0

    aput-wide v9, v3, v2

    return-object v3
.end method

.method private static calculateSlopeAngle([D)D
    .locals 10

    const/4 v0, 0x0

    .line 279
    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/4 v6, 0x2

    aget-wide v7, p0, v6

    const/4 p0, 0x3

    new-array v9, p0, [D

    aput-wide v1, v9, v0

    aput-wide v4, v9, v3

    aput-wide v7, v9, v6

    .line 281
    new-array p0, p0, [D

    fill-array-data p0, :array_0

    .line 283
    invoke-static {v9, p0}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->angleBetweenVectors([D[D)D

    move-result-wide v0

    .line 285
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v0

    return-wide v2

    :array_0
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public static calculateSlopeThirdPointEngineering(Lcom/qianhe/baselib/bean/ShuaPoEntity;)[D
    .locals 14

    .line 187
    invoke-static {p0}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->resolvePointAElevation(Lcom/qianhe/baselib/bean/ShuaPoEntity;)D

    move-result-wide v0

    .line 188
    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east1:D

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north1:D

    const/4 v6, 0x3

    new-array v7, v6, [D

    const/4 v8, 0x0

    aput-wide v2, v7, v8

    const/4 v2, 0x1

    aput-wide v4, v7, v2

    const/4 v3, 0x2

    aput-wide v0, v7, v3

    .line 189
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east3:D

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north3:D

    iget-wide v9, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation3:D

    new-array v6, v6, [D

    aput-wide v0, v6, v8

    aput-wide v4, v6, v2

    aput-wide v9, v6, v3

    .line 190
    iget v0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ShuaPoEnum;->UP:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ShuaPoEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    .line 191
    :goto_0
    iget-wide v9, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->heigth:D

    iget-wide v11, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->flatDistance:D

    move-object v8, v6

    invoke-static/range {v7 .. v13}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateSlopeThirdPointFromA([D[DDDZ)[D

    move-result-object p0

    return-object p0
.end method

.method public static checkPositionGeodetic(FD[D[D[D[D)Lcom/qianhe/baselib/bean/CheckResult;
    .locals 20

    .line 21
    new-instance v0, Lcom/qianhe/baselib/bean/CheckResult;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/CheckResult;-><init>()V

    .line 22
    invoke-static/range {p4 .. p6}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->calculatePlaneEquation([D[D[D)[D

    move-result-object v1

    const/4 v2, 0x0

    .line 24
    aget-wide v3, v1, v2

    const/4 v5, 0x1

    .line 25
    aget-wide v6, v1, v5

    const/4 v8, 0x2

    .line 26
    aget-wide v9, v1, v8

    const/4 v11, 0x3

    .line 27
    aget-wide v11, v1, v11

    .line 29
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v13

    move-object/from16 v14, p3

    invoke-virtual {v13, v14}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToEcef([D)[D

    move-result-object v13

    .line 30
    aget-wide v14, v13, v2

    .line 31
    aget-wide v16, v13, v5

    .line 32
    aget-wide v18, v13, v8

    mul-double v14, v14, v3

    mul-double v16, v16, v6

    add-double v14, v14, v16

    mul-double v18, v18, v9

    add-double v14, v14, v18

    add-double/2addr v14, v11

    mul-double v3, v3, v3

    mul-double v6, v6, v6

    add-double/2addr v3, v6

    mul-double v9, v9, v9

    add-double/2addr v3, v9

    .line 35
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v14, v3

    const-wide/16 v3, 0x0

    cmpl-double v6, p1, v3

    if-nez v6, :cond_0

    .line 40
    invoke-static {v1}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->calculateSlopeAngle([D)D

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide/from16 v6, p1

    .line 43
    :goto_0
    invoke-static {v14, v15, v6, v7}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->calculateHypotenuse(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double v8, v8, v10

    .line 45
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v1, v1, p0

    float-to-double v12, v1

    cmpg-double v1, v10, v12

    if-gtz v1, :cond_1

    .line 46
    iput v2, v0, Lcom/qianhe/baselib/bean/CheckResult;->position:I

    goto :goto_1

    :cond_1
    cmpl-double v1, v8, v3

    if-lez v1, :cond_2

    .line 48
    iput v5, v0, Lcom/qianhe/baselib/bean/CheckResult;->position:I

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    .line 50
    iput v1, v0, Lcom/qianhe/baselib/bean/CheckResult;->position:I

    .line 52
    :goto_1
    iput-wide v14, v0, Lcom/qianhe/baselib/bean/CheckResult;->distanceV:D

    const-wide v1, 0x4056800000000000L    # 90.0

    sub-double/2addr v1, v6

    .line 53
    invoke-static {v1, v2, v14, v15}, Lcom/qianhe/baselib/utils/TrianglefunctionUtils;->calculateHypotenuseByAngleAndOpposite(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CheckResult;->distanceH:D

    cmpg-double v5, v8, v3

    if-gez v5, :cond_3

    neg-double v1, v1

    .line 54
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CheckResult;->distanceH:D

    .line 55
    :cond_3
    iput-wide v8, v0, Lcom/qianhe/baselib/bean/CheckResult;->verticalDistance:D

    return-object v0
.end method

.method public static checkPositionGeodetic(F[D[D[D[D)Lcom/qianhe/baselib/bean/CheckResult;
    .locals 19

    .line 198
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToEcef([D)[D

    move-result-object v0

    .line 199
    invoke-static/range {p2 .. p4}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->calculatePlaneEquation([D[D[D)[D

    move-result-object v1

    const/4 v2, 0x0

    .line 201
    aget-wide v3, v1, v2

    const/4 v5, 0x1

    .line 202
    aget-wide v6, v1, v5

    const/4 v8, 0x2

    .line 203
    aget-wide v9, v1, v8

    const/4 v11, 0x3

    .line 204
    aget-wide v11, v1, v11

    .line 205
    aget-wide v13, v0, v2

    .line 206
    aget-wide v15, v0, v5

    .line 207
    aget-wide v17, v0, v8

    mul-double v13, v13, v3

    mul-double v15, v15, v6

    add-double/2addr v13, v15

    mul-double v17, v17, v9

    add-double v13, v13, v17

    add-double/2addr v13, v11

    mul-double v3, v3, v3

    mul-double v6, v6, v6

    add-double/2addr v3, v6

    mul-double v9, v9, v9

    add-double/2addr v3, v9

    .line 210
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v13, v3

    .line 213
    invoke-static {v1}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->calculateSlopeAngle([D)D

    move-result-wide v0

    .line 215
    invoke-static {v13, v14, v0, v1}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->calculateHypotenuse(DD)D

    move-result-wide v3

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v6

    .line 216
    new-instance v6, Lcom/qianhe/baselib/bean/CheckResult;

    invoke-direct {v6}, Lcom/qianhe/baselib/bean/CheckResult;-><init>()V

    .line 218
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v9, v9, p0

    float-to-double v9, v9

    const-wide/16 v11, 0x0

    cmpg-double v15, v7, v9

    if-gtz v15, :cond_0

    .line 219
    iput v2, v6, Lcom/qianhe/baselib/bean/CheckResult;->position:I

    goto :goto_0

    :cond_0
    cmpl-double v2, v3, v11

    if-lez v2, :cond_1

    .line 221
    iput v5, v6, Lcom/qianhe/baselib/bean/CheckResult;->position:I

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 223
    iput v2, v6, Lcom/qianhe/baselib/bean/CheckResult;->position:I

    .line 225
    :goto_0
    iput-wide v13, v6, Lcom/qianhe/baselib/bean/CheckResult;->distanceV:D

    const-wide v7, 0x4056800000000000L    # 90.0

    sub-double/2addr v7, v0

    .line 226
    invoke-static {v7, v8, v13, v14}, Lcom/qianhe/baselib/utils/TrianglefunctionUtils;->calculateHypotenuseByAngleAndOpposite(DD)D

    move-result-wide v0

    iput-wide v0, v6, Lcom/qianhe/baselib/bean/CheckResult;->distanceH:D

    cmpg-double v2, v3, v11

    if-gez v2, :cond_2

    neg-double v0, v0

    .line 227
    iput-wide v0, v6, Lcom/qianhe/baselib/bean/CheckResult;->distanceH:D

    .line 228
    :cond_2
    iput-wide v3, v6, Lcom/qianhe/baselib/bean/CheckResult;->verticalDistance:D

    return-object v6
.end method

.method public static isPointCOnSlope(Lcom/qianhe/baselib/bean/ShuaPoEntity;)Z
    .locals 6

    .line 108
    invoke-static {p0}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->calculateAbcRatioFromEntity(Lcom/qianhe/baselib/bean/ShuaPoEntity;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmpg-double v5, v0, v2

    if-gtz v5, :cond_0

    return v4

    .line 112
    :cond_0
    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->ratio:D

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double p0, v0, v2

    if-gez p0, :cond_1

    return v4

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static resolvePointAElevation(Lcom/qianhe/baselib/bean/ShuaPoEntity;)D
    .locals 2

    .line 155
    iget v0, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->tickA:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 156
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation1:D

    return-wide v0

    .line 158
    :cond_0
    iget v0, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->tickB:I

    if-ne v0, v1, :cond_1

    .line 159
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation2:D

    return-wide v0

    .line 161
    :cond_1
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation1:D

    return-wide v0
.end method

.method public static resolveSlopeThirdPointGeodetic([D[D[DLcom/qianhe/baselib/bean/ShuaPoEntity;)[D
    .locals 18

    move-object/from16 v0, p3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 169
    invoke-static {v0}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->isPointCOnSlope(Lcom/qianhe/baselib/bean/ShuaPoEntity;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 172
    :cond_0
    invoke-static {v0}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->resolvePointAElevation(Lcom/qianhe/baselib/bean/ShuaPoEntity;)D

    move-result-wide v5

    .line 173
    iget-wide v7, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east1:D

    iget-wide v9, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north1:D

    new-array v11, v4, [D

    aput-wide v7, v11, v3

    aput-wide v9, v11, v2

    aput-wide v5, v11, v1

    .line 174
    iget-wide v5, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east3:D

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north3:D

    iget-wide v9, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation3:D

    new-array v12, v4, [D

    aput-wide v5, v12, v3

    aput-wide v7, v12, v2

    aput-wide v9, v12, v1

    .line 175
    iget v5, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v6, Lcom/qianhe/baselib/enums/ShuaPoEnum;->UP:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ShuaPoEnum;->getType()I

    move-result v6

    if-ne v5, v6, :cond_1

    const/16 v17, 0x1

    goto :goto_0

    :cond_1
    const/16 v17, 0x0

    .line 176
    :goto_0
    iget-wide v13, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->heigth:D

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->flatDistance:D

    move-wide v15, v5

    invoke-static/range {v11 .. v17}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateSlopeThirdPointFromA([D[DDDZ)[D

    move-result-object v0

    .line 178
    new-array v12, v4, [D

    .line 179
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v5

    aget-wide v6, v0, v3

    aget-wide v8, v0, v2

    aget-wide v10, v0, v1

    invoke-virtual/range {v5 .. v12}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->projToGeodeticInverse(DDD[D)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v12

    :cond_2
    :goto_1
    return-object p2
.end method
