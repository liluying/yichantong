.class public Lcom/qianhe/yct/view/PolyLinePreView;
.super Landroid/view/View;
.source "PolyLinePreView.java"


# static fields
.field private static final DRAG:I = 0x1

.field private static final NONE:I = 0x0

.field private static final ZOOM:I = 0x2


# instance fields
.field private INITSCALE:D

.field private backCallback:Landroidx/activity/OnBackPressedCallback;

.field private bucketBitmap:Landroid/graphics/Bitmap;

.field private buttonTracking:Z

.field private collapseBitmap:Landroid/graphics/Bitmap;

.field private contentHeight:F

.field private contentWidth:F

.field private final coordsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private currentPoint:[D

.field private dottedLinePaint:Landroid/graphics/Paint;

.field private drawLines:Z

.field private expandBitmap:Landroid/graphics/Bitmap;

.field private fullscreen:Z

.field private final fullscreenButtonRect:Landroid/graphics/RectF;

.field private fullscreenHost:Landroid/widget/FrameLayout;

.field private gaussL:[D

.field private gaussR:[D

.field private isWorkMode:Z

.field private final lastFingerPos1:[F

.field private final lastFingerPos2:[F

.field private lastNearestSegmentIndex:I

.field private final lastPoint:[F

.field private linePaint:Landroid/graphics/Paint;

.field private final matrix:Landroid/graphics/Matrix;

.field private minX:F

.field private minY:F

.field private mode:I

.field private nearestSegmentIndex:I

.field private needTransform:Z

.field private offsetX:D

.field private offsetY:D

.field private originX:D

.field private originY:D

.field private originalIndex:I

.field private originalLp:Landroid/view/ViewGroup$LayoutParams;

.field private originalParent:Landroid/view/ViewGroup;

.field private placeholder:Landroid/view/View;

.field private final points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private reparenting:Z

.field private reverseDirection:Z

.field private final savedMatrix:Landroid/graphics/Matrix;

.field private scaleRatio:D

.field private textPaint:Landroid/graphics/Paint;

.field private transformedCurrentPoint:[D

.field private final transformedPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private width:D


# direct methods
.method public static synthetic $r8$lambda$FiAL2LOjGaawyuGK_c5EnQDIXUQ(Lcom/qianhe/yct/view/PolyLinePreView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 633
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 634
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->exitFullscreen()V

    return p2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic -$$Nest$mexitFullscreen(Lcom/qianhe/yct/view/PolyLinePreView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->exitFullscreen()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/view/PolyLinePreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2, v0}, Lcom/qianhe/yct/view/PolyLinePreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->matrix:Landroid/graphics/Matrix;

    .line 48
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->savedMatrix:Landroid/graphics/Matrix;

    const/4 p3, 0x2

    .line 49
    new-array v0, p3, [F

    iput-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->lastPoint:[F

    .line 50
    new-array v0, p3, [F

    iput-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->lastFingerPos1:[F

    .line 51
    new-array p3, p3, [F

    iput-object p3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->lastFingerPos2:[F

    const/4 p3, 0x0

    .line 55
    iput p3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->mode:I

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->coordsList:Ljava/util/List;

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->contentWidth:F

    .line 62
    iput v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->contentHeight:F

    .line 63
    iput v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->minX:F

    .line 64
    iput v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->minY:F

    const-wide/16 v0, 0x0

    .line 66
    iput-wide v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originX:D

    .line 67
    iput-wide v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originY:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 68
    iput-wide v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->INITSCALE:D

    .line 69
    iput-wide v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->scaleRatio:D

    .line 70
    iput-boolean p3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->isWorkMode:Z

    const/4 v0, 0x3

    .line 72
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->gaussL:[D

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->gaussR:[D

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->nearestSegmentIndex:I

    .line 75
    iput v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->lastNearestSegmentIndex:I

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->transformedPoints:Ljava/util/List;

    .line 78
    iput-boolean p3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->needTransform:Z

    .line 79
    iput-boolean p3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->reverseDirection:Z

    const/4 p3, 0x1

    .line 81
    iput-boolean p3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->drawLines:Z

    .line 87
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreenButtonRect:Landroid/graphics/RectF;

    .line 90
    iput v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originalIndex:I

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, p3, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 114
    sget-object v0, Lcom/qianhe/yct/R$styleable;->PolyLinePreView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 115
    sget p2, Lcom/qianhe/yct/R$styleable;->PolyLinePreView_drawLines:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->drawLines:Z

    .line 116
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->init()V

    return-void
.end method

.method private alignSegmentToNorthAngle(DD)D
    .locals 0

    neg-double p1, p1

    .line 241
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    .line 242
    iget-boolean p3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->reverseDirection:Z

    if-eqz p3, :cond_0

    const-wide p3, 0x400921fb54442d18L    # Math.PI

    add-double/2addr p1, p3

    :cond_0
    return-wide p1
.end method

.method private calculateNearestSegment()V
    .locals 9

    .line 193
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->currentPoint:[D

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    goto :goto_2

    .line 200
    :cond_0
    iput v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->nearestSegmentIndex:I

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v0, 0x0

    .line 202
    :goto_0
    iget-object v5, p0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v0, v5, :cond_2

    .line 203
    iget-object v5, p0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    .line 204
    iget-object v6, p0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    add-int/lit8 v7, v0, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    .line 206
    iget-object v8, p0, Lcom/qianhe/yct/view/PolyLinePreView;->currentPoint:[D

    invoke-direct {p0, v5, v6, v8}, Lcom/qianhe/yct/view/PolyLinePreView;->distancePointToSegment([D[D[D)D

    move-result-wide v5

    cmpg-double v8, v5, v3

    if-gez v8, :cond_1

    .line 210
    iput v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->nearestSegmentIndex:I

    move-wide v3, v5

    :cond_1
    move v0, v7

    goto :goto_0

    .line 215
    :cond_2
    iget v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->nearestSegmentIndex:I

    iget v3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->lastNearestSegmentIndex:I

    if-eq v0, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eq v0, v2, :cond_4

    .line 219
    iput v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->lastNearestSegmentIndex:I

    :cond_4
    if-eq v0, v2, :cond_6

    .line 224
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->calculateTransform()V

    .line 225
    iput-boolean v6, p0, Lcom/qianhe/yct/view/PolyLinePreView;->needTransform:Z

    .line 228
    iget-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->isWorkMode:Z

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    .line 229
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->centerToStartPointWithoutZoomReset()V

    :cond_5
    return-void

    .line 232
    :cond_6
    iput-boolean v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->needTransform:Z

    return-void

    .line 194
    :cond_7
    :goto_2
    iput v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->nearestSegmentIndex:I

    .line 195
    iput-boolean v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->needTransform:Z

    return-void
.end method

.method private calculateTransform()V
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 254
    iget v4, v0, Lcom/qianhe/yct/view/PolyLinePreView;->nearestSegmentIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget-object v5, v0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-lt v4, v5, :cond_0

    goto/16 :goto_1

    .line 259
    :cond_0
    iget-object v4, v0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    iget v5, v0, Lcom/qianhe/yct/view/PolyLinePreView;->nearestSegmentIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    .line 260
    iget-object v5, v0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    iget v6, v0, Lcom/qianhe/yct/view/PolyLinePreView;->nearestSegmentIndex:I

    add-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    .line 263
    aget-wide v6, v5, v2

    aget-wide v8, v4, v2

    sub-double/2addr v6, v8

    .line 264
    aget-wide v8, v5, v3

    aget-wide v10, v4, v3

    sub-double/2addr v8, v10

    .line 267
    invoke-direct {v0, v6, v7, v8, v9}, Lcom/qianhe/yct/view/PolyLinePreView;->alignSegmentToNorthAngle(DD)D

    move-result-wide v5

    .line 270
    aget-wide v7, v4, v2

    .line 271
    aget-wide v9, v4, v3

    .line 274
    iget-object v4, v0, Lcom/qianhe/yct/view/PolyLinePreView;->transformedPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 275
    iget-object v4, v0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [D

    .line 277
    aget-wide v12, v11, v2

    sub-double/2addr v12, v7

    .line 278
    aget-wide v14, v11, v3

    sub-double/2addr v14, v9

    const/4 v11, 0x0

    const/16 v16, 0x1

    neg-double v2, v5

    .line 281
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    .line 282
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v19, v12, v17

    mul-double v21, v14, v2

    sub-double v19, v19, v21

    mul-double v12, v12, v2

    mul-double v14, v14, v17

    add-double/2addr v12, v14

    .line 287
    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->transformedPoints:Ljava/util/List;

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

    .line 291
    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->currentPoint:[D

    if-eqz v2, :cond_2

    .line 292
    aget-wide v3, v2, v11

    sub-double/2addr v3, v7

    .line 293
    aget-wide v12, v2, v16

    sub-double/2addr v12, v9

    neg-double v5, v5

    .line 295
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 296
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

    .line 300
    new-array v1, v1, [D

    aput-wide v17, v1, v11

    aput-wide v3, v1, v16

    iput-object v1, v0, Lcom/qianhe/yct/view/PolyLinePreView;->transformedCurrentPoint:[D

    :cond_2
    :goto_1
    return-void
.end method

.method private centerToStartPointWithoutZoomReset()V
    .locals 12

    .line 1038
    iget-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->isWorkMode:Z

    const/4 v1, -0x1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->gaussL:[D

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->gaussR:[D

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->currentPoint:[D

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->nearestSegmentIndex:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v7

    if-ge v0, v1, :cond_1

    .line 1040
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1041
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v8, v0, v6

    if-lez v8, :cond_1

    cmpl-float v6, v1, v6

    if-lez v6, :cond_1

    div-float/2addr v0, v5

    div-float/2addr v1, v5

    .line 1045
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->getTransformedGaussLWithReverse()[D

    move-result-object v5

    .line 1046
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->getTransformedGaussRWithReverse()[D

    move-result-object v6

    .line 1047
    aget-wide v8, v5, v4

    aget-wide v10, v6, v4

    add-double/2addr v8, v10

    div-double/2addr v8, v2

    .line 1048
    aget-wide v4, v5, v7

    aget-wide v10, v6, v7

    add-double/2addr v4, v10

    div-double/2addr v4, v2

    float-to-double v2, v0

    .line 1049
    iget-wide v6, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originX:D

    sub-double/2addr v8, v6

    iget-wide v6, p0, Lcom/qianhe/yct/view/PolyLinePreView;->scaleRatio:D

    mul-double v8, v8, v6

    sub-double/2addr v2, v8

    iput-wide v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetX:D

    float-to-double v0, v1

    .line 1050
    iget-wide v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originY:D

    sub-double/2addr v4, v2

    mul-double v4, v4, v6

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetY:D

    goto :goto_0

    .line 1053
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->needTransform:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->transformedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->nearestSegmentIndex:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->gaussL:[D

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->gaussR:[D

    if-eqz v1, :cond_1

    .line 1054
    iget-object v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->transformedPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v7

    if-ge v0, v1, :cond_1

    .line 1055
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1056
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v8, v0, v6

    if-lez v8, :cond_1

    cmpl-float v6, v1, v6

    if-lez v6, :cond_1

    div-float/2addr v0, v5

    div-float/2addr v1, v5

    .line 1060
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->getTransformedGaussLWithReverse()[D

    move-result-object v5

    .line 1061
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->getTransformedGaussRWithReverse()[D

    move-result-object v6

    .line 1062
    aget-wide v8, v5, v4

    aget-wide v10, v6, v4

    add-double/2addr v8, v10

    div-double/2addr v8, v2

    .line 1063
    aget-wide v4, v5, v7

    aget-wide v10, v6, v7

    add-double/2addr v4, v10

    div-double/2addr v4, v2

    float-to-double v2, v0

    .line 1064
    iget-wide v6, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originX:D

    sub-double/2addr v8, v6

    iget-wide v6, p0, Lcom/qianhe/yct/view/PolyLinePreView;->scaleRatio:D

    mul-double v8, v8, v6

    sub-double/2addr v2, v8

    iput-wide v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetX:D

    float-to-double v0, v1

    .line 1065
    iget-wide v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originY:D

    sub-double/2addr v4, v2

    mul-double v4, v4, v6

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetY:D

    .line 1069
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private copyLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 684
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 685
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    .line 687
    :cond_0
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 688
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    return-object v0

    .line 690
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 691
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 693
    :cond_2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private distancePointToSegment([D[D[D)D
    .locals 15

    const/4 v0, 0x0

    .line 144
    aget-wide v1, p2, v0

    aget-wide v3, p1, v0

    sub-double/2addr v1, v3

    const/4 v5, 0x1

    .line 145
    aget-wide v6, p2, v5

    aget-wide v8, p1, v5

    sub-double/2addr v6, v8

    .line 146
    aget-wide v10, p3, v0

    sub-double/2addr v10, v3

    .line 147
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

    .line 151
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    :cond_0
    mul-double v10, v10, v1

    mul-double v3, v3, v6

    add-double/2addr v10, v3

    div-double/2addr v10, v8

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 155
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 157
    aget-wide v8, p1, v0

    mul-double v1, v1, v3

    add-double/2addr v8, v1

    .line 158
    aget-wide v1, p1, v5

    mul-double v3, v3, v6

    add-double/2addr v1, v3

    .line 160
    aget-wide v3, p3, v0

    sub-double/2addr v3, v8

    .line 161
    aget-wide v5, p3, v5

    sub-double/2addr v5, v1

    mul-double v3, v3, v3

    mul-double v5, v5, v5

    add-double/2addr v3, v5

    .line 163
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private dpToPx(F)F
    .locals 2

    .line 415
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private draw3DDistanceLabels(Landroid/graphics/Canvas;Ljava/util/List;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "[D>;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 447
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    move/from16 v4, p3

    .line 448
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x41400000    # 12.0f

    .line 449
    invoke-direct {v0, v4}, Lcom/qianhe/yct/view/PolyLinePreView;->spToPx(F)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 450
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 452
    :goto_0
    iget-object v6, v0, Lcom/qianhe/yct/view/PolyLinePreView;->coordsList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    if-ge v5, v6, :cond_1

    .line 453
    iget-object v6, v0, Lcom/qianhe/yct/view/PolyLinePreView;->coordsList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    .line 454
    iget-object v7, v0, Lcom/qianhe/yct/view/PolyLinePreView;->coordsList:Ljava/util/List;

    add-int/lit8 v8, v5, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [D

    .line 457
    aget-wide v9, v7, v4

    aget-wide v11, v6, v4

    sub-double/2addr v9, v11

    .line 458
    aget-wide v11, v7, v3

    aget-wide v13, v6, v3

    sub-double/2addr v11, v13

    const/4 v13, 0x2

    .line 459
    aget-wide v14, v7, v13

    aget-wide v16, v6, v13

    sub-double v14, v14, v16

    mul-double v9, v9, v9

    mul-double v11, v11, v11

    add-double/2addr v9, v11

    mul-double v14, v14, v14

    add-double/2addr v9, v14

    .line 460
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 463
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    .line 464
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [D

    .line 465
    aget-wide v10, v5, v4

    invoke-direct {v0, v10, v11}, Lcom/qianhe/yct/view/PolyLinePreView;->getScreenX(D)F

    move-result v10

    .line 466
    aget-wide v11, v5, v3

    invoke-direct {v0, v11, v12}, Lcom/qianhe/yct/view/PolyLinePreView;->getScreenY(D)F

    move-result v5

    .line 467
    aget-wide v11, v9, v4

    invoke-direct {v0, v11, v12}, Lcom/qianhe/yct/view/PolyLinePreView;->getScreenX(D)F

    move-result v11

    .line 468
    aget-wide v12, v9, v3

    invoke-direct {v0, v12, v13}, Lcom/qianhe/yct/view/PolyLinePreView;->getScreenY(D)F

    move-result v9

    sub-float v12, v11, v10

    float-to-double v12, v12

    sub-float v14, v9, v5

    float-to-double v14, v14

    .line 469
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    double-to-float v12, v12

    const/high16 v13, 0x41800000    # 16.0f

    .line 470
    invoke-direct {v0, v13}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_0

    move-object/from16 v7, p1

    goto :goto_1

    :cond_0
    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v5, v9

    div-float/2addr v5, v11

    .line 477
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v4

    const-string v6, "%.2fm"

    invoke-static {v9, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x40400000    # 3.0f

    .line 478
    invoke-direct {v0, v7}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v7

    sub-float/2addr v5, v7

    move-object/from16 v7, p1

    invoke-virtual {v7, v6, v10, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    move v5, v8

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private drawBucketBitmap(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1153
    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->bucketBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->gaussL:[D

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->gaussR:[D

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 1158
    :cond_0
    invoke-direct {v0}, Lcom/qianhe/yct/view/PolyLinePreView;->getTransformedGaussLWithReverse()[D

    move-result-object v2

    .line 1159
    invoke-direct {v0}, Lcom/qianhe/yct/view/PolyLinePreView;->getTransformedGaussRWithReverse()[D

    move-result-object v3

    if-eqz v2, :cond_5

    if-nez v3, :cond_1

    goto/16 :goto_0

    .line 1166
    :cond_1
    iget-object v4, v0, Lcom/qianhe/yct/view/PolyLinePreView;->gaussR:[D

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    iget-object v4, v0, Lcom/qianhe/yct/view/PolyLinePreView;->gaussL:[D

    aget-wide v8, v4, v5

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 1167
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget-object v4, v0, Lcom/qianhe/yct/view/PolyLinePreView;->gaussR:[D

    const/4 v10, 0x1

    aget-wide v11, v4, v10

    iget-object v4, v0, Lcom/qianhe/yct/view/PolyLinePreView;->gaussL:[D

    aget-wide v13, v4, v10

    sub-double/2addr v11, v13

    .line 1168
    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    add-double/2addr v6, v11

    .line 1166
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v4, v6

    const v11, 0x3c23d70a    # 0.01f

    cmpg-float v11, v4, v11

    if-gez v11, :cond_2

    const/high16 v4, 0x3f000000    # 0.5f

    :cond_2
    float-to-double v11, v4

    .line 1178
    iget-wide v13, v0, Lcom/qianhe/yct/view/PolyLinePreView;->scaleRatio:D

    mul-double v11, v11, v13

    .line 1181
    iget-object v4, v0, Lcom/qianhe/yct/view/PolyLinePreView;->bucketBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v13, v4

    iget-object v4, v0, Lcom/qianhe/yct/view/PolyLinePreView;->bucketBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-wide v15, v8

    int-to-double v8, v4

    div-double/2addr v13, v8

    mul-double v13, v13, v11

    const-wide v8, 0x3f847ae140000000L    # 0.009999999776482582

    const/4 v4, 0x0

    cmpg-double v17, v6, v8

    if-gez v17, :cond_4

    .line 1186
    aget-wide v6, v2, v5

    invoke-direct {v0, v6, v7}, Lcom/qianhe/yct/view/PolyLinePreView;->getScreenX(D)F

    move-result v3

    .line 1187
    aget-wide v6, v2, v10

    invoke-direct {v0, v6, v7}, Lcom/qianhe/yct/view/PolyLinePreView;->getScreenY(D)F

    move-result v2

    .line 1190
    iget-boolean v6, v0, Lcom/qianhe/yct/view/PolyLinePreView;->reverseDirection:Z

    if-eqz v6, :cond_3

    .line 1191
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1192
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x43340000    # 180.0f

    .line 1193
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1194
    new-instance v2, Landroid/graphics/Rect;

    neg-double v6, v11

    div-double/2addr v6, v15

    double-to-int v3, v6

    neg-double v6, v13

    double-to-int v6, v6

    div-double/2addr v11, v15

    double-to-int v7, v11

    invoke-direct {v2, v3, v6, v7, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1200
    iget-object v3, v0, Lcom/qianhe/yct/view/PolyLinePreView;->bucketBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v4, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1201
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_3
    float-to-double v5, v3

    div-double v7, v11, v15

    sub-double/2addr v5, v7

    float-to-double v2, v2

    sub-double/2addr v2, v13

    .line 1206
    new-instance v7, Landroid/graphics/Rect;

    double-to-int v8, v5

    double-to-int v9, v2

    add-double/2addr v5, v11

    double-to-int v5, v5

    add-double/2addr v2, v13

    double-to-int v2, v2

    invoke-direct {v7, v8, v9, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1212
    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->bucketBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v4, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    .line 1216
    :cond_4
    aget-wide v6, v2, v5

    invoke-direct {v0, v6, v7}, Lcom/qianhe/yct/view/PolyLinePreView;->getScreenX(D)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1217
    aget-wide v7, v2, v10

    invoke-direct {v0, v7, v8}, Lcom/qianhe/yct/view/PolyLinePreView;->getScreenY(D)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1218
    aget-wide v7, v3, v5

    invoke-direct {v0, v7, v8}, Lcom/qianhe/yct/view/PolyLinePreView;->getScreenX(D)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 1219
    aget-wide v8, v3, v10

    invoke-direct {v0, v8, v9}, Lcom/qianhe/yct/view/PolyLinePreView;->getScreenY(D)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v3, v2

    int-to-double v8, v3

    sub-int/2addr v7, v6

    int-to-double v4, v7

    .line 1222
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 1225
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    int-to-float v5, v6

    int-to-float v2, v2

    .line 1228
    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1231
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1234
    new-instance v2, Landroid/graphics/Rect;

    .line 1237
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    .line 1238
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v4, v6

    const/4 v10, 0x0

    invoke-direct {v2, v10, v10, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1240
    iget-object v4, v0, Lcom/qianhe/yct/view/PolyLinePreView;->bucketBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1243
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_0
    return-void
.end method

.method private drawFullscreenButton(Landroid/graphics/Canvas;)V
    .locals 7

    .line 527
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->ensureFullscreenIcons()V

    .line 528
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 531
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->updateFullscreenButtonRect()V

    .line 534
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 535
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 536
    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 537
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$color;->theme:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 538
    iget-object v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreenButtonRect:Landroid/graphics/RectF;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v3

    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v2

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 540
    iget-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->collapseBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->expandBitmap:Landroid/graphics/Bitmap;

    :goto_0
    if-eqz v0, :cond_2

    const/high16 v1, 0x40400000    # 3.0f

    .line 542
    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v1

    .line 543
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreenButtonRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    iget v5, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v1

    iget v6, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v1

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v1

    invoke-direct {v2, v4, v5, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    .line 548
    invoke-virtual {p1, v0, v1, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private drawScaleBar(Landroid/graphics/Canvas;)V
    .locals 12

    .line 484
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x41f00000    # 30.0f

    .line 485
    invoke-direct {p0, v0}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    .line 486
    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    .line 487
    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v4

    .line 488
    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v9

    float-to-double v5, v0

    .line 489
    iget-wide v7, p0, Lcom/qianhe/yct/view/PolyLinePreView;->scaleRatio:D

    div-double/2addr v5, v7

    double-to-float v10, v5

    .line 491
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const/high16 v11, -0x1000000

    .line 492
    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 493
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 494
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

    .line 497
    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 498
    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result p1

    invoke-virtual {v8, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 499
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

    .line 501
    invoke-virtual {v8, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v4, v0

    .line 503
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v9

    sub-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v1

    sub-float/2addr v0, v1

    .line 504
    invoke-virtual {v3, p1, v4, v0, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 505
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawTextAboveCircle(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V
    .locals 3

    .line 436
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 437
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1, p4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 438
    iget-object p4, p0, Lcom/qianhe/yct/view/PolyLinePreView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    sub-float/2addr p3, p4

    .line 440
    iget-object p4, p0, Lcom/qianhe/yct/view/PolyLinePreView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p5, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawableToBitmap(II)Landroid/graphics/Bitmap;
    .locals 3

    .line 562
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 566
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 567
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    .line 568
    invoke-virtual {p1, v2, v2, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 569
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private ensureFullscreenIcons()V
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->expandBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->collapseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x41800000    # 16.0f

    .line 556
    invoke-direct {p0, v0}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 557
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_preview_expand:I

    invoke-direct {p0, v1, v0}, Lcom/qianhe/yct/view/PolyLinePreView;->drawableToBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->expandBitmap:Landroid/graphics/Bitmap;

    .line 558
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_preview_collapse:I

    invoke-direct {p0, v1, v0}, Lcom/qianhe/yct/view/PolyLinePreView;->drawableToBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->collapseBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private enterFullscreen()V
    .locals 7

    .line 596
    iget-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreen:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->isWorkMode:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->reparenting:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 599
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 602
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->findActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    const v1, 0x1020002

    .line 606
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 607
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_3

    goto/16 :goto_1

    .line 610
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originalParent:Landroid/view/ViewGroup;

    .line 611
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originalIndex:I

    .line 612
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/PolyLinePreView;->copyLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originalLp:Landroid/view/ViewGroup$LayoutParams;

    .line 614
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->placeholder:Landroid/view/View;

    .line 615
    iget-object v3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originalLp:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v3}, Lcom/qianhe/yct/view/PolyLinePreView;->copyLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    iget-object v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->placeholder:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 617
    iget-object v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->placeholder:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    const/4 v2, 0x1

    .line 619
    iput-boolean v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->reparenting:Z

    .line 620
    iget-object v3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originalParent:Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 621
    iget v3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originalIndex:I

    if-ltz v3, :cond_4

    .line 622
    iget-object v4, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originalParent:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/qianhe/yct/view/PolyLinePreView;->placeholder:Landroid/view/View;

    iget-object v6, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originalLp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v5, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 624
    :cond_4
    iget-object v3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originalParent:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/qianhe/yct/view/PolyLinePreView;->placeholder:Landroid/view/View;

    iget-object v5, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originalLp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    :goto_0
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreenHost:Landroid/widget/FrameLayout;

    .line 628
    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    .line 629
    iget-object v3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreenHost:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 630
    iget-object v3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreenHost:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 631
    iget-object v3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreenHost:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/qianhe/yct/R$color;->bg_base:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 632
    iget-object v3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreenHost:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/qianhe/yct/view/PolyLinePreView$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/qianhe/yct/view/PolyLinePreView$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/view/PolyLinePreView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 640
    iget-object v3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreenHost:Landroid/widget/FrameLayout;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-direct {p0, v4}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setElevation(F)V

    .line 642
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    iget-object v3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreenHost:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 644
    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreenHost:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    iget-object v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreenHost:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    const/4 v1, 0x0

    .line 646
    iput-boolean v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->reparenting:Z

    .line 647
    iput-boolean v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreen:Z

    .line 648
    invoke-direct {p0, v0}, Lcom/qianhe/yct/view/PolyLinePreView;->registerBackCallback(Landroid/app/Activity;)V

    .line 649
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_1
    return-void
.end method

.method private exitFullscreen()V
    .locals 3

    .line 653
    iget-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreen:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->reparenting:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 656
    iput-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->reparenting:Z

    .line 657
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreenHost:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 658
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 659
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreenHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreenHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreenHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originalParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->placeholder:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originalParent:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_3

    .line 664
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->placeholder:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 665
    iget-object v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originalParent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->placeholder:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-gez v0, :cond_2

    .line 667
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originalParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originalLp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 669
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originalParent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originalLp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 672
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->unregisterBackCallback()V

    const/4 v0, 0x0

    .line 673
    iput-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreenHost:Landroid/widget/FrameLayout;

    .line 674
    iput-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->placeholder:Landroid/view/View;

    .line 675
    iput-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originalParent:Landroid/view/ViewGroup;

    .line 676
    iput-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originalLp:Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    .line 677
    iput v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originalIndex:I

    const/4 v0, 0x0

    .line 678
    iput-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreen:Z

    .line 679
    iput-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->reparenting:Z

    .line 680
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    :goto_1
    return-void
.end method

.method private findActivity()Landroid/app/Activity;
    .locals 2

    .line 697
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 698
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 699
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 700
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 702
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private fullscreenButtonMargin()F
    .locals 1

    const/high16 v0, 0x41000000    # 8.0f

    .line 513
    invoke-direct {p0, v0}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v0

    return v0
.end method

.method private fullscreenButtonSize()F
    .locals 1

    const/high16 v0, 0x41b00000    # 22.0f

    .line 509
    invoke-direct {p0, v0}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v0

    return v0
.end method

.method private getScreenX(D)F
    .locals 2

    .line 424
    iget-wide v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originX:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->scaleRatio:D

    mul-double p1, p1, v0

    iget-wide v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetX:D

    add-double/2addr p1, v0

    double-to-float p1, p1

    return p1
.end method

.method private getScreenY(D)F
    .locals 4

    .line 432
    iget-wide v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetY:D

    iget-wide v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originY:D

    sub-double/2addr p1, v2

    iget-wide v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->scaleRatio:D

    mul-double p1, p1, v2

    sub-double/2addr v0, p1

    double-to-float p1, v0

    return p1
.end method

.method private getTransformedGaussLWithReverse()[D
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x2

    .line 1280
    iget-boolean v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->needTransform:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->transformedPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    const/4 v5, 0x1

    goto :goto_0

    .line 1285
    :cond_1
    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    iget v5, v0, Lcom/qianhe/yct/view/PolyLinePreView;->nearestSegmentIndex:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 1286
    iget-object v5, v0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    iget v6, v0, Lcom/qianhe/yct/view/PolyLinePreView;->nearestSegmentIndex:I

    add-int/2addr v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    .line 1287
    aget-wide v6, v2, v3

    .line 1288
    aget-wide v8, v2, v4

    .line 1290
    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->gaussL:[D

    aget-wide v10, v2, v3

    sub-double/2addr v10, v6

    .line 1291
    aget-wide v12, v2, v4

    sub-double/2addr v12, v8

    .line 1293
    aget-wide v14, v5, v3

    sub-double/2addr v14, v6

    .line 1294
    aget-wide v16, v5, v4

    const/4 v2, 0x0

    const/4 v5, 0x1

    sub-double v3, v16, v8

    .line 1295
    invoke-direct {v0, v14, v15, v3, v4}, Lcom/qianhe/yct/view/PolyLinePreView;->alignSegmentToNorthAngle(DD)D

    move-result-wide v3

    neg-double v3, v3

    .line 1297
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 1298
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v16, v10, v14

    mul-double v18, v12, v3

    sub-double v16, v16, v18

    mul-double v10, v10, v3

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    add-double v16, v16, v6

    add-double/2addr v10, v8

    .line 1302
    new-array v1, v1, [D

    aput-wide v16, v1, v2

    aput-wide v10, v1, v5

    return-object v1

    .line 1281
    :goto_0
    iget-object v3, v0, Lcom/qianhe/yct/view/PolyLinePreView;->gaussL:[D

    aget-wide v6, v3, v2

    aget-wide v8, v3, v5

    new-array v1, v1, [D

    aput-wide v6, v1, v2

    aput-wide v8, v1, v5

    return-object v1
.end method

.method private getTransformedGaussRWithReverse()[D
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x2

    .line 1251
    iget-boolean v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->needTransform:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->transformedPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    const/4 v5, 0x1

    goto :goto_0

    .line 1256
    :cond_1
    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    iget v5, v0, Lcom/qianhe/yct/view/PolyLinePreView;->nearestSegmentIndex:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 1257
    iget-object v5, v0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    iget v6, v0, Lcom/qianhe/yct/view/PolyLinePreView;->nearestSegmentIndex:I

    add-int/2addr v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    .line 1258
    aget-wide v6, v2, v3

    .line 1259
    aget-wide v8, v2, v4

    .line 1261
    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->gaussR:[D

    aget-wide v10, v2, v3

    sub-double/2addr v10, v6

    .line 1262
    aget-wide v12, v2, v4

    sub-double/2addr v12, v8

    .line 1264
    aget-wide v14, v5, v3

    sub-double/2addr v14, v6

    .line 1265
    aget-wide v16, v5, v4

    const/4 v2, 0x0

    const/4 v5, 0x1

    sub-double v3, v16, v8

    .line 1266
    invoke-direct {v0, v14, v15, v3, v4}, Lcom/qianhe/yct/view/PolyLinePreView;->alignSegmentToNorthAngle(DD)D

    move-result-wide v3

    neg-double v3, v3

    .line 1268
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 1269
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v16, v10, v14

    mul-double v18, v12, v3

    sub-double v16, v16, v18

    mul-double v10, v10, v3

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    add-double v16, v16, v6

    add-double/2addr v10, v8

    .line 1273
    new-array v1, v1, [D

    aput-wide v16, v1, v2

    aput-wide v10, v1, v5

    return-object v1

    .line 1252
    :goto_0
    iget-object v3, v0, Lcom/qianhe/yct/view/PolyLinePreView;->gaussR:[D

    aget-wide v6, v3, v2

    aget-wide v8, v3, v5

    new-array v1, v1, [D

    aput-wide v6, v1, v2

    aput-wide v8, v1, v5

    return-object v1
.end method

.method private hitFullscreenButton(FF)Z
    .locals 4

    .line 574
    iget-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->isWorkMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreenButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->updateFullscreenButtonRect()V

    :cond_1
    const/high16 v0, 0x40c00000    # 6.0f

    .line 580
    invoke-direct {p0, v0}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v0

    .line 581
    iget-object v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreenButtonRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v0

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_2

    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v0

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_2

    iget p1, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_2

    iget p1, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, v0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private init()V
    .locals 7

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_work_center_tooth:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->bucketBitmap:Landroid/graphics/Bitmap;

    .line 124
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->linePaint:Landroid/graphics/Paint;

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$color;->map_line:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->linePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->linePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->dottedLinePaint:Landroid/graphics/Paint;

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/qianhe/yct/R$color;->map_line:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->dottedLinePaint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v4}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 132
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->dottedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->dottedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 134
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->dottedLinePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {p0, v3}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-direct {p0, v4}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    aput v4, v5, v1

    const/4 v3, 0x0

    invoke-direct {v2, v5, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 135
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->textPaint:Landroid/graphics/Paint;

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$color;->map_line:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/PolyLinePreView;->spToPx(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private registerBackCallback(Landroid/app/Activity;)V
    .locals 2

    .line 708
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->unregisterBackCallback()V

    .line 709
    instance-of v0, p1, Landroidx/activity/ComponentActivity;

    if-nez v0, :cond_0

    return-void

    .line 712
    :cond_0
    new-instance v0, Lcom/qianhe/yct/view/PolyLinePreView$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/qianhe/yct/view/PolyLinePreView$1;-><init>(Lcom/qianhe/yct/view/PolyLinePreView;Z)V

    iput-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->backCallback:Landroidx/activity/OnBackPressedCallback;

    .line 718
    check-cast p1, Landroidx/activity/ComponentActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->backCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p1, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/activity/OnBackPressedCallback;)V

    return-void
.end method

.method private setDirectionReverse(Z)V
    .locals 0

    .line 1134
    iput-boolean p1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->reverseDirection:Z

    .line 1135
    iget-boolean p1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->needTransform:Z

    if-eqz p1, :cond_0

    .line 1136
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->calculateTransform()V

    .line 1137
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private setToothBitmap(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 968
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_work_left_tooth:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 970
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_work_right_tooth:I

    goto :goto_0

    .line 972
    :cond_1
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_work_center_tooth:I

    .line 974
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->bucketBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private spToPx(F)F
    .locals 2

    .line 419
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private spacing(Landroid/view/MotionEvent;II)D
    .locals 2

    .line 837
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 838
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr p2, p1

    mul-float v0, v0, v0

    mul-float p2, p2, p2

    add-float/2addr v0, p2

    float-to-double p1, v0

    .line 839
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private spacing([F[F)D
    .locals 2

    const/4 v0, 0x0

    .line 843
    aget v1, p1, v0

    aget v0, p2, v0

    sub-float/2addr v1, v0

    const/4 v0, 0x1

    .line 844
    aget p1, p1, v0

    aget p2, p2, v0

    sub-float/2addr p1, p2

    mul-float v1, v1, v1

    mul-float p1, p1, p1

    add-float/2addr v1, p1

    float-to-double p1, v1

    .line 845
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private toggleFullscreen()V
    .locals 1

    .line 588
    iget-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreen:Z

    if-eqz v0, :cond_0

    .line 589
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->exitFullscreen()V

    return-void

    .line 591
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->enterFullscreen()V

    return-void
.end method

.method private unregisterBackCallback()V
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->backCallback:Landroidx/activity/OnBackPressedCallback;

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedCallback;->remove()V

    const/4 v0, 0x0

    .line 724
    iput-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->backCallback:Landroidx/activity/OnBackPressedCallback;

    :cond_0
    return-void
.end method

.method private updateContentBounds()V
    .locals 15

    .line 884
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 885
    iput v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->contentWidth:F

    .line 886
    iput v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->contentHeight:F

    .line 887
    iput v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->minX:F

    .line 888
    iput v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->minY:F

    const-wide/16 v0, 0x0

    .line 889
    iput-wide v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originX:D

    .line 890
    iput-wide v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originY:D

    return-void

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

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

    .line 900
    aget-wide v12, v10, v11

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 901
    aget-wide v11, v10, v11

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const/4 v11, 0x1

    .line 902
    aget-wide v12, v10, v11

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 903
    aget-wide v11, v10, v11

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto :goto_0

    :cond_1
    sub-double v10, v2, v6

    double-to-float v0, v10

    .line 906
    iput v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->contentWidth:F

    sub-double v10, v4, v8

    double-to-float v0, v10

    .line 907
    iput v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->contentHeight:F

    double-to-float v0, v6

    .line 908
    iput v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->minX:F

    double-to-float v0, v8

    .line 909
    iput v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->minY:F

    .line 910
    iput-wide v6, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originX:D

    .line 911
    iput-wide v8, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originY:D

    const/high16 v0, 0x41a00000    # 20.0f

    .line 913
    invoke-direct {p0, v0}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v0

    .line 914
    iget v10, p0, Lcom/qianhe/yct/view/PolyLinePreView;->contentWidth:F

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v0, v0, v11

    add-float/2addr v10, v0

    iput v10, p0, Lcom/qianhe/yct/view/PolyLinePreView;->contentWidth:F

    .line 915
    iget v10, p0, Lcom/qianhe/yct/view/PolyLinePreView;->contentHeight:F

    add-float/2addr v10, v0

    iput v10, p0, Lcom/qianhe/yct/view/PolyLinePreView;->contentHeight:F

    .line 917
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 918
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    cmpl-float v14, v0, v1

    if-lez v14, :cond_2

    cmpl-float v14, v10, v1

    if-lez v14, :cond_2

    .line 920
    iget v14, p0, Lcom/qianhe/yct/view/PolyLinePreView;->contentWidth:F

    cmpl-float v14, v14, v1

    if-lez v14, :cond_2

    iget v14, p0, Lcom/qianhe/yct/view/PolyLinePreView;->contentHeight:F

    cmpl-float v1, v14, v1

    if-lez v1, :cond_2

    add-double/2addr v6, v2

    div-double/2addr v6, v12

    add-double/2addr v8, v4

    div-double/2addr v8, v12

    div-float/2addr v0, v11

    div-float/2addr v10, v11

    float-to-double v0, v0

    .line 925
    iget-wide v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originX:D

    sub-double/2addr v6, v2

    iget-wide v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->scaleRatio:D

    mul-double v6, v6, v2

    sub-double/2addr v0, v6

    iput-wide v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetX:D

    float-to-double v0, v10

    .line 927
    iget-wide v4, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originY:D

    sub-double/2addr v8, v4

    mul-double v8, v8, v2

    add-double/2addr v0, v8

    iput-wide v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetY:D

    goto :goto_1

    :cond_2
    float-to-double v0, v0

    .line 929
    iget v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->contentWidth:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/qianhe/yct/view/PolyLinePreView;->scaleRatio:D

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    div-double/2addr v0, v12

    iput-wide v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetX:D

    float-to-double v0, v10

    .line 930
    iget v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->contentHeight:F

    float-to-double v2, v2

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    div-double/2addr v0, v12

    iput-wide v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetY:D

    .line 932
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateFullscreenButtonRect()V
    .locals 6

    .line 517
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreenButtonSize()F

    move-result v0

    .line 518
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreenButtonMargin()F

    move-result v1

    .line 519
    iget-object v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreenButtonRect:Landroid/graphics/RectF;

    .line 520
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    sub-float/2addr v3, v0

    .line 521
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    sub-float/2addr v4, v0

    .line 522
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    .line 523
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v1

    .line 519
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method public addPoint([D)V
    .locals 2

    if-eqz p1, :cond_1

    .line 849
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->coordsList:Ljava/util/List;

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->updateContentBounds()V

    .line 855
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public clearCurrentPoint()V
    .locals 2

    const/4 v0, 0x0

    .line 1106
    iput-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->currentPoint:[D

    const/4 v1, -0x1

    .line 1107
    iput v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->nearestSegmentIndex:I

    .line 1108
    iput v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->lastNearestSegmentIndex:I

    .line 1109
    iget-object v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->transformedPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1110
    iput-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->transformedCurrentPoint:[D

    const/4 v0, 0x0

    .line 1111
    iput-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->needTransform:Z

    .line 1112
    iput-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->reverseDirection:Z

    .line 1113
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public clearPoints()V
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 870
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->coordsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 871
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->updateContentBounds()V

    .line 872
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getPointCount()I
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation

    .line 880
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isDirectionReverse()Z
    .locals 1

    .line 1146
    iget-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->reverseDirection:Z

    return v0
.end method

.method public isDrawLines()Z
    .locals 1

    .line 1315
    iget-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->drawLines:Z

    return v0
.end method

.method public locateToCurrentPoint()V
    .locals 13

    .line 1073
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->gaussL:[D

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->gaussR:[D

    if-eqz v1, :cond_2

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    array-length v2, v1

    if-ge v2, v3, :cond_0

    goto :goto_1

    .line 1076
    :cond_0
    iget-wide v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->INITSCALE:D

    iput-wide v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->scaleRatio:D

    .line 1080
    iget-boolean v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->needTransform:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->transformedCurrentPoint:[D

    if-eqz v2, :cond_1

    .line 1082
    aget-wide v0, v2, v4

    .line 1083
    aget-wide v3, v2, v3

    goto :goto_0

    .line 1086
    :cond_1
    aget-wide v5, v0, v4

    aget-wide v7, v1, v4

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double v4, v5, v7

    .line 1087
    aget-wide v9, v0, v3

    aget-wide v0, v1, v3

    add-double/2addr v9, v0

    div-double v0, v9, v7

    move-wide v11, v4

    move-wide v3, v0

    move-wide v0, v11

    .line 1090
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 1091
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

    .line 1096
    iget-wide v8, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originX:D

    sub-double/2addr v0, v8

    iget-wide v8, p0, Lcom/qianhe/yct/view/PolyLinePreView;->scaleRatio:D

    mul-double v0, v0, v8

    sub-double/2addr v6, v0

    iput-wide v6, p0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetX:D

    float-to-double v0, v5

    .line 1097
    iget-wide v5, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originY:D

    sub-double/2addr v3, v5

    mul-double v3, v3, v8

    add-double/2addr v0, v3

    iput-wide v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetY:D

    .line 1098
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_1
    return-void
.end method

.method public locateToStartPoint()V
    .locals 9

    .line 986
    iget-wide v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->INITSCALE:D

    iput-wide v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->scaleRatio:D

    .line 987
    iget-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->isWorkMode:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 989
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->currentPoint:[D

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->nearestSegmentIndex:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    .line 991
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    iget v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->nearestSegmentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 993
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 994
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v7, v1, v5

    if-lez v7, :cond_3

    cmpl-float v5, v6, v5

    if-lez v5, :cond_3

    div-float/2addr v1, v4

    div-float/2addr v6, v4

    float-to-double v4, v1

    .line 998
    aget-wide v1, v0, v2

    iget-wide v7, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originX:D

    sub-double/2addr v1, v7

    iget-wide v7, p0, Lcom/qianhe/yct/view/PolyLinePreView;->scaleRatio:D

    mul-double v1, v1, v7

    sub-double/2addr v4, v1

    iput-wide v4, p0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetX:D

    float-to-double v1, v6

    .line 999
    aget-wide v3, v0, v3

    iget-wide v5, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originY:D

    sub-double/2addr v3, v5

    mul-double v3, v3, v7

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetY:D

    goto/16 :goto_0

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 1004
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1005
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v7, v1, v5

    if-lez v7, :cond_3

    cmpl-float v5, v6, v5

    if-lez v5, :cond_3

    div-float/2addr v1, v4

    div-float/2addr v6, v4

    float-to-double v4, v1

    .line 1009
    aget-wide v1, v0, v2

    iget-wide v7, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originX:D

    sub-double/2addr v1, v7

    iget-wide v7, p0, Lcom/qianhe/yct/view/PolyLinePreView;->scaleRatio:D

    mul-double v1, v1, v7

    sub-double/2addr v4, v1

    iput-wide v4, p0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetX:D

    float-to-double v1, v6

    .line 1010
    aget-wide v3, v0, v3

    iget-wide v5, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originY:D

    sub-double/2addr v3, v5

    mul-double v3, v3, v7

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetY:D

    goto :goto_0

    .line 1013
    :cond_1
    iget-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->needTransform:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->transformedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->nearestSegmentIndex:I

    if-eq v0, v1, :cond_2

    .line 1015
    iget-object v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->transformedPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_3

    .line 1016
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->transformedPoints:Ljava/util/List;

    iget v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->nearestSegmentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 1018
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1019
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v7, v1, v5

    if-lez v7, :cond_3

    cmpl-float v5, v6, v5

    if-lez v5, :cond_3

    div-float/2addr v1, v4

    div-float/2addr v6, v4

    float-to-double v4, v1

    .line 1023
    aget-wide v1, v0, v2

    iget-wide v7, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originX:D

    sub-double/2addr v1, v7

    iget-wide v7, p0, Lcom/qianhe/yct/view/PolyLinePreView;->scaleRatio:D

    mul-double v1, v1, v7

    sub-double/2addr v4, v1

    iput-wide v4, p0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetX:D

    float-to-double v1, v6

    .line 1024
    aget-wide v3, v0, v3

    iget-wide v5, p0, Lcom/qianhe/yct/view/PolyLinePreView;->originY:D

    sub-double/2addr v3, v5

    mul-double v3, v3, v7

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetY:D

    goto :goto_0

    .line 1028
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->updateContentBounds()V

    .line 1030
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 730
    iget-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->reparenting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->fullscreen:Z

    if-eqz v0, :cond_0

    .line 731
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->exitFullscreen()V

    .line 733
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 322
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 324
    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    const/high16 v2, 0x40a00000    # 5.0f

    .line 325
    invoke-direct {v0, v2}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v6

    const/high16 v2, 0x41000000    # 8.0f

    .line 326
    invoke-direct {v0, v2}, Lcom/qianhe/yct/view/PolyLinePreView;->dpToPx(F)F

    move-result v7

    .line 327
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$color;->map_line:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    .line 328
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$color;->red:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    .line 331
    iget-boolean v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->needTransform:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->transformedPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->transformedPoints:Ljava/util/List;

    :goto_0
    move-object v10, v2

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    goto :goto_0

    :goto_1
    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 333
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    const/4 v12, 0x1

    if-ge v2, v3, :cond_4

    .line 334
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    .line 335
    aget-wide v4, v3, v11

    invoke-direct {v0, v4, v5}, Lcom/qianhe/yct/view/PolyLinePreView;->getScreenX(D)F

    move-result v4

    .line 336
    aget-wide v13, v3, v12

    invoke-direct {v0, v13, v14}, Lcom/qianhe/yct/view/PolyLinePreView;->getScreenY(D)F

    move-result v3

    .line 338
    iget v5, v0, Lcom/qianhe/yct/view/PolyLinePreView;->nearestSegmentIndex:I

    const/4 v13, -0x1

    if-eq v5, v13, :cond_1

    if-eq v2, v5, :cond_2

    add-int/lit8 v5, v5, 0x1

    if-ne v2, v5, :cond_1

    goto :goto_3

    :cond_1
    const/4 v12, 0x0

    .line 340
    :cond_2
    :goto_3
    iget-object v5, v0, Lcom/qianhe/yct/view/PolyLinePreView;->textPaint:Landroid/graphics/Paint;

    if-eqz v12, :cond_3

    move v12, v9

    goto :goto_4

    :cond_3
    move v12, v8

    :goto_4
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 341
    iget-object v5, v0, Lcom/qianhe/yct/view/PolyLinePreView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v6, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "P"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sub-float v5, v3, v6

    sub-float/2addr v5, v7

    move/from16 v22, v4

    move v4, v3

    move/from16 v3, v22

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/view/PolyLinePreView;->drawTextAboveCircle(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    move-object/from16 v1, p1

    move v2, v12

    goto :goto_2

    :cond_4
    move-object v13, v0

    .line 346
    iget-boolean v0, v13, Lcom/qianhe/yct/view/PolyLinePreView;->drawLines:Z

    if-eqz v0, :cond_9

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v12, :cond_9

    const/4 v0, 0x0

    .line 347
    :goto_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    if-ge v0, v1, :cond_9

    .line 348
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    add-int/lit8 v6, v0, 0x1

    .line 349
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 350
    aget-wide v3, v1, v11

    invoke-direct {v13, v3, v4}, Lcom/qianhe/yct/view/PolyLinePreView;->getScreenX(D)F

    move-result v7

    .line 351
    aget-wide v3, v1, v12

    invoke-direct {v13, v3, v4}, Lcom/qianhe/yct/view/PolyLinePreView;->getScreenY(D)F

    move-result v14

    .line 352
    aget-wide v3, v2, v11

    invoke-direct {v13, v3, v4}, Lcom/qianhe/yct/view/PolyLinePreView;->getScreenX(D)F

    move-result v15

    .line 353
    aget-wide v1, v2, v12

    invoke-direct {v13, v1, v2}, Lcom/qianhe/yct/view/PolyLinePreView;->getScreenY(D)F

    move-result v16

    .line 356
    iget v1, v13, Lcom/qianhe/yct/view/PolyLinePreView;->nearestSegmentIndex:I

    if-ne v0, v1, :cond_5

    const/16 v17, 0x1

    goto :goto_6

    :cond_5
    const/16 v17, 0x0

    :goto_6
    sub-float v0, v15, v7

    sub-float v1, v16, v14

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 361
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_7

    neg-float v1, v1

    div-float/2addr v1, v2

    div-float/2addr v0, v2

    .line 369
    iget-wide v2, v13, Lcom/qianhe/yct/view/PolyLinePreView;->width:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    iget-wide v4, v13, Lcom/qianhe/yct/view/PolyLinePreView;->scaleRatio:D

    mul-double v2, v2, v4

    double-to-float v2, v2

    mul-float v1, v1, v2

    move v3, v1

    add-float v1, v7, v3

    mul-float v0, v0, v2

    add-float v2, v14, v0

    move v4, v3

    add-float v3, v15, v4

    move v5, v4

    add-float v4, v16, v0

    sub-float v18, v7, v5

    sub-float v19, v14, v0

    sub-float v20, v15, v5

    sub-float v21, v16, v0

    .line 384
    iget-object v0, v13, Lcom/qianhe/yct/view/PolyLinePreView;->dottedLinePaint:Landroid/graphics/Paint;

    if-eqz v17, :cond_6

    move v5, v9

    goto :goto_7

    :cond_6
    move v5, v8

    :goto_7
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    iget-object v5, v13, Lcom/qianhe/yct/view/PolyLinePreView;->dottedLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 388
    iget-object v5, v13, Lcom/qianhe/yct/view/PolyLinePreView;->dottedLinePaint:Landroid/graphics/Paint;

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 392
    :cond_7
    iget-object v0, v13, Lcom/qianhe/yct/view/PolyLinePreView;->linePaint:Landroid/graphics/Paint;

    if-eqz v17, :cond_8

    move v1, v9

    goto :goto_8

    :cond_8
    move v1, v8

    :goto_8
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    iget-object v5, v13, Lcom/qianhe/yct/view/PolyLinePreView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v7

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v0, v6

    goto/16 :goto_5

    :cond_9
    move-object/from16 v0, p1

    .line 398
    iget-boolean v1, v13, Lcom/qianhe/yct/view/PolyLinePreView;->isWorkMode:Z

    if-nez v1, :cond_a

    iget-object v1, v13, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v12, :cond_a

    iget-object v1, v13, Lcom/qianhe/yct/view/PolyLinePreView;->coordsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v12, :cond_a

    .line 399
    invoke-direct {v13, v0, v10, v8}, Lcom/qianhe/yct/view/PolyLinePreView;->draw3DDistanceLabels(Landroid/graphics/Canvas;Ljava/util/List;I)V

    .line 403
    :cond_a
    iget-boolean v1, v13, Lcom/qianhe/yct/view/PolyLinePreView;->isWorkMode:Z

    if-eqz v1, :cond_b

    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/view/PolyLinePreView;->drawBucketBitmap(Landroid/graphics/Canvas;)V

    .line 406
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/view/PolyLinePreView;->drawScaleBar(Landroid/graphics/Canvas;)V

    goto :goto_9

    :cond_c
    move-object v13, v0

    move-object v0, v1

    .line 409
    :goto_9
    iget-boolean v1, v13, Lcom/qianhe/yct/view/PolyLinePreView;->isWorkMode:Z

    if-nez v1, :cond_d

    .line 410
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/view/PolyLinePreView;->drawFullscreenButton(Landroid/graphics/Canvas;)V

    :cond_d
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 306
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 307
    iget-boolean p1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->isWorkMode:Z

    if-nez p1, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->updateContentBounds()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 314
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 315
    iget-boolean p1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->isWorkMode:Z

    if-nez p1, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->updateContentBounds()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 738
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_d

    if-eq v2, v4, :cond_0

    const/4 v5, 0x2

    if-eq v2, v5, :cond_4

    const/4 v6, 0x3

    if-eq v2, v6, :cond_0

    const/4 v6, 0x5

    if-eq v2, v6, :cond_1

    const/4 v5, 0x6

    if-eq v2, v5, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 755
    :cond_1
    iget-boolean v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->buttonTracking:Z

    if-eqz v2, :cond_2

    return v4

    .line 758
    :cond_2
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    .line 759
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    rem-int/2addr v6, v7

    .line 760
    iget-object v7, v0, Lcom/qianhe/yct/view/PolyLinePreView;->lastFingerPos1:[F

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    aput v8, v7, v3

    .line 761
    iget-object v7, v0, Lcom/qianhe/yct/view/PolyLinePreView;->lastFingerPos1:[F

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    aput v2, v7, v4

    .line 762
    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->lastFingerPos2:[F

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    aput v7, v2, v3

    .line 763
    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->lastFingerPos2:[F

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    aput v1, v2, v4

    .line 764
    iput v5, v0, Lcom/qianhe/yct/view/PolyLinePreView;->mode:I

    .line 765
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    return v4

    .line 769
    :cond_4
    iget-boolean v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->buttonTracking:Z

    if-eqz v2, :cond_5

    return v4

    .line 772
    :cond_5
    iget v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->mode:I

    if-ne v2, v4, :cond_6

    .line 773
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v5, v0, Lcom/qianhe/yct/view/PolyLinePreView;->lastPoint:[F

    aget v5, v5, v3

    sub-float/2addr v2, v5

    float-to-double v5, v2

    .line 774
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v7, v0, Lcom/qianhe/yct/view/PolyLinePreView;->lastPoint:[F

    aget v8, v7, v4

    sub-float/2addr v2, v8

    float-to-double v8, v2

    .line 777
    iget-wide v10, v0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetX:D

    add-double/2addr v10, v5

    iput-wide v10, v0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetX:D

    .line 778
    iget-wide v5, v0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetY:D

    add-double/2addr v5, v8

    iput-wide v5, v0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetY:D

    .line 780
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v7, v3

    .line 781
    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->lastPoint:[F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v2, v4

    .line 782
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return v4

    :cond_6
    if-ne v2, v5, :cond_8

    .line 784
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-lt v2, v5, :cond_8

    .line 787
    invoke-direct {v0, v1, v3, v4}, Lcom/qianhe/yct/view/PolyLinePreView;->spacing(Landroid/view/MotionEvent;II)D

    move-result-wide v5

    .line 788
    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->lastFingerPos1:[F

    iget-object v7, v0, Lcom/qianhe/yct/view/PolyLinePreView;->lastFingerPos2:[F

    invoke-direct {v0, v2, v7}, Lcom/qianhe/yct/view/PolyLinePreView;->spacing([F[F)D

    move-result-wide v7

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    cmpl-double v2, v7, v9

    if-lez v2, :cond_7

    div-double/2addr v5, v7

    .line 792
    iget-wide v7, v0, Lcom/qianhe/yct/view/PolyLinePreView;->scaleRatio:D

    mul-double v7, v7, v5

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v2, v7, v9

    if-ltz v2, :cond_7

    const-wide v9, 0x4072c00000000000L    # 300.0

    cmpg-double v2, v7, v9

    if-gtz v2, :cond_7

    .line 794
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    add-float/2addr v2, v9

    float-to-double v9, v2

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    .line 795
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v2, v13

    float-to-double v13, v2

    div-double/2addr v13, v11

    .line 796
    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->lastFingerPos1:[F

    aget v15, v2, v3

    move-wide/from16 v16, v11

    iget-object v11, v0, Lcom/qianhe/yct/view/PolyLinePreView;->lastFingerPos2:[F

    aget v12, v11, v3

    add-float/2addr v15, v12

    move-wide/from16 v18, v5

    const/4 v12, 0x1

    float-to-double v4, v15

    div-double v4, v4, v16

    .line 797
    aget v2, v2, v12

    aget v6, v11, v12

    add-float/2addr v2, v6

    move-wide/from16 v20, v13

    const/4 v6, 0x1

    float-to-double v12, v2

    div-double v12, v12, v16

    .line 800
    iget-wide v14, v0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetX:D

    sub-double/2addr v4, v14

    mul-double v4, v4, v18

    sub-double/2addr v9, v4

    iput-wide v9, v0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetX:D

    .line 801
    iget-wide v4, v0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetY:D

    sub-double/2addr v12, v4

    mul-double v12, v12, v18

    sub-double v13, v20, v12

    iput-wide v13, v0, Lcom/qianhe/yct/view/PolyLinePreView;->offsetY:D

    .line 802
    iput-wide v7, v0, Lcom/qianhe/yct/view/PolyLinePreView;->scaleRatio:D

    .line 804
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_7
    const/4 v6, 0x1

    .line 808
    :goto_0
    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->lastFingerPos1:[F

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v2, v3

    .line 809
    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->lastFingerPos1:[F

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    aput v4, v2, v6

    .line 810
    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->lastFingerPos2:[F

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v2, v3

    .line 811
    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->lastFingerPos2:[F

    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    aput v1, v2, v12

    return v12

    .line 833
    :cond_8
    :goto_1
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 819
    :goto_2
    iget-boolean v4, v0, Lcom/qianhe/yct/view/PolyLinePreView;->buttonTracking:Z

    if-eqz v4, :cond_b

    if-ne v2, v12, :cond_9

    .line 821
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/qianhe/yct/view/PolyLinePreView;->hitFullscreenButton(FF)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v6, 0x1

    goto :goto_3

    :cond_9
    const/4 v6, 0x0

    .line 822
    :goto_3
    iput-boolean v3, v0, Lcom/qianhe/yct/view/PolyLinePreView;->buttonTracking:Z

    if-eqz v6, :cond_a

    .line 824
    invoke-direct {v0}, Lcom/qianhe/yct/view/PolyLinePreView;->toggleFullscreen()V

    :cond_a
    const/4 v12, 0x1

    return v12

    .line 828
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 829
    :cond_c
    iput v3, v0, Lcom/qianhe/yct/view/PolyLinePreView;->mode:I

    return v12

    :cond_d
    const/4 v12, 0x1

    .line 742
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v0, v2, v4}, Lcom/qianhe/yct/view/PolyLinePreView;->hitFullscreenButton(FF)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 743
    iput-boolean v12, v0, Lcom/qianhe/yct/view/PolyLinePreView;->buttonTracking:Z

    return v12

    .line 746
    :cond_e
    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v4, v0, Lcom/qianhe/yct/view/PolyLinePreView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 747
    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->lastPoint:[F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aput v4, v2, v3

    .line 748
    iget-object v2, v0, Lcom/qianhe/yct/view/PolyLinePreView;->lastPoint:[F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v2, v12

    .line 749
    iput v12, v0, Lcom/qianhe/yct/view/PolyLinePreView;->mode:I

    .line 751
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v12}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_f
    return v12
.end method

.method public refreshToothType(I)V
    .locals 0

    .line 961
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/PolyLinePreView;->setToothBitmap(I)V

    return-void
.end method

.method public removePoint(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 859
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 863
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->coordsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 864
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->updateContentBounds()V

    .line 865
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCurrentPoint([D[D)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 172
    iget-object v3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->gaussL:[D

    aget-wide v4, p1, v2

    aput-wide v4, v3, v2

    .line 173
    aget-wide v4, p1, v1

    aput-wide v4, v3, v1

    .line 174
    aget-wide v4, p1, v0

    aput-wide v4, v3, v0

    .line 175
    iget-object v3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->gaussR:[D

    aget-wide v4, p2, v2

    aput-wide v4, v3, v2

    .line 176
    aget-wide v4, p2, v1

    aput-wide v4, v3, v1

    .line 177
    aget-wide v4, p2, v0

    aput-wide v4, v3, v0

    .line 178
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

    iput-object p1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->currentPoint:[D

    .line 183
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->calculateNearestSegment()V

    .line 186
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawLines(Z)V
    .locals 0

    .line 1319
    iput-boolean p1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->drawLines:Z

    .line 1320
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProjectPoint(Ljava/util/List;D)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[D>;D)V"
        }
    .end annotation

    .line 936
    iput-wide p2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->width:D

    if-eqz p1, :cond_3

    .line 937
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x2

    if-ge p2, p3, :cond_0

    goto :goto_1

    .line 940
    :cond_0
    iget-object p2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 941
    iget-object p2, p0, Lcom/qianhe/yct/view/PolyLinePreView;->coordsList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 942
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    .line 943
    iget-object p3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->points:Ljava/util/List;

    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    iget-object p3, p0, Lcom/qianhe/yct/view/PolyLinePreView;->coordsList:Ljava/util/List;

    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 947
    :cond_1
    iget-boolean p1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->isWorkMode:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 948
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/view/PolyLinePreView;->setWorkMode(Z)V

    .line 950
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->updateContentBounds()V

    .line 951
    new-instance p1, Lcom/qianhe/yct/view/PolyLinePreView$2;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/view/PolyLinePreView$2;-><init>(Lcom/qianhe/yct/view/PolyLinePreView;)V

    const-wide/16 p2, 0x1f4

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public setTransformEnabled(Z)V
    .locals 0

    .line 1120
    iput-boolean p1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->needTransform:Z

    if-nez p1, :cond_0

    .line 1122
    iget-object p1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->transformedPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 1123
    iput-object p1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->transformedCurrentPoint:[D

    .line 1125
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setWorkMode(Z)V
    .locals 2

    .line 978
    iput-boolean p1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->isWorkMode:Z

    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 979
    :goto_0
    iput-wide v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->INITSCALE:D

    .line 980
    iput-wide v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->scaleRatio:D

    const/4 p1, -0x1

    .line 982
    iput p1, p0, Lcom/qianhe/yct/view/PolyLinePreView;->lastNearestSegmentIndex:I

    return-void
.end method

.method public toggleDirection()V
    .locals 1

    .line 1309
    iget-boolean v0, p0, Lcom/qianhe/yct/view/PolyLinePreView;->reverseDirection:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/qianhe/yct/view/PolyLinePreView;->setDirectionReverse(Z)V

    .line 1310
    invoke-virtual {p0}, Lcom/qianhe/yct/view/PolyLinePreView;->locateToStartPoint()V

    .line 1311
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
