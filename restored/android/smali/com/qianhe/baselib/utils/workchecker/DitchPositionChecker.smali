.class public abstract Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;
.super Lcom/qianhe/baselib/utils/workchecker/BaseChecker;
.source "DitchPositionChecker.java"


# direct methods
.method private static calcBottomHalfWidthFromSlope(DDD)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p4, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    cmpg-double v2, p2, v0

    if-gtz v2, :cond_1

    :goto_0
    return-wide p0

    :cond_1
    div-double/2addr p2, p4

    sub-double/2addr p0, p2

    .line 215
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static calcBottomWidthFromSlope(DDD)D
    .locals 2

    move-wide v0, p2

    move-wide p2, p0

    move-wide p0, v0

    .line 84
    invoke-static/range {p0 .. p5}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->calcBottomHalfWidthFromSlope(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static calcSlopeFromBottomWidth(DDD)D
    .locals 3

    .line 0
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    sub-double/2addr p2, p4

    cmpl-double p4, p2, v0

    if-lez p4, :cond_1

    div-double/2addr p0, p2

    return-wide p0

    :cond_1
    return-wide v0
.end method

.method public static calculateFlatBottomDitchFillCut(F[D[D[D[DDDDZDDDD)I
    .locals 24

    .line 123
    invoke-static/range {p1 .. p3}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->interpolateElevOnLine([D[D[D)D

    move-result-wide v2

    .line 124
    invoke-static/range {p1 .. p3}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->signedDistancePointToLine([D[D[D)D

    move-result-wide v4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v7, p9, v0

    move/from16 v6, p0

    move-object/from16 v22, p1

    move-object/from16 v23, p2

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move/from16 v13, p11

    move-wide/from16 v18, p12

    move-wide/from16 v20, p14

    move-wide/from16 v14, p16

    move-wide/from16 v16, p18

    .line 126
    invoke-static/range {v2 .. v23}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->resolveFlatBottomSlopeTargetElev(DDFDDDZDDDD[D[D)D

    move-result-wide v0

    const/4 v2, 0x2

    .line 130
    aget-wide v2, p3, v2

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public static calculatePosition(F[D[D[D[D)Lcom/qianhe/baselib/bean/PositionResult;
    .locals 9

    .line 261
    invoke-static {p3, p1, p2}, Lcom/qianhe/baselib/utils/workchecker/BaseChecker;->isVectorLeft([D[D[D)Z

    move-result v0

    .line 262
    invoke-static {p1, p2, p3}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->distancePointToLine([D[D[D)D

    move-result-wide v1

    .line 264
    invoke-static {p4, p1, p2}, Lcom/qianhe/baselib/utils/workchecker/BaseChecker;->isVectorLeft([D[D[D)Z

    move-result p3

    .line 265
    invoke-static {p1, p2, p4}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->distancePointToLine([D[D[D)D

    move-result-wide p1

    .line 268
    new-instance p4, Lcom/qianhe/baselib/bean/PositionResult;

    invoke-direct {p4}, Lcom/qianhe/baselib/bean/PositionResult;-><init>()V

    .line 269
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const/4 v8, 0x2

    if-nez v3, :cond_0

    .line 270
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v3, v8, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 271
    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    mul-double v1, v1, v6

    iput-wide v1, p4, Lcom/qianhe/baselib/bean/PositionResult;->distance:D

    goto :goto_0

    .line 273
    :cond_0
    iput-wide v4, p4, Lcom/qianhe/baselib/bean/PositionResult;->distance:D

    .line 276
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1, v8, p1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    mul-double p1, p1, v6

    iput-wide p1, p4, Lcom/qianhe/baselib/bean/PositionResult;->distanceM:D

    goto :goto_1

    .line 280
    :cond_1
    iput-wide v4, p4, Lcom/qianhe/baselib/bean/PositionResult;->distanceM:D

    .line 283
    :goto_1
    iget-wide p1, p4, Lcom/qianhe/baselib/bean/PositionResult;->distance:D

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p0, p0, v1

    float-to-double v1, p0

    const/4 p0, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpg-double v5, p1, v1

    if-gtz v5, :cond_2

    .line 284
    iput v4, p4, Lcom/qianhe/baselib/bean/PositionResult;->position:I

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 286
    iput v3, p4, Lcom/qianhe/baselib/bean/PositionResult;->position:I

    goto :goto_2

    .line 288
    :cond_3
    iput p0, p4, Lcom/qianhe/baselib/bean/PositionResult;->position:I

    .line 291
    :goto_2
    iget-wide p1, p4, Lcom/qianhe/baselib/bean/PositionResult;->distanceM:D

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    cmpg-double v0, p1, v1

    if-gtz v0, :cond_4

    .line 292
    iput v4, p4, Lcom/qianhe/baselib/bean/PositionResult;->positionM:I

    return-object p4

    :cond_4
    if-eqz p3, :cond_5

    .line 294
    iput v3, p4, Lcom/qianhe/baselib/bean/PositionResult;->positionM:I

    return-object p4

    .line 296
    :cond_5
    iput p0, p4, Lcom/qianhe/baselib/bean/PositionResult;->positionM:I

    return-object p4
.end method

.method public static compareElevation(DD)D
    .locals 0

    .line 309
    invoke-static {p2, p3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p2

    .line 310
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    const/4 p1, 0x2

    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 311
    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 312
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static generateParallelLines([D[DDII)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D[DDII)",
            "Ljava/util/List<",
            "[[D>;"
        }
    .end annotation

    move-wide/from16 v0, p2

    const/4 v2, 0x2

    .line 351
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 354
    aget-wide v5, p0, v4

    aget-wide v7, p1, v4

    sub-double/2addr v5, v7

    const/4 v7, 0x1

    .line 355
    aget-wide v8, p0, v7

    aget-wide v10, p1, v7

    sub-double/2addr v8, v10

    mul-double v10, v5, v5

    mul-double v12, v8, v8

    add-double/2addr v10, v12

    .line 356
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v14, v10, v12

    if-nez v14, :cond_0

    goto/16 :goto_2

    :cond_0
    neg-double v8, v8

    div-double/2addr v8, v10

    div-double/2addr v5, v10

    move/from16 v10, p4

    const/4 v11, 0x1

    :goto_0
    if-gt v11, v10, :cond_1

    neg-double v12, v0

    int-to-double v14, v11

    mul-double v12, v12, v14

    .line 366
    aget-wide v14, p0, v4

    mul-double v16, v8, v12

    add-double v14, v14, v16

    aget-wide v18, p0, v7

    mul-double v12, v12, v5

    add-double v18, v18, v12

    const/16 v20, 0x0

    new-array v4, v2, [D

    aput-wide v14, v4, v20

    aput-wide v18, v4, v7

    .line 367
    aget-wide v14, p1, v20

    add-double v14, v14, v16

    aget-wide v16, p1, v7

    add-double v16, v16, v12

    new-array v12, v2, [D

    aput-wide v14, v12, v20

    aput-wide v16, v12, v7

    .line 368
    new-array v13, v2, [[D

    aput-object v4, v13, v20

    aput-object v12, v13, v7

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v11, v7

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/16 v20, 0x0

    .line 372
    new-array v4, v2, [[D

    aput-object p0, v4, v20

    aput-object p1, v4, v7

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v4, p5

    const/4 v10, 0x1

    :goto_1
    if-gt v10, v4, :cond_2

    int-to-double v11, v10

    mul-double v11, v11, v0

    .line 377
    aget-wide v13, p0, v20

    mul-double v15, v8, v11

    add-double/2addr v13, v15

    aget-wide v17, p0, v7

    mul-double v11, v11, v5

    add-double v17, v17, v11

    const/16 v19, 0x1

    new-array v7, v2, [D

    aput-wide v13, v7, v20

    aput-wide v17, v7, v19

    .line 378
    aget-wide v13, p1, v20

    add-double/2addr v13, v15

    aget-wide v15, p1, v19

    add-double/2addr v15, v11

    new-array v11, v2, [D

    aput-wide v13, v11, v20

    aput-wide v15, v11, v19

    .line 379
    new-array v12, v2, [[D

    aput-object v7, v12, v20

    aput-object v11, v12, v19

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v3
.end method

.method public static getDitchFence([D[DD)[[D
    .locals 25

    const/4 v0, 0x0

    .line 323
    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    sub-double/2addr v1, v3

    const/4 v3, 0x1

    .line 324
    aget-wide v4, p1, v3

    aget-wide v6, p0, v3

    sub-double/2addr v4, v6

    mul-double v6, v1, v1

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    .line 325
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    neg-double v4, v4

    div-double/2addr v4, v6

    div-double/2addr v1, v6

    .line 332
    aget-wide v6, p0, v0

    mul-double v4, v4, p2

    add-double v8, v6, v4

    aget-wide v10, p0, v3

    mul-double v1, v1, p2

    add-double v12, v10, v1

    const/4 v14, 0x2

    aget-wide v15, p0, v14

    const/16 v17, 0x0

    const/4 v0, 0x3

    const/16 v18, 0x1

    new-array v3, v0, [D

    aput-wide v8, v3, v17

    aput-wide v12, v3, v18

    aput-wide v15, v3, v14

    aget-wide v8, p1, v17

    add-double v12, v8, v4

    aget-wide v19, p1, v18

    add-double v21, v19, v1

    aget-wide v23, p1, v14

    const/16 p2, 0x2

    new-array v14, v0, [D

    aput-wide v12, v14, v17

    aput-wide v21, v14, v18

    aput-wide v23, v14, p2

    sub-double/2addr v8, v4

    sub-double v19, v19, v1

    new-array v12, v0, [D

    aput-wide v8, v12, v17

    aput-wide v19, v12, v18

    aput-wide v23, v12, p2

    sub-double/2addr v6, v4

    sub-double/2addr v10, v1

    new-array v1, v0, [D

    aput-wide v6, v1, v17

    aput-wide v10, v1, v18

    aput-wide v15, v1, p2

    const/4 v2, 0x4

    new-array v2, v2, [[D

    aput-object v3, v2, v17

    aput-object v14, v2, v18

    aput-object v12, v2, p2

    aput-object v1, v2, v0

    return-object v2
.end method

.method private static hasLongitudinalSlope([D[D)Z
    .locals 3

    const/4 v0, 0x2

    .line 205
    aget-wide v1, p0, v0

    aget-wide p0, p1, v0

    sub-double/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static interpolateElevOnLine([D[D[D)D
    .locals 4

    .line 134
    invoke-static {p0, p1, p2}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->projectParamOnLine([D[D[D)D

    move-result-wide v0

    const/4 p2, 0x2

    .line 135
    aget-wide v2, p0, p2

    aget-wide p0, p1, p2

    sub-double/2addr p0, v2

    mul-double p0, p0, v0

    add-double/2addr v2, p0

    return-wide v2
.end method

.method private static resolveEffectiveFlatBottomWidth(DDDZDDZ)D
    .locals 0

    if-eqz p6, :cond_0

    const-wide/16 p0, 0x0

    .line 176
    invoke-static {p7, p8, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0

    :cond_0
    if-eqz p11, :cond_1

    move-wide p6, p4

    move-wide p8, p9

    move-wide p4, p0

    .line 179
    invoke-static/range {p4 .. p9}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->calcBottomHalfWidthFromSlope(DDD)D

    move-result-wide p0

    return-wide p0

    :cond_1
    move-wide p4, p2

    move-wide p6, p9

    move-wide p2, p0

    .line 181
    invoke-static/range {p2 .. p7}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->calcBottomHalfWidthFromSlope(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static resolveFlatBottomSlopeTargetElev(DDFDDDZDDDD[D[D)D
    .locals 16

    .line 147
    invoke-static/range {p20 .. p21}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->hasLongitudinalSlope([D[D)Z

    move-result v11

    .line 148
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    move/from16 v2, p4

    float-to-double v2, v2

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    return-wide p0

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-lez v2, :cond_1

    move-wide/from16 v0, p5

    move-wide/from16 v2, p7

    move-wide/from16 v4, p9

    move/from16 v6, p11

    move-wide/from16 v7, p12

    move-wide/from16 v9, p16

    .line 152
    invoke-static/range {v0 .. v11}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->resolveEffectiveFlatBottomWidth(DDDZDDZ)D

    move-result-wide v7

    move-wide v14, v7

    move v8, v6

    move-wide v6, v14

    .line 155
    invoke-static/range {v0 .. v11}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->resolveSlopeFaceRatio(DDDDZDZ)D

    move-result-wide v0

    move-wide/from16 p4, p0

    move-wide/from16 p6, p2

    move-wide/from16 p10, v0

    move-wide/from16 p8, v6

    .line 157
    invoke-static/range {p4 .. p11}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->targetElevOnSlopeSide(DDDD)D

    move-result-wide v0

    return-wide v0

    :cond_1
    move-wide/from16 v12, p2

    move-wide/from16 v0, p5

    move-wide/from16 v2, p7

    move-wide/from16 v4, p9

    move/from16 v6, p11

    move-wide/from16 v7, p14

    move-wide/from16 v9, p18

    .line 159
    invoke-static/range {v0 .. v11}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->resolveEffectiveFlatBottomWidth(DDDZDDZ)D

    move-result-wide v7

    move-wide v14, v7

    move v8, v6

    move-wide v6, v14

    .line 162
    invoke-static/range {v0 .. v11}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->resolveSlopeFaceRatio(DDDDZDZ)D

    move-result-wide v0

    neg-double v2, v12

    move-wide/from16 p2, p0

    move-wide/from16 p8, v0

    move-wide/from16 p4, v2

    move-wide/from16 p6, v6

    .line 164
    invoke-static/range {p2 .. p9}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->targetElevOnSlopeSide(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static resolveSlopeFaceRatio(DDDDZDZ)D
    .locals 0

    .line 0
    if-nez p8, :cond_0

    if-nez p11, :cond_0

    goto :goto_0

    :cond_0
    sub-double/2addr p0, p6

    const-wide/16 p6, 0x0

    cmpg-double p8, p0, p6

    if-gtz p8, :cond_2

    cmpl-double p0, p9, p6

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    return-wide p6

    :cond_2
    if-eqz p11, :cond_3

    move-wide p2, p4

    :cond_3
    cmpg-double p4, p2, p6

    if-gtz p4, :cond_5

    cmpl-double p0, p9, p6

    if-lez p0, :cond_4

    :goto_0
    return-wide p9

    :cond_4
    return-wide p6

    :cond_5
    div-double/2addr p2, p0

    return-wide p2
.end method

.method private static targetElevOnSlopeSide(DDDD)D
    .locals 3

    .line 0
    cmpg-double v0, p2, p4

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v2, p6, v0

    if-lez v2, :cond_1

    sub-double/2addr p2, p4

    mul-double p2, p2, p6

    add-double/2addr p0, p2

    :cond_1
    :goto_0
    return-wide p0
.end method
