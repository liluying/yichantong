.class public abstract Lcom/qianhe/yct/utils/MacaoBoundary;
.super Ljava/lang/Object;
.source "MacaoBoundary.java"


# static fields
.field private static final LAT:[D

.field private static final LNG:[D

.field private static final RING_COUNT:[I

.field private static final RING_OFFSET:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 12
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/utils/MacaoBoundary;->RING_OFFSET:[I

    const/16 v0, 0x1e

    .line 16
    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lcom/qianhe/yct/utils/MacaoBoundary;->RING_COUNT:[I

    .line 20
    new-array v1, v0, [D

    fill-array-data v1, :array_0

    sput-object v1, Lcom/qianhe/yct/utils/MacaoBoundary;->LNG:[D

    .line 27
    new-array v0, v0, [D

    fill-array-data v0, :array_1

    sput-object v0, Lcom/qianhe/yct/utils/MacaoBoundary;->LAT:[D

    return-void

    :array_0
    .array-data 8
        0x405c63735c182ecbL    # 113.553916
        0x405c636ab9b23dd5L    # 113.553389
        0x405c63d130df9bdcL    # 113.559643
        0x405c64e28ed5f139L    # 113.576328
        0x405c663e7d135116L    # 113.597564
        0x405c66a2b5a20ddcL    # 113.603681
        0x405c65f533f42353L    # 113.593091
        0x405c658b5cbff477L    # 113.586631
        0x405c653fcc9ea9a4L    # 113.582019
        0x405c64d83c6c97d9L    # 113.575698
        0x405c64b7739f340dL    # 113.573697
        0x405c64540895d0b7L    # 113.567629
        0x405c63a7b0b39192L    # 113.55711
        0x405c633ca31e7d9aL    # 113.550576
        0x405c62c4c9c90c4eL    # 113.543261
        0x405c628bc9cd3e0cL    # 113.539782
        0x405c6287d2c7b891L    # 113.53954
        0x405c62330d73860aL    # 113.534366
        0x405c6221d10b1fefL    # 113.533314
        0x405c6249491f2dc3L    # 113.535723
        0x405c629f7f8ca81aL    # 113.540985
        0x405c62db59578a2bL    # 113.544638
        0x405c63241c3efae8L    # 113.549079
        0x405c637f3061c79bL    # 113.554638
        0x405c63735c182ecbL    # 113.553916
        0x405c65893b7d8490L    # 113.586501
        0x405c64dfa871a3b1L    # 113.576151
        0x405c64ddebd9018eL    # 113.576045
        0x405c655fc7e6b3ffL    # 113.583971
        0x405c65893b7d8490L    # 113.586501
    .end array-data

    :array_1
    .array-data 8
        0x4036200e1719f7f9L    # 22.125215
        0x40361cd78c436fc1L    # 22.112664
        0x40361b30f8c64fdbL    # 22.106216
        0x40361baf85942917L    # 22.108147
        0x4036200789613d32L    # 22.125115
        0x403621e310dbf056L    # 22.132371
        0x4036298b827fa1a1L    # 22.162285
        0x40362c9613d31b9bL    # 22.174165
        0x40362ec1e364bec6L    # 22.182646
        0x403631bb59ddc1e8L    # 22.194265
        0x403634a159817b96L    # 22.205587
        0x40363587b56b8738L    # 22.209102
        0x4036368986fcdee3L    # 22.213036
        0x403636bf9830e3ceL    # 22.213861
        0x403635f10667f90eL    # 22.210709
        0x4036345681ecd4aaL    # 22.204445
        0x403631d57ff9b563L    # 22.194664
        0x40362f854046412dL    # 22.185627
        0x40362de4b44a1f08L    # 22.179271
        0x40362c2be8bc169cL    # 22.172545
        0x4036295cb790fb65L    # 22.161571
        0x40362771fbc5de9cL    # 22.154083
        0x40362634330d7386L    # 22.149234
        0x403624763a190082L    # 22.142429
        0x4036200e1719f7f9L    # 22.125215
        0x403633789a459104L    # 22.201059
        0x4036337739f340d5L    # 22.201038
        0x403631ca6ca03c4bL    # 22.194495
        0x4036317b634dad32L    # 22.193289
        0x403633789a459104L    # 22.201059
    .end array-data
.end method

.method public static contains(DD)Z
    .locals 2

    .line 43
    invoke-static {p2, p3, p0, p1}, Lcom/qianhe/yct/utils/MacaoBoundary;->isInBoundingBox(DD)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 47
    :cond_0
    invoke-static {v1, p0, p1, p2, p3}, Lcom/qianhe/yct/utils/MacaoBoundary;->containsRing(IDD)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private static containsRing(IDD)Z
    .locals 17

    .line 55
    sget-object v0, Lcom/qianhe/yct/utils/MacaoBoundary;->RING_OFFSET:[I

    aget v0, v0, p0

    .line 56
    sget-object v1, Lcom/qianhe/yct/utils/MacaoBoundary;->RING_COUNT:[I

    aget v1, v1, p0

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    move v4, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 59
    sget-object v6, Lcom/qianhe/yct/utils/MacaoBoundary;->LAT:[D

    add-int v7, v0, v2

    aget-wide v8, v6, v7

    add-int/2addr v4, v0

    .line 60
    aget-wide v10, v6, v4

    const/4 v6, 0x1

    cmpl-double v12, v8, p3

    if-lez v12, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    cmpl-double v13, v10, p3

    if-lez v13, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-eq v12, v6, :cond_2

    .line 62
    sget-object v6, Lcom/qianhe/yct/utils/MacaoBoundary;->LNG:[D

    aget-wide v12, v6, v7

    .line 63
    aget-wide v14, v6, v4

    sub-double/2addr v14, v12

    sub-double v6, p3, v8

    mul-double v14, v14, v6

    sub-double/2addr v10, v8

    div-double/2addr v14, v10

    add-double/2addr v14, v12

    cmpg-double v4, p1, v14

    if-gez v4, :cond_2

    xor-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v4, v2, 0x1

    move/from16 v16, v4

    move v4, v2

    move/from16 v2, v16

    goto :goto_0

    :cond_3
    return v5
.end method

.method public static isInBoundingBox(DD)Z
    .locals 3

    .line 0
    const-wide v0, 0x40361b30f8c64fdbL    # 22.106216

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_0

    const-wide v0, 0x403636bf9830e3ceL    # 22.213861

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    const-wide p0, 0x405c6221d10b1fefL    # 113.533314

    cmpl-double v0, p2, p0

    if-ltz v0, :cond_0

    const-wide p0, 0x405c66a2b5a20ddcL    # 113.603681

    cmpg-double v0, p2, p0

    if-gtz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
