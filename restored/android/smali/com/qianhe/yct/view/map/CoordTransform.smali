.class public Lcom/qianhe/yct/view/map/CoordTransform;
.super Ljava/lang/Object;
.source "CoordTransform.java"


# static fields
.field static PI:D = 3.141592653589793

.field static a:D = 6378245.0

.field static ee:D = 0.006693421622965943


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static outOfChina(DD)Z
    .locals 3

    .line 0
    const-wide v0, 0x4052004189374bc7L    # 72.004

    cmpg-double v2, p2, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x40613ab5dcc63f14L    # 137.8347

    cmpl-double v2, p2, v0

    if-gtz v2, :cond_1

    const-wide p2, 0x3fea89a027525461L    # 0.8293

    cmpg-double v0, p0, p2

    if-ltz v0, :cond_1

    const-wide p2, 0x404be9de69ad42c4L    # 55.8271

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static transformLat(DD)D
    .locals 12

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v2, p0, v0

    const-wide/high16 v4, -0x3fa7000000000000L    # -100.0

    add-double/2addr v4, v2

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v8, p2, v6

    add-double/2addr v4, v8

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double v10, p2, v8

    mul-double v10, v10, p2

    add-double/2addr v4, v10

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double v10, v10, p0

    mul-double v10, v10, p2

    add-double/2addr v4, v10

    .line 36
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double v10, v10, v8

    add-double/2addr v4, v10

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    mul-double p0, p0, v8

    .line 37
    sget-wide v8, Lcom/qianhe/yct/view/map/CoordTransform;->PI:D

    mul-double p0, p0, v8

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    mul-double p0, p0, v8

    sget-wide v10, Lcom/qianhe/yct/view/map/CoordTransform;->PI:D

    mul-double v2, v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v8

    add-double/2addr p0, v2

    mul-double p0, p0, v0

    div-double/2addr p0, v6

    add-double/2addr v4, p0

    .line 38
    sget-wide p0, Lcom/qianhe/yct/view/map/CoordTransform;->PI:D

    mul-double p0, p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double p0, p0, v8

    div-double v2, p2, v6

    sget-wide v8, Lcom/qianhe/yct/view/map/CoordTransform;->PI:D

    mul-double v2, v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v8, 0x4044000000000000L    # 40.0

    mul-double v2, v2, v8

    add-double/2addr p0, v2

    mul-double p0, p0, v0

    div-double/2addr p0, v6

    add-double/2addr v4, p0

    const-wide/high16 p0, 0x4028000000000000L    # 12.0

    div-double p0, p2, p0

    .line 39
    sget-wide v2, Lcom/qianhe/yct/view/map/CoordTransform;->PI:D

    mul-double p0, p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    mul-double p0, p0, v2

    sget-wide v2, Lcom/qianhe/yct/view/map/CoordTransform;->PI:D

    mul-double p2, p2, v2

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide/high16 v2, 0x4074000000000000L    # 320.0

    mul-double p2, p2, v2

    add-double/2addr p0, p2

    mul-double p0, p0, v0

    div-double/2addr p0, v6

    add-double/2addr v4, p0

    return-wide v4
.end method

.method private static transformLon(DD)D
    .locals 12

    const-wide v0, 0x4072c00000000000L    # 300.0

    add-double v2, p0, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, p2, v4

    add-double/2addr v2, v6

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double v8, p0, v6

    mul-double v10, v8, p0

    add-double/2addr v2, v10

    mul-double v8, v8, p2

    add-double/2addr v2, v8

    .line 44
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    mul-double p2, p2, v6

    add-double/2addr v2, p2

    const-wide/high16 p2, 0x4018000000000000L    # 6.0

    mul-double p2, p2, p0

    .line 45
    sget-wide v6, Lcom/qianhe/yct/view/map/CoordTransform;->PI:D

    mul-double p2, p2, v6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    mul-double p2, p2, v6

    mul-double v8, p0, v4

    sget-wide v10, Lcom/qianhe/yct/view/map/CoordTransform;->PI:D

    mul-double v8, v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v6

    add-double/2addr p2, v8

    mul-double p2, p2, v4

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr p2, v8

    add-double/2addr v2, p2

    .line 46
    sget-wide p2, Lcom/qianhe/yct/view/map/CoordTransform;->PI:D

    mul-double p2, p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double p2, p2, v6

    div-double v6, p0, v8

    sget-wide v10, Lcom/qianhe/yct/view/map/CoordTransform;->PI:D

    mul-double v6, v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    mul-double v6, v6, v10

    add-double/2addr p2, v6

    mul-double p2, p2, v4

    div-double/2addr p2, v8

    add-double/2addr v2, p2

    const-wide/high16 p2, 0x4028000000000000L    # 12.0

    div-double p2, p0, p2

    .line 47
    sget-wide v6, Lcom/qianhe/yct/view/map/CoordTransform;->PI:D

    mul-double p2, p2, v6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide v6, 0x4062c00000000000L    # 150.0

    mul-double p2, p2, v6

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    div-double/2addr p0, v6

    sget-wide v6, Lcom/qianhe/yct/view/map/CoordTransform;->PI:D

    mul-double p0, p0, v6

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double p0, p0, v0

    add-double/2addr p2, p0

    mul-double p2, p2, v4

    div-double/2addr p2, v8

    add-double/2addr v2, p2

    return-wide v2
.end method

.method public static wgs84ToGcj02(DD)[D
    .locals 21

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 10
    invoke-static/range {p0 .. p3}, Lcom/qianhe/yct/view/map/CoordTransform;->outOfChina(DD)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    new-array v2, v2, [D

    aput-wide p0, v2, v1

    aput-wide p2, v2, v0

    return-object v2

    :cond_0
    const-wide v3, 0x405a400000000000L    # 105.0

    sub-double v3, p2, v3

    const-wide v5, 0x4041800000000000L    # 35.0

    sub-double v5, p0, v5

    .line 14
    invoke-static {v3, v4, v5, v6}, Lcom/qianhe/yct/view/map/CoordTransform;->transformLat(DD)D

    move-result-wide v7

    .line 15
    invoke-static {v3, v4, v5, v6}, Lcom/qianhe/yct/view/map/CoordTransform;->transformLon(DD)D

    move-result-wide v3

    const-wide v5, 0x4066800000000000L    # 180.0

    div-double v9, p0, v5

    .line 17
    sget-wide v11, Lcom/qianhe/yct/view/map/CoordTransform;->PI:D

    mul-double v9, v9, v11

    .line 18
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 19
    sget-wide v13, Lcom/qianhe/yct/view/map/CoordTransform;->ee:D

    mul-double v13, v13, v11

    mul-double v13, v13, v11

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double v13, v11, v13

    .line 20
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    mul-double v7, v7, v5

    .line 22
    sget-wide v17, Lcom/qianhe/yct/view/map/CoordTransform;->a:D

    sget-wide v19, Lcom/qianhe/yct/view/map/CoordTransform;->ee:D

    sub-double v11, v11, v19

    mul-double v11, v11, v17

    mul-double v13, v13, v15

    div-double/2addr v11, v13

    sget-wide v13, Lcom/qianhe/yct/view/map/CoordTransform;->PI:D

    mul-double v11, v11, v13

    div-double/2addr v7, v11

    mul-double v3, v3, v5

    div-double v17, v17, v15

    .line 23
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v17, v17, v5

    sget-wide v5, Lcom/qianhe/yct/view/map/CoordTransform;->PI:D

    mul-double v17, v17, v5

    div-double v3, v3, v17

    add-double v5, p0, v7

    add-double v3, p2, v3

    .line 28
    new-array v2, v2, [D

    aput-wide v5, v2, v1

    aput-wide v3, v2, v0

    return-object v2
.end method
