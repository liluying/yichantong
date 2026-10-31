.class public abstract Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker;
.super Ljava/lang/Object;
.source "MultiPointAreaChecker.java"


# direct methods
.method public static calculateVerticalDiff(F[DLjava/util/List;)D
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F[D",
            "Ljava/util/List<",
            "[D>;)D"
        }
    .end annotation

    move-object/from16 v0, p2

    if-eqz v0, :cond_7

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x0

    .line 29
    aget-wide v2, p1, v1

    const/4 v9, 0x1

    .line 30
    aget-wide v4, p1, v9

    const/4 v10, 0x2

    .line 31
    aget-wide v11, p1, v10

    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    .line 36
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x1

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 38
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    invoke-virtual {v8}, [D->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 43
    :cond_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v10, :cond_2

    .line 44
    invoke-static {v13}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker;->sortPointsByPolarAngle(Ljava/util/List;)V

    .line 50
    :cond_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v15, v7

    const/4 v14, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    .line 53
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [D

    add-int/lit8 v17, v1, 0x1

    .line 54
    rem-int v8, v17, v0

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    if-ne v0, v10, :cond_3

    if-ne v1, v9, :cond_3

    goto :goto_3

    .line 60
    :cond_3
    invoke-static/range {v2 .. v8}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker;->isPointInTriangle(DD[D[D[D)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 61
    invoke-static/range {v2 .. v8}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker;->calculateZOnPlane(DD[D[D[D)D

    move-result-wide v0

    :goto_2
    sub-double/2addr v11, v0

    return-wide v11

    .line 66
    :cond_4
    invoke-static/range {v2 .. v8}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker;->getPointToTriangleDistance(DD[D[D[D)D

    move-result-wide v7

    cmpg-double v18, v7, v15

    if-gez v18, :cond_5

    move v14, v1

    move-wide v15, v7

    :cond_5
    move/from16 v1, v17

    goto :goto_1

    .line 74
    :cond_6
    :goto_3
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [D

    add-int/2addr v14, v9

    .line 75
    rem-int/2addr v14, v0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [D

    .line 76
    invoke-static/range {v2 .. v8}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker;->calculateZOnPlane(DD[D[D[D)D

    move-result-wide v0

    goto :goto_2

    :cond_7
    :goto_4
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static calculateZOnPlane(DD[D[D[D)D
    .locals 19

    const/4 v0, 0x0

    .line 130
    aget-wide v1, p5, v0

    aget-wide v3, p4, v0

    sub-double/2addr v1, v3

    const/4 v5, 0x1

    aget-wide v6, p5, v5

    aget-wide v8, p4, v5

    sub-double/2addr v6, v8

    const/4 v10, 0x2

    aget-wide v11, p5, v10

    aget-wide v13, p4, v10

    sub-double/2addr v11, v13

    .line 131
    aget-wide v15, p6, v0

    sub-double/2addr v15, v3

    aget-wide v3, p6, v5

    sub-double/2addr v3, v8

    aget-wide v8, p6, v10

    sub-double/2addr v8, v13

    mul-double v13, v6, v8

    mul-double v17, v11, v3

    sub-double v13, v13, v17

    mul-double v11, v11, v15

    mul-double v8, v8, v1

    sub-double/2addr v11, v8

    mul-double v1, v1, v3

    mul-double v6, v6, v15

    sub-double/2addr v1, v6

    .line 138
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v6, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v8, v3, v6

    if-gez v8, :cond_0

    aget-wide v0, p4, v10

    return-wide v0

    .line 140
    :cond_0
    aget-wide v3, p4, v10

    aget-wide v6, p4, v0

    sub-double v6, p0, v6

    mul-double v13, v13, v6

    aget-wide v5, p4, v5

    sub-double v5, p2, v5

    mul-double v11, v11, v5

    add-double/2addr v13, v11

    div-double/2addr v13, v1

    sub-double/2addr v3, v13

    return-wide v3
.end method

.method private static crossProduct(DDDDDD)D
    .locals 0

    .line 0
    sub-double/2addr p0, p4

    sub-double/2addr p10, p6

    mul-double p0, p0, p10

    sub-double/2addr p2, p6

    sub-double/2addr p8, p4

    mul-double p2, p2, p8

    sub-double/2addr p0, p2

    return-wide p0
.end method

.method private static getPointToSegmentDistance(DDDDDD)D
    .locals 16

    sub-double v0, p8, p4

    sub-double v2, p10, p6

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-nez v6, :cond_0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    sub-double v0, p0, p4

    mul-double v0, v0, v0

    sub-double v2, p2, p6

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    .line 160
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    :cond_0
    sub-double v6, p0, p4

    mul-double v8, v6, v0

    sub-double v10, p2, p6

    mul-double v12, v10, v2

    add-double/2addr v8, v12

    mul-double v12, v0, v0

    mul-double v14, v2, v2

    add-double/2addr v12, v14

    div-double/2addr v8, v12

    cmpg-double v12, v8, v4

    if-gez v12, :cond_1

    mul-double v6, v6, v6

    mul-double v10, v10, v10

    add-double/2addr v6, v10

    .line 164
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v8, v4

    if-lez v6, :cond_2

    sub-double v0, p0, p8

    mul-double v0, v0, v0

    sub-double v2, p2, p10

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    .line 166
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    :cond_2
    mul-double v0, v0, v8

    add-double v0, p4, v0

    mul-double v8, v8, v2

    add-double v2, p6, v8

    sub-double v0, p0, v0

    mul-double v0, v0, v0

    sub-double v2, p2, v2

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    .line 170
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static getPointToTriangleDistance(DD[D[D[D)D
    .locals 26

    const/4 v0, 0x0

    .line 147
    aget-wide v5, p4, v0

    const/4 v13, 0x1

    aget-wide v7, p4, v13

    aget-wide v9, p5, v0

    aget-wide v11, p5, v13

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    invoke-static/range {v1 .. v12}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker;->getPointToSegmentDistance(DDDDDD)D

    move-result-wide v5

    .line 148
    aget-wide v18, p5, v0

    aget-wide v20, p5, v13

    aget-wide v22, p6, v0

    aget-wide v24, p6, v13

    move-wide/from16 v14, p0

    move-wide/from16 v16, p2

    invoke-static/range {v14 .. v25}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker;->getPointToSegmentDistance(DDDDDD)D

    move-result-wide v1

    .line 149
    aget-wide v18, p6, v0

    aget-wide v20, p6, v13

    aget-wide v22, p4, v0

    aget-wide v24, p4, v13

    invoke-static/range {v14 .. v25}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker;->getPointToSegmentDistance(DDDDDD)D

    move-result-wide v3

    .line 150
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static isPointInTriangle(DD[D[D[D)Z
    .locals 26

    const/4 v0, 0x0

    .line 109
    aget-wide v5, p4, v0

    const/4 v13, 0x1

    aget-wide v7, p4, v13

    aget-wide v9, p5, v0

    aget-wide v11, p5, v13

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    invoke-static/range {v1 .. v12}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker;->crossProduct(DDDDDD)D

    move-result-wide v5

    .line 110
    aget-wide v18, p5, v0

    aget-wide v20, p5, v13

    aget-wide v22, p6, v0

    aget-wide v24, p6, v13

    move-wide/from16 v14, p0

    move-wide/from16 v16, p2

    invoke-static/range {v14 .. v25}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker;->crossProduct(DDDDDD)D

    move-result-wide v1

    .line 111
    aget-wide v18, p6, v0

    aget-wide v20, p6, v13

    aget-wide v22, p4, v0

    aget-wide v24, p4, v13

    invoke-static/range {v14 .. v25}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker;->crossProduct(DDDDDD)D

    move-result-wide v3

    const-wide v7, -0x414f39085f4a1273L    # -1.0E-6

    cmpg-double v9, v5, v7

    if-ltz v9, :cond_1

    cmpg-double v9, v1, v7

    if-ltz v9, :cond_1

    cmpg-double v9, v3, v7

    if-gez v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x1

    :goto_1
    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v10, v5, v8

    if-gtz v10, :cond_3

    cmpl-double v5, v1, v8

    if-gtz v5, :cond_3

    cmpl-double v1, v3, v8

    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v7, :cond_5

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    return v0

    :cond_5
    :goto_4
    return v13
.end method

.method private static sortPointsByPolarAngle(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[D>;)V"
        }
    .end annotation

    .line 85
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    const/4 v6, 0x0

    .line 86
    aget-wide v6, v5, v6

    add-double/2addr v1, v6

    const/4 v6, 0x1

    .line 87
    aget-wide v6, v5, v6

    add-double/2addr v3, v6

    goto :goto_0

    .line 89
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v1, v5

    .line 90
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v3, v5

    .line 95
    new-instance v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker$1;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker$1;-><init>(DD)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
