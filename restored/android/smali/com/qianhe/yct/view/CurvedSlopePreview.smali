.class public Lcom/qianhe/yct/view/CurvedSlopePreview;
.super Landroid/view/View;
.source "CurvedSlopePreview.java"


# static fields
.field private static final DRAG:I = 0x1

.field private static final NONE:I = 0x0

.field private static final ZOOM:I = 0x2


# instance fields
.field private INITSCALE:F

.field private arcStrokePaint:Landroid/graphics/Paint;

.field private arcTransitionPaint:Landroid/graphics/Paint;

.field private final arcTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;",
            ">;"
        }
    .end annotation
.end field

.field private bucketBitmap:Landroid/graphics/Bitmap;

.field private bucketPaint:Landroid/graphics/Paint;

.field private contentHeight:F

.field private contentWidth:F

.field private currentPoint:[D

.field private dottedLinePaint:Landroid/graphics/Paint;

.field private drawLines:Z

.field private gaussL:[D

.field private gaussR:[D

.field private final lastFingerPos1:[F

.field private final lastFingerPos2:[F

.field private lastNearestSegmentIndex:I

.field private final lastPoint:[F

.field private linePaint:Landroid/graphics/Paint;

.field private minX:F

.field private minY:F

.field private mode:I

.field private nearestSegmentIndex:I

.field private needTransform:Z

.field private offsetX:D

.field private offsetY:D

.field private final openingCurvePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private scaleRatio:F

.field private slopeFacePaint:Landroid/graphics/Paint;

.field private final slopeFaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;",
            ">;"
        }
    .end annotation
.end field

.field private slopeRibPaint:Landroid/graphics/Paint;

.field private textPaint:Landroid/graphics/Paint;

.field private transformedCurrentPoint:[D

.field private final transformedOpeningPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private width:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/view/CurvedSlopePreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0}, Lcom/qianhe/yct/view/CurvedSlopePreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x2

    .line 36
    new-array v0, p3, [F

    iput-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->lastPoint:[F

    .line 37
    new-array v0, p3, [F

    iput-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->lastFingerPos1:[F

    .line 38
    new-array p3, p3, [F

    iput-object p3, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->lastFingerPos2:[F

    const/4 p3, 0x0

    .line 42
    iput p3, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->mode:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->openingCurvePoints:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->slopeFaces:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->arcTransitions:Ljava/util/List;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->contentWidth:F

    .line 50
    iput v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->contentHeight:F

    .line 51
    iput v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->minX:F

    .line 52
    iput v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->minY:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 53
    iput v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->INITSCALE:F

    .line 54
    iput v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->scaleRatio:F

    const/4 v0, 0x3

    .line 56
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->gaussL:[D

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->gaussR:[D

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->transformedOpeningPoints:Ljava/util/List;

    .line 60
    iput-boolean p3, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->needTransform:Z

    const/4 p3, -0x1

    .line 61
    iput p3, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->nearestSegmentIndex:I

    .line 62
    iput p3, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->lastNearestSegmentIndex:I

    const/4 p3, 0x1

    .line 64
    iput-boolean p3, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->drawLines:Z

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, p3, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 81
    sget-object v0, Lcom/qianhe/yct/R$styleable;->PolyLinePreView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 82
    sget p2, Lcom/qianhe/yct/R$styleable;->PolyLinePreView_drawLines:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->drawLines:Z

    .line 83
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/view/CurvedSlopePreview;->init()V

    return-void
.end method

.method private calculateNearestSegment()V
    .locals 9

    .line 169
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->currentPoint:[D

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->openingCurvePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    iput v2, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->nearestSegmentIndex:I

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v0, 0x0

    .line 178
    :goto_0
    iget-object v5, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->openingCurvePoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_2

    .line 179
    iget-object v5, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->openingCurvePoints:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    .line 180
    iget-object v6, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->openingCurvePoints:Ljava/util/List;

    add-int/lit8 v7, v0, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    .line 182
    iget-object v8, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->currentPoint:[D

    invoke-direct {p0, v5, v6, v8}, Lcom/qianhe/yct/view/CurvedSlopePreview;->distancePointToSegment([D[D[D)D

    move-result-wide v5

    cmpg-double v8, v5, v3

    if-gez v8, :cond_1

    .line 186
    iput v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->nearestSegmentIndex:I

    move-wide v3, v5

    :cond_1
    move v0, v7

    goto :goto_0

    .line 190
    :cond_2
    iget v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->nearestSegmentIndex:I

    if-eq v0, v2, :cond_3

    .line 191
    iput v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->lastNearestSegmentIndex:I

    .line 195
    :cond_3
    iput-boolean v1, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->needTransform:Z

    return-void

    .line 170
    :cond_4
    :goto_1
    iput v2, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->nearestSegmentIndex:I

    .line 171
    iput-boolean v1, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->needTransform:Z

    return-void
.end method

.method private calculateTransform()V
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 199
    iget v4, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->nearestSegmentIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget-object v5, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->openingCurvePoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-lt v4, v5, :cond_0

    goto/16 :goto_1

    .line 203
    :cond_0
    iget-object v4, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->openingCurvePoints:Ljava/util/List;

    iget v5, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->nearestSegmentIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    .line 204
    iget-object v5, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->openingCurvePoints:Ljava/util/List;

    iget v6, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->nearestSegmentIndex:I

    add-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    .line 207
    aget-wide v6, v5, v2

    aget-wide v8, v4, v2

    sub-double/2addr v6, v8

    .line 208
    aget-wide v8, v5, v3

    aget-wide v10, v4, v3

    sub-double/2addr v8, v10

    .line 212
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    .line 215
    aget-wide v7, v4, v2

    .line 216
    aget-wide v9, v4, v3

    .line 218
    iget-object v4, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->transformedOpeningPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 219
    iget-object v4, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->openingCurvePoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [D

    .line 221
    aget-wide v12, v11, v2

    sub-double/2addr v12, v7

    .line 222
    aget-wide v14, v11, v3

    sub-double/2addr v14, v9

    const/4 v11, 0x0

    const/16 v16, 0x1

    neg-double v2, v5

    .line 225
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    .line 226
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v19, v12, v17

    mul-double v21, v14, v2

    sub-double v19, v19, v21

    mul-double v12, v12, v2

    mul-double v14, v14, v17

    add-double/2addr v12, v14

    .line 231
    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->transformedOpeningPoints:Ljava/util/List;

    add-double v19, v19, v7

    add-double/2addr v12, v9

    new-array v3, v1, [D

    aput-wide v19, v3, v11

    aput-wide v12, v3, v16

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    const/16 v16, 0x1

    .line 234
    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->currentPoint:[D

    if-eqz v2, :cond_2

    .line 236
    aget-wide v3, v2, v11

    sub-double/2addr v3, v7

    .line 237
    aget-wide v12, v2, v16

    sub-double/2addr v12, v9

    neg-double v5, v5

    .line 240
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 241
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v17, v3, v14

    mul-double v19, v12, v5

    sub-double v17, v17, v19

    mul-double v3, v3, v5

    mul-double v12, v12, v14

    add-double/2addr v3, v12

    add-double v17, v17, v7

    add-double/2addr v3, v9

    .line 246
    new-array v1, v1, [D

    aput-wide v17, v1, v11

    aput-wide v3, v1, v16

    iput-object v1, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->transformedCurrentPoint:[D

    :cond_2
    :goto_1
    return-void
.end method

.method private distancePointToSegment([D[D[D)D
    .locals 15

    const/4 v0, 0x0

    .line 132
    aget-wide v1, p2, v0

    aget-wide v3, p1, v0

    sub-double/2addr v1, v3

    const/4 v5, 0x1

    .line 133
    aget-wide v6, p2, v5

    aget-wide v8, p1, v5

    sub-double/2addr v6, v8

    .line 134
    aget-wide v10, p3, v0

    sub-double/2addr v10, v3

    .line 135
    aget-wide v3, p3, v5

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

    .line 139
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    :cond_0
    mul-double v10, v10, v1

    mul-double v3, v3, v6

    add-double/2addr v10, v3

    div-double/2addr v10, v8

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 143
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 145
    aget-wide v8, p1, v0

    mul-double v1, v1, v3

    add-double/2addr v8, v1

    .line 146
    aget-wide v1, p1, v5

    mul-double v3, v3, v6

    add-double/2addr v1, v3

    .line 148
    aget-wide v3, p3, v0

    sub-double/2addr v3, v8

    .line 149
    aget-wide v5, p3, v5

    sub-double/2addr v5, v1

    mul-double v3, v3, v3

    mul-double v5, v5, v5

    add-double/2addr v3, v5

    .line 151
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private dpToPx(F)F
    .locals 2

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private drawBucketBitmap(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 358
    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->bucketBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->gaussL:[D

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->gaussR:[D

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 363
    :cond_0
    invoke-direct {v0}, Lcom/qianhe/yct/view/CurvedSlopePreview;->getTransformedGaussL()[D

    move-result-object v2

    .line 364
    invoke-direct {v0}, Lcom/qianhe/yct/view/CurvedSlopePreview;->getTransformedGaussR()[D

    move-result-object v3

    if-eqz v2, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f000000    # 0.5f

    .line 373
    iget v3, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->scaleRatio:F

    mul-float v3, v3, v2

    .line 376
    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->bucketBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->bucketBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    mul-float v2, v2, v3

    .line 380
    invoke-direct {v0}, Lcom/qianhe/yct/view/CurvedSlopePreview;->getTransformedGaussL()[D

    move-result-object v4

    .line 381
    invoke-direct {v0}, Lcom/qianhe/yct/view/CurvedSlopePreview;->getTransformedGaussR()[D

    move-result-object v5

    const/4 v6, 0x0

    .line 382
    aget-wide v7, v4, v6

    aget-wide v9, v5, v6

    add-double v11, v7, v9

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v13

    const/4 v6, 0x1

    .line 383
    aget-wide v15, v4, v6

    aget-wide v4, v5, v6

    add-double v17, v15, v4

    div-double v17, v17, v13

    sub-double/2addr v4, v15

    sub-double/2addr v9, v7

    .line 386
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 391
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 394
    iget v5, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->scaleRatio:F

    float-to-double v6, v5

    mul-double v11, v11, v6

    iget-wide v6, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetX:D

    add-double/2addr v11, v6

    double-to-float v6, v11

    float-to-double v7, v5

    mul-double v17, v17, v7

    iget-wide v7, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetY:D

    add-double v7, v17, v7

    double-to-float v5, v7

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 397
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-float v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    neg-float v5, v2

    .line 406
    new-instance v6, Landroid/graphics/Rect;

    .line 407
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 408
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-float/2addr v4, v3

    .line 409
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float/2addr v5, v2

    .line 410
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v6, v7, v8, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 411
    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->bucketBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 414
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_0
    return-void
.end method

.method private drawScaleBar(Landroid/graphics/Canvas;)V
    .locals 12

    .line 476
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x41f00000    # 30.0f

    .line 477
    invoke-direct {p0, v0}, Lcom/qianhe/yct/view/CurvedSlopePreview;->dpToPx(F)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    .line 478
    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/CurvedSlopePreview;->dpToPx(F)F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    .line 479
    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/CurvedSlopePreview;->dpToPx(F)F

    move-result v4

    .line 480
    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/CurvedSlopePreview;->dpToPx(F)F

    move-result v9

    .line 481
    iget v3, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->scaleRatio:F

    div-float v10, v0, v3

    .line 483
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const/high16 v11, -0x1000000

    .line 484
    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 485
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 486
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v9

    sub-float v5, v3, v1

    add-float v6, v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v7, v3, v9

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 488
    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 489
    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/CurvedSlopePreview;->dpToPx(F)F

    move-result p1

    invoke-virtual {v8, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 490
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const-string v2, "%.2fm"

    invoke-static {p1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 491
    invoke-virtual {v8, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v4, v0

    .line 493
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v9

    sub-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/CurvedSlopePreview;->dpToPx(F)F

    move-result v1

    sub-float/2addr v0, v1

    .line 494
    invoke-virtual {v3, p1, v4, v0, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 495
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawTextAboveCircle(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V
    .locals 3

    .line 350
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 351
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1, p4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 352
    iget-object p4, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    sub-float/2addr p3, p4

    .line 354
    iget-object p4, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p5, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getTransformedGaussL()[D
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x2

    .line 418
    iget-boolean v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->needTransform:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->transformedOpeningPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->openingCurvePoints:Ljava/util/List;

    iget v5, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->nearestSegmentIndex:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 423
    iget-object v5, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->openingCurvePoints:Ljava/util/List;

    iget v6, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->nearestSegmentIndex:I

    add-int/2addr v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    .line 424
    aget-wide v6, v2, v3

    .line 425
    aget-wide v8, v2, v4

    .line 427
    aget-wide v10, v5, v3

    sub-double/2addr v10, v6

    .line 428
    aget-wide v12, v5, v4

    sub-double/2addr v12, v8

    .line 430
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    .line 433
    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->gaussL:[D

    aget-wide v12, v2, v3

    sub-double/2addr v12, v6

    .line 434
    aget-wide v14, v2, v4

    sub-double/2addr v14, v8

    neg-double v10, v10

    .line 437
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    .line 438
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v18, v12, v16

    mul-double v20, v14, v10

    sub-double v18, v18, v20

    mul-double v12, v12, v10

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    add-double v18, v18, v6

    add-double/2addr v12, v8

    .line 443
    new-array v1, v1, [D

    aput-wide v18, v1, v3

    aput-wide v12, v1, v4

    return-object v1

    .line 419
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->gaussL:[D

    aget-wide v5, v2, v3

    aget-wide v7, v2, v4

    new-array v1, v1, [D

    aput-wide v5, v1, v3

    aput-wide v7, v1, v4

    return-object v1
.end method

.method private getTransformedGaussR()[D
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x2

    .line 447
    iget-boolean v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->needTransform:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->transformedOpeningPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->openingCurvePoints:Ljava/util/List;

    iget v5, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->nearestSegmentIndex:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 452
    iget-object v5, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->openingCurvePoints:Ljava/util/List;

    iget v6, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->nearestSegmentIndex:I

    add-int/2addr v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    .line 453
    aget-wide v6, v2, v3

    .line 454
    aget-wide v8, v2, v4

    .line 456
    aget-wide v10, v5, v3

    sub-double/2addr v10, v6

    .line 457
    aget-wide v12, v5, v4

    sub-double/2addr v12, v8

    .line 459
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    .line 462
    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->gaussR:[D

    aget-wide v12, v2, v3

    sub-double/2addr v12, v6

    .line 463
    aget-wide v14, v2, v4

    sub-double/2addr v14, v8

    neg-double v10, v10

    .line 466
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    .line 467
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v18, v12, v16

    mul-double v20, v14, v10

    sub-double v18, v18, v20

    mul-double v12, v12, v10

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    add-double v18, v18, v6

    add-double/2addr v12, v8

    .line 472
    new-array v1, v1, [D

    aput-wide v18, v1, v3

    aput-wide v12, v1, v4

    return-object v1

    .line 448
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->gaussR:[D

    aget-wide v5, v2, v3

    aget-wide v7, v2, v4

    new-array v1, v1, [D

    aput-wide v5, v1, v3

    aput-wide v7, v1, v4

    return-object v1
.end method

.method private init()V
    .locals 9

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_work_center_tooth:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->bucketBitmap:Landroid/graphics/Bitmap;

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->linePaint:Landroid/graphics/Paint;

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$color;->map_line:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->linePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/CurvedSlopePreview;->dpToPx(F)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->linePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->linePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->dottedLinePaint:Landroid/graphics/Paint;

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/qianhe/yct/R$color;->map_line:I

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->dottedLinePaint:Landroid/graphics/Paint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p0, v5}, Lcom/qianhe/yct/view/CurvedSlopePreview;->dpToPx(F)F

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->dottedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->dottedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 102
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->dottedLinePaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/DashPathEffect;

    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/CurvedSlopePreview;->dpToPx(F)F

    move-result v6

    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/CurvedSlopePreview;->dpToPx(F)F

    move-result v2

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v6, v7, v8

    aput v2, v7, v1

    const/4 v2, 0x0

    invoke-direct {v4, v7, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 104
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->textPaint:Landroid/graphics/Paint;

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/qianhe/yct/R$color;->map_line:I

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->textPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/CurvedSlopePreview;->spToPx(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->bucketPaint:Landroid/graphics/Paint;

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->slopeFacePaint:Landroid/graphics/Paint;

    .line 111
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->slopeFacePaint:Landroid/graphics/Paint;

    const/16 v4, 0x28

    const/16 v6, 0x64

    const/16 v7, 0x95

    const/16 v8, 0xed

    invoke-static {v4, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->arcTransitionPaint:Landroid/graphics/Paint;

    .line 115
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->arcTransitionPaint:Landroid/graphics/Paint;

    const/16 v2, 0x32

    invoke-static {v2, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->arcStrokePaint:Landroid/graphics/Paint;

    .line 119
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->arcStrokePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/CurvedSlopePreview;->dpToPx(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->arcStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/qianhe/yct/R$color;->map_line:I

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->arcStrokePaint:Landroid/graphics/Paint;

    const/16 v2, 0xb4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->slopeRibPaint:Landroid/graphics/Paint;

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$color;->map_line:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->slopeRibPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v5}, Lcom/qianhe/yct/view/CurvedSlopePreview;->dpToPx(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->slopeRibPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->slopeRibPaint:Landroid/graphics/Paint;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private setToothBitmap(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 620
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_work_left_tooth:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 622
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_work_right_tooth:I

    goto :goto_0

    .line 624
    :cond_1
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_work_center_tooth:I

    .line 626
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->bucketBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private spToPx(F)F
    .locals 2

    .line 346
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private spacing(Landroid/view/MotionEvent;II)F
    .locals 2

    .line 570
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 571
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr p2, p1

    mul-float v0, v0, v0

    mul-float p2, p2, p2

    add-float/2addr v0, p2

    float-to-double p1, v0

    .line 572
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private spacing([F[F)F
    .locals 2

    const/4 v0, 0x0

    .line 576
    aget v1, p1, v0

    aget v0, p2, v0

    sub-float/2addr v1, v0

    const/4 v0, 0x1

    .line 577
    aget p1, p1, v0

    aget p2, p2, v0

    sub-float/2addr p1, p2

    mul-float v1, v1, v1

    mul-float p1, p1, p1

    add-float/2addr v1, p1

    float-to-double p1, v1

    .line 578
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private updateContentBounds()V
    .locals 15

    .line 630
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->openingCurvePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 631
    iput v1, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->contentWidth:F

    .line 632
    iput v1, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->contentHeight:F

    .line 633
    iput v1, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->minX:F

    .line 634
    iput v1, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->minY:F

    return-void

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->openingCurvePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v2, -0x10000000000001L

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v6, v4

    move-wide v8, v6

    move-wide v4, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [D

    const/4 v11, 0x0

    .line 644
    aget-wide v12, v10, v11

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 645
    aget-wide v11, v10, v11

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const/4 v11, 0x1

    .line 646
    aget-wide v12, v10, v11

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 647
    aget-wide v11, v10, v11

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto :goto_0

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->slopeFaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;

    .line 651
    iget-object v11, v10, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;->far0:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v11, v11, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    iget-object v13, v10, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;->far1:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v13, v13, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 652
    iget-object v11, v10, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;->far0:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v11, v11, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    iget-object v13, v10, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;->far1:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v13, v13, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 653
    iget-object v11, v10, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;->far0:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v11, v11, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    iget-object v13, v10, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;->far1:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v13, v13, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 654
    iget-object v11, v10, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;->far0:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v11, v11, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    iget-object v10, v10, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;->far1:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v13, v10, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto :goto_1

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->arcTransitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;

    .line 657
    iget-object v11, v10, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;->edgePrev:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v11, v11, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    iget-object v13, v10, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;->edgeNext:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v13, v13, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 658
    iget-object v11, v10, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;->edgePrev:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v11, v11, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    iget-object v13, v10, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;->edgeNext:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v13, v13, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 659
    iget-object v11, v10, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;->edgePrev:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v11, v11, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    iget-object v13, v10, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;->edgeNext:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v13, v13, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 660
    iget-object v11, v10, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;->edgePrev:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v11, v11, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    iget-object v10, v10, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;->edgeNext:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v13, v10, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto :goto_2

    :cond_3
    sub-double v10, v2, v6

    double-to-float v0, v10

    .line 663
    iput v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->contentWidth:F

    sub-double v10, v4, v8

    double-to-float v0, v10

    .line 664
    iput v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->contentHeight:F

    double-to-float v0, v6

    .line 665
    iput v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->minX:F

    double-to-float v0, v8

    .line 666
    iput v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->minY:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 668
    invoke-direct {p0, v0}, Lcom/qianhe/yct/view/CurvedSlopePreview;->dpToPx(F)F

    move-result v0

    .line 669
    iget v10, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->contentWidth:F

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v0, v0, v11

    add-float/2addr v10, v0

    iput v10, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->contentWidth:F

    .line 670
    iget v10, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->contentHeight:F

    add-float/2addr v10, v0

    iput v10, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->contentHeight:F

    .line 672
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 673
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    cmpl-float v14, v0, v1

    if-lez v14, :cond_4

    cmpl-float v14, v10, v1

    if-lez v14, :cond_4

    .line 675
    iget v14, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->contentWidth:F

    cmpl-float v14, v14, v1

    if-lez v14, :cond_4

    iget v14, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->contentHeight:F

    cmpl-float v1, v14, v1

    if-lez v1, :cond_4

    add-double/2addr v6, v2

    div-double/2addr v6, v12

    add-double/2addr v8, v4

    div-double/2addr v8, v12

    div-float/2addr v0, v11

    div-float/2addr v10, v11

    float-to-double v0, v0

    .line 680
    iget v2, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->scaleRatio:F

    float-to-double v3, v2

    mul-double v6, v6, v3

    sub-double/2addr v0, v6

    iput-wide v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetX:D

    float-to-double v0, v10

    float-to-double v2, v2

    mul-double v8, v8, v2

    sub-double/2addr v0, v8

    .line 681
    iput-wide v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetY:D

    goto :goto_3

    .line 683
    :cond_4
    iget v1, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->contentWidth:F

    iget v2, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->scaleRatio:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    div-double/2addr v0, v12

    iput-wide v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetX:D

    .line 684
    iget v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->contentHeight:F

    mul-float v0, v0, v2

    sub-float/2addr v10, v0

    float-to-double v0, v10

    div-double/2addr v0, v12

    iput-wide v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetY:D

    .line 686
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public locateToCurrentPoint()V
    .locals 13

    .line 707
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->gaussL:[D

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->gaussR:[D

    if-eqz v1, :cond_2

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    array-length v2, v1

    if-ge v2, v3, :cond_0

    goto :goto_1

    .line 710
    :cond_0
    iget v2, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->INITSCALE:F

    iput v2, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->scaleRatio:F

    .line 713
    iget-boolean v2, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->needTransform:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->transformedCurrentPoint:[D

    if-eqz v2, :cond_1

    .line 714
    aget-wide v0, v2, v4

    .line 715
    aget-wide v3, v2, v3

    goto :goto_0

    .line 717
    :cond_1
    aget-wide v5, v0, v4

    aget-wide v7, v1, v4

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double v4, v5, v7

    .line 718
    aget-wide v9, v0, v3

    aget-wide v0, v1, v3

    add-double/2addr v9, v0

    div-double v0, v9, v7

    move-wide v11, v4

    move-wide v3, v0

    move-wide v0, v11

    .line 721
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 722
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    cmpl-float v7, v2, v6

    if-lez v7, :cond_2

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    div-float/2addr v5, v6

    float-to-double v6, v2

    .line 727
    iget v2, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->scaleRatio:F

    float-to-double v8, v2

    mul-double v0, v0, v8

    sub-double/2addr v6, v0

    iput-wide v6, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetX:D

    float-to-double v0, v5

    float-to-double v5, v2

    mul-double v3, v3, v5

    sub-double/2addr v0, v3

    .line 728
    iput-wide v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetY:D

    .line 729
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_1
    return-void
.end method

.method public locateToStartPoint()V
    .locals 9

    .line 690
    iget v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->INITSCALE:F

    iput v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->scaleRatio:F

    .line 691
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->openingCurvePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->openingCurvePoints:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 694
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 695
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-lez v5, :cond_0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    div-float/2addr v3, v4

    float-to-double v4, v2

    .line 699
    aget-wide v1, v0, v1

    iget v6, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->scaleRatio:F

    float-to-double v7, v6

    mul-double v1, v1, v7

    sub-double/2addr v4, v1

    iput-wide v4, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetX:D

    float-to-double v1, v3

    const/4 v3, 0x1

    .line 700
    aget-wide v3, v0, v3

    float-to-double v5, v6

    mul-double v3, v3, v5

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetY:D

    .line 703
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 264
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 266
    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->openingCurvePoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/high16 v2, 0x40a00000    # 5.0f

    .line 270
    invoke-direct {v0, v2}, Lcom/qianhe/yct/view/CurvedSlopePreview;->dpToPx(F)F

    move-result v7

    const/high16 v2, 0x41000000    # 8.0f

    .line 271
    invoke-direct {v0, v2}, Lcom/qianhe/yct/view/CurvedSlopePreview;->dpToPx(F)F

    move-result v8

    .line 272
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$color;->red:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    .line 273
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$color;->brown:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    .line 275
    iget-boolean v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->needTransform:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->transformedOpeningPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 276
    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->transformedOpeningPoints:Ljava/util/List;

    :goto_0
    move-object v11, v2

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->openingCurvePoints:Ljava/util/List;

    goto :goto_0

    .line 278
    :goto_1
    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->slopeFaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;

    .line 279
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 280
    iget-object v5, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;->opening0:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v12, v5, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    iget v6, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->scaleRatio:F

    float-to-double v14, v6

    mul-double v12, v12, v14

    iget-wide v14, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetX:D

    add-double/2addr v12, v14

    double-to-float v12, v12

    iget-wide v13, v5, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    float-to-double v5, v6

    mul-double v13, v13, v5

    iget-wide v5, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetY:D

    add-double/2addr v13, v5

    double-to-float v5, v13

    invoke-virtual {v4, v12, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 281
    iget-object v5, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;->opening1:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v12, v5, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    iget v6, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->scaleRatio:F

    float-to-double v14, v6

    mul-double v12, v12, v14

    iget-wide v14, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetX:D

    add-double/2addr v12, v14

    double-to-float v12, v12

    iget-wide v13, v5, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    float-to-double v5, v6

    mul-double v13, v13, v5

    iget-wide v5, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetY:D

    add-double/2addr v13, v5

    double-to-float v5, v13

    invoke-virtual {v4, v12, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 282
    iget-object v5, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;->far1:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v12, v5, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    iget v6, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->scaleRatio:F

    float-to-double v14, v6

    mul-double v12, v12, v14

    iget-wide v14, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetX:D

    add-double/2addr v12, v14

    double-to-float v12, v12

    iget-wide v13, v5, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    float-to-double v5, v6

    mul-double v13, v13, v5

    iget-wide v5, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetY:D

    add-double/2addr v13, v5

    double-to-float v5, v13

    invoke-virtual {v4, v12, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 283
    iget-object v3, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;->far0:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v5, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    iget v12, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->scaleRatio:F

    float-to-double v13, v12

    mul-double v5, v5, v13

    iget-wide v13, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetX:D

    add-double/2addr v5, v13

    double-to-float v5, v5

    iget-wide v13, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    move-object v6, v2

    float-to-double v2, v12

    mul-double v13, v13, v2

    iget-wide v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetY:D

    add-double/2addr v13, v2

    double-to-float v2, v13

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 284
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 285
    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->slopeFacePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object v2, v6

    goto :goto_2

    .line 288
    :cond_2
    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->arcTransitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;

    .line 289
    iget-object v4, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;->corner:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v5, v4, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    iget v12, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->scaleRatio:F

    float-to-double v13, v12

    mul-double v5, v5, v13

    iget-wide v13, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetX:D

    add-double/2addr v5, v13

    double-to-float v5, v5

    move v15, v8

    move/from16 v16, v9

    .line 290
    iget-wide v8, v4, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    move-wide/from16 v17, v8

    float-to-double v8, v12

    mul-double v8, v8, v17

    move-wide/from16 v17, v8

    iget-wide v8, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetY:D

    move-wide/from16 v19, v8

    add-double v8, v17, v19

    double-to-float v4, v8

    .line 291
    iget-object v6, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;->edgePrev:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v8, v6, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    move-wide/from16 v17, v8

    float-to-double v8, v12

    mul-double v8, v8, v17

    add-double/2addr v8, v13

    double-to-float v8, v8

    move/from16 v17, v10

    .line 292
    iget-wide v9, v6, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    move-wide/from16 v21, v9

    float-to-double v9, v12

    mul-double v9, v9, v21

    add-double v9, v9, v19

    double-to-float v6, v9

    .line 293
    iget-object v3, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;->edgeNext:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-wide v9, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    move-wide/from16 v21, v9

    float-to-double v9, v12

    mul-double v9, v9, v21

    add-double/2addr v9, v13

    double-to-float v9, v9

    .line 294
    iget-wide v13, v3, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    move-object v10, v2

    float-to-double v2, v12

    mul-double v13, v13, v2

    add-double v13, v13, v19

    double-to-float v2, v13

    .line 298
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 299
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 300
    invoke-virtual {v3, v8, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 301
    invoke-virtual {v3, v9, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 302
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 303
    iget-object v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->slopeFacePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object v2, v10

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, v17

    goto :goto_3

    :cond_3
    move v15, v8

    move/from16 v16, v9

    move/from16 v17, v10

    .line 306
    iget-boolean v2, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->drawLines:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v9, :cond_6

    const/4 v2, 0x0

    .line 307
    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v9

    if-ge v2, v3, :cond_6

    .line 308
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    add-int/lit8 v10, v2, 0x1

    .line 309
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    .line 310
    aget-wide v5, v3, v8

    iget v12, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->scaleRatio:F

    float-to-double v13, v12

    mul-double v5, v5, v13

    iget-wide v13, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetX:D

    add-double/2addr v5, v13

    double-to-float v5, v5

    .line 311
    aget-wide v18, v3, v9

    const/16 v20, 0x0

    const/16 v21, 0x1

    float-to-double v8, v12

    mul-double v18, v18, v8

    iget-wide v8, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetY:D

    move-object v6, v4

    add-double v3, v18, v8

    double-to-float v3, v3

    .line 312
    aget-wide v18, v6, v20

    move/from16 v22, v3

    float-to-double v3, v12

    mul-double v18, v18, v3

    add-double v3, v18, v13

    double-to-float v4, v3

    .line 313
    aget-wide v13, v6, v21

    move v6, v4

    float-to-double v3, v12

    mul-double v13, v13, v3

    add-double/2addr v13, v8

    double-to-float v3, v13

    .line 315
    iget v4, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->nearestSegmentIndex:I

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    .line 317
    :goto_5
    iget-object v4, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->linePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_5

    move/from16 v2, v16

    goto :goto_6

    :cond_5
    move/from16 v2, v17

    :goto_6
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    move v4, v6

    .line 318
    iget-object v6, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->linePaint:Landroid/graphics/Paint;

    move v2, v5

    move v5, v3

    move/from16 v3, v22

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v2, v10

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_4

    :cond_6
    const/16 v20, 0x0

    const/16 v21, 0x1

    const/4 v2, 0x0

    .line 322
    :goto_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 323
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    .line 324
    aget-wide v4, v3, v20

    iget v6, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->scaleRatio:F

    float-to-double v8, v6

    mul-double v4, v4, v8

    iget-wide v8, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetX:D

    add-double/2addr v4, v8

    double-to-float v4, v4

    .line 325
    aget-wide v8, v3, v21

    float-to-double v5, v6

    mul-double v8, v8, v5

    iget-wide v5, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetY:D

    add-double/2addr v8, v5

    double-to-float v3, v8

    .line 327
    iget v5, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->nearestSegmentIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    if-eq v2, v5, :cond_7

    add-int/lit8 v5, v5, 0x1

    if-ne v2, v5, :cond_8

    :cond_7
    const/4 v5, 0x1

    goto :goto_8

    :cond_8
    const/4 v5, 0x0

    .line 330
    :goto_8
    iget-object v6, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->textPaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_9

    move/from16 v5, v16

    goto :goto_9

    :cond_9
    move/from16 v5, v17

    :goto_9
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    iget-object v5, v0, Lcom/qianhe/yct/view/CurvedSlopePreview;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v7, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v2, 0x1

    .line 333
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sub-float v5, v3, v7

    sub-float/2addr v5, v15

    move/from16 v23, v4

    move v4, v3

    move/from16 v3, v23

    .line 334
    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/view/CurvedSlopePreview;->drawTextAboveCircle(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v6

    goto :goto_7

    .line 337
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/view/CurvedSlopePreview;->drawBucketBitmap(Landroid/graphics/Canvas;)V

    .line 338
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/view/CurvedSlopePreview;->drawScaleBar(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 252
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 253
    invoke-direct {p0}, Lcom/qianhe/yct/view/CurvedSlopePreview;->updateContentBounds()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 258
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 259
    invoke-direct {p0}, Lcom/qianhe/yct/view/CurvedSlopePreview;->updateContentBounds()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 500
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    const/4 v4, 0x5

    if-eq v0, v4, :cond_0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_6

    goto/16 :goto_0

    .line 511
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    .line 512
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    rem-int/2addr v4, v5

    .line 513
    iget-object v5, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->lastFingerPos1:[F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    aput v6, v5, v1

    .line 514
    iget-object v5, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->lastFingerPos1:[F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    aput v0, v5, v2

    .line 515
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->lastFingerPos2:[F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    aput v5, v0, v1

    .line 516
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->lastFingerPos2:[F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    aput p1, v0, v2

    .line 517
    iput v3, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->mode:I

    .line 518
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    return v2

    .line 522
    :cond_2
    iget v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->mode:I

    if-ne v0, v2, :cond_3

    .line 523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->lastPoint:[F

    aget v3, v3, v1

    sub-float/2addr v0, v3

    float-to-double v3, v0

    .line 524
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v5, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->lastPoint:[F

    aget v6, v5, v2

    sub-float/2addr v0, v6

    float-to-double v6, v0

    .line 526
    iget-wide v8, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetX:D

    add-double/2addr v8, v3

    iput-wide v8, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetX:D

    .line 527
    iget-wide v3, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetY:D

    add-double/2addr v3, v6

    iput-wide v3, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetY:D

    .line 529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    aput v0, v5, v1

    .line 530
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->lastPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, v0, v2

    .line 531
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2

    :cond_3
    if-ne v0, v3, :cond_5

    .line 533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v3, :cond_5

    .line 534
    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/view/CurvedSlopePreview;->spacing(Landroid/view/MotionEvent;II)F

    move-result v0

    .line 535
    iget-object v3, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->lastFingerPos1:[F

    iget-object v4, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->lastFingerPos2:[F

    invoke-direct {p0, v3, v4}, Lcom/qianhe/yct/view/CurvedSlopePreview;->spacing([F[F)F

    move-result v3

    div-float/2addr v0, v3

    .line 538
    iget v3, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->scaleRatio:F

    mul-float v3, v3, v0

    const v4, 0x3c23d70a    # 0.01f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_4

    const/high16 v4, 0x43960000    # 300.0f

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_4

    .line 540
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 541
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v5

    float-to-double v4, v4

    .line 543
    iget-wide v7, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetX:D

    sub-double v7, v4, v7

    float-to-double v9, v0

    mul-double v7, v7, v9

    sub-double/2addr v4, v7

    iput-wide v4, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetX:D

    float-to-double v4, v6

    .line 544
    iget-wide v6, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetY:D

    sub-double v6, v4, v6

    mul-double v6, v6, v9

    sub-double/2addr v4, v6

    iput-wide v4, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->offsetY:D

    .line 545
    iput v3, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->scaleRatio:F

    .line 547
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 550
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->lastFingerPos1:[F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v0, v1

    .line 551
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->lastFingerPos1:[F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v0, v2

    .line 552
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->lastFingerPos2:[F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v0, v1

    .line 553
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->lastFingerPos2:[F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    aput p1, v0, v2

    return v2

    .line 566
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 561
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 562
    :cond_7
    iput v1, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->mode:I

    return v2

    .line 504
    :cond_8
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->lastPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v0, v1

    .line 505
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->lastPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, v0, v2

    .line 506
    iput v2, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->mode:I

    .line 507
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    return v2
.end method

.method public refreshToothType(I)V
    .locals 0

    .line 614
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/CurvedSlopePreview;->setToothBitmap(I)V

    return-void
.end method

.method public setCurrentPoint([D[D)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 156
    iget-object v3, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->gaussL:[D

    aget-wide v4, p1, v2

    aput-wide v4, v3, v2

    .line 157
    aget-wide v4, p1, v1

    aput-wide v4, v3, v1

    .line 158
    aget-wide v4, p1, v0

    aput-wide v4, v3, v0

    .line 159
    iget-object v3, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->gaussR:[D

    aget-wide v4, p2, v2

    aput-wide v4, v3, v2

    .line 160
    aget-wide v4, p2, v1

    aput-wide v4, v3, v1

    .line 161
    aget-wide v4, p2, v0

    aput-wide v4, v3, v0

    .line 162
    aget-wide v3, p1, v2

    aget-wide v5, p2, v2

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    aget-wide v7, p1, v1

    aget-wide p1, p2, v1

    add-double/2addr v7, p1

    div-double/2addr v7, v5

    new-array p1, v0, [D

    aput-wide v3, p1, v2

    aput-wide v7, p1, v1

    iput-object p1, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->currentPoint:[D

    .line 163
    invoke-direct {p0}, Lcom/qianhe/yct/view/CurvedSlopePreview;->calculateNearestSegment()V

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSlopeData(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 586
    invoke-virtual {p0, p1, p2, v0}, Lcom/qianhe/yct/view/CurvedSlopePreview;->setSlopeData(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public setSlopeData(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeFace;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$ArcTransition;",
            ">;)V"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->openingCurvePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 593
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->slopeFaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 594
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->arcTransitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 595
    iget-object v0, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->transformedOpeningPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 598
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    .line 599
    iget-object v1, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->openingCurvePoints:Ljava/util/List;

    iget-wide v2, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->x:D

    iget-wide v4, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->y:D

    iget-wide v6, v0, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;->z:D

    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v8, 0x0

    aput-wide v2, v0, v8

    const/4 v2, 0x1

    aput-wide v4, v0, v2

    const/4 v2, 0x2

    aput-wide v6, v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 603
    iget-object p1, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->slopeFaces:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p3, :cond_2

    .line 606
    iget-object p1, p0, Lcom/qianhe/yct/view/CurvedSlopePreview;->arcTransitions:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 609
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/view/CurvedSlopePreview;->updateContentBounds()V

    .line 610
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
