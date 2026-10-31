.class public Lcom/qianhe/yct/view/BucketIndicatorView;
.super Landroid/view/View;
.source "BucketIndicatorView.java"


# static fields
.field private static final DEFAULT_DOT_COLOR:I = -0x10000

.field private static final DEFAULT_TEXT_COLOR:I = -0x1000000

.field private static final DEFAULT_TEXT_SIZE_CM:F = 0.3f

.field private static final MAX_OFFSET_RATIO:F = 3.0f

.field private static final RESET_DELAY:I = 0x3e8


# instance fields
.field private mContentPadding:F

.field private mDiffText:Ljava/lang/String;

.field private mDotPaint:Landroid/graphics/Paint;

.field private mDotRadius:F

.field private mDotX:F

.field private mDotY:F

.field private mHandler:Landroid/os/Handler;

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private mIconMatrix:Landroid/graphics/Matrix;

.field private mIconWidthCm:D

.field private mIconX:F

.field private mIconXOffset:D

.field private mIconY:F

.field private final mResetOffsetScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mScaledIconHeight:F

.field private mScaledIconWidth:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mTextX:F

.field private mTextY:F

.field private mTotalContentHeight:F

.field private mTotalContentWidth:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmResetOffsetScheduled(Lcom/qianhe/yct/view/BucketIndicatorView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mResetOffsetScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresetIconPosition(Lcom/qianhe/yct/view/BucketIndicatorView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/view/BucketIndicatorView;->resetIconPosition()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 36
    iput-wide v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconWidthCm:D

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mDiffText:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconXOffset:D

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mResetOffsetScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/view/BucketIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 36
    iput-wide v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconWidthCm:D

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mDiffText:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconXOffset:D

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mResetOffsetScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/view/BucketIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 36
    iput-wide v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconWidthCm:D

    .line 42
    const-string p3, ""

    iput-object p3, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mDiffText:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconXOffset:D

    .line 45
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mResetOffsetScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/view/BucketIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private calculateContentDimensions()V
    .locals 4

    .line 291
    iget v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mScaledIconWidth:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v1, v1, v0

    .line 292
    iget v2, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mDotRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    .line 293
    iget v1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mContentPadding:F

    mul-float v2, v1, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mTotalContentWidth:F

    .line 296
    iget v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mScaledIconHeight:F

    add-float/2addr v0, v1

    const/4 v2, 0x0

    add-float/2addr v0, v2

    iget v2, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mDotRadius:F

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    add-float/2addr v0, v1

    iget v2, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mTextSize:F

    add-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mTotalContentHeight:F

    return-void
.end method

.method private cmToPixels(Landroid/content/Context;F)F
    .locals 0

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 255
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    mul-float p2, p2, p1

    const p1, 0x40228f5c    # 2.54f

    div-float/2addr p2, p1

    return p2
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 68
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mDotPaint:Landroid/graphics/Paint;

    .line 69
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mTextPaint:Landroid/graphics/Paint;

    .line 71
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 74
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconMatrix:Landroid/graphics/Matrix;

    .line 77
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mHandler:Landroid/os/Handler;

    .line 81
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$drawable;->icon_bucket:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :catch_0
    iget-object p2, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mDotPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object p2, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const p2, 0x3e99999a    # 0.3f

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/view/BucketIndicatorView;->cmToPixels(Landroid/content/Context;F)F

    move-result p2

    iput p2, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mTextSize:F

    .line 90
    iget-object v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    const p2, 0x3e4ccccd    # 0.2f

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/view/BucketIndicatorView;->cmToPixels(Landroid/content/Context;F)F

    move-result p2

    iput p2, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mContentPadding:F

    .line 94
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/BucketIndicatorView;->updateIconDimensions(Landroid/content/Context;)V

    return-void
.end method

.method private pixelsToCm(Landroid/content/Context;F)F
    .locals 1

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const v0, 0x40228f5c    # 2.54f

    mul-float p2, p2, v0

    .line 263
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    return p2
.end method

.method private resetIconPosition()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 345
    iput-wide v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconXOffset:D

    .line 346
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private scheduleResetOffset()V
    .locals 4

    .line 330
    iget-object v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mResetOffsetScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qianhe/yct/view/BucketIndicatorView$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/view/BucketIndicatorView$1;-><init>(Lcom/qianhe/yct/view/BucketIndicatorView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private updateElementPositions()V
    .locals 5

    .line 303
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 304
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 311
    iget v3, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mTotalContentHeight:F

    div-float/2addr v3, v2

    .line 314
    iget v4, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mScaledIconWidth:F

    div-float/2addr v4, v2

    sub-float v4, v0, v4

    iput v4, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconX:F

    sub-float/2addr v1, v3

    .line 315
    iget v3, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mContentPadding:F

    add-float/2addr v1, v3

    iput v1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconY:F

    .line 318
    iput v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mDotX:F

    .line 319
    iget v4, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mScaledIconHeight:F

    add-float/2addr v1, v4

    iget v4, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mDotRadius:F

    div-float v2, v4, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mDotY:F

    .line 322
    iput v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mTextX:F

    add-float/2addr v1, v4

    add-float/2addr v1, v3

    .line 323
    iget v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mTextSize:F

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v0, v0, v2

    add-float/2addr v1, v0

    iput v1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mTextY:F

    return-void
.end method

.method private updateIconDimensions(Landroid/content/Context;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 271
    iput v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mScaledIconWidth:F

    .line 272
    iput v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mScaledIconHeight:F

    const v0, 0x3e4ccccd    # 0.2f

    .line 273
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/view/BucketIndicatorView;->cmToPixels(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mDotRadius:F

    return-void

    .line 278
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mScaledIconWidth:F

    .line 279
    iget-object p1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mScaledIconHeight:F

    .line 280
    iget-object p1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 283
    iget p1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mScaledIconWidth:F

    const v0, 0x3dcccccd    # 0.1f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mDotRadius:F

    return-void
.end method


# virtual methods
.method public getContentPadding()F
    .locals 2

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mContentPadding:F

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/view/BucketIndicatorView;->pixelsToCm(Landroid/content/Context;F)F

    move-result v0

    return v0
.end method

.method public getIconWidth()D
    .locals 2

    .line 151
    iget-wide v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconWidthCm:D

    return-wide v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 351
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 353
    iget-object v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 354
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 119
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 122
    iget-object v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mScaledIconWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mScaledIconHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 124
    iget v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconX:F

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconXOffset:D

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 125
    iget-object v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 130
    :cond_0
    iget v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mDotX:F

    iget v1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mDotY:F

    iget v2, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mDotRadius:F

    iget-object v3, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 133
    iget-object v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mDiffText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mDiffText:Ljava/lang/String;

    iget v1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mTextX:F

    iget v2, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mTextY:F

    iget-object v3, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 111
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/qianhe/yct/view/BucketIndicatorView;->updateElementPositions()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 100
    invoke-direct {p0}, Lcom/qianhe/yct/view/BucketIndicatorView;->calculateContentDimensions()V

    .line 103
    iget v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mTotalContentWidth:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    .line 104
    iget v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mTotalContentHeight:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 106
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setContentPadding(F)V
    .locals 1

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/view/BucketIndicatorView;->cmToPixels(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mContentPadding:F

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setDiffValue(ID)V
    .locals 1

    const/4 v0, 0x1

    .line 201
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qianhe/yct/view/BucketIndicatorView;->setDiffValue(IDZ)V

    return-void
.end method

.method public setDiffValue(IDZ)V
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-eqz p4, :cond_0

    .line 208
    sget v1, Lcom/qianhe/yct/R$color;->green:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/qianhe/yct/R$color;->red_dark:I

    :goto_0
    invoke-virtual {p0, v1}, Lcom/qianhe/yct/view/BucketIndicatorView;->setDotColor(I)V

    if-nez p1, :cond_1

    if-eqz p4, :cond_1

    .line 209
    sget v1, Lcom/qianhe/yct/R$color;->green:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/qianhe/yct/R$color;->red_dark:I

    :goto_1
    invoke-virtual {p0, v1}, Lcom/qianhe/yct/view/BucketIndicatorView;->setTextColor(I)V

    if-ne p1, v0, :cond_2

    neg-double p2, p2

    :cond_2
    if-eqz p4, :cond_3

    .line 212
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const-string p4, "%.0fcm"

    invoke-static {p1, p4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p4, Lcom/qianhe/yct/R$string;->data_unavailable:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mDiffText:Ljava/lang/String;

    .line 218
    iget-wide v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconWidthCm:D

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_4

    :goto_3
    div-double/2addr p2, v0

    goto :goto_4

    :cond_4
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    goto :goto_3

    .line 227
    :goto_4
    iget p1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mScaledIconWidth:F

    float-to-double v0, p1

    mul-double p2, p2, v0

    const/high16 p4, 0x40400000    # 3.0f

    mul-float p1, p1, p4

    neg-float p4, p1

    float-to-double v0, p4

    .line 231
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    float-to-double v0, p1

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconXOffset:D

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDotColor(I)V
    .locals 1

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 176
    iget-object v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIconResource(I)V
    .locals 1

    .line 241
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 242
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/BucketIndicatorView;->updateIconDimensions(Landroid/content/Context;)V

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setIconWidth(D)V
    .locals 0

    .line 142
    iput-wide p1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mIconWidthCm:D

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/BucketIndicatorView;->updateIconDimensions(Landroid/content/Context;)V

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 187
    iget-object v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/view/BucketIndicatorView;->cmToPixels(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mTextSize:F

    .line 196
    iget-object v0, p0, Lcom/qianhe/yct/view/BucketIndicatorView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
