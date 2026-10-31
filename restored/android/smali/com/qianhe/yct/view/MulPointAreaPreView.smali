.class public Lcom/qianhe/yct/view/MulPointAreaPreView;
.super Landroid/view/View;
.source "MulPointAreaPreView.java"


# static fields
.field private static final DRAG:I = 0x1

.field private static final NONE:I = 0x0

.field private static final ZOOM:I = 0x2


# instance fields
.field private INITSCALE:D

.field private final baseBoundaryCoords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private bucketBitmap:Landroid/graphics/Bitmap;

.field private final coordsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private currentPoint:[D

.field private gaussL:[D

.field private gaussR:[D

.field private isManualOperated:Z

.field private isWorkMode:Z

.field private final lastFingerPos1:[F

.field private final lastFingerPos2:[F

.field private lastTouchX:F

.field private lastTouchY:F

.field private linePaint:Landroid/graphics/Paint;

.field private mode:I

.field private offsetX:D

.field private offsetY:D

.field private pointPaint:Landroid/graphics/Paint;

.field private scaleRatio:D

.field private smoothedDist:F

.field private textPaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$-EAgANe-UboxBcL7THqTvF_Q_8I(Lcom/qianhe/yct/view/MulPointAreaPreView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/view/MulPointAreaPreView;->updateContentBounds()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/view/MulPointAreaPreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/qianhe/yct/view/MulPointAreaPreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x0

    .line 36
    iput-wide p1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->offsetX:D

    .line 37
    iput-wide p1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->offsetY:D

    const/4 p1, 0x2

    .line 40
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->lastFingerPos1:[F

    .line 41
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->lastFingerPos2:[F

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->mode:I

    .line 46
    iput-boolean p1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->isManualOperated:Z

    .line 48
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->coordsList:Ljava/util/List;

    .line 49
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->baseBoundaryCoords:Ljava/util/List;

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 51
    iput-wide p2, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->INITSCALE:D

    .line 52
    iput-wide p2, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->scaleRatio:D

    .line 53
    iput-boolean p1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->isWorkMode:Z

    const/4 p1, 0x3

    .line 55
    new-array p2, p1, [D

    iput-object p2, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->gaussL:[D

    new-array p1, p1, [D

    iput-object p1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->gaussR:[D

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->smoothedDist:F

    .line 71
    invoke-direct {p0}, Lcom/qianhe/yct/view/MulPointAreaPreView;->init()V

    return-void
.end method

.method private dpToPx(F)F
    .locals 2

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private drawBucket(Landroid/graphics/Canvas;)V
    .locals 8

    .line 317
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->bucketBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->gaussL:[D

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->gaussR:[D

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 319
    aget-wide v2, v0, v1

    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/view/MulPointAreaPreView;->getScreenX(D)F

    move-result v0

    .line 320
    iget-object v2, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->gaussL:[D

    const/4 v3, 0x1

    aget-wide v4, v2, v3

    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/view/MulPointAreaPreView;->getScreenY(D)F

    move-result v2

    .line 321
    iget-object v4, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->gaussR:[D

    aget-wide v5, v4, v1

    invoke-direct {p0, v5, v6}, Lcom/qianhe/yct/view/MulPointAreaPreView;->getScreenX(D)F

    move-result v1

    .line 322
    iget-object v4, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->gaussR:[D

    aget-wide v3, v4, v3

    invoke-direct {p0, v3, v4}, Lcom/qianhe/yct/view/MulPointAreaPreView;->getScreenY(D)F

    move-result v3

    sub-float/2addr v1, v0

    sub-float/2addr v3, v2

    float-to-double v4, v3

    float-to-double v6, v1

    .line 326
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v1, v1, v1

    mul-float v3, v3, v3

    add-float/2addr v1, v3

    float-to-double v5, v1

    .line 327
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v1, v5

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v5, v1, v3

    if-gez v5, :cond_1

    goto :goto_2

    .line 331
    :cond_1
    iget v5, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->smoothedDist:F

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-eqz v7, :cond_3

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v7, 0x42c80000    # 100.0f

    cmpl-float v5, v5, v7

    if-lez v5, :cond_2

    goto :goto_0

    .line 334
    :cond_2
    iget v5, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->smoothedDist:F

    const v7, 0x3f666666    # 0.9f

    mul-float v5, v5, v7

    mul-float v1, v1, v3

    add-float/2addr v5, v1

    iput v5, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->smoothedDist:F

    goto :goto_1

    .line 332
    :cond_3
    :goto_0
    iput v1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->smoothedDist:F

    .line 337
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 338
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 339
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 340
    iget v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->smoothedDist:F

    .line 341
    iget-object v1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->bucketBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->bucketBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float v1, v1, v0

    .line 342
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v6, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 343
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->bucketBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 344
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    :goto_2
    return-void
.end method

.method private drawScaleBar(Landroid/graphics/Canvas;)V
    .locals 9

    const/high16 v0, 0x42200000    # 40.0f

    .line 348
    invoke-direct {p0, v0}, Lcom/qianhe/yct/view/MulPointAreaPreView;->dpToPx(F)F

    move-result v0

    float-to-double v1, v0

    .line 349
    iget-wide v3, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->scaleRatio:D

    div-double/2addr v1, v3

    .line 350
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v1, "%.2fm"

    invoke-static {v3, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 351
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v2, -0x1000000

    .line 352
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 353
    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/MulPointAreaPreView;->dpToPx(F)F

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 354
    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/MulPointAreaPreView;->dpToPx(F)F

    move-result v4

    .line 355
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/MulPointAreaPreView;->dpToPx(F)F

    move-result v2

    sub-float v5, v3, v2

    add-float v6, v4, v0

    move v7, v5

    move-object v3, p1

    .line 356
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 p1, 0x40a00000    # 5.0f

    .line 357
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/MulPointAreaPreView;->dpToPx(F)F

    move-result p1

    sub-float/2addr v5, p1

    iget-object p1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v4, v5, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getScreenX(D)F
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->scaleRatio:D

    mul-double p1, p1, v0

    iget-wide v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->offsetX:D

    add-double/2addr p1, v0

    double-to-float p1, p1

    return p1
.end method

.method private getScreenY(D)F
    .locals 4

    .line 110
    iget-wide v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->offsetY:D

    iget-wide v2, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->scaleRatio:D

    mul-double p1, p1, v2

    sub-double/2addr v0, p1

    double-to-float p1, v0

    return p1
.end method

.method private init()V
    .locals 4

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_work_center_tooth:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->bucketBitmap:Landroid/graphics/Bitmap;

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->linePaint:Landroid/graphics/Paint;

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$color;->map_line:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->linePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/MulPointAreaPreView;->dpToPx(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->pointPaint:Landroid/graphics/Paint;

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$color;->red:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->pointPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->textPaint:Landroid/graphics/Paint;

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$color;->map_line:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/MulPointAreaPreView;->spToPx(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private spToPx(F)F
    .locals 2

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private spacing(Landroid/view/MotionEvent;)D
    .locals 4

    const/4 v0, 0x0

    .line 427
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 428
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 429
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private spacing([F[F)D
    .locals 2

    const/4 v0, 0x0

    .line 433
    aget v1, p1, v0

    aget v0, p2, v0

    sub-float/2addr v1, v0

    const/4 v0, 0x1

    .line 434
    aget p1, p1, v0

    aget p2, p2, v0

    sub-float/2addr p1, p2

    mul-float v1, v1, v1

    mul-float p1, p1, p1

    add-float/2addr v1, p1

    float-to-double p1, v1

    .line 435
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private updateBaseBoundary()V
    .locals 12

    .line 209
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->baseBoundaryCoords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->coordsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x1

    .line 212
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->coordsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 213
    iget-object v3, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->baseBoundaryCoords:Ljava/util/List;

    iget-object v4, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->coordsList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_1
    iget-object v2, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->baseBoundaryCoords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v1, :cond_2

    :goto_1
    return-void

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->baseBoundaryCoords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    const/4 v7, 0x0

    .line 220
    aget-wide v7, v6, v7

    add-double/2addr v2, v7

    .line 221
    aget-wide v7, v6, v0

    add-double/2addr v4, v7

    goto :goto_2

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->baseBoundaryCoords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    div-double v10, v2, v0

    .line 224
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->baseBoundaryCoords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    div-double v8, v4, v0

    .line 229
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->baseBoundaryCoords:Ljava/util/List;

    new-instance v6, Lcom/qianhe/yct/view/MulPointAreaPreView$1;

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/qianhe/yct/view/MulPointAreaPreView$1;-><init>(Lcom/qianhe/yct/view/MulPointAreaPreView;DD)V

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private updateContentBounds()V
    .locals 13

    .line 255
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->coordsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->coordsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v1, -0x10000000000001L

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v5, v3

    move-wide v7, v5

    move-wide v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [D

    const/4 v10, 0x0

    .line 261
    aget-wide v11, v9, v10

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 262
    aget-wide v10, v9, v10

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    const/4 v10, 0x1

    .line 263
    aget-wide v11, v9, v10

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    .line 264
    aget-wide v10, v9, v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    goto :goto_0

    :cond_1
    add-double/2addr v5, v1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v0

    add-double/2addr v7, v3

    div-double/2addr v7, v0

    .line 269
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v0

    iget-wide v9, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->scaleRatio:D

    mul-double v5, v5, v9

    sub-double/2addr v2, v5

    iput-wide v2, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->offsetX:D

    .line 270
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v0

    iget-wide v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->scaleRatio:D

    mul-double v7, v7, v0

    add-double/2addr v2, v7

    iput-wide v2, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->offsetY:D

    .line 271
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addPoint([D)V
    .locals 2

    if-eqz p1, :cond_1

    .line 137
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->coordsList:Ljava/util/List;

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-direct {p0}, Lcom/qianhe/yct/view/MulPointAreaPreView;->updateBaseBoundary()V

    .line 140
    invoke-direct {p0}, Lcom/qianhe/yct/view/MulPointAreaPreView;->updateContentBounds()V

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public clearPoints()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->coordsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->baseBoundaryCoords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v0, 0x0

    .line 156
    iput-wide v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->offsetX:D

    .line 157
    iput-wide v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->offsetY:D

    .line 158
    iget-wide v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->INITSCALE:D

    iput-wide v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->scaleRatio:D

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->smoothedDist:F

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->isManualOperated:Z

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public locateToCurrentPoint()V
    .locals 10

    .line 200
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->currentPoint:[D

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->isManualOperated:Z

    .line 202
    iget-wide v1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->INITSCALE:D

    iput-wide v1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->scaleRatio:D

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    iget-object v5, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->currentPoint:[D

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    iget-wide v8, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->scaleRatio:D

    mul-double v6, v6, v8

    sub-double/2addr v1, v6

    iput-wide v1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->offsetX:D

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v3

    iget-object v3, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->currentPoint:[D

    aget-wide v4, v3, v0

    iget-wide v6, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->scaleRatio:D

    mul-double v4, v4, v6

    add-double/2addr v1, v4

    iput-wide v1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->offsetY:D

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public locateToStartPoint()V
    .locals 11

    .line 190
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->coordsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->isManualOperated:Z

    .line 192
    iget-wide v1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->INITSCALE:D

    iput-wide v1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->scaleRatio:D

    .line 193
    iget-object v1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->coordsList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    aget-wide v7, v1, v2

    iget-wide v9, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->scaleRatio:D

    mul-double v7, v7, v9

    sub-double/2addr v3, v7

    iput-wide v3, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->offsetX:D

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v5

    aget-wide v0, v1, v0

    iget-wide v4, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->scaleRatio:D

    mul-double v0, v0, v4

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->offsetY:D

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 276
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 277
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->coordsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->coordsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lt v6, v7, :cond_3

    .line 282
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->coordsList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 283
    aget-wide v1, v0, v8

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/view/MulPointAreaPreView;->getScreenX(D)F

    move-result v1

    .line 284
    aget-wide v2, v0, v9

    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/view/MulPointAreaPreView;->getScreenY(D)F

    move-result v2

    const/4 v10, 0x1

    :goto_0
    if-ge v10, v6, :cond_1

    .line 287
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->coordsList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 288
    aget-wide v3, v0, v8

    invoke-direct {p0, v3, v4}, Lcom/qianhe/yct/view/MulPointAreaPreView;->getScreenX(D)F

    move-result v3

    aget-wide v4, v0, v9

    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/view/MulPointAreaPreView;->getScreenY(D)F

    move-result v4

    iget-object v5, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->baseBoundaryCoords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v7, :cond_3

    const/4 v0, 0x0

    .line 292
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->baseBoundaryCoords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 293
    iget-object v1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->baseBoundaryCoords:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 294
    iget-object v2, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->baseBoundaryCoords:Ljava/util/List;

    add-int/lit8 v10, v0, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    rem-int v3, v10, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 295
    iget-object v3, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->baseBoundaryCoords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_2

    if-ne v0, v9, :cond_2

    goto :goto_2

    .line 296
    :cond_2
    aget-wide v3, v1, v8

    invoke-direct {p0, v3, v4}, Lcom/qianhe/yct/view/MulPointAreaPreView;->getScreenX(D)F

    move-result v0

    aget-wide v3, v1, v9

    invoke-direct {p0, v3, v4}, Lcom/qianhe/yct/view/MulPointAreaPreView;->getScreenY(D)F

    move-result v1

    aget-wide v3, v2, v8

    .line 297
    invoke-direct {p0, v3, v4}, Lcom/qianhe/yct/view/MulPointAreaPreView;->getScreenX(D)F

    move-result v3

    aget-wide v4, v2, v9

    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/view/MulPointAreaPreView;->getScreenY(D)F

    move-result v4

    iget-object v5, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->linePaint:Landroid/graphics/Paint;

    move v2, v1

    move v1, v0

    move-object v0, p1

    .line 296
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v0, v10

    goto :goto_1

    :cond_3
    :goto_2
    const/high16 v1, 0x40a00000    # 5.0f

    .line 302
    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/MulPointAreaPreView;->dpToPx(F)F

    move-result v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v6, :cond_5

    .line 304
    iget-object v3, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->coordsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    .line 305
    aget-wide v4, v3, v8

    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/view/MulPointAreaPreView;->getScreenX(D)F

    move-result v4

    .line 306
    aget-wide v10, v3, v9

    invoke-direct {p0, v10, v11}, Lcom/qianhe/yct/view/MulPointAreaPreView;->getScreenY(D)F

    move-result v3

    .line 307
    iget-object v5, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->pointPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_4

    const v7, -0xffff01

    goto :goto_4

    :cond_4
    const/high16 v7, -0x10000

    :goto_4
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    iget-object v5, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "P"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-float/2addr v4, v1

    sub-float/2addr v3, v1

    iget-object v7, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 312
    :cond_5
    iget-boolean v1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->isWorkMode:Z

    if-eqz v1, :cond_6

    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/view/MulPointAreaPreView;->drawBucket(Landroid/graphics/Canvas;)V

    .line 313
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/view/MulPointAreaPreView;->drawScaleBar(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 241
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 247
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 249
    iget-boolean p1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->isManualOperated:Z

    if-nez p1, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/qianhe/yct/view/MulPointAreaPreView;->updateContentBounds()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 362
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    const/4 v6, 0x5

    if-eq v2, v6, :cond_2

    const/4 v1, 0x6

    if-eq v2, v1, :cond_1

    :cond_0
    :goto_0
    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 372
    :cond_2
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 373
    iget-object v2, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->lastFingerPos1:[F

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    aput v6, v2, v4

    .line 374
    iget-object v2, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->lastFingerPos1:[F

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    aput v6, v2, v3

    .line 375
    iget-object v2, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->lastFingerPos2:[F

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    aput v6, v2, v4

    .line 376
    iget-object v2, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->lastFingerPos2:[F

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    aput v1, v2, v3

    .line 377
    iput v5, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->mode:I

    .line 378
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 382
    :cond_3
    iget v2, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->mode:I

    if-ne v2, v3, :cond_4

    .line 383
    iput-boolean v3, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->isManualOperated:Z

    .line 384
    iget-wide v4, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->offsetX:D

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v6, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->lastTouchX:F

    sub-float/2addr v2, v6

    float-to-double v6, v2

    add-double/2addr v4, v6

    iput-wide v4, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->offsetX:D

    .line 385
    iget-wide v4, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->offsetY:D

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v6, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->lastTouchY:F

    sub-float/2addr v2, v6

    float-to-double v6, v2

    add-double/2addr v4, v6

    iput-wide v4, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->offsetY:D

    .line 386
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->lastTouchX:F

    .line 387
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->lastTouchY:F

    .line 388
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_4
    if-ne v2, v5, :cond_0

    .line 389
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 390
    iput-boolean v3, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->isManualOperated:Z

    .line 391
    iget-object v2, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->lastFingerPos1:[F

    iget-object v5, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->lastFingerPos2:[F

    invoke-direct {v0, v2, v5}, Lcom/qianhe/yct/view/MulPointAreaPreView;->spacing([F[F)D

    move-result-wide v5

    .line 392
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/view/MulPointAreaPreView;->spacing(Landroid/view/MotionEvent;)D

    move-result-wide v7

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    cmpl-double v2, v5, v9

    if-lez v2, :cond_0

    div-double/2addr v7, v5

    .line 395
    iget-wide v5, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->scaleRatio:D

    mul-double v5, v5, v7

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v2, v5, v9

    if-lez v2, :cond_0

    const-wide v9, 0x408f400000000000L    # 1000.0

    cmpg-double v2, v5, v9

    if-gez v2, :cond_0

    .line 397
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    add-float/2addr v2, v9

    float-to-double v9, v2

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    .line 398
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v2, v13

    float-to-double v13, v2

    div-double/2addr v13, v11

    .line 399
    iget-object v2, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->lastFingerPos1:[F

    aget v15, v2, v4

    move-wide/from16 v16, v11

    iget-object v11, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->lastFingerPos2:[F

    aget v12, v11, v4

    add-float/2addr v15, v12

    const/4 v12, 0x1

    float-to-double v3, v15

    div-double v3, v3, v16

    .line 400
    aget v15, v2, v12

    aget v11, v11, v12

    add-float/2addr v15, v11

    move-wide/from16 v18, v13

    const/4 v11, 0x1

    float-to-double v12, v15

    div-double v12, v12, v16

    .line 404
    iget-wide v14, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->offsetX:D

    sub-double/2addr v3, v14

    mul-double v3, v3, v7

    sub-double/2addr v9, v3

    iput-wide v9, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->offsetX:D

    .line 405
    iget-wide v3, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->offsetY:D

    sub-double/2addr v3, v12

    mul-double v3, v3, v7

    add-double v13, v18, v3

    iput-wide v13, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->offsetY:D

    .line 407
    iput-wide v5, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->scaleRatio:D

    const/4 v3, 0x0

    .line 408
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v2, v3

    .line 409
    iget-object v2, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->lastFingerPos1:[F

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    aput v4, v2, v11

    .line 410
    iget-object v2, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->lastFingerPos2:[F

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v2, v3

    .line 411
    iget-object v2, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->lastFingerPos2:[F

    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    aput v1, v2, v12

    .line 412
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 419
    :goto_1
    iput v3, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->mode:I

    .line 420
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 365
    :cond_5
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->lastTouchX:F

    .line 366
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->lastTouchY:F

    const/4 v12, 0x1

    .line 367
    iput v12, v0, Lcom/qianhe/yct/view/MulPointAreaPreView;->mode:I

    .line 369
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v12}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    :goto_2
    return v12
.end method

.method public refreshToothType(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 179
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_work_left_tooth:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 181
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_work_right_tooth:I

    goto :goto_0

    .line 183
    :cond_1
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_work_center_tooth:I

    .line 185
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->bucketBitmap:Landroid/graphics/Bitmap;

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public removePoint(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->coordsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->coordsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 147
    invoke-direct {p0}, Lcom/qianhe/yct/view/MulPointAreaPreView;->updateBaseBoundary()V

    .line 148
    invoke-direct {p0}, Lcom/qianhe/yct/view/MulPointAreaPreView;->updateContentBounds()V

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCurrentPoint([D[D)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 166
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    iput-object v2, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->gaussL:[D

    .line 167
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    iput-object v2, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->gaussR:[D

    .line 168
    aget-wide v2, p1, v1

    aget-wide v4, p2, v1

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    aget-wide v6, p1, v0

    aget-wide p1, p2, v0

    add-double/2addr v6, p1

    div-double/2addr v6, v4

    const/4 p1, 0x2

    new-array p1, p1, [D

    aput-wide v2, p1, v1

    aput-wide v6, p1, v0

    iput-object p1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->currentPoint:[D

    .line 173
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProjectPoint(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[D>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->isManualOperated:Z

    .line 123
    iget-object v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->coordsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 125
    iget-object v1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->coordsList:Ljava/util/List;

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/view/MulPointAreaPreView;->updateBaseBoundary()V

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_2

    .line 129
    invoke-direct {p0}, Lcom/qianhe/yct/view/MulPointAreaPreView;->updateContentBounds()V

    goto :goto_1

    .line 131
    :cond_2
    new-instance p1, Lcom/qianhe/yct/view/MulPointAreaPreView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/view/MulPointAreaPreView$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/view/MulPointAreaPreView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 133
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setWorkMode(Z)V
    .locals 2

    .line 114
    iput-boolean p1, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->isWorkMode:Z

    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 115
    :goto_0
    iput-wide v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->INITSCALE:D

    .line 116
    iput-wide v0, p0, Lcom/qianhe/yct/view/MulPointAreaPreView;->scaleRatio:D

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
