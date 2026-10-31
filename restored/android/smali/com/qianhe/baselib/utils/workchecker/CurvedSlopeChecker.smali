.class public Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;
.super Ljava/lang/Object;
.source "CurvedSlopeChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;,
        Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;,
        Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;,
        Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;,
        Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static averageNormal([D[D)[D
    .locals 9

    const/4 v0, 0x0

    .line 565
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    const/4 v5, 0x1

    .line 566
    aget-wide v6, p0, v5

    aget-wide p0, p1, v5

    add-double/2addr v6, p0

    div-double/2addr v6, v3

    mul-double p0, v1, v1

    mul-double v3, v6, v6

    add-double/2addr p0, v3

    .line 567
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide v3, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v8, p0, v3

    if-lez v8, :cond_0

    div-double/2addr v1, p0

    div-double/2addr v6, p0

    :cond_0
    const/4 p0, 0x2

    .line 572
    new-array p0, p0, [D

    aput-wide v1, p0, v0

    aput-wide v6, p0, v5

    return-object p0
.end method

.method public static buildArcTransitions(Ljava/util/List;DZD)Ljava/util/List;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;",
            ">;DZD)",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_5

    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_5

    const-wide/16 v3, 0x0

    cmpg-double v5, p4, v3

    if-gtz v5, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 130
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_5

    add-int/lit8 v5, v4, -0x1

    .line 131
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    .line 132
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    add-int/lit8 v4, v4, 0x1

    .line 133
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    .line 134
    invoke-static {v5, v6, v1}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->segmentOutwardNormal(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Z)[D

    move-result-object v8

    .line 135
    invoke-static {v6, v7, v1}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->segmentOutwardNormal(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Z)[D

    move-result-object v9

    .line 136
    invoke-static {v8}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->vectorLen2([D)D

    move-result-wide v10

    const-wide v12, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v14, v10, v12

    if-ltz v14, :cond_1

    invoke-static {v9}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->vectorLen2([D)D

    move-result-wide v10

    cmpg-double v14, v10, v12

    if-gez v14, :cond_2

    :cond_1
    :goto_1
    move/from16 v22, v4

    const/16 v21, 0x1

    goto :goto_2

    .line 143
    :cond_2
    invoke-static {v5, v6, v7, v1}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->isConvexCorner(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Z)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 147
    aget-wide v10, v8, v5

    aget-wide v12, v9, v5

    mul-double v12, v12, v10

    aget-wide v7, v8, v3

    aget-wide v14, v9, v3

    mul-double v14, v14, v7

    add-double/2addr v12, v14

    const-wide v14, 0x3feff7ced916872bL    # 0.999

    cmpl-double v16, v12, v14

    if-lez v16, :cond_4

    goto :goto_1

    :cond_4
    mul-double v12, p4, p1

    .line 153
    new-instance v14, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    move/from16 v22, v4

    const/16 v21, 0x1

    iget-wide v3, v6, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    mul-double v10, v10, p4

    add-double v15, v3, v10

    iget-wide v3, v6, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    mul-double v7, v7, p4

    add-double v17, v3, v7

    iget-wide v3, v6, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->z:D

    add-double v19, v3, v12

    invoke-direct/range {v14 .. v20}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;-><init>(DDD)V

    .line 157
    new-instance v23, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v3, v6, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    aget-wide v7, v9, v5

    mul-double v7, v7, p4

    add-double v24, v3, v7

    iget-wide v3, v6, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    aget-wide v7, v9, v21

    mul-double v7, v7, p4

    add-double v26, v3, v7

    iget-wide v3, v6, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->z:D

    add-double v28, v3, v12

    invoke-direct/range {v23 .. v29}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;-><init>(DDD)V

    move-object/from16 v3, v23

    .line 162
    new-instance v4, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;

    invoke-direct {v4, v6, v14, v3}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;-><init>(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move/from16 v4, v22

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_3
    return-object v2
.end method

.method public static buildSlopeFaces(Ljava/util/List;DZD)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;",
            ">;DZD)",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    const-wide/16 v2, 0x0

    cmpg-double v4, p4, v2

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 96
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    .line 97
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    add-int/lit8 v3, v3, 0x1

    .line 98
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    move/from16 v7, p3

    .line 99
    invoke-static {v4, v6, v7}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->segmentOutwardNormal(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Z)[D

    move-result-object v8

    .line 100
    aget-wide v9, v8, v2

    mul-double v9, v9, p4

    .line 101
    aget-wide v11, v8, v5

    mul-double v11, v11, p4

    mul-double v13, p4, p1

    .line 103
    new-instance v15, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    move v8, v3

    iget-wide v2, v4, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    add-double v16, v2, v9

    iget-wide v2, v4, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    add-double v18, v2, v11

    iget-wide v2, v4, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->z:D

    add-double v20, v2, v13

    invoke-direct/range {v15 .. v21}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;-><init>(DDD)V

    .line 104
    new-instance v16, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v2, v6, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    add-double v17, v2, v9

    iget-wide v2, v6, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    add-double v19, v2, v11

    iget-wide v2, v6, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->z:D

    add-double v21, v2, v13

    invoke-direct/range {v16 .. v22}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;-><init>(DDD)V

    move-object/from16 v2, v16

    .line 105
    new-instance v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;

    invoke-direct {v3, v4, v6, v15, v2}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;-><init>(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v8

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method private static calculateSmoothNormalAtCorner(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;[D[DDDZ)[D
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 265
    iget-wide v3, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    sub-double v3, p3, v3

    .line 266
    iget-wide v5, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    sub-double v5, p5, v5

    mul-double v7, v3, v3

    mul-double v9, v5, v5

    add-double/2addr v7, v9

    .line 267
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    const-wide v9, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v0, v7, v9

    if-gez v0, :cond_0

    .line 269
    invoke-static/range {p1 .. p2}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->averageNormal([D[D)[D

    move-result-object v0

    return-object v0

    .line 273
    :cond_0
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    .line 274
    aget-wide v5, p1, v2

    aget-wide v7, p1, v1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    .line 275
    aget-wide v7, p2, v2

    aget-wide v11, p2, v1

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    sub-double/2addr v7, v5

    .line 279
    aget-wide v11, p1, v1

    aget-wide v13, p1, v2

    aget-wide v15, p2, v1

    aget-wide v17, p2, v2

    invoke-static/range {v11 .. v18}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->cross2(DDDD)D

    move-result-wide v11

    const-wide/16 v13, 0x0

    if-eqz p7, :cond_2

    cmpl-double v0, v11, v13

    if-lez v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    cmpg-double v0, v11, v13

    if-gez v0, :cond_1

    goto :goto_0

    :goto_1
    const-wide v11, 0x401921fb54442d18L    # 6.283185307179586

    if-eqz v0, :cond_3

    :goto_2
    cmpg-double v15, v7, v13

    if-gtz v15, :cond_4

    add-double/2addr v7, v11

    goto :goto_2

    :cond_3
    :goto_3
    cmpl-double v15, v7, v13

    if-ltz v15, :cond_4

    sub-double/2addr v7, v11

    goto :goto_3

    :cond_4
    sub-double/2addr v3, v5

    if-eqz v0, :cond_6

    :goto_4
    cmpg-double v0, v3, v13

    if-gez v0, :cond_5

    add-double/2addr v3, v11

    goto :goto_4

    :cond_5
    :goto_5
    cmpl-double v0, v3, v7

    if-lez v0, :cond_8

    sub-double/2addr v3, v11

    goto :goto_5

    :cond_6
    :goto_6
    cmpl-double v0, v3, v13

    if-lez v0, :cond_7

    sub-double/2addr v3, v11

    goto :goto_6

    :cond_7
    :goto_7
    cmpg-double v0, v3, v7

    if-gez v0, :cond_8

    add-double/2addr v3, v11

    goto :goto_7

    :cond_8
    div-double/2addr v3, v7

    .line 298
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double v3, v3, v5

    .line 300
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v7

    sub-double/2addr v5, v3

    .line 304
    aget-wide v7, p1, v1

    mul-double v7, v7, v3

    aget-wide v11, p2, v1

    mul-double v11, v11, v5

    add-double/2addr v7, v11

    .line 305
    aget-wide v11, p1, v2

    mul-double v3, v3, v11

    aget-wide v11, p2, v2

    mul-double v5, v5, v11

    add-double/2addr v3, v5

    mul-double v5, v7, v7

    mul-double v11, v3, v3

    add-double/2addr v5, v11

    .line 308
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    cmpl-double v0, v5, v9

    if-lez v0, :cond_9

    div-double/2addr v7, v5

    div-double/2addr v3, v5

    :cond_9
    const/4 v0, 0x2

    .line 314
    new-array v0, v0, [D

    aput-wide v7, v0, v1

    aput-wide v3, v0, v2

    return-object v0
.end method

.method private static cross2(DDDD)D
    .locals 0

    .line 0
    mul-double p0, p0, p6

    mul-double p2, p2, p4

    sub-double/2addr p0, p2

    return-wide p0
.end method

.method private findNearestProjection(DDLjava/util/List;Z)Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;",
            ">;Z)",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;"
        }
    .end annotation

    move-object/from16 v0, p5

    const-wide/16 v1, 0x0

    move-wide v10, v1

    const/4 v3, 0x0

    .line 383
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v12, 0x1

    sub-int/2addr v4, v12

    if-ge v3, v4, :cond_0

    .line 384
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    invoke-static {v4, v5}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->segmentLength(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;)D

    move-result-wide v4

    add-double/2addr v10, v4

    goto :goto_0

    :cond_0
    const-wide v13, 0x3f50624dd2f1a9fcL    # 0.001

    const/4 v3, 0x0

    cmpg-double v4, v10, v13

    if-gez v4, :cond_1

    return-object v3

    :cond_1
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v15, v1

    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    const/4 v1, 0x0

    .line 391
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    if-ge v1, v2, :cond_5

    .line 392
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    add-int/lit8 v2, v1, 0x1

    .line 393
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    .line 394
    invoke-static {v6, v7}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->segmentLength(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;)D

    move-result-wide v20

    move-wide/from16 v4, p3

    move/from16 v8, p6

    move v9, v1

    move/from16 v22, v2

    move-wide/from16 v24, v13

    const/16 v23, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 396
    invoke-direct/range {v1 .. v8}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->projectPointToSegment(DDLcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Z)Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;

    move-result-object v13

    .line 397
    iget-wide v1, v13, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->tInSegment:D

    mul-double v3, v1, v20

    add-double/2addr v3, v15

    div-double/2addr v3, v10

    .line 398
    iput-wide v3, v13, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->tTotal:D

    .line 399
    iput-wide v10, v13, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->totalLen:D

    cmpl-double v3, v20, v24

    if-lez v3, :cond_3

    mul-double v3, v1, v20

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    sub-double v1, v26, v1

    mul-double v1, v1, v20

    const-wide v28, 0x3feff7ced916872bL    # 0.999

    const-wide v30, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v5, v3, v26

    if-gez v5, :cond_2

    if-lez v9, :cond_2

    add-int/lit8 v1, v9, -0x1

    .line 409
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    invoke-static {v2, v6, v8}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->segmentOutwardNormal(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Z)[D

    move-result-object v2

    .line 410
    invoke-static {v6, v7, v8}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->segmentOutwardNormal(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Z)[D

    move-result-object v3

    .line 411
    invoke-static {v2}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->vectorLen2([D)D

    move-result-wide v4

    cmpl-double v9, v4, v30

    if-lez v9, :cond_3

    invoke-static {v3}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->vectorLen2([D)D

    move-result-wide v4

    cmpl-double v9, v4, v30

    if-lez v9, :cond_3

    .line 412
    aget-wide v4, v2, v23

    aget-wide v26, v3, v23

    mul-double v4, v4, v26

    aget-wide v26, v2, v12

    aget-wide v30, v3, v12

    mul-double v26, v26, v30

    add-double v4, v4, v26

    cmpg-double v9, v4, v28

    if-gez v9, :cond_3

    .line 415
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    invoke-static {v1, v6, v7, v8}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->isConvexCorner(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 416
    iput-boolean v12, v13, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->isAtCorner:Z

    .line 417
    iput-object v6, v13, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->cornerPoint:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    .line 418
    iput-object v2, v13, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->prevNormal:[D

    .line 419
    iput-object v3, v13, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->nextNormal:[D

    goto :goto_2

    :cond_2
    cmpg-double v3, v1, v26

    if-gez v3, :cond_3

    .line 425
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ge v9, v1, :cond_3

    .line 427
    invoke-static {v6, v7, v8}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->segmentOutwardNormal(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Z)[D

    move-result-object v1

    add-int/lit8 v2, v9, 0x2

    .line 428
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    invoke-static {v7, v3, v8}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->segmentOutwardNormal(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Z)[D

    move-result-object v3

    .line 429
    invoke-static {v1}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->vectorLen2([D)D

    move-result-wide v4

    cmpl-double v9, v4, v30

    if-lez v9, :cond_3

    invoke-static {v3}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->vectorLen2([D)D

    move-result-wide v4

    cmpl-double v9, v4, v30

    if-lez v9, :cond_3

    .line 430
    aget-wide v4, v1, v23

    aget-wide v26, v3, v23

    mul-double v4, v4, v26

    aget-wide v26, v1, v12

    aget-wide v30, v3, v12

    mul-double v26, v26, v30

    add-double v4, v4, v26

    cmpg-double v9, v4, v28

    if-gez v9, :cond_3

    .line 433
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    invoke-static {v6, v7, v2, v8}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->isConvexCorner(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 434
    iput-boolean v12, v13, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->isAtCorner:Z

    .line 435
    iput-object v7, v13, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->cornerPoint:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    .line 436
    iput-object v1, v13, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->prevNormal:[D

    .line 437
    iput-object v3, v13, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->nextNormal:[D

    .line 444
    :cond_3
    :goto_2
    iget-wide v1, v13, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->projX:D

    sub-double v1, p1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget-wide v5, v13, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->projY:D

    sub-double v5, p3, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    cmpg-double v3, v1, v18

    if-gez v3, :cond_4

    move-wide/from16 v18, v1

    move-object/from16 v17, v13

    :cond_4
    add-double v15, v15, v20

    move/from16 v1, v22

    move-wide/from16 v13, v24

    goto/16 :goto_1

    :cond_5
    return-object v17
.end method

.method private static isConvexCorner(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Z)Z
    .locals 8

    .line 330
    iget-wide v0, p1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    iget-wide v2, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    sub-double v2, v0, v2

    .line 331
    iget-wide v4, p1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    iget-wide p0, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    sub-double p0, v4, p0

    .line 332
    iget-wide v6, p2, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    sub-double/2addr v6, v0

    .line 333
    iget-wide v0, p2, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    sub-double/2addr v0, v4

    mul-double v2, v2, v0

    mul-double p0, p0, v6

    sub-double/2addr v2, p0

    const/4 p0, 0x0

    const/4 p1, 0x1

    if-eqz p3, :cond_1

    const-wide p2, 0x3e112e0be826d695L    # 1.0E-9

    cmpl-double v0, v2, p2

    if-lez v0, :cond_0

    return p1

    :cond_0
    return p0

    :cond_1
    const-wide p2, -0x41eed1f417d9296bL    # -1.0E-9

    cmpg-double v0, v2, p2

    if-gez v0, :cond_2

    return p1

    :cond_2
    return p0
.end method

.method private static isOutOfLongitudinalRange(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;D)Z
    .locals 7

    .line 241
    iget-wide v0, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->totalLen:D

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    const/4 v4, 0x1

    cmpg-double v5, v0, v2

    if-gez v5, :cond_0

    return v4

    .line 244
    :cond_0
    iget-wide v2, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->tTotal:D

    neg-double v5, p1

    div-double/2addr v5, v0

    cmpg-double p0, v2, v5

    if-ltz p0, :cond_2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr p1, v0

    add-double/2addr p1, v5

    cmpl-double p0, v2, p1

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v4
.end method

.method private projectPointToSegment(DDLcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Z)Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;
    .locals 26

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    .line 461
    iget-wide v2, v1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    iget-wide v5, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    sub-double/2addr v2, v5

    .line 462
    iget-wide v7, v1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    move-wide v9, v7

    iget-wide v7, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    sub-double/2addr v9, v7

    mul-double v11, v2, v2

    mul-double v13, v9, v9

    add-double/2addr v11, v13

    const-wide v13, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const/4 v15, 0x1

    const/16 v16, 0x0

    cmpg-double v4, v11, v13

    if-gez v4, :cond_0

    .line 465
    new-instance v4, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;

    iget-wide v9, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->z:D

    const-wide/16 v11, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;-><init>(DDDD)V

    .line 466
    invoke-static/range {p5 .. p7}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->segmentOutwardNormal(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Z)[D

    move-result-object v0

    .line 467
    aget-wide v1, v0, v16

    iput-wide v1, v4, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->outwardNx:D

    .line 468
    aget-wide v1, v0, v15

    iput-wide v1, v4, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->outwardNy:D

    return-object v4

    :cond_0
    sub-double v13, p1, v5

    mul-double v13, v13, v2

    sub-double v17, p3, v7

    mul-double v17, v17, v9

    add-double v13, v13, v17

    div-double v24, v13, v11

    .line 473
    new-instance v17, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;

    mul-double v2, v2, v24

    add-double v18, v5, v2

    mul-double v9, v9, v24

    add-double v20, v7, v9

    iget-wide v2, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->z:D

    iget-wide v4, v1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->z:D

    sub-double/2addr v4, v2

    mul-double v4, v4, v24

    add-double v22, v2, v4

    invoke-direct/range {v17 .. v25}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;-><init>(DDDD)V

    move-object/from16 v2, v17

    .line 476
    invoke-static/range {p5 .. p7}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->segmentOutwardNormal(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Z)[D

    move-result-object v0

    .line 477
    aget-wide v3, v0, v16

    iput-wide v3, v2, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->outwardNx:D

    .line 478
    aget-wide v3, v0, v15

    iput-wide v3, v2, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->outwardNy:D

    return-object v2
.end method

.method private static roundMetersToCm(D)I
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p0, p0, v0

    .line 248
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method private static segmentLength(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;)D
    .locals 4

    .line 455
    iget-wide v0, p1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    iget-wide v2, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    sub-double/2addr v0, v2

    .line 456
    iget-wide v2, p1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    iget-wide p0, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    sub-double/2addr v2, p0

    mul-double v0, v0, v0

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    .line 457
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static segmentOutwardNormal(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Z)[D
    .locals 8

    const/4 v0, 0x2

    .line 358
    iget-wide v1, p1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    iget-wide v3, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    sub-double/2addr v1, v3

    .line 359
    iget-wide v3, p1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    iget-wide p0, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    sub-double/2addr v3, p0

    mul-double p0, v1, v1

    mul-double v5, v3, v3

    add-double/2addr p0, v5

    .line 360
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v7, p0, v5

    if-gez v7, :cond_0

    .line 362
    new-array p0, v0, [D

    fill-array-data p0, :array_0

    return-object p0

    :cond_0
    div-double/2addr v1, p0

    div-double/2addr v3, p0

    neg-double p0, v1

    if-nez p2, :cond_1

    neg-double v3, v3

    neg-double p0, p0

    .line 372
    :cond_1
    new-array p2, v0, [D

    const/4 v0, 0x0

    aput-wide v3, p2, v0

    const/4 v0, 0x1

    aput-wide p0, p2, v0

    return-object p2

    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public static slopeRatioFromAC(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;)D
    .locals 6

    .line 72
    iget-wide v0, p1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    iget-wide v2, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    sub-double/2addr v0, v2

    .line 73
    iget-wide v2, p1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    iget-wide v4, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    sub-double/2addr v2, v4

    .line 74
    iget-wide v4, p1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->z:D

    iget-wide p0, p0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->z:D

    sub-double/2addr v4, p0

    mul-double v0, v0, v0

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    .line 75
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v2, p0, v0

    if-gez v2, :cond_1

    const-wide/16 p0, 0x0

    cmpl-double v0, v4, p0

    if-ltz v0, :cond_0

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p0

    :cond_0
    const-wide/high16 p0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide p0

    :cond_1
    div-double/2addr v4, p0

    return-wide v4
.end method

.method private static vectorLen2([D)D
    .locals 4

    const/4 v0, 0x0

    .line 353
    aget-wide v0, p0, v0

    mul-double v0, v0, v0

    const/4 v2, 0x1

    aget-wide v2, p0, v2

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public calculate(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Ljava/util/List;DZZ)Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;",
            ">;DZZ)",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;"
        }
    .end annotation

    move-object/from16 v0, p1

    if-eqz p2, :cond_b

    .line 190
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_8

    .line 195
    :cond_0
    new-instance v1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;

    invoke-direct {v1}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;-><init>()V

    .line 197
    iget-wide v3, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    iget-wide v5, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    move/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->findNearestProjection(DDLjava/util/List;Z)Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;

    move-result-object v3

    if-nez v3, :cond_1

    .line 199
    new-instance v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;

    invoke-direct {v0}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;-><init>()V

    return-object v0

    .line 202
    :cond_1
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    const-wide v12, 0x3f9eb851eb851eb8L    # 0.03

    const-wide/16 v14, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_2

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/16 p2, 0x0

    const/4 v2, 0x1

    goto/16 :goto_5

    .line 214
    :cond_3
    iput-boolean v4, v1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;->isVerticalSlope:Z

    .line 217
    iget-wide v6, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->outwardNx:D

    .line 218
    iget-wide v8, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->outwardNy:D

    .line 219
    iget-boolean v2, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->isAtCorner:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    iget-object v4, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->cornerPoint:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    if-eqz v4, :cond_5

    const/4 v10, 0x1

    iget-object v5, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->prevNormal:[D

    if-eqz v5, :cond_5

    move-wide/from16 v16, v6

    iget-object v6, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->nextNormal:[D

    if-eqz v6, :cond_4

    .line 220
    iget-wide v7, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    const/4 v11, 0x1

    iget-wide v9, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    move/from16 v11, p6

    const/16 p2, 0x0

    const/4 v2, 0x1

    invoke-static/range {v4 .. v11}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->calculateSmoothNormalAtCorner(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;[D[DDDZ)[D

    move-result-object v4

    .line 223
    aget-wide v6, v4, p2

    .line 224
    aget-wide v8, v4, v2

    goto :goto_2

    :cond_4
    :goto_0
    const/16 p2, 0x0

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    move-wide/from16 v16, v6

    goto :goto_0

    :goto_1
    move-wide/from16 v6, v16

    .line 227
    :goto_2
    iget-wide v4, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    iget-wide v10, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->projX:D

    sub-double/2addr v4, v10

    mul-double v4, v4, v6

    iget-wide v6, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    iget-wide v10, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->projY:D

    sub-double/2addr v6, v10

    mul-double v6, v6, v8

    add-double/2addr v4, v6

    .line 229
    iget-wide v6, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->zOnLine:D

    mul-double v4, v4, p3

    add-double v21, v6, v4

    .line 230
    iget-wide v4, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->z:D

    sub-double v4, v4, v21

    .line 232
    invoke-static {v4, v5}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->roundMetersToCm(D)I

    move-result v6

    iput v6, v1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;->distanceCm:I

    if-eqz p5, :cond_7

    cmpl-double v6, v4, v14

    if-lez v6, :cond_6

    :goto_3
    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    :cond_7
    cmpg-double v6, v4, v14

    if-gez v6, :cond_6

    goto :goto_3

    .line 233
    :goto_4
    iput-boolean v4, v1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;->isCut:Z

    .line 234
    new-instance v16, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v4, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    iget-wide v6, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v16 .. v22}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;-><init>(DDD)V

    move-object/from16 v0, v16

    iput-object v0, v1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;->intersectPoint:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    .line 235
    invoke-static {v3, v12, v13}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->isOutOfLongitudinalRange(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;D)Z

    move-result v0

    iput-boolean v0, v1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;->isOutOfSlopeRange:Z

    return-object v1

    .line 204
    :goto_5
    iput-boolean v2, v1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;->isVerticalSlope:Z

    .line 205
    iget-wide v4, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    iget-wide v6, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->projX:D

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-wide v8, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    iget-wide v10, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->projY:D

    sub-double/2addr v8, v10

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 206
    iget-wide v6, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->z:D

    iget-wide v8, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->zOnLine:D

    sub-double/2addr v6, v8

    .line 207
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v10, v8, v12

    if-lez v10, :cond_8

    move-wide v4, v6

    :cond_8
    invoke-static {v4, v5}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->roundMetersToCm(D)I

    move-result v4

    iput v4, v1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;->distanceCm:I

    if-eqz p5, :cond_a

    cmpl-double v4, v6, v14

    if-lez v4, :cond_9

    :goto_6
    const/4 v4, 0x1

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    goto :goto_7

    :cond_a
    cmpg-double v4, v6, v14

    if-gez v4, :cond_9

    goto :goto_6

    .line 208
    :goto_7
    iput-boolean v4, v1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;->isCut:Z

    .line 209
    new-instance v5, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v6, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    iget-wide v8, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    iget-wide v10, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;->zOnLine:D

    invoke-direct/range {v5 .. v11}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;-><init>(DDD)V

    iput-object v5, v1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;->intersectPoint:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    .line 210
    invoke-static {v3, v12, v13}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->isOutOfLongitudinalRange(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ProjectionResult;D)Z

    move-result v0

    iput-boolean v0, v1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;->isOutOfSlopeRange:Z

    return-object v1

    .line 191
    :cond_b
    :goto_8
    new-instance v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;

    invoke-direct {v0}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;-><init>()V

    return-object v0
.end method

.method public calculate(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Ljava/util/List;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Z)Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;",
            ">;",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;",
            "Z)",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 185
    invoke-virtual/range {v0 .. v6}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->calculate(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Ljava/util/List;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;ZZ)Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;

    move-result-object p1

    return-object p1
.end method

.method public calculate(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Ljava/util/List;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;ZZ)Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;",
            ">;",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;",
            "ZZ)",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 177
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {p3, p4}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->slopeRatioFromAC(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;)D

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v7, p5

    move v8, p6

    .line 181
    invoke-virtual/range {v2 .. v8}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->calculate(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Ljava/util/List;DZZ)Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;

    move-result-object p1

    return-object p1

    .line 178
    :cond_1
    :goto_0
    new-instance p1, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;

    invoke-direct {p1}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;-><init>()V

    return-object p1
.end method
