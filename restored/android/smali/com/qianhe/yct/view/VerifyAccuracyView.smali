.class public Lcom/qianhe/yct/view/VerifyAccuracyView;
.super Landroid/view/View;
.source "VerifyAccuracyView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/view/VerifyAccuracyView$OnProgressUpdateListener;,
        Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;
    }
.end annotation


# static fields
.field private static final MIN_ADD_INTERVAL:J = 0x3e8L


# instance fields
.field private RValue:F

.field private borderPaint:Landroid/graphics/Paint;

.field private centerX:F

.field private centerY:F

.field private circlePaint:Landroid/graphics/Paint;

.field private connectorPaint:Landroid/graphics/Paint;

.field private coordinatePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;",
            ">;"
        }
    .end annotation
.end field

.field private currentPoint:Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;

.field private fixedCircleRadius:F

.field private hValue:F

.field private lastAddTime:J

.field private linePaint:Landroid/graphics/Paint;

.field private final mContext:Landroid/content/Context;

.field private maxEast:D

.field private maxHValue:F

.field private maxHeight:D

.field private maxNorth:D

.field private maxPointCount:I

.field private minEast:D

.field private minHeight:D

.field private minNorth:D

.field private pathPaint:Landroid/graphics/Paint;

.field private pointPaint:Landroid/graphics/Paint;

.field private progressUpdateListener:Lcom/qianhe/yct/view/VerifyAccuracyView$OnProgressUpdateListener;

.field private textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/view/VerifyAccuracyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/qianhe/yct/view/VerifyAccuracyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 26
    iput p2, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->RValue:F

    .line 27
    iput p2, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->hValue:F

    const/16 p3, 0x14

    .line 28
    iput p3, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxPointCount:I

    .line 30
    iput p2, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->fixedCircleRadius:F

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->lastAddTime:J

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 36
    iput-wide v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->minEast:D

    const-wide/16 v2, 0x1

    .line 37
    iput-wide v2, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxEast:D

    .line 38
    iput-wide v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->minNorth:D

    .line 39
    iput-wide v2, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxNorth:D

    .line 40
    iput-wide v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->minHeight:D

    .line 41
    iput-wide v2, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxHeight:D

    .line 42
    iput p2, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxHValue:F

    .line 66
    iput-object p1, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->mContext:Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Lcom/qianhe/yct/view/VerifyAccuracyView;->init()V

    return-void
.end method

.method private calculateHValue()V
    .locals 6

    .line 329
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 330
    iput v1, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->hValue:F

    return-void

    .line 334
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/view/VerifyAccuracyView;->getAverageHeight()D

    move-result-wide v2

    .line 337
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;

    .line 338
    iget-wide v4, v4, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;->height:D

    sub-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v4, v4, v5

    cmpl-float v5, v4, v1

    if-lez v5, :cond_1

    move v1, v4

    goto :goto_0

    .line 344
    :cond_2
    iput v1, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->hValue:F

    .line 345
    iget v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxHValue:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 346
    iput v1, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxHValue:F

    :cond_3
    return-void
.end method

.method private calculateRValue()V
    .locals 12

    .line 305
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 306
    iput v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->RValue:F

    return-void

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/view/VerifyAccuracyView;->getAverageEast()D

    move-result-wide v0

    .line 311
    invoke-direct {p0}, Lcom/qianhe/yct/view/VerifyAccuracyView;->getAverageNorth()D

    move-result-wide v2

    .line 314
    iget-object v4, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v5, 0x0

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;

    .line 315
    iget-wide v8, v7, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;->east:D

    sub-double/2addr v8, v0

    .line 316
    iget-wide v10, v7, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;->north:D

    sub-double/2addr v10, v2

    mul-double v8, v8, v8

    mul-double v10, v10, v10

    add-double/2addr v8, v10

    .line 317
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    cmpl-double v9, v7, v5

    if-lez v9, :cond_1

    move-wide v5, v7

    goto :goto_0

    :cond_2
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v5, v5, v0

    mul-double v5, v5, v0

    .line 325
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v0, v2

    iput v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->RValue:F

    return-void
.end method

.method private dpToPx(F)F
    .locals 2

    .line 417
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private getAverageEast()D
    .locals 5

    .line 360
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;

    .line 363
    iget-wide v3, v3, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;->east:D

    add-double/2addr v1, v3

    goto :goto_0

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v3, v0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method private getAverageHeight()D
    .locals 5

    .line 351
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;

    .line 354
    iget-wide v3, v3, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;->height:D

    add-double/2addr v1, v3

    goto :goto_0

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v3, v0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method private getAverageNorth()D
    .locals 5

    .line 369
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;

    .line 372
    iget-wide v3, v3, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;->north:D

    add-double/2addr v1, v3

    goto :goto_0

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v3, v0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method private getMaxHeight()D
    .locals 6

    .line 378
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;

    iget-wide v0, v0, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;->height:D

    .line 380
    iget-object v2, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;

    .line 381
    iget-wide v3, v3, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;->height:D

    cmpl-double v5, v3, v0

    if-lez v5, :cond_1

    move-wide v0, v3

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method private getMinHeight()D
    .locals 6

    .line 389
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;

    iget-wide v0, v0, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;->height:D

    .line 391
    iget-object v2, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;

    .line 392
    iget-wide v3, v3, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;->height:D

    cmpg-double v5, v3, v0

    if-gez v5, :cond_1

    move-wide v0, v3

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method private init()V
    .locals 7

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->circlePaint:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    .line 75
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->circlePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->circlePaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {p0, v4}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->pointPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    .line 80
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->pointPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->linePaint:Landroid/graphics/Paint;

    .line 84
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->linePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v4}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->textPaint:Landroid/graphics/Paint;

    .line 89
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->textPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x41600000    # 14.0f

    invoke-direct {p0, v6}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->pathPaint:Landroid/graphics/Paint;

    .line 93
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->pathPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v4}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->borderPaint:Landroid/graphics/Paint;

    .line 98
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->borderPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v2}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->connectorPaint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    .line 103
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->connectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->connectorPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private updateExtremes(DDD)V
    .locals 3

    .line 279
    iget-wide v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->minEast:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    iput-wide p1, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->minEast:D

    .line 280
    :cond_0
    iget-wide v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxEast:D

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    iput-wide p1, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxEast:D

    .line 281
    :cond_1
    iget-wide p1, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->minNorth:D

    cmpg-double v0, p3, p1

    if-gez v0, :cond_2

    iput-wide p3, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->minNorth:D

    .line 282
    :cond_2
    iget-wide p1, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxNorth:D

    cmpl-double v0, p3, p1

    if-lez v0, :cond_3

    iput-wide p3, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxNorth:D

    .line 283
    :cond_3
    iget-wide p1, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->minHeight:D

    cmpg-double p3, p5, p1

    if-gez p3, :cond_4

    iput-wide p5, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->minHeight:D

    .line 284
    :cond_4
    iget-wide p1, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxHeight:D

    cmpl-double p3, p5, p1

    if-lez p3, :cond_5

    iput-wide p5, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxHeight:D

    :cond_5
    return-void
.end method


# virtual methods
.method public clearCoordinates()V
    .locals 5

    .line 400
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 401
    iput-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->currentPoint:Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;

    const/4 v0, 0x0

    .line 402
    iput v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->RValue:F

    .line 403
    iput v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->hValue:F

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 405
    iput-wide v1, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->minEast:D

    const-wide/16 v3, 0x1

    .line 406
    iput-wide v3, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxEast:D

    .line 407
    iput-wide v1, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->minNorth:D

    .line 408
    iput-wide v3, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxNorth:D

    .line 409
    iput-wide v1, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->minHeight:D

    .line 410
    iput-wide v3, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxHeight:D

    .line 411
    iput v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxHValue:F

    .line 413
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getPointCount()I
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v9, 0x0

    .line 144
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 146
    invoke-direct {v0, v1}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v1

    float-to-int v1, v1

    .line 147
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const/high16 v2, -0x1000000

    .line 148
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v10, 0x1

    .line 149
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 150
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v5, v2

    int-to-float v6, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v7, v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 152
    iget v2, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->centerX:F

    iget v3, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->centerY:F

    iget v4, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->fixedCircleRadius:F

    iget-object v5, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 155
    invoke-direct {v0}, Lcom/qianhe/yct/view/VerifyAccuracyView;->getAverageEast()D

    move-result-wide v2

    .line 156
    invoke-direct {v0}, Lcom/qianhe/yct/view/VerifyAccuracyView;->getAverageNorth()D

    move-result-wide v4

    .line 159
    iget-object v6, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-wide/16 v11, 0x0

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;

    .line 160
    iget-wide v14, v13, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;->east:D

    sub-double/2addr v14, v2

    const-wide/16 v16, 0x0

    .line 161
    iget-wide v7, v13, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;->north:D

    sub-double/2addr v7, v4

    mul-double v14, v14, v14

    mul-double v7, v7, v7

    add-double/2addr v14, v7

    .line 162
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    cmpl-double v13, v7, v11

    if-lez v13, :cond_0

    move-wide v11, v7

    goto :goto_0

    :cond_1
    const-wide/16 v16, 0x0

    cmpl-double v6, v11, v16

    if-lez v6, :cond_2

    .line 170
    iget v6, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->fixedCircleRadius:F

    float-to-double v6, v6

    const-wide v13, 0x3feccccccccccccdL    # 0.9

    mul-double v6, v6, v13

    div-double/2addr v6, v11

    double-to-float v6, v6

    goto :goto_1

    :cond_2
    const/high16 v6, 0x3f800000    # 1.0f

    .line 174
    :goto_1
    iget-object v7, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;

    .line 175
    iget v11, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->centerX:F

    iget-wide v12, v8, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;->east:D

    sub-double/2addr v12, v2

    double-to-float v12, v12

    mul-float v12, v12, v6

    add-float/2addr v11, v12

    .line 176
    iget v12, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->centerY:F

    iget-wide v13, v8, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;->north:D

    sub-double/2addr v13, v4

    double-to-float v8, v13

    mul-float v8, v8, v6

    sub-float/2addr v12, v8

    const/high16 v8, 0x40800000    # 4.0f

    .line 177
    invoke-direct {v0, v8}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v8

    iget-object v13, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v12, v8, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 181
    :cond_3
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget v3, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->RValue:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v9

    const-string v3, "R=%.2f cm"

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 183
    iget v2, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->centerX:F

    const-wide v3, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    iget v6, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->fixedCircleRadius:F

    const/high16 v8, 0x41200000    # 10.0f

    invoke-direct {v0, v8}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v11

    add-float/2addr v6, v11

    mul-float v5, v5, v6

    add-float v11, v2, v5

    .line 184
    iget v2, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->centerY:F

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->fixedCircleRadius:F

    invoke-direct {v0, v8}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v5

    add-float/2addr v4, v5

    mul-float v3, v3, v4

    add-float v5, v2, v3

    .line 186
    iget v2, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->centerX:F

    iget v3, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->centerY:F

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {v0, v4}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v4

    sub-float v4, v11, v4

    iget-object v6, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->connectorPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 187
    iget-object v2, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v11, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v2, 0x42a00000    # 80.0f

    .line 189
    invoke-direct {v0, v2}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v2

    .line 190
    iget v3, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->centerY:F

    iget v4, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->fixedCircleRadius:F

    add-float/2addr v3, v4

    const/high16 v7, 0x41700000    # 15.0f

    invoke-direct {v0, v7}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v4

    add-float/2addr v3, v4

    add-float v11, v3, v2

    .line 192
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v4, v2

    iget-object v6, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->borderPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v3

    .line 193
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v6, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->borderPaint:Landroid/graphics/Paint;

    move v5, v11

    move-object/from16 v1, p1

    move v3, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 195
    iget-object v2, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v10, :cond_8

    .line 196
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 197
    invoke-direct {v0}, Lcom/qianhe/yct/view/VerifyAccuracyView;->getAverageHeight()D

    move-result-wide v4

    .line 198
    invoke-direct {v0}, Lcom/qianhe/yct/view/VerifyAccuracyView;->getMaxHeight()D

    move-result-wide v13

    double-to-float v6, v13

    .line 199
    invoke-direct {v0}, Lcom/qianhe/yct/view/VerifyAccuracyView;->getMinHeight()D

    move-result-wide v13

    double-to-float v11, v13

    float-to-double v13, v6

    sub-double/2addr v13, v4

    double-to-float v6, v13

    float-to-double v13, v11

    sub-double v13, v4, v13

    double-to-float v11, v13

    .line 202
    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v6

    sub-float v11, v3, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v11, v13

    const/4 v14, 0x0

    .line 207
    :goto_3
    iget-object v15, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_7

    .line 208
    iget-object v15, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;

    const/16 v16, 0x0

    int-to-float v9, v14

    .line 209
    iget-object v8, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v10

    int-to-float v8, v8

    div-float/2addr v9, v8

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float v9, v9, v8

    .line 211
    iget-wide v7, v15, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;->height:D

    sub-double/2addr v7, v4

    double-to-float v7, v7

    const/4 v8, 0x0

    cmpl-float v15, v6, v8

    if-lez v15, :cond_5

    cmpl-float v15, v7, v8

    if-lez v15, :cond_4

    add-float v8, v12, v11

    div-float/2addr v7, v6

    mul-float v7, v7, v11

    sub-float/2addr v8, v7

    goto :goto_4

    :cond_4
    cmpg-float v8, v7, v8

    if-gez v8, :cond_5

    add-float v8, v12, v11

    neg-float v7, v7

    div-float/2addr v7, v6

    mul-float v7, v7, v11

    add-float/2addr v8, v7

    goto :goto_4

    :cond_5
    add-float v8, v12, v11

    .line 225
    :goto_4
    invoke-direct {v0, v13}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v7

    add-float/2addr v7, v12

    invoke-direct {v0, v13}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v15

    sub-float v15, v3, v15

    invoke-static {v15, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    if-nez v14, :cond_6

    .line 228
    invoke-virtual {v2, v9, v7}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_5

    .line 230
    :cond_6
    invoke-virtual {v2, v9, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 233
    :goto_5
    invoke-direct {v0, v13}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v8

    iget-object v15, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v7, v8, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/2addr v14, v10

    const/high16 v7, 0x41700000    # 15.0f

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v9, 0x0

    goto :goto_3

    :cond_7
    const/16 v16, 0x0

    .line 236
    iget-object v4, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 238
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget v4, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->hValue:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v4, v5, v16

    const-string/jumbo v4, "\u25b3H=%.2f cm"

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x41f00000    # 30.0f

    .line 239
    invoke-direct {v0, v4}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v4

    add-float v11, v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41700000    # 15.0f

    invoke-direct {v0, v4}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v11, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    .line 240
    invoke-direct {v0, v4}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v4

    iget-object v5, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 111
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x41700000    # 15.0f

    .line 114
    invoke-direct {p0, p2}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v0

    int-to-float v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v1

    .line 116
    invoke-direct {p0, p2}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v3

    const/high16 v4, 0x42a00000    # 80.0f

    .line 117
    invoke-direct {p0, v4}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v4

    .line 118
    invoke-direct {p0, p2}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v5

    const/high16 v6, 0x41a00000    # 20.0f

    .line 119
    invoke-direct {p0, v6}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result v6

    .line 120
    invoke-direct {p0, p2}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result p2

    add-float/2addr v0, v2

    add-float/2addr v0, v3

    add-float/2addr v0, v4

    add-float/2addr v0, v5

    add-float/2addr v0, v6

    add-float/2addr v0, p2

    float-to-int p2, v0

    const v0, 0x3f666666    # 0.9f

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 126
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 129
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/high16 p2, 0x41700000    # 15.0f

    .line 135
    invoke-direct {p0, p2}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result p2

    int-to-float p1, p1

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float p3, p3, p1

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p1, p4

    .line 137
    iput p1, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->centerX:F

    div-float/2addr p3, p4

    add-float/2addr p2, p3

    .line 138
    iput p2, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->centerY:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 139
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/VerifyAccuracyView;->dpToPx(F)F

    move-result p1

    sub-float/2addr p3, p1

    iput p3, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->fixedCircleRadius:F

    return-void
.end method

.method public setMaxPointCount(I)V
    .locals 2

    if-lez p1, :cond_1

    .line 289
    iput p1, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxPointCount:I

    .line 290
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setOnProgressUpdateListener(Lcom/qianhe/yct/view/VerifyAccuracyView$OnProgressUpdateListener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/qianhe/yct/view/VerifyAccuracyView;->progressUpdateListener:Lcom/qianhe/yct/view/VerifyAccuracyView$OnProgressUpdateListener;

    return-void
.end method

.method public updateCurrentPosition(DDD)V
    .locals 18

    move-object/from16 v0, p0

    .line 245
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    const/4 v4, 0x1

    aput-wide p3, v2, v4

    const/4 v5, 0x2

    aput-wide p5, v2, v5

    invoke-virtual {v1, v2}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToGAUSSXY([D)[D

    move-result-object v1

    .line 246
    aget-wide v12, v1, v3

    .line 247
    aget-wide v14, v1, v4

    .line 249
    iget-object v1, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxPointCount:I

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 254
    iget-wide v3, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->lastAddTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    .line 255
    new-instance v5, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;

    move-wide/from16 v8, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v5 .. v15}, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;-><init>(DDDDD)V

    iput-object v5, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->currentPoint:Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;

    return-void

    .line 259
    :cond_1
    new-instance v5, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;

    move-wide/from16 v8, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v5 .. v15}, Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;-><init>(DDDDD)V

    iput-object v5, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->currentPoint:Lcom/qianhe/yct/view/VerifyAccuracyView$CoordinatePoint;

    .line 260
    iget-object v3, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iput-wide v1, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->lastAddTime:J

    move-wide/from16 v5, p5

    move-wide v1, v12

    move-wide v3, v14

    .line 263
    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/view/VerifyAccuracyView;->updateExtremes(DDD)V

    .line 265
    invoke-direct {v0}, Lcom/qianhe/yct/view/VerifyAccuracyView;->calculateRValue()V

    .line 266
    invoke-direct {v0}, Lcom/qianhe/yct/view/VerifyAccuracyView;->calculateHValue()V

    .line 267
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 269
    iget-object v1, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->coordinatePoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 270
    iget-object v2, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->progressUpdateListener:Lcom/qianhe/yct/view/VerifyAccuracyView$OnProgressUpdateListener;

    if-eqz v2, :cond_2

    .line 271
    iget v3, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxPointCount:I

    invoke-interface {v2, v1, v3}, Lcom/qianhe/yct/view/VerifyAccuracyView$OnProgressUpdateListener;->onProgressUpdate(II)V

    .line 272
    iget v2, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxPointCount:I

    if-lt v1, v2, :cond_2

    .line 273
    iget-object v3, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->progressUpdateListener:Lcom/qianhe/yct/view/VerifyAccuracyView$OnProgressUpdateListener;

    iget-wide v4, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->minEast:D

    iget-wide v6, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxEast:D

    iget-wide v8, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->minNorth:D

    iget-wide v10, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxNorth:D

    iget-wide v12, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->minHeight:D

    iget-wide v14, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxHeight:D

    iget v1, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->maxHValue:F

    iget v2, v0, Lcom/qianhe/yct/view/VerifyAccuracyView;->RValue:F

    move/from16 v16, v1

    move/from16 v17, v2

    invoke-interface/range {v3 .. v17}, Lcom/qianhe/yct/view/VerifyAccuracyView$OnProgressUpdateListener;->onCollectionComplete(DDDDDDFF)V

    :cond_2
    :goto_0
    return-void
.end method
