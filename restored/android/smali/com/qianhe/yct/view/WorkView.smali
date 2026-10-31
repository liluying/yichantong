.class public Lcom/qianhe/yct/view/WorkView;
.super Landroid/view/View;
.source "WorkView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/view/WorkView$ScaleListener;
    }
.end annotation


# static fields
.field private static final DRAG:I = 0x1

.field private static final INNER_RADIUS:F = 20.0f

.field private static final MAX_OUTER_RADIUS:F = 20.0f

.field private static final MIN_OUTER_RADIUS:F = 20.0f

.field private static final NONE:I = 0x0

.field private static final ZOOM:I = 0x2


# instance fields
.field private final MAX_SCALE:F

.field private final MIN_SCALE:F

.field private bucketBitmap:Landroid/graphics/Bitmap;

.field private bucketWidth:D

.field private carBitmap:Landroid/graphics/Bitmap;

.field private centerX:F

.field private centerY:F

.field private currentPoint:Landroid/graphics/PointF;

.field private currentPoint0:Landroid/graphics/PointF;

.field private currentPointR:Landroid/graphics/PointF;

.field private direction:I

.field private dottedLinePaint:Landroid/graphics/Paint;

.field private final lastPoint:[F

.field private linePaint:Landroid/graphics/Paint;

.field private mAlpha:I

.field private mBreathAnimator:Landroid/animation/ValueAnimator;

.field private final mContext:Landroid/content/Context;

.field private mInnerPaint:Landroid/graphics/Paint;

.field private mOuterPaint:Landroid/graphics/Paint;

.field private mOuterRadius:F

.field private final mScale:F

.field private final matrix:Landroid/graphics/Matrix;

.field private final matrixValues:[F

.field private mode:I

.field private offsetX:F

.field private offsetY:F

.field private parallelLinePaint:Landroid/graphics/Paint;

.field private pendingLocateToStart:Z

.field private pileSpacing:D

.field private point1:Landroid/graphics/PointF;

.field private point2:Landroid/graphics/PointF;

.field private pointA0:Landroid/graphics/PointF;

.field private pointB0:Landroid/graphics/PointF;

.field private projectWidth:D

.field private redDotPaint:Landroid/graphics/Paint;

.field private final savedMatrix:Landroid/graphics/Matrix;

.field private startDistance:F

.field private textPaint:Landroid/graphics/Paint;

.field private useBucketIcon:Z


# direct methods
.method public static synthetic $r8$lambda$cnoeIGxzDcg8ajAP7l9n77hYhR8(Lcom/qianhe/yct/view/WorkView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 696
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_5

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v4, 0x5

    if-eq p1, v4, :cond_0

    const/4 p2, 0x6

    if-eq p1, p2, :cond_5

    goto/16 :goto_0

    .line 707
    :cond_0
    invoke-direct {p0, p2}, Lcom/qianhe/yct/view/WorkView;->spacing(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/view/WorkView;->startDistance:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_7

    .line 709
    iget-object p1, p0, Lcom/qianhe/yct/view/WorkView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 710
    iget-object p1, p0, Lcom/qianhe/yct/view/WorkView;->lastPoint:[F

    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/view/WorkView;->midPoint([FLandroid/view/MotionEvent;)V

    .line 711
    iput v3, p0, Lcom/qianhe/yct/view/WorkView;->mode:I

    .line 712
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 713
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 718
    :cond_1
    iget p1, p0, Lcom/qianhe/yct/view/WorkView;->mode:I

    if-ne p1, v1, :cond_2

    .line 719
    iget-object p1, p0, Lcom/qianhe/yct/view/WorkView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/qianhe/yct/view/WorkView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 720
    iget-object p1, p0, Lcom/qianhe/yct/view/WorkView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/qianhe/yct/view/WorkView;->lastPoint:[F

    aget v0, v3, v0

    sub-float/2addr v2, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->lastPoint:[F

    aget v0, v0, v1

    sub-float/2addr p2, v0

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    :cond_2
    if-ne p1, v3, :cond_7

    .line 722
    invoke-direct {p0, p2}, Lcom/qianhe/yct/view/WorkView;->spacing(Landroid/view/MotionEvent;)F

    move-result p1

    cmpl-float p2, p1, v2

    if-lez p2, :cond_7

    .line 724
    iget-object p2, p0, Lcom/qianhe/yct/view/WorkView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/qianhe/yct/view/WorkView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 725
    iget p2, p0, Lcom/qianhe/yct/view/WorkView;->startDistance:F

    div-float/2addr p1, p2

    .line 727
    iget-object p2, p0, Lcom/qianhe/yct/view/WorkView;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p2}, Lcom/qianhe/yct/view/WorkView;->getMatrixScale(Landroid/graphics/Matrix;)F

    move-result p2

    mul-float v2, p2, p1

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_3

    .line 731
    iget-object p1, p0, Lcom/qianhe/yct/view/WorkView;->matrix:Landroid/graphics/Matrix;

    div-float/2addr v3, p2

    iget-object p2, p0, Lcom/qianhe/yct/view/WorkView;->lastPoint:[F

    aget v0, p2, v0

    aget p2, p2, v1

    invoke-virtual {p1, v3, v3, v0, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    :cond_3
    const/high16 v3, 0x43480000    # 200.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 733
    iget-object p1, p0, Lcom/qianhe/yct/view/WorkView;->matrix:Landroid/graphics/Matrix;

    div-float/2addr v3, p2

    iget-object p2, p0, Lcom/qianhe/yct/view/WorkView;->lastPoint:[F

    aget v0, p2, v0

    aget p2, p2, v1

    invoke-virtual {p1, v3, v3, v0, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    .line 735
    :cond_4
    iget-object p2, p0, Lcom/qianhe/yct/view/WorkView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/qianhe/yct/view/WorkView;->lastPoint:[F

    aget v0, v2, v0

    aget v2, v2, v1

    invoke-virtual {p2, p1, p1, v0, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    .line 742
    :cond_5
    iput v0, p0, Lcom/qianhe/yct/view/WorkView;->mode:I

    .line 743
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 744
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 698
    :cond_6
    iget-object p1, p0, Lcom/qianhe/yct/view/WorkView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/qianhe/yct/view/WorkView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 699
    iget-object p1, p0, Lcom/qianhe/yct/view/WorkView;->lastPoint:[F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, p1, v0

    .line 700
    iget-object p1, p0, Lcom/qianhe/yct/view/WorkView;->lastPoint:[F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    aput p2, p1, v1

    .line 701
    iput v1, p0, Lcom/qianhe/yct/view/WorkView;->mode:I

    .line 702
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 703
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 748
    :cond_7
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1
.end method

.method public static synthetic $r8$lambda$qOsK-pZUzuVEKpE76aljD22DlxA(Lcom/qianhe/yct/view/WorkView;Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/4 v0, 0x0

    mul-float v0, v0, p1

    const/high16 v1, 0x41a00000    # 20.0f

    add-float/2addr v0, v1

    .line 153
    iput v0, p0, Lcom/qianhe/yct/view/WorkView;->mOuterRadius:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const/high16 p1, 0x43200000    # 160.0f

    mul-float v0, v0, p1

    float-to-int p1, v0

    .line 155
    iput p1, p0, Lcom/qianhe/yct/view/WorkView;->mAlpha:I

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic $r8$lambda$uPph47JGgFUQvulyeeuO3CfcWbY(Lcom/qianhe/yct/view/WorkView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/view/WorkView;->tryLocateToStartPoint()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmatrix(Lcom/qianhe/yct/view/WorkView;)Landroid/graphics/Matrix;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/view/WorkView;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/view/WorkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lcom/qianhe/yct/view/WorkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/qianhe/yct/view/WorkView;->matrix:Landroid/graphics/Matrix;

    const/16 p2, 0x9

    .line 37
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/qianhe/yct/view/WorkView;->matrixValues:[F

    .line 38
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/qianhe/yct/view/WorkView;->savedMatrix:Landroid/graphics/Matrix;

    const/4 p2, 0x2

    .line 39
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/qianhe/yct/view/WorkView;->lastPoint:[F

    const/4 p2, 0x0

    .line 43
    iput p2, p0, Lcom/qianhe/yct/view/WorkView;->mode:I

    const/high16 p3, 0x41a00000    # 20.0f

    .line 54
    iput p3, p0, Lcom/qianhe/yct/view/WorkView;->mScale:F

    const p3, 0x3c23d70a    # 0.01f

    .line 55
    iput p3, p0, Lcom/qianhe/yct/view/WorkView;->MIN_SCALE:F

    const/high16 p3, 0x43480000    # 200.0f

    .line 56
    iput p3, p0, Lcom/qianhe/yct/view/WorkView;->MAX_SCALE:F

    .line 70
    iput-boolean p2, p0, Lcom/qianhe/yct/view/WorkView;->useBucketIcon:Z

    .line 71
    iput p2, p0, Lcom/qianhe/yct/view/WorkView;->direction:I

    .line 89
    iput-object p1, p0, Lcom/qianhe/yct/view/WorkView;->mContext:Landroid/content/Context;

    .line 91
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 93
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/view/WorkView;->init()V

    return-void
.end method

.method private calculateRotationAngle()F
    .locals 4

    .line 674
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->point1:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/view/WorkView;->point2:Landroid/graphics/PointF;

    if-eqz v1, :cond_1

    .line 676
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    .line 677
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    float-to-double v2, v2

    .line 680
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    .line 683
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v1, v0

    .line 686
    iget v0, p0, Lcom/qianhe/yct/view/WorkView;->direction:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xb4

    :goto_0
    int-to-float v0, v0

    add-float/2addr v1, v0

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private dpToPx(F)F
    .locals 2

    .line 502
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private drawBitmapByTwoPoints(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFFFLandroid/graphics/Paint;)V
    .locals 3

    sub-float/2addr p5, p3

    sub-float/2addr p6, p4

    mul-float v0, p5, p5

    mul-float v1, p6, p6

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 260
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, p6

    float-to-double p5, p5

    .line 263
    invoke-static {v1, v2, p5, p6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p5

    double-to-float p5, p5

    .line 266
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p6

    int-to-float p6, p6

    div-float/2addr v0, p6

    .line 269
    new-instance p6, Landroid/graphics/Matrix;

    invoke-direct {p6}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x0

    .line 272
    invoke-virtual {p6, v1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 275
    invoke-virtual {p6, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 278
    invoke-virtual {p6, p5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 281
    invoke-virtual {p6, p3, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 284
    invoke-virtual {p1, p2, p6, p7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawDashedSegment(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 12

    sub-float v0, p4, p2

    float-to-double v1, v0

    sub-float v3, p5, p3

    float-to-double v4, v3

    .line 452
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    .line 453
    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/WorkView;->dpToPx(F)F

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {p0, v5}, Lcom/qianhe/yct/view/WorkView;->dpToPx(F)F

    move-result v5

    add-float/2addr v4, v5

    div-float v5, v1, v4

    float-to-int v5, v5

    .line 455
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_1

    int-to-float v8, v7

    mul-float v8, v8, v4

    .line 458
    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/WorkView;->dpToPx(F)F

    move-result v9

    add-float/2addr v9, v8

    cmpl-float v10, v9, v1

    if-lez v10, :cond_0

    move v9, v1

    :cond_0
    mul-float v10, v0, v8

    div-float/2addr v10, v1

    add-float/2addr v10, p2

    mul-float v8, v8, v3

    div-float/2addr v8, v1

    add-float/2addr v8, p3

    mul-float v11, v0, v9

    div-float/2addr v11, v1

    add-float/2addr v11, p2

    mul-float v9, v9, v3

    div-float/2addr v9, v1

    add-float/2addr v9, p3

    .line 464
    invoke-virtual {v6, v10, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 465
    invoke-virtual {v6, v11, v9}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v7, p6

    .line 467
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawEquidistantDots(Landroid/graphics/Canvas;FDDDDDDD)V
    .locals 7

    move-wide/from16 v0, p11

    :goto_0
    cmpg-double v2, v0, p13

    if-gtz v2, :cond_0

    mul-double v2, p7, v0

    add-double/2addr v2, p3

    mul-double v4, p9, v0

    add-double/2addr v4, p5

    .line 397
    new-instance v6, Landroid/graphics/PointF;

    double-to-float v2, v2

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float v2, v2, v3

    neg-double v4, v4

    double-to-float v4, v4

    mul-float v4, v4, v3

    invoke-direct {v6, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 398
    iget v2, v6, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/qianhe/yct/view/WorkView;->offsetX:F

    add-float/2addr v2, v3

    iget v3, v6, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/qianhe/yct/view/WorkView;->offsetY:F

    add-float/2addr v3, v4

    invoke-virtual {v6, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 399
    iget v2, v6, Landroid/graphics/PointF;->x:F

    iget v3, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v2, v3, p2}, Lcom/qianhe/yct/view/WorkView;->getRotatePointWithMatrix(FFF)[F

    move-result-object v2

    const/4 v3, 0x0

    .line 402
    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    iget-object v4, p0, Lcom/qianhe/yct/view/WorkView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v4, v4, v5

    iget-object v5, p0, Lcom/qianhe/yct/view/WorkView;->redDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-double v0, v0, p15

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawExtendLines(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 13

    sub-float v0, p4, p2

    sub-float v1, p5, p3

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 416
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    div-float/2addr v0, v2

    div-float/2addr v1, v2

    .line 425
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 426
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int v2, v2, v2

    mul-int v3, v3, v3

    add-int/2addr v2, v3

    int-to-double v2, v2

    .line 429
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x43480000    # 200.0f

    mul-float v2, v2, v3

    mul-float v0, v0, v2

    sub-float v4, p2, v0

    mul-float v1, v1, v2

    sub-float v5, p3, v1

    add-float v0, p4, v0

    add-float v1, p5, v1

    .line 438
    invoke-direct {p0}, Lcom/qianhe/yct/view/WorkView;->isPad()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/qianhe/yct/view/WorkView;->parallelLinePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p6

    if-ne v9, v2, :cond_1

    move-object v8, v9

    move-object v3, p1

    move v6, p2

    move/from16 v7, p3

    move v9, v1

    goto :goto_0

    :cond_1
    move-object v3, p0

    move v7, p2

    move/from16 v8, p3

    move v6, v5

    move v5, v4

    move-object v4, p1

    .line 442
    invoke-direct/range {v3 .. v9}, Lcom/qianhe/yct/view/WorkView;->drawDashedSegment(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move/from16 v10, p4

    move/from16 v11, p5

    move v8, v0

    move-object v6, v3

    move-object v7, v4

    move-object v12, v9

    move v9, v1

    .line 443
    invoke-direct/range {v6 .. v12}, Lcom/qianhe/yct/view/WorkView;->drawDashedSegment(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_2
    move-object/from16 v8, p6

    move v9, v1

    move-object v3, p1

    move v6, p2

    move/from16 v7, p3

    .line 439
    :goto_0
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v10, p5

    move v7, v0

    move-object v6, v3

    move-object v11, v8

    move v8, v9

    move/from16 v9, p4

    .line 440
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawHorizontalText(Landroid/graphics/Canvas;Ljava/lang/String;FF)V
    .locals 5

    .line 653
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 654
    iget-object v1, p0, Lcom/qianhe/yct/view/WorkView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 656
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 657
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v2

    .line 659
    iget v2, p0, Lcom/qianhe/yct/view/WorkView;->direction:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 660
    iget-object v2, p0, Lcom/qianhe/yct/view/WorkView;->mContext:Landroid/content/Context;

    sget v4, Lcom/qianhe/yct/R$string;->starting_point:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 662
    :cond_1
    iget-object v2, p0, Lcom/qianhe/yct/view/WorkView;->mContext:Landroid/content/Context;

    sget v4, Lcom/qianhe/yct/R$string;->starting_point:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 664
    :cond_2
    :goto_1
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v1, v0

    add-float/2addr p4, v1

    .line 666
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p3, v0

    .line 669
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawParallelLines(Landroid/graphics/Canvas;FD)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 294
    iget-object v2, v0, Lcom/qianhe/yct/view/WorkView;->point1:Landroid/graphics/PointF;

    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/qianhe/yct/view/WorkView;->point2:Landroid/graphics/PointF;

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 297
    :cond_0
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    .line 298
    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v2

    mul-float v2, v4, v4

    mul-float v5, v3, v3

    add-float/2addr v2, v5

    float-to-double v5, v2

    .line 301
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v2, v5, v7

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    neg-float v2, v3

    double-to-float v3, v5

    div-float/2addr v2, v3

    div-float/2addr v4, v3

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    mul-double v5, v5, p3

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    double-to-float v3, v5

    .line 313
    new-instance v5, Landroid/graphics/PointF;

    iget-object v6, v0, Lcom/qianhe/yct/view/WorkView;->point1:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v3

    add-float/2addr v7, v2

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float v4, v4, v3

    add-float/2addr v6, v4

    invoke-direct {v5, v7, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 314
    new-instance v3, Landroid/graphics/PointF;

    iget-object v6, v0, Lcom/qianhe/yct/view/WorkView;->point2:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v2

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v4

    invoke-direct {v3, v7, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 317
    new-instance v6, Landroid/graphics/PointF;

    iget-object v7, v0, Lcom/qianhe/yct/view/WorkView;->point1:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v2

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v4

    invoke-direct {v6, v8, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 318
    new-instance v7, Landroid/graphics/PointF;

    iget-object v8, v0, Lcom/qianhe/yct/view/WorkView;->point2:Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v2

    iget v2, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    invoke-direct {v7, v9, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 321
    iget v2, v5, Landroid/graphics/PointF;->x:F

    iget v4, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v2, v4, v1}, Lcom/qianhe/yct/view/WorkView;->getRotatePointWithMatrix(FFF)[F

    move-result-object v2

    .line 322
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v4, v3, v1}, Lcom/qianhe/yct/view/WorkView;->getRotatePointWithMatrix(FFF)[F

    move-result-object v3

    .line 323
    iget v4, v6, Landroid/graphics/PointF;->x:F

    iget v5, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v4, v5, v1}, Lcom/qianhe/yct/view/WorkView;->getRotatePointWithMatrix(FFF)[F

    move-result-object v8

    .line 324
    iget v4, v7, Landroid/graphics/PointF;->x:F

    iget v5, v7, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v4, v5, v1}, Lcom/qianhe/yct/view/WorkView;->getRotatePointWithMatrix(FFF)[F

    move-result-object v7

    const/4 v9, 0x0

    .line 327
    aget v11, v2, v9

    const/16 v16, 0x1

    aget v12, v2, v16

    aget v13, v3, v9

    aget v14, v3, v16

    iget-object v15, v0, Lcom/qianhe/yct/view/WorkView;->parallelLinePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 328
    aget v18, v8, v9

    aget v19, v8, v16

    aget v20, v7, v9

    aget v21, v7, v16

    iget-object v1, v0, Lcom/qianhe/yct/view/WorkView;->parallelLinePaint:Landroid/graphics/Paint;

    move-object/from16 v17, p1

    move-object/from16 v22, v1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object v1, v2

    .line 331
    aget v2, v1, v9

    aget v1, v1, v16

    aget v4, v3, v9

    aget v5, v3, v16

    iget-object v6, v0, Lcom/qianhe/yct/view/WorkView;->parallelLinePaint:Landroid/graphics/Paint;

    move v3, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/view/WorkView;->drawExtendLines(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 332
    aget v2, v8, v9

    aget v3, v8, v16

    aget v4, v7, v9

    aget v5, v7, v16

    iget-object v6, v0, Lcom/qianhe/yct/view/WorkView;->parallelLinePaint:Landroid/graphics/Paint;

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/view/WorkView;->drawExtendLines(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private drawScaleBar(Landroid/graphics/Canvas;)V
    .locals 13

    .line 476
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->matrixValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 477
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, 0x41f00000    # 30.0f

    .line 478
    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/WorkView;->dpToPx(F)F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    .line 479
    invoke-direct {p0, v3}, Lcom/qianhe/yct/view/WorkView;->dpToPx(F)F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    .line 480
    invoke-direct {p0, v4}, Lcom/qianhe/yct/view/WorkView;->dpToPx(F)F

    move-result v6

    .line 481
    invoke-direct {p0, v4}, Lcom/qianhe/yct/view/WorkView;->dpToPx(F)F

    move-result v11

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float v0, v0, v5

    div-float v0, v2, v0

    .line 484
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    const/high16 v12, -0x1000000

    .line 485
    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 486
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 487
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v11

    sub-float v7, v5, v3

    add-float v8, v6, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v9, v5, v11

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 490
    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 491
    invoke-direct {p0, v4}, Lcom/qianhe/yct/view/WorkView;->dpToPx(F)F

    move-result p1

    invoke-virtual {v10, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 492
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    const-string v0, "%.2fm"

    invoke-static {p1, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 494
    invoke-virtual {v10, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    add-float/2addr v6, v2

    .line 496
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v11

    sub-float/2addr v0, v3

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/WorkView;->dpToPx(F)F

    move-result v1

    sub-float/2addr v0, v1

    .line 497
    invoke-virtual {v5, p1, v6, v0, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 498
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getMatrixScale(Landroid/graphics/Matrix;)F
    .locals 1

    const/16 v0, 0x9

    .line 754
    new-array v0, v0, [F

    .line 755
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p1, 0x0

    .line 756
    aget p1, v0, p1

    return p1
.end method

.method private getRotatePointWithMatrix(FFF)[F
    .locals 9

    .line 362
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->matrixValues:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x4

    .line 363
    aget v3, v0, v3

    const/4 v4, 0x2

    .line 365
    aget v5, v0, v4

    const/4 v6, 0x5

    .line 366
    aget v0, v0, v6

    .line 368
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 370
    iget v7, p0, Lcom/qianhe/yct/view/WorkView;->centerX:F

    mul-float v7, v7, v2

    add-float/2addr v7, v5

    iget v8, p0, Lcom/qianhe/yct/view/WorkView;->centerY:F

    mul-float v8, v8, v3

    add-float/2addr v8, v0

    invoke-virtual {v6, p3, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    mul-float p1, p1, v2

    add-float/2addr p1, v5

    mul-float p2, p2, v3

    add-float/2addr p2, v0

    .line 372
    new-array p3, v4, [F

    aput p1, p3, v1

    const/4 p1, 0x1

    aput p2, p3, p1

    .line 374
    invoke-virtual {v6, p3}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-object p3
.end method

.method private init()V
    .locals 9

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$mipmap;->icon_app:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/view/WorkView;->carBitmap:Landroid/graphics/Bitmap;

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_work_center_tooth:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/view/WorkView;->bucketBitmap:Landroid/graphics/Bitmap;

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/WorkView;->linePaint:Landroid/graphics/Paint;

    .line 103
    iget-object v2, p0, Lcom/qianhe/yct/view/WorkView;->mContext:Landroid/content/Context;

    sget v3, Lcom/qianhe/yct/R$color;->map_line:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->linePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/WorkView;->dpToPx(F)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->linePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->linePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/WorkView;->dottedLinePaint:Landroid/graphics/Paint;

    .line 108
    iget-object v5, p0, Lcom/qianhe/yct/view/WorkView;->mContext:Landroid/content/Context;

    sget v6, Lcom/qianhe/yct/R$color;->map_line:I

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->dottedLinePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/WorkView;->dpToPx(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->dottedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->dottedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 112
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->dottedLinePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-direct {p0, v5}, Lcom/qianhe/yct/view/WorkView;->dpToPx(F)F

    move-result v5

    const/high16 v6, 0x41400000    # 12.0f

    invoke-direct {p0, v6}, Lcom/qianhe/yct/view/WorkView;->dpToPx(F)F

    move-result v6

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v5, v7, v8

    aput v6, v7, v1

    const/4 v5, 0x0

    invoke-direct {v2, v7, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/WorkView;->parallelLinePaint:Landroid/graphics/Paint;

    .line 115
    iget-object v2, p0, Lcom/qianhe/yct/view/WorkView;->mContext:Landroid/content/Context;

    sget v5, Lcom/qianhe/yct/R$color;->map_line:I

    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->parallelLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/WorkView;->dpToPx(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 117
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->parallelLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->parallelLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 119
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->parallelLinePaint:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    invoke-direct {p0}, Lcom/qianhe/yct/view/WorkView;->initCircleParam()V

    .line 123
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/WorkView;->textPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    .line 124
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/WorkView;->redDotPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    .line 127
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->redDotPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    invoke-direct {p0}, Lcom/qianhe/yct/view/WorkView;->initTouchListener()V

    return-void
.end method

.method private initCircleParam()V
    .locals 5

    .line 135
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/WorkView;->mOuterPaint:Landroid/graphics/Paint;

    .line 136
    iget-object v2, p0, Lcom/qianhe/yct/view/WorkView;->mContext:Landroid/content/Context;

    sget v3, Lcom/qianhe/yct/R$color;->red_alpha:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->mOuterPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/WorkView;->mInnerPaint:Landroid/graphics/Paint;

    .line 141
    iget-object v3, p0, Lcom/qianhe/yct/view/WorkView;->mContext:Landroid/content/Context;

    sget v4, Lcom/qianhe/yct/R$color;->red:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->mInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x2

    .line 145
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/view/WorkView;->mBreathAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x7d0

    .line 146
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 147
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->mBreathAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 148
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->mBreathAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 149
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->mBreathAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 150
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->mBreathAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/qianhe/yct/view/WorkView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/view/WorkView$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/view/WorkView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initTouchListener()V
    .locals 4

    .line 693
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/view/WorkView$ScaleListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/qianhe/yct/view/WorkView$ScaleListener;-><init>(Lcom/qianhe/yct/view/WorkView;Lcom/qianhe/yct/view/WorkView-IA;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 695
    new-instance v0, Lcom/qianhe/yct/view/WorkView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/view/WorkView$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/view/WorkView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private isPad()Z
    .locals 1

    .line 471
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isPad()Z

    move-result v0

    return v0
.end method

.method private midPoint([FLandroid/view/MotionEvent;)V
    .locals 4

    const/4 v0, 0x0

    .line 766
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    .line 767
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    add-float/2addr v3, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v1, p2

    .line 768
    aput v1, p1, v0

    div-float/2addr v3, p2

    .line 769
    aput v3, p1, v2

    return-void
.end method

.method private setToothBitmap(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 786
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_work_left_tooth:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 788
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_work_right_tooth:I

    goto :goto_0

    .line 790
    :cond_1
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_work_center_tooth:I

    .line 792
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/view/WorkView;->bucketBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    .line 760
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 761
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 762
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private tryLocateToStartPoint()V
    .locals 2

    .line 545
    invoke-direct {p0}, Lcom/qianhe/yct/view/WorkView;->updateParentCenter()V

    .line 546
    iget v0, p0, Lcom/qianhe/yct/view/WorkView;->centerX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/qianhe/yct/view/WorkView;->centerY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->pointA0:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->pointB0:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 550
    iput-boolean v0, p0, Lcom/qianhe/yct/view/WorkView;->pendingLocateToStart:Z

    .line 551
    invoke-virtual {p0}, Lcom/qianhe/yct/view/WorkView;->locateToStartPoint()V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 547
    iput-boolean v0, p0, Lcom/qianhe/yct/view/WorkView;->pendingLocateToStart:Z

    return-void
.end method

.method private updateParentCenter()V
    .locals 3

    .line 532
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 533
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 534
    check-cast v0, Landroid/view/ViewGroup;

    .line 535
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 536
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v1, :cond_0

    if-lez v0, :cond_0

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 538
    iput v1, p0, Lcom/qianhe/yct/view/WorkView;->centerX:F

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 539
    iput v0, p0, Lcom/qianhe/yct/view/WorkView;->centerY:F

    :cond_0
    return-void
.end method


# virtual methods
.method public getParentContainerDimensions()V
    .locals 0

    .line 528
    invoke-virtual {p0}, Lcom/qianhe/yct/view/WorkView;->requestLocateToStartPoint()V

    return-void
.end method

.method public isUseBucketIcon()Z
    .locals 1

    .line 820
    iget-boolean v0, p0, Lcom/qianhe/yct/view/WorkView;->useBucketIcon:Z

    return v0
.end method

.method public locateToStartPoint()V
    .locals 5

    .line 583
    invoke-direct {p0}, Lcom/qianhe/yct/view/WorkView;->updateParentCenter()V

    .line 584
    iget v0, p0, Lcom/qianhe/yct/view/WorkView;->centerX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/qianhe/yct/view/WorkView;->centerY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->pointA0:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->pointB0:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    goto :goto_0

    .line 588
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/qianhe/yct/view/WorkView;->pointA0:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float v2, v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    mul-float v1, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/qianhe/yct/view/WorkView;->point1:Landroid/graphics/PointF;

    .line 589
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/qianhe/yct/view/WorkView;->pointB0:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    mul-float v1, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/qianhe/yct/view/WorkView;->point2:Landroid/graphics/PointF;

    .line 590
    iget v0, p0, Lcom/qianhe/yct/view/WorkView;->centerX:F

    iget-object v1, p0, Lcom/qianhe/yct/view/WorkView;->point1:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/qianhe/yct/view/WorkView;->offsetX:F

    .line 591
    iget v3, p0, Lcom/qianhe/yct/view/WorkView;->centerY:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/qianhe/yct/view/WorkView;->offsetY:F

    add-float/2addr v2, v0

    add-float/2addr v4, v3

    .line 592
    invoke-virtual {v1, v2, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 593
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->point2:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/qianhe/yct/view/WorkView;->offsetX:F

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/qianhe/yct/view/WorkView;->offsetY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 594
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->currentPoint0:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/view/WorkView;->currentPoint:Landroid/graphics/PointF;

    if-eqz v1, :cond_1

    .line 595
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/qianhe/yct/view/WorkView;->offsetX:F

    add-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/qianhe/yct/view/WorkView;->offsetY:F

    add-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/qianhe/yct/view/WorkView;->point1:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 598
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 585
    iput-boolean v0, p0, Lcom/qianhe/yct/view/WorkView;->pendingLocateToStart:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 163
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 164
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->mBreathAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 169
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 170
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->mBreathAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    .line 175
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 176
    iget-object v1, v0, Lcom/qianhe/yct/view/WorkView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/qianhe/yct/view/WorkView;->matrixValues:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 178
    invoke-direct {v0}, Lcom/qianhe/yct/view/WorkView;->calculateRotationAngle()F

    move-result v8

    .line 180
    iget-object v1, v0, Lcom/qianhe/yct/view/WorkView;->currentPoint:Landroid/graphics/PointF;

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/qianhe/yct/view/WorkView;->mOuterPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    .line 181
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v2, v1, v8}, Lcom/qianhe/yct/view/WorkView;->getRotatePointWithMatrix(FFF)[F

    move-result-object v1

    .line 182
    iget-object v2, v0, Lcom/qianhe/yct/view/WorkView;->currentPointR:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v3, v2, v8}, Lcom/qianhe/yct/view/WorkView;->getRotatePointWithMatrix(FFF)[F

    move-result-object v2

    .line 184
    iget-boolean v3, v0, Lcom/qianhe/yct/view/WorkView;->useBucketIcon:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/qianhe/yct/view/WorkView;->bucketBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 186
    iget-wide v3, v0, Lcom/qianhe/yct/view/WorkView;->bucketWidth:D

    cmpg-double v5, v3, v9

    if-gtz v5, :cond_1

    move-object v3, v2

    .line 188
    iget-object v2, v0, Lcom/qianhe/yct/view/WorkView;->bucketBitmap:Landroid/graphics/Bitmap;

    aget v1, v3, v11

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    aget v4, v3, v12

    aget v6, v3, v11

    iget-object v7, v0, Lcom/qianhe/yct/view/WorkView;->bucketBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    add-float v5, v6, v7

    aget v6, v3, v12

    const/4 v7, 0x0

    move v3, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/view/WorkView;->drawBitmapByTwoPoints(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFFFLandroid/graphics/Paint;)V

    :cond_0
    move-object v6, v0

    move-object/from16 v0, p1

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 190
    iget-object v2, v0, Lcom/qianhe/yct/view/WorkView;->bucketBitmap:Landroid/graphics/Bitmap;

    move-object v4, v3

    aget v3, v1, v11

    move-object v5, v4

    aget v4, v1, v12

    move-object v1, v5

    aget v5, v1, v11

    aget v6, v1, v12

    const/4 v7, 0x0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/view/WorkView;->drawBitmapByTwoPoints(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFFFLandroid/graphics/Paint;)V

    move-object v6, v0

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v6, v0

    move-object/from16 v0, p1

    .line 194
    iget-object v2, v6, Lcom/qianhe/yct/view/WorkView;->mOuterPaint:Landroid/graphics/Paint;

    iget v3, v6, Lcom/qianhe/yct/view/WorkView;->mAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 196
    aget v2, v1, v11

    aget v3, v1, v12

    iget v4, v6, Lcom/qianhe/yct/view/WorkView;->mOuterRadius:F

    iget-object v5, v6, Lcom/qianhe/yct/view/WorkView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 198
    aget v2, v1, v11

    aget v1, v1, v12

    const/high16 v3, 0x41a00000    # 20.0f

    iget-object v4, v6, Lcom/qianhe/yct/view/WorkView;->mInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 203
    :goto_0
    iget-object v1, v6, Lcom/qianhe/yct/view/WorkView;->point1:Landroid/graphics/PointF;

    if-eqz v1, :cond_3

    iget-object v2, v6, Lcom/qianhe/yct/view/WorkView;->point2:Landroid/graphics/PointF;

    if-eqz v2, :cond_3

    .line 205
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v6, v2, v1, v8}, Lcom/qianhe/yct/view/WorkView;->getRotatePointWithMatrix(FFF)[F

    move-result-object v7

    .line 206
    iget-object v1, v6, Lcom/qianhe/yct/view/WorkView;->point2:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v6, v2, v1, v8}, Lcom/qianhe/yct/view/WorkView;->getRotatePointWithMatrix(FFF)[F

    move-result-object v13

    .line 208
    aget v1, v7, v11

    aget v2, v7, v12

    aget v3, v13, v11

    aget v4, v13, v12

    iget-object v5, v6, Lcom/qianhe/yct/view/WorkView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 210
    aget v2, v7, v11

    aget v3, v7, v12

    aget v5, v13, v12

    move-object v0, v6

    iget-object v6, v0, Lcom/qianhe/yct/view/WorkView;->dottedLinePaint:Landroid/graphics/Paint;

    move v4, v2

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/view/WorkView;->drawExtendLines(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 212
    iget-object v2, v0, Lcom/qianhe/yct/view/WorkView;->mContext:Landroid/content/Context;

    sget v3, Lcom/qianhe/yct/R$string;->starting_point:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aget v3, v7, v11

    aget v4, v7, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/qianhe/yct/view/WorkView;->drawHorizontalText(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    .line 213
    iget-object v2, v0, Lcom/qianhe/yct/view/WorkView;->mContext:Landroid/content/Context;

    sget v3, Lcom/qianhe/yct/R$string;->ending_point:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aget v3, v13, v11

    aget v4, v13, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/qianhe/yct/view/WorkView;->drawHorizontalText(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    .line 215
    iget-wide v2, v0, Lcom/qianhe/yct/view/WorkView;->projectWidth:D

    cmpl-double v4, v2, v9

    if-lez v4, :cond_4

    .line 216
    invoke-direct {v0, v1, v8, v2, v3}, Lcom/qianhe/yct/view/WorkView;->drawParallelLines(Landroid/graphics/Canvas;FD)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    move-object v0, v6

    .line 221
    :cond_4
    :goto_1
    iget-object v2, v0, Lcom/qianhe/yct/view/WorkView;->pointA0:Landroid/graphics/PointF;

    if-eqz v2, :cond_5

    iget-object v3, v0, Lcom/qianhe/yct/view/WorkView;->pointB0:Landroid/graphics/PointF;

    if-eqz v3, :cond_5

    iget-wide v4, v0, Lcom/qianhe/yct/view/WorkView;->pileSpacing:D

    cmpl-double v6, v4, v9

    if-lez v6, :cond_5

    .line 223
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    .line 224
    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v2

    float-to-double v2, v3

    mul-double v6, v4, v4

    mul-double v11, v2, v2

    add-double/2addr v6, v11

    .line 225
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    cmpl-double v6, v13, v9

    if-lez v6, :cond_5

    div-double/2addr v4, v13

    div-double v9, v2, v13

    .line 232
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    mul-int v2, v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    mul-int v3, v3, v6

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 235
    iget-object v2, v0, Lcom/qianhe/yct/view/WorkView;->pointA0:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    float-to-double v6, v3

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    iget-wide v11, v0, Lcom/qianhe/yct/view/WorkView;->pileSpacing:D

    move-wide v15, v11

    const-wide/16 v11, 0x0

    move-wide/from16 v17, v2

    move v2, v8

    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    move-wide/from16 v5, v17

    move-wide/from16 v7, v19

    move-wide/from16 v3, v21

    invoke-direct/range {v0 .. v16}, Lcom/qianhe/yct/view/WorkView;->drawEquidistantDots(Landroid/graphics/Canvas;FDDDDDDD)V

    .line 242
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/view/WorkView;->drawScaleBar(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 515
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    move-object p1, p0

    .line 516
    iget-boolean p2, p1, Lcom/qianhe/yct/view/WorkView;->pendingLocateToStart:Z

    if-eqz p2, :cond_0

    .line 517
    invoke-direct {p0}, Lcom/qianhe/yct/view/WorkView;->tryLocateToStartPoint()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 507
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 508
    iget-boolean p1, p0, Lcom/qianhe/yct/view/WorkView;->pendingLocateToStart:Z

    if-eqz p1, :cond_0

    .line 509
    invoke-direct {p0}, Lcom/qianhe/yct/view/WorkView;->tryLocateToStartPoint()V

    :cond_0
    return-void
.end method

.method public refreshToothType(I)V
    .locals 0

    .line 779
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/WorkView;->setToothBitmap(I)V

    return-void
.end method

.method public requestLocateToStartPoint()V
    .locals 1

    const/4 v0, 0x1

    .line 523
    iput-boolean v0, p0, Lcom/qianhe/yct/view/WorkView;->pendingLocateToStart:Z

    .line 524
    new-instance v0, Lcom/qianhe/yct/view/WorkView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/view/WorkView$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/view/WorkView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resetLocation()V
    .locals 4

    .line 557
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 558
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 559
    check-cast v0, Landroid/view/ViewGroup;

    .line 560
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/qianhe/yct/view/WorkView;->centerX:F

    .line 561
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/qianhe/yct/view/WorkView;->centerY:F

    .line 563
    :cond_0
    iget v0, p0, Lcom/qianhe/yct/view/WorkView;->centerX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/qianhe/yct/view/WorkView;->centerY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->point1:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->point2:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->pointA0:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->pointB0:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    .line 565
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/qianhe/yct/view/WorkView;->pointA0:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float v2, v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    mul-float v1, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/qianhe/yct/view/WorkView;->point1:Landroid/graphics/PointF;

    .line 566
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/qianhe/yct/view/WorkView;->pointB0:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    mul-float v1, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/qianhe/yct/view/WorkView;->point2:Landroid/graphics/PointF;

    .line 568
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->currentPoint0:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    .line 569
    iget v1, p0, Lcom/qianhe/yct/view/WorkView;->centerX:F

    iget v2, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/qianhe/yct/view/WorkView;->offsetX:F

    .line 570
    iget v2, p0, Lcom/qianhe/yct/view/WorkView;->centerY:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/qianhe/yct/view/WorkView;->offsetY:F

    .line 571
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->point1:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v1

    iget v1, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 572
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->point2:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/qianhe/yct/view/WorkView;->offsetX:F

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/qianhe/yct/view/WorkView;->offsetY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 573
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->currentPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/qianhe/yct/view/WorkView;->currentPoint0:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/qianhe/yct/view/WorkView;->offsetX:F

    add-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/qianhe/yct/view/WorkView;->offsetY:F

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 574
    iget-object v0, p0, Lcom/qianhe/yct/view/WorkView;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/qianhe/yct/view/WorkView;->centerX:F

    iget v2, p0, Lcom/qianhe/yct/view/WorkView;->centerY:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 575
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public resfreshDirection(I)V
    .locals 0

    .line 773
    iput p1, p0, Lcom/qianhe/yct/view/WorkView;->direction:I

    .line 774
    invoke-virtual {p0}, Lcom/qianhe/yct/view/WorkView;->locateToStartPoint()V

    return-void
.end method

.method public setLocationPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;DZ)V
    .locals 2

    .line 624
    iput-wide p3, p0, Lcom/qianhe/yct/view/WorkView;->bucketWidth:D

    if-eqz p5, :cond_0

    .line 627
    iget-object p3, p0, Lcom/qianhe/yct/view/WorkView;->mOuterPaint:Landroid/graphics/Paint;

    iget-object p4, p0, Lcom/qianhe/yct/view/WorkView;->mContext:Landroid/content/Context;

    sget p5, Lcom/qianhe/yct/R$color;->theme_alpha:I

    invoke-static {p4, p5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 628
    iget-object p3, p0, Lcom/qianhe/yct/view/WorkView;->mInnerPaint:Landroid/graphics/Paint;

    iget-object p4, p0, Lcom/qianhe/yct/view/WorkView;->mContext:Landroid/content/Context;

    sget p5, Lcom/qianhe/yct/R$color;->theme:I

    invoke-static {p4, p5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 630
    :cond_0
    iget-object p3, p0, Lcom/qianhe/yct/view/WorkView;->mOuterPaint:Landroid/graphics/Paint;

    iget-object p4, p0, Lcom/qianhe/yct/view/WorkView;->mContext:Landroid/content/Context;

    sget p5, Lcom/qianhe/yct/R$color;->red_alpha:I

    invoke-static {p4, p5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 631
    iget-object p3, p0, Lcom/qianhe/yct/view/WorkView;->mInnerPaint:Landroid/graphics/Paint;

    iget-object p4, p0, Lcom/qianhe/yct/view/WorkView;->mContext:Landroid/content/Context;

    sget p5, Lcom/qianhe/yct/R$color;->red:I

    invoke-static {p4, p5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 634
    new-instance p3, Landroid/graphics/PointF;

    iget p4, p1, Landroid/graphics/PointF;->x:F

    const/high16 p5, 0x41a00000    # 20.0f

    mul-float p4, p4, p5

    iget p1, p1, Landroid/graphics/PointF;->y:F

    neg-float p1, p1

    mul-float p1, p1, p5

    invoke-direct {p3, p4, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p3, p0, Lcom/qianhe/yct/view/WorkView;->currentPoint0:Landroid/graphics/PointF;

    .line 635
    new-instance p1, Landroid/graphics/PointF;

    iget-object p3, p0, Lcom/qianhe/yct/view/WorkView;->currentPoint0:Landroid/graphics/PointF;

    iget p4, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-direct {p1, p4, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/qianhe/yct/view/WorkView;->currentPoint:Landroid/graphics/PointF;

    .line 636
    iget p3, p0, Lcom/qianhe/yct/view/WorkView;->offsetX:F

    const/4 p4, 0x0

    cmpl-float v0, p3, p4

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/qianhe/yct/view/WorkView;->offsetY:F

    cmpl-float v1, v0, p4

    if-eqz v1, :cond_1

    .line 638
    iget v1, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p3

    iget p3, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p3, v0

    invoke-virtual {p1, v1, p3}, Landroid/graphics/PointF;->set(FF)V

    .line 640
    :cond_1
    new-instance p1, Landroid/graphics/PointF;

    iget p3, p2, Landroid/graphics/PointF;->x:F

    mul-float p3, p3, p5

    iget p2, p2, Landroid/graphics/PointF;->y:F

    neg-float p2, p2

    mul-float p2, p2, p5

    invoke-direct {p1, p3, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 641
    new-instance p2, Landroid/graphics/PointF;

    iget p3, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p2, p3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/qianhe/yct/view/WorkView;->currentPointR:Landroid/graphics/PointF;

    .line 642
    iget p1, p0, Lcom/qianhe/yct/view/WorkView;->offsetX:F

    cmpl-float p3, p1, p4

    if-eqz p3, :cond_2

    iget p3, p0, Lcom/qianhe/yct/view/WorkView;->offsetY:F

    cmpl-float p4, p3, p4

    if-eqz p4, :cond_2

    .line 644
    iget p4, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr p4, p1

    iget p1, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p3

    invoke-virtual {p2, p4, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 646
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setPileSpacing(D)V
    .locals 0

    .line 618
    iput-wide p1, p0, Lcom/qianhe/yct/view/WorkView;->pileSpacing:D

    .line 619
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProjectData(Landroid/graphics/PointF;Landroid/graphics/PointF;D)V
    .locals 1

    .line 603
    iput-object p1, p0, Lcom/qianhe/yct/view/WorkView;->pointA0:Landroid/graphics/PointF;

    .line 604
    iput-object p2, p0, Lcom/qianhe/yct/view/WorkView;->pointB0:Landroid/graphics/PointF;

    .line 605
    iput-wide p3, p0, Lcom/qianhe/yct/view/WorkView;->projectWidth:D

    const/4 p3, 0x0

    .line 607
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-virtual {p0, p4, p3}, Landroid/view/View;->measure(II)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 609
    new-instance p3, Landroid/graphics/PointF;

    iget p4, p1, Landroid/graphics/PointF;->x:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float p4, p4, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    neg-float p1, p1

    mul-float p1, p1, v0

    invoke-direct {p3, p4, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p3, p0, Lcom/qianhe/yct/view/WorkView;->point1:Landroid/graphics/PointF;

    .line 610
    new-instance p1, Landroid/graphics/PointF;

    iget p3, p2, Landroid/graphics/PointF;->x:F

    mul-float p3, p3, v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    neg-float p2, p2

    mul-float p2, p2, v0

    invoke-direct {p1, p3, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/qianhe/yct/view/WorkView;->point2:Landroid/graphics/PointF;

    .line 611
    iget-object p1, p0, Lcom/qianhe/yct/view/WorkView;->textPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x41600000    # 14.0f

    invoke-direct {p0, p2}, Lcom/qianhe/yct/view/WorkView;->dpToPx(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 613
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/view/WorkView;->getParentContainerDimensions()V

    return-void
.end method

.method public setUseBitmap(Z)V
    .locals 0

    .line 810
    iput-boolean p1, p0, Lcom/qianhe/yct/view/WorkView;->useBucketIcon:Z

    .line 811
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
