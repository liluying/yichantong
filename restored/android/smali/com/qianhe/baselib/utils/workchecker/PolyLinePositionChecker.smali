.class public abstract Lcom/qianhe/baselib/utils/workchecker/PolyLinePositionChecker;
.super Lcom/qianhe/baselib/utils/workchecker/BaseChecker;
.source "PolyLinePositionChecker.java"


# direct methods
.method public static checkPolyLineHorizontal(Lcom/qianhe/baselib/bean/CheckResult;[DLjava/util/List;DDZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/baselib/bean/CheckResult;",
            "[D",
            "Ljava/util/List<",
            "[D>;DDZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v2, :cond_c

    .line 88
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v3, 0x0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 95
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ge v7, v10, :cond_4

    .line 96
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [D

    add-int/lit8 v12, v7, 0x1

    .line 97
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [D

    .line 100
    invoke-static {v10, v13, v1}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->distancePointToSegment([D[D[D)D

    move-result-wide v14

    cmpg-double v16, v14, v4

    if-gez v16, :cond_3

    .line 107
    invoke-static {v10, v13, v1}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->distancePointToLine([D[D[D)D

    move-result-wide v4

    sub-double/2addr v4, v14

    .line 108
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v6, v4, v8

    if-gez v6, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-eqz p7, :cond_2

    .line 112
    invoke-static {v1, v10, v13}, Lcom/qianhe/baselib/utils/workchecker/BaseChecker;->isVectorLeft([D[D[D)Z

    move-result v8

    :goto_2
    move v6, v7

    move-wide v4, v14

    goto :goto_3

    .line 114
    :cond_2
    invoke-static {v1, v13, v10}, Lcom/qianhe/baselib/utils/workchecker/BaseChecker;->isVectorLeft([D[D[D)Z

    move-result v8

    goto :goto_2

    :cond_3
    :goto_3
    move v7, v12

    goto :goto_0

    :cond_4
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double v12, v12, v4

    .line 120
    iput-wide v12, v0, Lcom/qianhe/baselib/bean/CheckResult;->distanceH:D

    .line 121
    iput-boolean v8, v0, Lcom/qianhe/baselib/bean/CheckResult;->isLeft:Z

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double v7, p3, v7

    if-eqz v9, :cond_6

    add-double v7, v7, p5

    cmpg-double v1, v4, v7

    if-gtz v1, :cond_5

    const/4 v3, 0x1

    .line 127
    :cond_5
    iput-boolean v3, v0, Lcom/qianhe/baselib/bean/CheckResult;->inBounds:Z

    return-void

    :cond_6
    if-ltz v6, :cond_8

    .line 133
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [D

    add-int/2addr v6, v11

    .line 134
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    .line 135
    invoke-static {v1, v9}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v12

    .line 136
    invoke-static {v1, v6}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v14

    cmpg-double v1, v12, v14

    if-gez v1, :cond_7

    goto :goto_4

    :cond_7
    move-object v9, v6

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_a

    .line 140
    invoke-static {v9, v2}, Lcom/qianhe/baselib/utils/workchecker/PolyLinePositionChecker;->isEndpointJoint([DLjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_a

    add-double v7, v7, p5

    cmpg-double v1, v4, v7

    if-gtz v1, :cond_9

    const/4 v3, 0x1

    .line 142
    :cond_9
    iput-boolean v3, v0, Lcom/qianhe/baselib/bean/CheckResult;->inBounds:Z

    return-void

    :cond_a
    cmpg-double v1, v4, p5

    if-gtz v1, :cond_b

    const/4 v3, 0x1

    .line 145
    :cond_b
    iput-boolean v3, v0, Lcom/qianhe/baselib/bean/CheckResult;->inBounds:Z

    :cond_c
    :goto_5
    return-void
.end method

.method public static checkSegmentSlopeVertical(F[DLjava/util/List;ID)Lcom/qianhe/baselib/bean/CheckResult;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F[D",
            "Ljava/util/List<",
            "[D>;ID)",
            "Lcom/qianhe/baselib/bean/CheckResult;"
        }
    .end annotation

    move-object/from16 v0, p2

    move/from16 v1, p3

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 39
    new-instance v6, Lcom/qianhe/baselib/bean/CheckResult;

    invoke-direct {v6}, Lcom/qianhe/baselib/bean/CheckResult;-><init>()V

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    if-ltz v1, :cond_3

    .line 41
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    if-lt v1, v7, :cond_0

    goto/16 :goto_0

    .line 45
    :cond_0
    invoke-interface/range {p2 .. p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    add-int/2addr v1, v5

    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 47
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v11

    .line 48
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v13

    .line 50
    invoke-static {v6, v0}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v7

    .line 51
    aget-wide v9, v6, v4

    aget-wide v14, v0, v4

    sub-double/2addr v9, v14

    .line 52
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide/16 v14, 0x0

    cmpl-double v1, v7, v14

    if-lez v1, :cond_1

    .line 53
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    :cond_1
    move-wide v8, v14

    .line 55
    aget-wide v14, v6, v4

    aput-wide v14, v11, v4

    .line 56
    aget-wide v16, v0, v4

    aput-wide v16, v13, v4

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    cmpl-double v1, v14, v16

    if-ltz v1, :cond_2

    .line 59
    aget-wide v20, v6, v3

    aget-wide v22, v6, v5

    new-array v1, v2, [D

    aput-wide v20, v1, v3

    aput-wide v22, v1, v5

    aput-wide v14, v1, v4

    .line 60
    aget-wide v6, v0, v3

    aget-wide v14, v0, v5

    new-array v0, v2, [D

    aput-wide v6, v0, v3

    aput-wide v14, v0, v5

    aput-wide v16, v0, v4

    div-double v4, p4, v18

    .line 61
    invoke-static {v1, v0, v4, v5}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->getDitchFence([D[DD)[[D

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v12

    move/from16 v7, p0

    move-object/from16 v10, p1

    .line 65
    invoke-static/range {v7 .. v13}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->checkPositionGeodetic(FD[D[D[D[D)Lcom/qianhe/baselib/bean/CheckResult;

    move-result-object v0

    return-object v0

    .line 68
    :cond_2
    aget-wide v20, v6, v3

    aget-wide v22, v6, v5

    new-array v1, v2, [D

    aput-wide v20, v1, v3

    aput-wide v22, v1, v5

    aput-wide v14, v1, v4

    .line 69
    aget-wide v6, v0, v3

    aget-wide v14, v0, v5

    new-array v0, v2, [D

    aput-wide v6, v0, v3

    aput-wide v14, v0, v5

    aput-wide v16, v0, v4

    div-double v4, p4, v18

    .line 70
    invoke-static {v0, v1, v4, v5}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->getDitchFence([D[DD)[[D

    move-result-object v0

    .line 72
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v12

    move-object v7, v13

    move-object v13, v11

    move-object v11, v7

    move/from16 v7, p0

    move-object/from16 v10, p1

    .line 74
    invoke-static/range {v7 .. v13}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->checkPositionGeodetic(FD[D[D[D[D)Lcom/qianhe/baselib/bean/CheckResult;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    return-object v6
.end method

.method public static findNearestSegmentIndex([DLjava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/util/List<",
            "[D>;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v3, 0x0

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    .line 25
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    add-int/lit8 v5, v3, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    .line 24
    invoke-static {v4, v6, p0}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->distancePointToSegment([D[D[D)D

    move-result-wide v6

    cmpg-double v4, v6, v1

    if-gez v4, :cond_1

    move v0, v3

    move-wide v1, v6

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static isEndpointJoint([DLjava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/util/List<",
            "[D>;)Z"
        }
    .end annotation

    .line 158
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 164
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    .line 167
    invoke-static {p0, v0}, Lcom/qianhe/baselib/utils/workchecker/PolyLinePositionChecker;->isSamePoint([D[D)Z

    move-result v0

    .line 168
    invoke-static {p0, p1}, Lcom/qianhe/baselib/utils/workchecker/PolyLinePositionChecker;->isSamePoint([D[D)Z

    move-result p0

    if-nez v0, :cond_1

    if-nez p0, :cond_1

    return v3

    :cond_1
    :goto_0
    return v2
.end method

.method private static isSamePoint([D[D)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 182
    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    array-length v1, p1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v5, v1, v3

    if-gez v5, :cond_1

    const/4 v1, 0x1

    aget-wide v5, p0, v1

    aget-wide p0, p1, v1

    sub-double/2addr v5, p0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double v2, p0, v3

    if-gez v2, :cond_1

    return v1

    :cond_1
    :goto_0
    return v0
.end method
