.class public Lcom/qianhe/yct/view/LinePreView;
.super Landroid/view/View;
.source "LinePreView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/view/LinePreView$ScaleListener;
    }
.end annotation


# static fields
.field private static final DRAG:I = 0x1

.field private static final NONE:I = 0x0

.field private static final ZOOM:I = 0x2


# instance fields
.field private final MAX_SCALE:F

.field private final MIN_SCALE:F

.field private baseX:D

.field private baseY:D

.field private carBitmap:Landroid/graphics/Bitmap;

.field private centerX:F

.field private centerY:F

.field private circlePaint:Landroid/graphics/Paint;

.field private currentPoint:Landroid/graphics/PointF;

.field private currentPoint0:Landroid/graphics/PointF;

.field private direction:I

.field private dottedLinePaint:Landroid/graphics/Paint;

.field private final lastPoint:[F

.field private linePaint:Landroid/graphics/Paint;

.field private mAlpha:I

.field private mBreathAnimator:Landroid/animation/ValueAnimator;

.field private mOuterPaint:Landroid/graphics/Paint;

.field private mOuterRadius:F

.field private final mScale:F

.field private final matrix:Landroid/graphics/Matrix;

.field private final matrixValues:[F

.field private mode:I

.field private offsetX:F

.field private offsetY:F

.field private point1:Landroid/graphics/PointF;

.field private point2:Landroid/graphics/PointF;

.field private pointA0:Landroid/graphics/PointF;

.field private pointB0:Landroid/graphics/PointF;

.field private final savedMatrix:Landroid/graphics/Matrix;

.field private startDistance:F

.field private textPaint:Landroid/graphics/Paint;

.field private useExcavatorIcon:Z


# direct methods
.method public static synthetic $r8$lambda$lcwe0QWcsqtfiMD_1O4Uw94SF6E(Lcom/qianhe/yct/view/LinePreView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
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

    .line 401
    :cond_0
    invoke-direct {p0, p2}, Lcom/qianhe/yct/view/LinePreView;->spacing(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/view/LinePreView;->startDistance:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_7

    .line 403
    iget-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 404
    iget-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->lastPoint:[F

    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/view/LinePreView;->midPoint([FLandroid/view/MotionEvent;)V

    .line 405
    iput v3, p0, Lcom/qianhe/yct/view/LinePreView;->mode:I

    goto/16 :goto_0

    .line 409
    :cond_1
    iget p1, p0, Lcom/qianhe/yct/view/LinePreView;->mode:I

    if-ne p1, v1, :cond_2

    .line 410
    iget-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/qianhe/yct/view/LinePreView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 411
    iget-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/qianhe/yct/view/LinePreView;->lastPoint:[F

    aget v0, v3, v0

    sub-float/2addr v2, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->lastPoint:[F

    aget v0, v0, v1

    sub-float/2addr p2, v0

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_7

    .line 413
    invoke-direct {p0, p2}, Lcom/qianhe/yct/view/LinePreView;->spacing(Landroid/view/MotionEvent;)F

    move-result p1

    cmpl-float p2, p1, v2

    if-lez p2, :cond_7

    .line 415
    iget-object p2, p0, Lcom/qianhe/yct/view/LinePreView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/qianhe/yct/view/LinePreView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 416
    iget p2, p0, Lcom/qianhe/yct/view/LinePreView;->startDistance:F

    div-float/2addr p1, p2

    .line 418
    iget-object p2, p0, Lcom/qianhe/yct/view/LinePreView;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p2}, Lcom/qianhe/yct/view/LinePreView;->getMatrixScale(Landroid/graphics/Matrix;)F

    move-result p2

    mul-float v2, p2, p1

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_3

    .line 422
    iget-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->matrix:Landroid/graphics/Matrix;

    div-float/2addr v3, p2

    iget-object p2, p0, Lcom/qianhe/yct/view/LinePreView;->lastPoint:[F

    aget v0, p2, v0

    aget p2, p2, v1

    invoke-virtual {p1, v3, v3, v0, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    :cond_3
    const/high16 v3, 0x43480000    # 200.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 424
    iget-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->matrix:Landroid/graphics/Matrix;

    div-float/2addr v3, p2

    iget-object p2, p0, Lcom/qianhe/yct/view/LinePreView;->lastPoint:[F

    aget v0, p2, v0

    aget p2, p2, v1

    invoke-virtual {p1, v3, v3, v0, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    .line 426
    :cond_4
    iget-object p2, p0, Lcom/qianhe/yct/view/LinePreView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/qianhe/yct/view/LinePreView;->lastPoint:[F

    aget v0, v2, v0

    aget v2, v2, v1

    invoke-virtual {p2, p1, p1, v0, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    .line 433
    :cond_5
    iput v0, p0, Lcom/qianhe/yct/view/LinePreView;->mode:I

    goto :goto_0

    .line 395
    :cond_6
    iget-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/qianhe/yct/view/LinePreView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 396
    iget-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->lastPoint:[F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, p1, v0

    .line 397
    iget-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->lastPoint:[F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    aput p2, p1, v1

    .line 398
    iput v1, p0, Lcom/qianhe/yct/view/LinePreView;->mode:I

    .line 436
    :cond_7
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1
.end method

.method static bridge synthetic -$$Nest$fgetcenterX(Lcom/qianhe/yct/view/LinePreView;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/view/LinePreView;->centerX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcenterY(Lcom/qianhe/yct/view/LinePreView;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/view/LinePreView;->centerY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentPoint(Lcom/qianhe/yct/view/LinePreView;)Landroid/graphics/PointF;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/view/LinePreView;->currentPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmatrix(Lcom/qianhe/yct/view/LinePreView;)Landroid/graphics/Matrix;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/view/LinePreView;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoffsetX(Lcom/qianhe/yct/view/LinePreView;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/view/LinePreView;->offsetX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetoffsetY(Lcom/qianhe/yct/view/LinePreView;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/view/LinePreView;->offsetY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpoint1(Lcom/qianhe/yct/view/LinePreView;)Landroid/graphics/PointF;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/view/LinePreView;->point1:Landroid/graphics/PointF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpoint2(Lcom/qianhe/yct/view/LinePreView;)Landroid/graphics/PointF;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/view/LinePreView;->point2:Landroid/graphics/PointF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcenterX(Lcom/qianhe/yct/view/LinePreView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/view/LinePreView;->centerX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcenterY(Lcom/qianhe/yct/view/LinePreView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/view/LinePreView;->centerY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoffsetX(Lcom/qianhe/yct/view/LinePreView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/view/LinePreView;->offsetX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoffsetY(Lcom/qianhe/yct/view/LinePreView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/view/LinePreView;->offsetY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/view/LinePreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/qianhe/yct/view/LinePreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->matrix:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    .line 32
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->matrixValues:[F

    .line 33
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->savedMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x2

    .line 34
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->lastPoint:[F

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/qianhe/yct/view/LinePreView;->mode:I

    const/high16 p2, 0x42480000    # 50.0f

    .line 49
    iput p2, p0, Lcom/qianhe/yct/view/LinePreView;->mScale:F

    const p2, 0x3c23d70a    # 0.01f

    .line 50
    iput p2, p0, Lcom/qianhe/yct/view/LinePreView;->MIN_SCALE:F

    const/high16 p2, 0x43480000    # 200.0f

    .line 51
    iput p2, p0, Lcom/qianhe/yct/view/LinePreView;->MAX_SCALE:F

    .line 59
    iput-boolean p1, p0, Lcom/qianhe/yct/view/LinePreView;->useExcavatorIcon:Z

    .line 60
    iput p1, p0, Lcom/qianhe/yct/view/LinePreView;->direction:I

    .line 74
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 76
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/view/LinePreView;->init()V

    return-void
.end method

.method private calculateRotationAngle()F
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->point1:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/view/LinePreView;->point2:Landroid/graphics/PointF;

    if-eqz v1, :cond_1

    .line 373
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    .line 374
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    float-to-double v2, v2

    .line 377
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    .line 380
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v1, v0

    .line 383
    iget v0, p0, Lcom/qianhe/yct/view/LinePreView;->direction:I

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

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private drawDashedSegment(Landroid/graphics/Canvas;FFFF)V
    .locals 10

    sub-float/2addr p4, p2

    float-to-double v0, p4

    sub-float/2addr p5, p3

    float-to-double v2, p5

    .line 188
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    .line 189
    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/LinePreView;->dpToPx(F)F

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {p0, v3}, Lcom/qianhe/yct/view/LinePreView;->dpToPx(F)F

    move-result v3

    add-float/2addr v2, v3

    div-float v3, v0, v2

    float-to-int v3, v3

    .line 191
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    int-to-float v6, v5

    mul-float v6, v6, v2

    .line 194
    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/LinePreView;->dpToPx(F)F

    move-result v7

    add-float/2addr v7, v6

    cmpl-float v8, v7, v0

    if-lez v8, :cond_0

    move v7, v0

    :cond_0
    mul-float v8, p4, v6

    div-float/2addr v8, v0

    add-float/2addr v8, p2

    mul-float v6, v6, p5

    div-float/2addr v6, v0

    add-float/2addr v6, p3

    mul-float v9, p4, v7

    div-float/2addr v9, v0

    add-float/2addr v9, p2

    mul-float v7, v7, p5

    div-float/2addr v7, v0

    add-float/2addr v7, p3

    .line 200
    invoke-virtual {v4, v8, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 201
    invoke-virtual {v4, v9, v7}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 203
    :cond_1
    iget-object p2, p0, Lcom/qianhe/yct/view/LinePreView;->dottedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawHorizontalText(Landroid/graphics/Canvas;Ljava/lang/String;FF)V
    .locals 4

    .line 356
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 357
    iget-object v1, p0, Lcom/qianhe/yct/view/LinePreView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 359
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 360
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v0, v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr v0, v1

    .line 363
    iget-object v1, p0, Lcom/qianhe/yct/view/LinePreView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 364
    const-string v3, "A"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    neg-float v1, v1

    div-float/2addr v1, v2

    :goto_0
    sub-float/2addr p3, v1

    add-float/2addr p4, v0

    .line 366
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getMatrixScale(Landroid/graphics/Matrix;)F
    .locals 1

    const/16 v0, 0x9

    .line 442
    new-array v0, v0, [F

    .line 443
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p1, 0x0

    .line 444
    aget p1, v0, p1

    return p1
.end method

.method private getParentContainerDimensions()V
    .locals 1

    .line 232
    new-instance v0, Lcom/qianhe/yct/view/LinePreView$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/view/LinePreView$1;-><init>(Lcom/qianhe/yct/view/LinePreView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private init()V
    .locals 7

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$mipmap;->icon_app:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->carBitmap:Landroid/graphics/Bitmap;

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->linePaint:Landroid/graphics/Paint;

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$color;->red:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->linePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/LinePreView;->dpToPx(F)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->linePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->linePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->dottedLinePaint:Landroid/graphics/Paint;

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/qianhe/yct/R$color;->map_line:I

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->dottedLinePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/LinePreView;->dpToPx(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->dottedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->dottedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 94
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->dottedLinePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {p0, v3}, Lcom/qianhe/yct/view/LinePreView;->dpToPx(F)F

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-direct {p0, v4}, Lcom/qianhe/yct/view/LinePreView;->dpToPx(F)F

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    aput v4, v5, v1

    const/4 v3, 0x0

    invoke-direct {v2, v5, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 96
    invoke-direct {p0}, Lcom/qianhe/yct/view/LinePreView;->initCircleParam()V

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->textPaint:Landroid/graphics/Paint;

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$color;->red:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    invoke-direct {p0}, Lcom/qianhe/yct/view/LinePreView;->initTouchListener()V

    return-void
.end method

.method private initCircleParam()V
    .locals 4

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->mOuterPaint:Landroid/graphics/Paint;

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$color;->red_alpha:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->mOuterPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->circlePaint:Landroid/graphics/Paint;

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/qianhe/yct/R$color;->red:I

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private initTouchListener()V
    .locals 4

    .line 390
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/view/LinePreView$ScaleListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/qianhe/yct/view/LinePreView$ScaleListener;-><init>(Lcom/qianhe/yct/view/LinePreView;Lcom/qianhe/yct/view/LinePreView-IA;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 392
    new-instance v0, Lcom/qianhe/yct/view/LinePreView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/view/LinePreView$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/view/LinePreView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private midPoint([FLandroid/view/MotionEvent;)V
    .locals 4

    const/4 v0, 0x0

    .line 454
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    .line 455
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    add-float/2addr v3, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v1, p2

    .line 456
    aput v1, p1, v0

    div-float/2addr v3, p2

    .line 457
    aput v3, p1, v2

    return-void
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    .line 448
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 449
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 450
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method public isUseExcavatorIcon()Z
    .locals 1

    .line 490
    iget-boolean v0, p0, Lcom/qianhe/yct/view/LinePreView;->useExcavatorIcon:Z

    return v0
.end method

.method public locateToStartPoint()V
    .locals 5

    .line 281
    iget v0, p0, Lcom/qianhe/yct/view/LinePreView;->centerX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qianhe/yct/view/LinePreView;->centerY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->pointA0:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->pointB0:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->currentPoint0:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    .line 283
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/qianhe/yct/view/LinePreView;->pointA0:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x42480000    # 50.0f

    mul-float v2, v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    mul-float v1, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->point1:Landroid/graphics/PointF;

    .line 284
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/qianhe/yct/view/LinePreView;->pointB0:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    mul-float v1, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->point2:Landroid/graphics/PointF;

    .line 286
    iget v0, p0, Lcom/qianhe/yct/view/LinePreView;->centerX:F

    iget-object v1, p0, Lcom/qianhe/yct/view/LinePreView;->point1:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/qianhe/yct/view/LinePreView;->offsetX:F

    .line 287
    iget v3, p0, Lcom/qianhe/yct/view/LinePreView;->centerY:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/qianhe/yct/view/LinePreView;->offsetY:F

    add-float/2addr v2, v0

    add-float/2addr v4, v3

    .line 288
    invoke-virtual {v1, v2, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 289
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->point2:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/qianhe/yct/view/LinePreView;->offsetX:F

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/qianhe/yct/view/LinePreView;->offsetY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 290
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->currentPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/qianhe/yct/view/LinePreView;->currentPoint0:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/qianhe/yct/view/LinePreView;->offsetX:F

    add-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/qianhe/yct/view/LinePreView;->offsetY:F

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 291
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/qianhe/yct/view/LinePreView;->point1:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 292
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 119
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 120
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->mBreathAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 125
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 126
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->mBreathAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 155
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 157
    iget-object v1, p0, Lcom/qianhe/yct/view/LinePreView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/qianhe/yct/view/LinePreView;->matrixValues:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    const/high16 v1, 0x40a00000    # 5.0f

    .line 159
    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/LinePreView;->dpToPx(F)F

    move-result v2

    .line 161
    iget-object v3, p0, Lcom/qianhe/yct/view/LinePreView;->point1:Landroid/graphics/PointF;

    const-string v4, "A"

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x42340000    # 45.0f

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    .line 162
    invoke-direct {p0, v6}, Lcom/qianhe/yct/view/LinePreView;->dpToPx(F)F

    move-result v3

    .line 163
    iget-object v8, p0, Lcom/qianhe/yct/view/LinePreView;->point1:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    add-float/2addr v8, v9

    .line 165
    iget-object v9, p0, Lcom/qianhe/yct/view/LinePreView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v8, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sub-float v9, v3, v2

    .line 166
    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/LinePreView;->dpToPx(F)F

    move-result v10

    sub-float/2addr v9, v10

    invoke-direct {p0, p1, v4, v9, v8}, Lcom/qianhe/yct/view/LinePreView;->drawHorizontalText(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 168
    :goto_0
    iget-object v9, p0, Lcom/qianhe/yct/view/LinePreView;->point2:Landroid/graphics/PointF;

    if-eqz v9, :cond_1

    .line 169
    iget v9, v9, Landroid/graphics/PointF;->x:F

    cmpl-float v9, v9, v7

    if-eqz v9, :cond_1

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {p0, v6}, Lcom/qianhe/yct/view/LinePreView;->dpToPx(F)F

    move-result v6

    sub-float/2addr v9, v6

    .line 171
    iget-object v6, p0, Lcom/qianhe/yct/view/LinePreView;->point2:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v5

    add-float/2addr v6, v10

    .line 172
    iget-object v5, p0, Lcom/qianhe/yct/view/LinePreView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/qianhe/yct/R$color;->green:I

    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget-object v5, p0, Lcom/qianhe/yct/view/LinePreView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/qianhe/yct/R$color;->green:I

    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v5, p0, Lcom/qianhe/yct/view/LinePreView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/qianhe/yct/R$color;->green:I

    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    iget-object v5, p0, Lcom/qianhe/yct/view/LinePreView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v8, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sub-float v5, v3, v2

    .line 177
    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/LinePreView;->dpToPx(F)F

    move-result v10

    sub-float/2addr v5, v10

    invoke-direct {p0, p1, v4, v5, v8}, Lcom/qianhe/yct/view/LinePreView;->drawHorizontalText(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    .line 179
    iget-object v4, p0, Lcom/qianhe/yct/view/LinePreView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v6, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-float/2addr v2, v9

    .line 180
    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/LinePreView;->dpToPx(F)F

    move-result v1

    add-float/2addr v2, v1

    const-string v1, "B"

    invoke-direct {p0, p1, v1, v2, v6}, Lcom/qianhe/yct/view/LinePreView;->drawHorizontalText(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    cmpl-float v1, v3, v7

    if-eqz v1, :cond_1

    .line 181
    iget-object v5, p0, Lcom/qianhe/yct/view/LinePreView;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v3

    move v4, v6

    move v2, v8

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    const/high16 v0, 0x42700000    # 60.0f

    .line 132
    invoke-direct {p0, v0}, Lcom/qianhe/yct/view/LinePreView;->dpToPx(F)F

    move-result v0

    float-to-double v0, v0

    .line 133
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 136
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 137
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    .line 143
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 149
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 150
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public resetLocation()V
    .locals 4

    .line 261
    iget v0, p0, Lcom/qianhe/yct/view/LinePreView;->centerX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qianhe/yct/view/LinePreView;->centerY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->pointA0:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->pointB0:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/qianhe/yct/view/LinePreView;->pointA0:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x42480000    # 50.0f

    mul-float v2, v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    mul-float v1, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->point1:Landroid/graphics/PointF;

    .line 264
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/qianhe/yct/view/LinePreView;->pointB0:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    mul-float v1, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->point2:Landroid/graphics/PointF;

    .line 266
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->currentPoint0:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    .line 267
    iget v1, p0, Lcom/qianhe/yct/view/LinePreView;->centerX:F

    iget v2, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/qianhe/yct/view/LinePreView;->offsetX:F

    .line 268
    iget v2, p0, Lcom/qianhe/yct/view/LinePreView;->centerY:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/qianhe/yct/view/LinePreView;->offsetY:F

    .line 269
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->point1:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v1

    iget v1, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 270
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->point2:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/qianhe/yct/view/LinePreView;->offsetX:F

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/qianhe/yct/view/LinePreView;->offsetY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 271
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->currentPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/qianhe/yct/view/LinePreView;->currentPoint0:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/qianhe/yct/view/LinePreView;->offsetX:F

    add-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/qianhe/yct/view/LinePreView;->offsetY:F

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 272
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/qianhe/yct/view/LinePreView;->centerX:F

    iget v2, p0, Lcom/qianhe/yct/view/LinePreView;->centerY:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 273
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public resfreshDirection(I)V
    .locals 0

    .line 461
    iput p1, p0, Lcom/qianhe/yct/view/LinePreView;->direction:I

    .line 462
    invoke-virtual {p0}, Lcom/qianhe/yct/view/LinePreView;->locateToStartPoint()V

    return-void
.end method

.method public setLocationPoint([DZ)V
    .locals 6

    .line 336
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    iget-wide v3, p0, Lcom/qianhe/yct/view/LinePreView;->baseX:D

    sub-double/2addr v1, v3

    double-to-float v1, v1

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    iget-wide v4, p0, Lcom/qianhe/yct/view/LinePreView;->baseY:D

    sub-double/2addr v2, v4

    double-to-float p1, v2

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    if-eqz p2, :cond_0

    .line 338
    iget-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/qianhe/yct/R$color;->theme_alpha:I

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 339
    iget-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/qianhe/yct/R$color;->theme:I

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 341
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/qianhe/yct/R$color;->red_alpha:I

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 342
    iget-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/qianhe/yct/R$color;->red:I

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    :goto_0
    new-instance p1, Landroid/graphics/PointF;

    iget p2, v0, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x42480000    # 50.0f

    mul-float p2, p2, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    mul-float v0, v0, v1

    invoke-direct {p1, p2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->currentPoint0:Landroid/graphics/PointF;

    .line 345
    new-instance p1, Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/qianhe/yct/view/LinePreView;->currentPoint0:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {p1, v0, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->currentPoint:Landroid/graphics/PointF;

    .line 346
    iget p2, p0, Lcom/qianhe/yct/view/LinePreView;->offsetX:F

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/qianhe/yct/view/LinePreView;->offsetY:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_1

    .line 348
    iget v0, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, p2

    iget p2, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 349
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setPointA([D)V
    .locals 8

    const/4 v0, 0x0

    .line 299
    aget-wide v1, p1, v0

    iput-wide v1, p0, Lcom/qianhe/yct/view/LinePreView;->baseX:D

    const/4 v1, 0x1

    .line 300
    aget-wide v2, p1, v1

    iput-wide v2, p0, Lcom/qianhe/yct/view/LinePreView;->baseY:D

    .line 302
    new-instance v2, Landroid/graphics/PointF;

    aget-wide v3, p1, v0

    iget-wide v5, p0, Lcom/qianhe/yct/view/LinePreView;->baseX:D

    sub-double/2addr v3, v5

    double-to-float v3, v3

    aget-wide v4, p1, v1

    iget-wide v6, p0, Lcom/qianhe/yct/view/LinePreView;->baseY:D

    sub-double/2addr v4, v6

    double-to-float p1, v4

    invoke-direct {v2, v3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/qianhe/yct/view/LinePreView;->pointA0:Landroid/graphics/PointF;

    .line 304
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->measure(II)V

    .line 305
    iget-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->pointA0:Landroid/graphics/PointF;

    if-eqz p1, :cond_0

    .line 306
    new-instance p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView;->pointA0:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x42480000    # 50.0f

    mul-float v1, v1, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    mul-float v0, v0, v2

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->point1:Landroid/graphics/PointF;

    .line 307
    iget-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->textPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-direct {p0, v0}, Lcom/qianhe/yct/view/LinePreView;->dpToPx(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public setPointAB([D[D)V
    .locals 8

    const/4 v0, 0x0

    .line 313
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_0

    aget-wide v1, p2, v0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    .line 314
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/view/LinePreView;->setPointA([D)V

    .line 316
    :cond_0
    aget-wide v1, p2, v0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_2

    .line 317
    aget-wide v1, p1, v0

    iput-wide v1, p0, Lcom/qianhe/yct/view/LinePreView;->baseX:D

    const/4 v1, 0x1

    .line 318
    aget-wide v2, p1, v1

    iput-wide v2, p0, Lcom/qianhe/yct/view/LinePreView;->baseY:D

    .line 320
    new-instance v2, Landroid/graphics/PointF;

    aget-wide v3, p1, v0

    iget-wide v5, p0, Lcom/qianhe/yct/view/LinePreView;->baseX:D

    sub-double/2addr v3, v5

    double-to-float v3, v3

    aget-wide v4, p1, v1

    iget-wide v6, p0, Lcom/qianhe/yct/view/LinePreView;->baseY:D

    sub-double/2addr v4, v6

    double-to-float p1, v4

    invoke-direct {v2, v3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/qianhe/yct/view/LinePreView;->pointA0:Landroid/graphics/PointF;

    .line 321
    new-instance p1, Landroid/graphics/PointF;

    aget-wide v2, p2, v0

    iget-wide v4, p0, Lcom/qianhe/yct/view/LinePreView;->baseX:D

    sub-double/2addr v2, v4

    double-to-float v2, v2

    aget-wide v3, p2, v1

    iget-wide v5, p0, Lcom/qianhe/yct/view/LinePreView;->baseY:D

    sub-double/2addr v3, v5

    double-to-float p2, v3

    invoke-direct {p1, v2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->pointB0:Landroid/graphics/PointF;

    .line 323
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 324
    iget-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->pointA0:Landroid/graphics/PointF;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->pointB0:Landroid/graphics/PointF;

    if-eqz p1, :cond_1

    .line 325
    new-instance p1, Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/qianhe/yct/view/LinePreView;->pointA0:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x42480000    # 50.0f

    mul-float v0, v0, v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    neg-float p2, p2

    mul-float p2, p2, v1

    invoke-direct {p1, v0, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->point1:Landroid/graphics/PointF;

    .line 326
    new-instance p1, Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/qianhe/yct/view/LinePreView;->pointB0:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    mul-float v0, v0, v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    neg-float p2, p2

    mul-float p2, p2, v1

    invoke-direct {p1, v0, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->point2:Landroid/graphics/PointF;

    .line 327
    iget-object p1, p0, Lcom/qianhe/yct/view/LinePreView;->textPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x41600000    # 14.0f

    invoke-direct {p0, p2}, Lcom/qianhe/yct/view/LinePreView;->dpToPx(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 329
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setUseExcavatorIcon(Z)V
    .locals 0

    .line 480
    iput-boolean p1, p0, Lcom/qianhe/yct/view/LinePreView;->useExcavatorIcon:Z

    .line 481
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
