.class public abstract Lcom/qianhe/baselib/utils/workchecker/ThreePointAreaChecker;
.super Lcom/qianhe/baselib/utils/workchecker/BaseChecker;
.source "ThreePointAreaChecker.java"


# direct methods
.method public static check(F[D[D[D[D)Lcom/qianhe/baselib/bean/CheckResult;
    .locals 28

    move-object/from16 v0, p1

    .line 23
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToEcef([D)[D

    move-result-object v1

    .line 24
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToEcef([D)[D

    move-result-object v2

    .line 25
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v3

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToEcef([D)[D

    move-result-object v3

    .line 26
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v4

    move-object/from16 v5, p4

    invoke-virtual {v4, v5}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToEcef([D)[D

    move-result-object v4

    const/4 v5, 0x0

    .line 30
    aget-wide v6, v3, v5

    aget-wide v8, v2, v5

    sub-double/2addr v6, v8

    const/4 v10, 0x1

    .line 31
    aget-wide v11, v3, v10

    aget-wide v13, v2, v10

    sub-double/2addr v11, v13

    const/4 v15, 0x2

    .line 32
    aget-wide v16, v3, v15

    aget-wide v18, v2, v15

    sub-double v16, v16, v18

    .line 34
    aget-wide v2, v4, v5

    sub-double/2addr v2, v8

    .line 35
    aget-wide v20, v4, v10

    sub-double v20, v20, v13

    .line 36
    aget-wide v22, v4, v15

    sub-double v22, v22, v18

    mul-double v24, v11, v22

    mul-double v26, v16, v20

    sub-double v24, v24, v26

    mul-double v16, v16, v2

    mul-double v22, v22, v6

    sub-double v16, v16, v22

    mul-double v6, v6, v20

    mul-double v11, v11, v2

    sub-double/2addr v6, v11

    mul-double v8, v8, v24

    mul-double v13, v13, v16

    add-double/2addr v8, v13

    mul-double v18, v18, v6

    add-double v8, v8, v18

    neg-double v2, v8

    .line 45
    aget-wide v8, v0, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 46
    aget-wide v11, v0, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    .line 47
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v13, v13, v18

    .line 48
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v18, v18, v8

    .line 49
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v13, v13, v24

    mul-double v18, v18, v16

    add-double v13, v13, v18

    mul-double v8, v8, v6

    add-double/2addr v13, v8

    .line 56
    aget-wide v8, v1, v5

    mul-double v8, v8, v24

    aget-wide v11, v1, v10

    mul-double v11, v11, v16

    add-double/2addr v8, v11

    aget-wide v0, v1, v15

    mul-double v0, v0, v6

    add-double/2addr v8, v0

    add-double/2addr v8, v2

    .line 58
    new-instance v0, Lcom/qianhe/baselib/bean/CheckResult;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/CheckResult;-><init>()V

    .line 59
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide/16 v11, 0x0

    cmpg-double v15, v1, v3

    if-gez v15, :cond_0

    .line 60
    iput-wide v11, v0, Lcom/qianhe/baselib/bean/CheckResult;->verticalDistance:D

    .line 61
    iput v5, v0, Lcom/qianhe/baselib/bean/CheckResult;->position:I

    return-object v0

    :cond_0
    neg-double v1, v8

    div-double/2addr v1, v13

    neg-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    .line 72
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CheckResult;->verticalDistance:D

    .line 75
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float v15, v15, p0

    move-wide/from16 p1, v3

    float-to-double v3, v15

    cmpg-double v15, v13, v3

    if-gtz v15, :cond_1

    .line 76
    iput v5, v0, Lcom/qianhe/baselib/bean/CheckResult;->position:I

    goto :goto_0

    :cond_1
    cmpl-double v3, v1, v11

    if-lez v3, :cond_2

    .line 78
    iput v10, v0, Lcom/qianhe/baselib/bean/CheckResult;->position:I

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    .line 80
    iput v1, v0, Lcom/qianhe/baselib/bean/CheckResult;->position:I

    .line 84
    :goto_0
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    mul-double v24, v24, v24

    mul-double v16, v16, v16

    add-double v24, v24, v16

    mul-double v6, v6, v6

    add-double v24, v24, v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    mul-double v1, v1, p1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/CheckResult;->distanceV:D

    return-object v0
.end method
