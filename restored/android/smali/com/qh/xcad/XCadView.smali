.class public Lcom/qh/xcad/XCadView;
.super Landroid/view/View;
.source "XCadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qh/xcad/XCadView$OnLoadCadFileListener;,
        Lcom/qh/xcad/XCadView$OnSelectionChangedListener;,
        Lcom/qh/xcad/XCadView$LayerSnappable;,
        Lcom/qh/xcad/XCadView$IndicePointStyle;,
        Lcom/qh/xcad/XCadView$MarkerHit;,
        Lcom/qh/xcad/XCadView$OnMarkerClickListener;,
        Lcom/qh/xcad/XCadView$OnEntityClickListener;,
        Lcom/qh/xcad/XCadView$OnCarSelectedEntityListener;,
        Lcom/qh/xcad/XCadView$OnExcavatorBucketSelectedEntityListener;,
        Lcom/qh/xcad/XCadView$LinePoint;
    }
.end annotation


# static fields
.field private static final AUX_LAYER_KEYWORDS:[Ljava/lang/String;

.field private static final DOUBLE_TAP_TIMEOUT:J = 0x12cL

.field private static final MAX_LABELS:I = 0x5dc

.field private static final SCENE_CACHE:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/qh/xcad/XCadScene;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "XCadView"

.field private static final mainHandler:Landroid/os/Handler;


# instance fields
.field private alphaAnimator:Landroid/animation/ValueAnimator;

.field private backgroundColor:I

.field private cacheBitmap:Landroid/graphics/Bitmap;

.field private cacheCanvas:Landroid/graphics/Canvas;

.field private cacheDirty:Z

.field private cadTouchEnable:Z

.field private carHighlightColor:I

.field private final carSelectedIndices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private compassPaint:Landroid/graphics/Paint;

.field private compassPath:Landroid/graphics/Path;

.field private volatile currentPath:Ljava/lang/String;

.field private cx:D

.field private cy:D

.field private final density:F

.field private doubleClickResetViewStatus:Z

.field private drawScaleBarEnable:Z

.field private drawSelectedLineNumText:Z

.field private final emptyTextPaint:Landroid/graphics/Paint;

.field private entityClickListener:Lcom/qh/xcad/XCadView$OnEntityClickListener;

.field private excavatorBucketPaint:Landroid/graphics/Paint;

.field private excavatorBucketPath:Landroid/graphics/Path;

.field private excavatorBucketTeethPath:Landroid/graphics/Path;

.field private final fillByColor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final fillPaint:Landroid/graphics/Paint;

.field private final fitBtnBgPaint:Landroid/graphics/Paint;

.field private final fitBtnIconPaint:Landroid/graphics/Paint;

.field private fitScale:D

.field private fitted:Z

.field private followVehicle:Z

.field private final glowPaint:Landroid/graphics/Paint;

.field private highlightColorP:I

.field private final highlightCore:Landroid/graphics/Paint;

.field private final highlightHalo:Landroid/graphics/Paint;

.field private highlightPath:Landroid/graphics/Path;

.field private final highlightWidth:F

.field private hitBounds:[D

.field private hitIndices:[I

.field private final hitTolPx:F

.field private itemAreaPointPaint:Landroid/graphics/Paint;

.field private itemAreaPointPath:Landroid/graphics/Path;

.field private lastH:I

.field private lastTapTime:J

.field private lastTapX:F

.field private lastTapY:F

.field private lastW:I

.field private layerSnappable:Lcom/qh/xcad/XCadView$LayerSnappable;

.field private loadCadFileThread:Ljava/lang/Thread;

.field private loadingAlpha:F

.field private final loadingBgPaint:Landroid/graphics/Paint;

.field private final loadingPaint:Landroid/graphics/Paint;

.field private loadingProgress:F

.field private loadingVisible:Z

.field private lockEntityLineIndex:I

.field private lockHighlightColor:I

.field private mapRotateDeg:F

.field private final markerHits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qh/xcad/XCadView$MarkerHit;",
            ">;"
        }
    .end annotation
.end field

.field private moved:Z

.field private onCarSelectedEntityListener:Lcom/qh/xcad/XCadView$OnCarSelectedEntityListener;

.field private onExcavatorBucketSelectedEntityListener:Lcom/qh/xcad/XCadView$OnExcavatorBucketSelectedEntityListener;

.field public onLoadCadFileListener:Lcom/qh/xcad/XCadView$OnLoadCadFileListener;

.field private onMarkerClickListener:Lcom/qh/xcad/XCadView$OnMarkerClickListener;

.field private pressingFit:Z

.field private progressAnimator:Landroid/animation/ValueAnimator;

.field private restoreState:Z

.field private scale:D

.field private scaleBarLenMinUnit:F

.field private final scaleBarPaint:Landroid/graphics/Paint;

.field private scaleRestoreState:D

.field private final scaleTextPaint:Landroid/graphics/Paint;

.field private scene:Lcom/qh/xcad/XCadScene;

.field private selectSingleLine:Z

.field private final selectedIndicePoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/qh/xcad/XCadView$IndicePointStyle;",
            ">;>;"
        }
    .end annotation
.end field

.field private final selectedIndices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedLightPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private selectionListener:Lcom/qh/xcad/XCadView$OnSelectionChangedListener;

.field private showControls:Z

.field private final singleTapRunnable:Ljava/lang/Runnable;

.field private startFocalX:F

.field private startFocalY:F

.field private startScale:D

.field private startSpan:F

.field private startTx:D

.field private startTy:D

.field private final strokeByColor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final strokePaint:Landroid/graphics/Paint;

.field private final textPaint:Landroid/graphics/Paint;

.field private final texts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qh/xcad/XCadEntity;",
            ">;"
        }
    .end annotation
.end field

.field private toleranceWorld:D

.field private touchHighlightCheckColor:I

.field private touchHighlightColor:I

.field private final touchSlop:I

.field private tx:D

.field private txRestoreState:D

.field private ty:D

.field private tyRestoreState:D

.field private vehiclePaint:Landroid/graphics/Paint;

.field private vehiclePath:Landroid/graphics/Path;

.field private vehiclePoint:Lcom/qh/xcad/XCadVehiclePoint;

.field private vehiclePulse:F

.field private vehiclePulseAnimator:Landroid/animation/ValueAnimator;

.field private xCadExcavatorBucket:Lcom/qh/xcad/XCadExcavatorBucket;

.field private xCadItemAreaPoint:Lcom/qh/xcad/XCadItemAreaPoint;


# direct methods
.method public static synthetic $r8$lambda$94UJtPgg5UAg-temmgVfjLuG1uI(Lcom/qh/xcad/XCadView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2019
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/qh/xcad/XCadView;->vehiclePulse:F

    .line 2020
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic $r8$lambda$G0isJ8w5B05zxAIF3sAJMZ4hXYE(Lcom/qh/xcad/XCadView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 341
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 341
    invoke-static {v0, p1}, Lcom/qh/xcad/XCadParseClient;->parseBlocking(Landroid/content/Context;Ljava/lang/String;)Lcom/qh/xcad/XCadParseClient$Result;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Lcom/qh/xcad/XCadParseClient$Result;->ok()Z

    move-result v1

    const-string v2, "XCadView"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 346
    :try_start_0
    iget-object v0, v0, Lcom/qh/xcad/XCadParseClient$Result;->data:[B

    invoke-static {v0}, Lcom/qh/xcad/XCadBinary;->decode([B)Lcom/qh/xcad/XCadScene;

    move-result-object v3

    .line 347
    invoke-static {v3, p1}, Lcom/qh/xcad/DxfTextSupplement;->mergeMissingTexts(Lcom/qh/xcad/XCadScene;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u89e3\u7801\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decode failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto :goto_1

    .line 350
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decode OOM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\u6587\u4ef6\u8fc7\u5927\uff0c\u5185\u5b58\u4e0d\u8db3\uff08\u6e32\u67d3\u9636\u6bb5\uff09"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto :goto_1

    .line 356
    :cond_0
    iget-object v1, v0, Lcom/qh/xcad/XCadParseClient$Result;->message:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/qh/xcad/XCadParseClient$Result;->message:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "\u89e3\u6790\u5931\u8d25"

    .line 357
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse failed(status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/qh/xcad/XCadParseClient$Result;->status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/qh/xcad/XCadParseClient$Result;->message:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " path="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    .line 361
    :goto_1
    sget-object p1, Lcom/qh/xcad/XCadView;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/qh/xcad/XCadView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v3, p2}, Lcom/qh/xcad/XCadView$$ExternalSyntheticLambda3;-><init>(Lcom/qh/xcad/XCadView;Lcom/qh/xcad/XCadScene;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$MwmpWCAI3klcNcwBP-_gEnw6t6A(Lcom/qh/xcad/XCadView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/qh/xcad/XCadView;->loadingProgress:F

    .line 436
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic $r8$lambda$OizAzLC0kuPPMqMWf-1fpZVL-ME(Lcom/qh/xcad/XCadView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/qh/xcad/XCadView;->loadingProgress:F

    .line 451
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic $r8$lambda$ko1jylEJpNhbYZU0p5V-WjtEYaM(Lcom/qh/xcad/XCadView;Lcom/qh/xcad/XCadScene;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 363
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->currentPath:Ljava/lang/String;

    .line 363
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->currentPath:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {p0, p1}, Lcom/qh/xcad/XCadView;->setScene(Lcom/qh/xcad/XCadScene;)V

    .line 370
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->currentPath:Ljava/lang/String;

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->onLoadCadFileListener:Lcom/qh/xcad/XCadView$OnLoadCadFileListener;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 374
    invoke-interface {v0, v1}, Lcom/qh/xcad/XCadView$OnLoadCadFileListener;->onLoadCadFileFinished(Z)V

    .line 376
    :cond_3
    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->finishLoading()V

    .line 378
    sget-object p0, Lcom/qh/xcad/XCadView;->SCENE_CACHE:Landroid/util/LruCache;

    invoke-virtual {p0, p2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 0
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    sget-object p1, Lcom/qh/xcad/XCadView;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/qh/xcad/XCadView$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/qh/xcad/XCadView$$ExternalSyntheticLambda2;-><init>(Lcom/qh/xcad/XCadView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$qHecozb6zLT68qYK8ld901OU5sY(Lcom/qh/xcad/XCadView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->startLoading()V

    return-void
.end method

.method public static synthetic $r8$lambda$sesjN0LUO9ruzQ5xKdMc9dFm7hY(Lcom/qh/xcad/XCadView;)V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->currentPath:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 386
    invoke-virtual {p0, v0}, Lcom/qh/xcad/XCadView;->setScene(Lcom/qh/xcad/XCadScene;)V

    .line 387
    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->finishLoading()V

    .line 388
    iget-object p0, p0, Lcom/qh/xcad/XCadView;->onLoadCadFileListener:Lcom/qh/xcad/XCadView$OnLoadCadFileListener;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 389
    invoke-interface {p0, v0}, Lcom/qh/xcad/XCadView$OnLoadCadFileListener;->onLoadCadFileFinished(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetalphaAnimator(Lcom/qh/xcad/XCadView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qh/xcad/XCadView;->alphaAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstartFocalX(Lcom/qh/xcad/XCadView;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/qh/xcad/XCadView;->startFocalX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstartFocalY(Lcom/qh/xcad/XCadView;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/qh/xcad/XCadView;->startFocalY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputalphaAnimator(Lcom/qh/xcad/XCadView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qh/xcad/XCadView;->alphaAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputloadingAlpha(Lcom/qh/xcad/XCadView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qh/xcad/XCadView;->loadingAlpha:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputloadingVisible(Lcom/qh/xcad/XCadView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qh/xcad/XCadView;->loadingVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMarkerTap(Lcom/qh/xcad/XCadView;FF)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qh/xcad/XCadView;->handleMarkerTap(FF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleTap(Lcom/qh/xcad/XCadView;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qh/xcad/XCadView;->handleTap(FF)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 26

    .line 62
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/qh/xcad/XCadView;->SCENE_CACHE:Landroid/util/LruCache;

    .line 67
    const-string/jumbo v24, "\u8bf4\u660e"

    const-string/jumbo v25, "\u6587\u5b57"

    const-string v2, "defpoints"

    const-string v3, "dim"

    const-string v4, "dimension"

    const-string v5, "leader"

    const-string v6, "mleader"

    const-string v7, "border"

    const-string v8, "frame"

    const-string/jumbo v9, "title"

    const-string v10, "note"

    const-string v11, "annot"

    const-string/jumbo v12, "text"

    const-string v13, "mtext"

    const-string/jumbo v14, "\u6807\u6ce8"

    const-string/jumbo v15, "\u5c3a\u5bf8"

    const-string/jumbo v16, "\u56fe\u6846"

    const-string/jumbo v17, "\u56fe\u7b7e"

    const-string/jumbo v18, "\u6807\u9898\u680f"

    const-string/jumbo v19, "\u8fb9\u6846"

    const-string/jumbo v20, "\u5916\u6846"

    const-string/jumbo v21, "\u56fe\u5e45"

    const-string/jumbo v22, "\u5f15\u7ebf"

    const-string/jumbo v23, "\u6ce8\u91ca"

    filled-new-array/range {v2 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qh/xcad/XCadView;->AUX_LAYER_KEYWORDS:[Ljava/lang/String;

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/qh/xcad/XCadView;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, p1, v0}, Lcom/qh/xcad/XCadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    move-object/from16 v0, p0

    .line 239
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    .line 79
    iput v1, v0, Lcom/qh/xcad/XCadView;->loadingProgress:F

    .line 80
    iput v1, v0, Lcom/qh/xcad/XCadView;->loadingAlpha:F

    const/4 v2, 0x0

    .line 81
    iput-boolean v2, v0, Lcom/qh/xcad/XCadView;->loadingVisible:Z

    .line 83
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/qh/xcad/XCadView;->loadingBgPaint:Landroid/graphics/Paint;

    .line 84
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Lcom/qh/xcad/XCadView;->loadingPaint:Landroid/graphics/Paint;

    .line 127
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, v0, Lcom/qh/xcad/XCadView;->strokeByColor:Ljava/util/Map;

    .line 128
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, v0, Lcom/qh/xcad/XCadView;->fillByColor:Ljava/util/Map;

    .line 129
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/qh/xcad/XCadView;->texts:Ljava/util/List;

    .line 132
    new-array v6, v2, [I

    iput-object v6, v0, Lcom/qh/xcad/XCadView;->hitIndices:[I

    .line 133
    new-array v6, v2, [D

    iput-object v6, v0, Lcom/qh/xcad/XCadView;->hitBounds:[D

    .line 138
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v6, v0, Lcom/qh/xcad/XCadView;->selectedIndices:Ljava/util/Set;

    .line 142
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Lcom/qh/xcad/XCadView;->selectedIndicePoints:Ljava/util/Map;

    .line 146
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Lcom/qh/xcad/XCadView;->selectedLightPoints:Ljava/util/Map;

    .line 164
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v6, v0, Lcom/qh/xcad/XCadView;->carSelectedIndices:Ljava/util/Set;

    const/4 v6, -0x1

    .line 168
    iput v6, v0, Lcom/qh/xcad/XCadView;->lockEntityLineIndex:I

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 174
    iput-wide v7, v0, Lcom/qh/xcad/XCadView;->scale:D

    const-wide/16 v9, 0x0

    iput-wide v9, v0, Lcom/qh/xcad/XCadView;->tx:D

    iput-wide v9, v0, Lcom/qh/xcad/XCadView;->ty:D

    iput-wide v7, v0, Lcom/qh/xcad/XCadView;->fitScale:D

    .line 175
    iput-wide v7, v0, Lcom/qh/xcad/XCadView;->scaleRestoreState:D

    iput-wide v9, v0, Lcom/qh/xcad/XCadView;->txRestoreState:D

    iput-wide v9, v0, Lcom/qh/xcad/XCadView;->tyRestoreState:D

    .line 176
    iput-boolean v2, v0, Lcom/qh/xcad/XCadView;->restoreState:Z

    .line 177
    iput-boolean v2, v0, Lcom/qh/xcad/XCadView;->fitted:Z

    .line 178
    iput v2, v0, Lcom/qh/xcad/XCadView;->lastW:I

    iput v2, v0, Lcom/qh/xcad/XCadView;->lastH:I

    .line 181
    iput v1, v0, Lcom/qh/xcad/XCadView;->mapRotateDeg:F

    .line 183
    iput-wide v7, v0, Lcom/qh/xcad/XCadView;->startScale:D

    iput-wide v9, v0, Lcom/qh/xcad/XCadView;->startTx:D

    iput-wide v9, v0, Lcom/qh/xcad/XCadView;->startTy:D

    .line 184
    iput v1, v0, Lcom/qh/xcad/XCadView;->startFocalX:F

    iput v1, v0, Lcom/qh/xcad/XCadView;->startFocalY:F

    iput v1, v0, Lcom/qh/xcad/XCadView;->startSpan:F

    .line 185
    iput-boolean v2, v0, Lcom/qh/xcad/XCadView;->moved:Z

    .line 186
    iput-boolean v2, v0, Lcom/qh/xcad/XCadView;->pressingFit:Z

    .line 188
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, v0, Lcom/qh/xcad/XCadView;->strokePaint:Landroid/graphics/Paint;

    .line 189
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, v0, Lcom/qh/xcad/XCadView;->fillPaint:Landroid/graphics/Paint;

    .line 190
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, v0, Lcom/qh/xcad/XCadView;->textPaint:Landroid/graphics/Paint;

    .line 191
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, v0, Lcom/qh/xcad/XCadView;->highlightHalo:Landroid/graphics/Paint;

    .line 192
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Lcom/qh/xcad/XCadView;->highlightCore:Landroid/graphics/Paint;

    .line 193
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, v0, Lcom/qh/xcad/XCadView;->emptyTextPaint:Landroid/graphics/Paint;

    .line 194
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v12, v0, Lcom/qh/xcad/XCadView;->fitBtnBgPaint:Landroid/graphics/Paint;

    .line 195
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v13, v0, Lcom/qh/xcad/XCadView;->fitBtnIconPaint:Landroid/graphics/Paint;

    const v14, -0xe1e1e2

    .line 198
    iput v14, v0, Lcom/qh/xcad/XCadView;->backgroundColor:I

    const v14, -0xd21d01

    .line 200
    iput v14, v0, Lcom/qh/xcad/XCadView;->touchHighlightColor:I

    const v14, -0xd72da4

    .line 202
    iput v14, v0, Lcom/qh/xcad/XCadView;->touchHighlightCheckColor:I

    .line 206
    iput v14, v0, Lcom/qh/xcad/XCadView;->carHighlightColor:I

    .line 207
    iput v14, v0, Lcom/qh/xcad/XCadView;->lockHighlightColor:I

    const v14, -0x2458c6

    .line 208
    iput v14, v0, Lcom/qh/xcad/XCadView;->highlightColorP:I

    .line 210
    iput-boolean v2, v0, Lcom/qh/xcad/XCadView;->cadTouchEnable:Z

    .line 212
    iput-boolean v2, v0, Lcom/qh/xcad/XCadView;->doubleClickResetViewStatus:Z

    .line 214
    iput-boolean v2, v0, Lcom/qh/xcad/XCadView;->showControls:Z

    .line 216
    iput-boolean v4, v0, Lcom/qh/xcad/XCadView;->drawSelectedLineNumText:Z

    .line 218
    iput-boolean v4, v0, Lcom/qh/xcad/XCadView;->selectSingleLine:Z

    .line 220
    iput-boolean v4, v0, Lcom/qh/xcad/XCadView;->drawScaleBarEnable:Z

    .line 227
    iput-boolean v2, v0, Lcom/qh/xcad/XCadView;->followVehicle:Z

    const-wide/16 v14, 0x0

    .line 1130
    iput-wide v14, v0, Lcom/qh/xcad/XCadView;->lastTapTime:J

    .line 1131
    iput v1, v0, Lcom/qh/xcad/XCadView;->lastTapX:F

    .line 1132
    iput v1, v0, Lcom/qh/xcad/XCadView;->lastTapY:F

    .line 1134
    new-instance v2, Lcom/qh/xcad/XCadView$2;

    invoke-direct {v2, v0}, Lcom/qh/xcad/XCadView$2;-><init>(Lcom/qh/xcad/XCadView;)V

    iput-object v2, v0, Lcom/qh/xcad/XCadView;->singleTapRunnable:Ljava/lang/Runnable;

    .line 1594
    iput-boolean v4, v0, Lcom/qh/xcad/XCadView;->cacheDirty:Z

    .line 1690
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    .line 1691
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/qh/xcad/XCadView;->itemAreaPointPath:Landroid/graphics/Path;

    .line 1856
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/qh/xcad/XCadView;->scaleBarPaint:Landroid/graphics/Paint;

    .line 1857
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/qh/xcad/XCadView;->scaleTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x428c0000    # 70.0f

    .line 1859
    iput v2, v0, Lcom/qh/xcad/XCadView;->scaleBarLenMinUnit:F

    .line 1958
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/qh/xcad/XCadView;->compassPaint:Landroid/graphics/Paint;

    .line 1959
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/qh/xcad/XCadView;->compassPath:Landroid/graphics/Path;

    .line 2003
    iput v1, v0, Lcom/qh/xcad/XCadView;->vehiclePulse:F

    .line 2026
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/qh/xcad/XCadView;->glowPaint:Landroid/graphics/Paint;

    .line 2092
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/qh/xcad/XCadView;->vehiclePaint:Landroid/graphics/Paint;

    .line 2093
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/qh/xcad/XCadView;->vehiclePath:Landroid/graphics/Path;

    .line 2194
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/qh/xcad/XCadView;->excavatorBucketPaint:Landroid/graphics/Paint;

    .line 2195
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/qh/xcad/XCadView;->excavatorBucketPath:Landroid/graphics/Path;

    .line 2196
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/qh/xcad/XCadView;->excavatorBucketTeethPath:Landroid/graphics/Path;

    .line 2544
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/qh/xcad/XCadView;->highlightPath:Landroid/graphics/Path;

    const-wide v14, 0x3fc999999999999aL    # 0.2

    .line 2875
    iput-wide v14, v0, Lcom/qh/xcad/XCadView;->toleranceWorld:D

    .line 3231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/qh/xcad/XCadView;->markerHits:Ljava/util/List;

    .line 241
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, v0, Lcom/qh/xcad/XCadView;->density:F

    .line 242
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, v0, Lcom/qh/xcad/XCadView;->touchSlop:I

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v4, v4, v2

    .line 243
    iput v4, v0, Lcom/qh/xcad/XCadView;->hitTolPx:F

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v4, v4, v2

    .line 244
    iput v4, v0, Lcom/qh/xcad/XCadView;->highlightWidth:F

    .line 246
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 247
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 248
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 250
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 251
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 252
    sget-object v7, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 253
    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 254
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 255
    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const v7, -0x4c000001

    .line 257
    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v7, 0x41600000    # 14.0f

    mul-float v7, v7, v2

    .line 258
    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 259
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/16 v7, 0x28

    const/16 v8, 0xff

    .line 261
    invoke-static {v7, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v12, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v2, v2, v4

    .line 264
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 265
    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const v1, 0x33ffffff

    .line 268
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    const v1, -0xef7e38

    .line 269
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    iget v1, v0, Lcom/qh/xcad/XCadView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private addDashed(Landroid/graphics/Path;Lcom/qh/xcad/XCadEntity;DD)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1030
    invoke-virtual {v2}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v3

    add-double v4, p3, p5

    .line 1032
    invoke-virtual {v2}, Lcom/qh/xcad/XCadEntity;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v3, -0x1

    :goto_0
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_6

    add-int/lit8 v8, v7, 0x1

    .line 1035
    rem-int v9, v8, v3

    .line 1036
    invoke-virtual {v2, v7}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v10

    iget-wide v12, v0, Lcom/qh/xcad/XCadView;->cx:D

    sub-double/2addr v10, v12

    invoke-virtual {v2, v7}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v12

    iget-wide v14, v0, Lcom/qh/xcad/XCadView;->cy:D

    sub-double/2addr v12, v14

    neg-double v12, v12

    .line 1037
    invoke-virtual {v2, v9}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v14

    move v7, v3

    move-wide/from16 v16, v4

    iget-wide v3, v0, Lcom/qh/xcad/XCadView;->cx:D

    sub-double/2addr v14, v3

    invoke-virtual {v2, v9}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v3

    move-wide/from16 v18, v3

    iget-wide v2, v0, Lcom/qh/xcad/XCadView;->cy:D

    sub-double v3, v18, v2

    neg-double v2, v3

    sub-double v4, v14, v10

    sub-double v18, v2, v12

    mul-double v20, v4, v4

    mul-double v22, v18, v18

    add-double v20, v20, v22

    move-wide/from16 v22, v4

    .line 1039
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/16 v20, 0x0

    cmpg-double v9, v4, v20

    if-gtz v9, :cond_1

    goto :goto_5

    :cond_1
    div-double v24, v4, v16

    const-wide v26, 0x40af400000000000L    # 4000.0

    cmpl-double v9, v24, v26

    if-lez v9, :cond_2

    double-to-float v4, v10

    double-to-float v5, v12

    .line 1042
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    double-to-float v4, v14

    double-to-float v2, v2

    .line 1043
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_5

    :cond_2
    div-double v2, v22, v4

    div-double v18, v18, v4

    const/4 v9, 0x1

    :goto_2
    cmpg-double v14, v20, v4

    if-gez v14, :cond_5

    if-eqz v9, :cond_3

    move-wide/from16 v14, p3

    goto :goto_3

    :cond_3
    move-wide/from16 v14, p5

    :goto_3
    add-double v14, v20, v14

    .line 1051
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    if-eqz v9, :cond_4

    mul-double v22, v2, v20

    move-wide/from16 v24, v2

    add-double v2, v10, v22

    double-to-float v2, v2

    mul-double v20, v20, v18

    move-wide/from16 v22, v4

    add-double v3, v12, v20

    double-to-float v3, v3

    .line 1053
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    mul-double v2, v24, v14

    add-double/2addr v2, v10

    double-to-float v2, v2

    mul-double v3, v18, v14

    add-double/2addr v3, v12

    double-to-float v3, v3

    .line 1054
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4

    :cond_4
    move-wide/from16 v24, v2

    move-wide/from16 v22, v4

    :goto_4
    xor-int/lit8 v9, v9, 0x1

    move-wide/from16 v20, v14

    move-wide/from16 v4, v22

    move-wide/from16 v2, v24

    goto :goto_2

    :cond_5
    :goto_5
    move-object/from16 v2, p2

    move v3, v7

    move v7, v8

    move-wide/from16 v4, v16

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method private addPolygon(Landroid/graphics/Path;Lcom/qh/xcad/XCadEntity;)V
    .locals 7

    const/4 v0, 0x0

    .line 1010
    invoke-virtual {p2, v0}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/qh/xcad/XCadView;->cx:D

    sub-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {p2, v0}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/qh/xcad/XCadView;->cy:D

    sub-double/2addr v2, v4

    neg-double v2, v2

    double-to-float v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1011
    invoke-virtual {p2}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1013
    invoke-virtual {p2, v1}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/qh/xcad/XCadView;->cx:D

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {p2, v1}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v3

    iget-wide v5, p0, Lcom/qh/xcad/XCadView;->cy:D

    sub-double/2addr v3, v5

    neg-double v3, v3

    double-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1015
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private addPolyline(Landroid/graphics/Path;Lcom/qh/xcad/XCadEntity;)V
    .locals 7

    const/4 v0, 0x0

    .line 1001
    invoke-virtual {p2, v0}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/qh/xcad/XCadView;->cx:D

    sub-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {p2, v0}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/qh/xcad/XCadView;->cy:D

    sub-double/2addr v2, v4

    neg-double v2, v2

    double-to-float v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1002
    invoke-virtual {p2}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1004
    invoke-virtual {p2, v1}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/qh/xcad/XCadView;->cx:D

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {p2, v1}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v3

    iget-wide v5, p0, Lcom/qh/xcad/XCadView;->cy:D

    sub-double/2addr v3, v5

    neg-double v3, v3

    double-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1006
    :cond_0
    invoke-virtual {p2}, Lcom/qh/xcad/XCadEntity;->isClosed()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    :cond_1
    return-void
.end method

.method private build()V
    .locals 33

    move-object/from16 v0, p0

    .line 902
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->strokeByColor:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 903
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->fillByColor:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 904
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->texts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v7, 0x0

    .line 905
    new-array v1, v7, [I

    iput-object v1, v0, Lcom/qh/xcad/XCadView;->hitIndices:[I

    .line 906
    new-array v1, v7, [D

    iput-object v1, v0, Lcom/qh/xcad/XCadView;->hitBounds:[D

    .line 908
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    if-nez v1, :cond_0

    return-void

    .line 911
    :cond_0
    iget-object v1, v1, Lcom/qh/xcad/XCadScene;->bbox:[D

    .line 912
    aget-wide v2, v1, v7

    const/4 v8, 0x3

    aget-wide v4, v1, v8

    add-double v9, v2, v4

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    iput-wide v9, v0, Lcom/qh/xcad/XCadView;->cx:D

    const/4 v9, 0x1

    .line 913
    aget-wide v13, v1, v9

    const/4 v10, 0x4

    aget-wide v15, v1, v10

    add-double v17, v13, v15

    div-double v11, v17, v11

    iput-wide v11, v0, Lcom/qh/xcad/XCadView;->cy:D

    sub-double/2addr v4, v2

    sub-double/2addr v15, v13

    .line 915
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f53\u524dbbox\u5750\u6807min("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v11, v1, v7

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v11, v1, v9

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, "), max("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v11, v1, v8

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v11, v1, v10

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XCadView"

    nop

    nop

    nop

    mul-double v4, v4, v4

    mul-double v15, v15, v15

    add-double/2addr v4, v15

    .line 916
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/16 v11, 0x0

    cmpl-double v3, v1, v11

    if-lez v3, :cond_1

    const-wide v4, 0x3f647ae147ae147bL    # 0.0025

    mul-double v4, v4, v1

    :goto_0
    move-wide v13, v4

    goto :goto_1

    :cond_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :goto_1
    if-lez v3, :cond_2

    const-wide v3, 0x3f70624dd2f1a9fcL    # 0.004

    mul-double v1, v1, v3

    move-wide v3, v1

    goto :goto_2

    :cond_2
    move-wide v3, v11

    .line 920
    :goto_2
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    iget-object v15, v1, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    .line 922
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 924
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [D

    move-wide/from16 v17, v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 927
    :goto_3
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_11

    .line 928
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/qh/xcad/XCadEntity;

    .line 930
    iget v12, v11, Lcom/qh/xcad/XCadEntity;->type:I

    const/4 v9, 0x5

    if-eq v12, v9, :cond_3

    const/4 v9, 0x6

    if-ne v12, v9, :cond_4

    :cond_3
    move-object/from16 v28, v1

    move-object v12, v2

    move-wide/from16 v29, v3

    move/from16 v19, v5

    move v9, v6

    move-object v2, v11

    goto/16 :goto_7

    .line 938
    :cond_4
    invoke-virtual {v11}, Lcom/qh/xcad/XCadEntity;->isFilled()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v11}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v9

    if-lt v9, v8, :cond_6

    .line 939
    iget v9, v11, Lcom/qh/xcad/XCadEntity;->color:I

    invoke-direct {v0, v9}, Lcom/qh/xcad/XCadView;->fillFor(I)Landroid/graphics/Path;

    move-result-object v9

    .line 940
    invoke-direct {v0, v9, v11}, Lcom/qh/xcad/XCadView;->addPolygon(Landroid/graphics/Path;Lcom/qh/xcad/XCadEntity;)V

    :cond_5
    :goto_4
    move-object v12, v2

    move/from16 v19, v5

    move v9, v6

    move-object v2, v11

    move-object v11, v1

    goto :goto_5

    .line 941
    :cond_6
    iget v9, v11, Lcom/qh/xcad/XCadEntity;->type:I

    if-ne v9, v10, :cond_7

    .line 942
    invoke-virtual {v11}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v9

    const/4 v12, 0x1

    if-lt v9, v12, :cond_5

    .line 943
    iget v9, v11, Lcom/qh/xcad/XCadEntity;->color:I

    invoke-direct {v0, v9}, Lcom/qh/xcad/XCadView;->strokeFor(I)Landroid/graphics/Path;

    move-result-object v9

    .line 944
    invoke-virtual {v0, v9, v11, v13, v14}, Lcom/qh/xcad/XCadView;->addEndPoint(Landroid/graphics/Path;Lcom/qh/xcad/XCadEntity;D)V

    goto :goto_4

    .line 946
    :cond_7
    invoke-virtual {v11}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v9

    const/4 v12, 0x2

    if-lt v9, v12, :cond_5

    .line 947
    iget v9, v11, Lcom/qh/xcad/XCadEntity;->color:I

    invoke-direct {v0, v9}, Lcom/qh/xcad/XCadView;->strokeFor(I)Landroid/graphics/Path;

    move-result-object v9

    .line 949
    invoke-virtual {v11}, Lcom/qh/xcad/XCadEntity;->isDashed()Z

    move-result v12

    if-eqz v12, :cond_8

    cmpl-double v12, v3, v17

    if-lez v12, :cond_8

    const-wide v19, 0x3fe3333333333333L    # 0.6

    mul-double v19, v19, v3

    move-object v12, v2

    move-object v2, v11

    move-object v11, v1

    move-object v1, v9

    move v9, v6

    move-wide/from16 v31, v19

    move/from16 v19, v5

    move-wide/from16 v5, v31

    .line 950
    invoke-direct/range {v0 .. v6}, Lcom/qh/xcad/XCadView;->addDashed(Landroid/graphics/Path;Lcom/qh/xcad/XCadEntity;DD)V

    goto :goto_5

    :cond_8
    move-object v12, v2

    move/from16 v19, v5

    move-object v2, v11

    move-object v11, v1

    move-object v1, v9

    move v9, v6

    .line 952
    invoke-direct {v0, v1, v2}, Lcom/qh/xcad/XCadView;->addPolyline(Landroid/graphics/Path;Lcom/qh/xcad/XCadEntity;)V

    .line 957
    :goto_5
    invoke-virtual {v2}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v1

    const/4 v5, 0x1

    if-ge v1, v5, :cond_9

    move-wide/from16 v29, v3

    move-object/from16 v28, v11

    goto/16 :goto_8

    .line 958
    :cond_9
    iget-object v1, v2, Lcom/qh/xcad/XCadEntity;->layerName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/qh/xcad/XCadView;->isSnappable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    move-wide/from16 v29, v3

    move-object/from16 v28, v11

    const/4 v5, 0x1

    goto/16 :goto_8

    .line 961
    :cond_a
    invoke-virtual {v2}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v1

    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v20, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide/from16 v22, v20

    move-wide/from16 v24, v22

    const/4 v8, 0x0

    move-wide/from16 v20, v5

    :goto_6
    if-ge v8, v1, :cond_f

    .line 963
    invoke-virtual {v2, v8}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v26

    move-object/from16 v28, v11

    iget-wide v10, v0, Lcom/qh/xcad/XCadView;->cx:D

    sub-double v26, v26, v10

    .line 964
    invoke-virtual {v2, v8}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v10

    move-wide/from16 v29, v3

    iget-wide v3, v0, Lcom/qh/xcad/XCadView;->cy:D

    sub-double/2addr v10, v3

    neg-double v3, v10

    cmpg-double v10, v26, v22

    if-gez v10, :cond_b

    move-wide/from16 v22, v26

    :cond_b
    cmpl-double v10, v26, v5

    if-lez v10, :cond_c

    move-wide/from16 v5, v26

    :cond_c
    cmpg-double v10, v3, v24

    if-gez v10, :cond_d

    move-wide/from16 v24, v3

    :cond_d
    cmpl-double v10, v3, v20

    if-lez v10, :cond_e

    move-wide/from16 v20, v3

    :cond_e
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v11, v28

    move-wide/from16 v3, v29

    const/4 v10, 0x4

    goto :goto_6

    :cond_f
    move-wide/from16 v29, v3

    move-object/from16 v28, v11

    add-int/lit8 v1, v9, 0x1

    .line 970
    aput v19, v28, v9

    add-int/lit8 v2, v7, 0x1

    .line 971
    aput-wide v22, v12, v7

    add-int/lit8 v3, v7, 0x2

    .line 972
    aput-wide v24, v12, v2

    add-int/lit8 v2, v7, 0x3

    .line 973
    aput-wide v5, v12, v3

    add-int/lit8 v7, v7, 0x4

    .line 974
    aput-wide v20, v12, v2

    move v6, v1

    const/4 v5, 0x1

    goto :goto_9

    .line 931
    :goto_7
    invoke-virtual {v2}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v1

    const/4 v5, 0x1

    if-lt v1, v5, :cond_10

    iget-object v1, v2, Lcom/qh/xcad/XCadEntity;->text:Ljava/lang/String;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 932
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->texts:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_8
    move v6, v9

    :goto_9
    add-int/lit8 v1, v19, 0x1

    move v5, v1

    move-object v2, v12

    move-object/from16 v1, v28

    move-wide/from16 v3, v29

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x4

    goto/16 :goto_3

    :cond_11
    move-object v11, v1

    move-object v12, v2

    move v9, v6

    .line 977
    invoke-static {v11, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lcom/qh/xcad/XCadView;->hitIndices:[I

    .line 978
    invoke-static {v12, v7}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    iput-object v1, v0, Lcom/qh/xcad/XCadView;->hitBounds:[D

    return-void
.end method

.method private buildCache()V
    .locals 4

    .line 1598
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    if-nez v0, :cond_0

    return-void

    .line 1600
    :cond_0
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->cacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1601
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1605
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1606
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1604
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/qh/xcad/XCadView;->cacheBitmap:Landroid/graphics/Bitmap;

    .line 1610
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/qh/xcad/XCadView;->cacheBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/qh/xcad/XCadView;->cacheCanvas:Landroid/graphics/Canvas;

    .line 1612
    iget-wide v1, p0, Lcom/qh/xcad/XCadView;->tx:D

    double-to-float v1, v1

    iget-wide v2, p0, Lcom/qh/xcad/XCadView;->ty:D

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1613
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->cacheCanvas:Landroid/graphics/Canvas;

    iget-wide v1, p0, Lcom/qh/xcad/XCadView;->scale:D

    double-to-float v3, v1

    double-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1615
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->fillByColor:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1616
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->fillPaint:Landroid/graphics/Paint;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1617
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    iget-object v3, p0, Lcom/qh/xcad/XCadView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1620
    :cond_2
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->strokeByColor:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1621
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->strokePaint:Landroid/graphics/Paint;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1622
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    iget-object v3, p0, Lcom/qh/xcad/XCadView;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 1625
    iput-boolean v0, p0, Lcom/qh/xcad/XCadView;->cacheDirty:Z

    return-void
.end method

.method private buildEpsilons()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 818
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, v1

    .line 821
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static clamp(DDD)D
    .locals 1

    .line 0
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    return-wide p2

    :cond_0
    cmpl-double p2, p0, p4

    if-lez p2, :cond_1

    return-wide p4

    :cond_1
    return-wide p0
.end method

.method private drawAlignedText(Landroid/graphics/Canvas;Lcom/qh/xcad/XCadEntity;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2457
    iget-object v2, v1, Lcom/qh/xcad/XCadEntity;->text:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    iget-object v2, v1, Lcom/qh/xcad/XCadEntity;->text:Ljava/lang/String;

    const-string v5, "\n"

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-array v2, v4, [Ljava/lang/String;

    iget-object v5, v1, Lcom/qh/xcad/XCadEntity;->text:Ljava/lang/String;

    aput-object v5, v2, v3

    .line 2458
    :goto_0
    array-length v5, v2

    if-nez v5, :cond_1

    goto/16 :goto_9

    .line 2463
    :cond_1
    iget-object v5, v0, Lcom/qh/xcad/XCadView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-lez v7, :cond_2

    .line 2465
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 2466
    iget-object v8, v0, Lcom/qh/xcad/XCadView;->textPaint:Landroid/graphics/Paint;

    const-string v9, "H"

    invoke-virtual {v8, v9, v3, v4, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2467
    iget v7, v7, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 2468
    iget-object v8, v0, Lcom/qh/xcad/XCadView;->textPaint:Landroid/graphics/Paint;

    div-float v7, v5, v7

    mul-float v5, v5, v7

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2471
    :cond_2
    iget-object v5, v0, Lcom/qh/xcad/XCadView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    .line 2472
    iget v7, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v7, v5

    .line 2474
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 2478
    array-length v8, v2

    const/high16 v9, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v10, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v11, 0x0

    const/high16 v12, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v13, 0x0

    :goto_1
    const-string v14, ""

    if-ge v11, v8, :cond_4

    aget-object v15, v2, v11

    if-nez v15, :cond_3

    goto :goto_2

    :cond_3
    move-object v14, v15

    .line 2482
    :goto_2
    iget-object v15, v0, Lcom/qh/xcad/XCadView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    invoke-static {v13, v15}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 2483
    iget-object v15, v0, Lcom/qh/xcad/XCadView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v15, v14, v3, v6, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2484
    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-static {v12, v6}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 2485
    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(FF)F

    move-result v10

    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    cmpl-float v6, v12, v9

    if-nez v6, :cond_5

    move v10, v13

    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    move v6, v12

    .line 2492
    :goto_3
    iget-object v8, v0, Lcom/qh/xcad/XCadView;->textPaint:Landroid/graphics/Paint;

    aget-object v9, v2, v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8, v9, v3, v11, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2493
    iget v8, v5, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    .line 2494
    array-length v9, v2

    sub-int/2addr v9, v4

    aget-object v9, v2, v9

    if-eqz v9, :cond_6

    array-length v9, v2

    sub-int/2addr v9, v4

    aget-object v9, v2, v9

    goto :goto_4

    :cond_6
    move-object v9, v14

    .line 2495
    :goto_4
    iget-object v11, v0, Lcom/qh/xcad/XCadView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v9, v3, v12, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2496
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    .line 2498
    iget v9, v1, Lcom/qh/xcad/XCadEntity;->textAttachment:I

    if-lt v9, v4, :cond_7

    const/16 v11, 0x9

    if-le v9, v11, :cond_9

    .line 2500
    :cond_7
    iget v1, v1, Lcom/qh/xcad/XCadEntity;->type:I

    const/4 v9, 0x6

    if-ne v1, v9, :cond_8

    const/4 v9, 0x1

    goto :goto_5

    :cond_8
    const/4 v1, 0x7

    const/4 v9, 0x7

    :cond_9
    :goto_5
    sub-int/2addr v9, v4

    .line 2502
    div-int/lit8 v1, v9, 0x3

    .line 2503
    rem-int/lit8 v9, v9, 0x3

    const/high16 v11, 0x3f000000    # 0.5f

    if-ne v9, v4, :cond_a

    add-float/2addr v6, v10

    neg-float v6, v6

    mul-float v6, v6, v11

    goto :goto_6

    :cond_a
    const/4 v12, 0x2

    if-ne v9, v12, :cond_b

    neg-float v6, v10

    goto :goto_6

    :cond_b
    neg-float v6, v6

    .line 2518
    :goto_6
    array-length v9, v2

    sub-int/2addr v9, v4

    int-to-float v9, v9

    mul-float v9, v9, v7

    add-float/2addr v9, v5

    if-nez v1, :cond_c

    neg-float v1, v8

    goto :goto_7

    :cond_c
    if-ne v1, v4, :cond_d

    add-float/2addr v8, v9

    neg-float v1, v8

    mul-float v1, v1, v11

    goto :goto_7

    :cond_d
    neg-float v1, v9

    .line 2527
    :goto_7
    array-length v4, v2

    if-ge v3, v4, :cond_f

    .line 2528
    aget-object v4, v2, v3

    if-eqz v4, :cond_e

    goto :goto_8

    :cond_e
    move-object v4, v14

    :goto_8
    int-to-float v5, v3

    mul-float v5, v5, v7

    add-float/2addr v5, v1

    .line 2529
    iget-object v8, v0, Lcom/qh/xcad/XCadView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual {v9, v4, v6, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_f
    :goto_9
    return-void
.end method

.method private drawCompass(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1963
    iget v0, p0, Lcom/qh/xcad/XCadView;->density:F

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float v2, v0, v1

    mul-float v1, v1, v0

    const/high16 v3, 0x41400000    # 12.0f

    mul-float v0, v0, v3

    .line 1968
    iget-object v4, p0, Lcom/qh/xcad/XCadView;->compassPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1969
    iget-object v4, p0, Lcom/qh/xcad/XCadView;->compassPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1970
    iget-object v4, p0, Lcom/qh/xcad/XCadView;->compassPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x40400000    # 3.0f

    iget v7, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v7, v7, v6

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1972
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1975
    iget v4, p0, Lcom/qh/xcad/XCadView;->mapRotateDeg:F

    neg-float v4, v4

    invoke-virtual {p1, v4, v2, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1977
    iget-object v4, p0, Lcom/qh/xcad/XCadView;->compassPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 1979
    iget-object v4, p0, Lcom/qh/xcad/XCadView;->compassPath:Landroid/graphics/Path;

    sub-float v6, v1, v0

    invoke-virtual {v4, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1980
    iget-object v4, p0, Lcom/qh/xcad/XCadView;->compassPath:Landroid/graphics/Path;

    const v6, 0x3f19999a    # 0.6f

    mul-float v6, v6, v0

    sub-float v7, v2, v6

    add-float/2addr v1, v0

    invoke-virtual {v4, v7, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1981
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->compassPath:Landroid/graphics/Path;

    add-float/2addr v6, v2

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1982
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->compassPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 1984
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->compassPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1985
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->compassPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1986
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->compassPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/qh/xcad/XCadView;->compassPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1989
    new-instance v0, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 1990
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1991
    iget v4, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1992
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v3, 0x41700000    # 15.0f

    .line 1993
    iget v4, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v4, v4, v3

    add-float/2addr v1, v4

    const-string v3, "N"

    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1995
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawFitButton(Landroid/graphics/Canvas;)V
    .locals 13

    .line 2852
    iget-boolean v0, p0, Lcom/qh/xcad/XCadView;->showControls:Z

    if-nez v0, :cond_0

    return-void

    .line 2853
    :cond_0
    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->fitBtnCx()F

    move-result v0

    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->fitBtnCy()F

    move-result v1

    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->fitBtnRadius()F

    move-result v2

    .line 2854
    iget-object v3, p0, Lcom/qh/xcad/XCadView;->fitBtnBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    const v3, 0x3ee66666    # 0.45f

    mul-float v3, v3, v2

    sub-float v5, v0, v2

    sub-float v6, v1, v2

    add-float/2addr v0, v2

    add-float/2addr v1, v2

    .line 2859
    iget-object v9, p0, Lcom/qh/xcad/XCadView;->fitBtnIconPaint:Landroid/graphics/Paint;

    add-float v7, v5, v3

    move v8, v6

    move-object v4, p1

    .line 2861
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move p1, v7

    add-float v8, v6, v3

    move v7, v5

    .line 2862
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v2, v8

    sub-float v10, v0, v3

    move-object v11, v9

    move v9, v10

    move v10, v6

    move v7, v0

    move v8, v6

    move-object v6, v4

    .line 2864
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v6, v8

    move v0, v9

    move-object v9, v11

    move v8, v7

    move v10, v2

    move v9, v8

    move v8, v6

    move-object v6, v4

    .line 2865
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v2, v7

    move-object v9, v11

    move v8, v1

    move v7, p1

    move v6, v1

    .line 2867
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v8, v6, v3

    move v7, v5

    .line 2868
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v1, v8

    move v11, v6

    move v10, v0

    move v8, v2

    move-object v7, v4

    move-object v12, v9

    move v9, v6

    .line 2870
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v7, v8

    move-object v9, v12

    move v10, v7

    move v11, v1

    move-object v7, v4

    move v9, v6

    .line 2871
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawHighlights(Landroid/graphics/Canvas;Ljava/util/Set;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 2534
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2535
    :cond_0
    iget-object v0, v0, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    .line 2537
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1

    .line 2538
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    goto :goto_0

    .line 2539
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qh/xcad/XCadEntity;

    invoke-direct {p0, p1, v2, p3, v1}, Lcom/qh/xcad/XCadView;->paintHighlight(Landroid/graphics/Canvas;Lcom/qh/xcad/XCadEntity;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private drawInfiniteLine(Landroid/graphics/Canvas;FFDDLandroid/graphics/Paint;)V
    .locals 12

    move-wide/from16 v0, p4

    move-wide/from16 v2, p6

    .line 2353
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2354
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    const v5, -0x800001

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const-wide/16 v7, 0x0

    cmpl-double v9, v0, v7

    if-eqz v9, :cond_0

    .line 2360
    iget v9, v4, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float/2addr v9, p2

    double-to-float v10, v0

    div-float/2addr v9, v10

    .line 2361
    iget v11, v4, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    sub-float/2addr v11, p2

    div-float/2addr v11, v10

    .line 2362
    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 2363
    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :cond_0
    cmpl-double v9, v2, v7

    if-eqz v9, :cond_1

    .line 2367
    iget v7, v4, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v7, p3

    double-to-float v8, v2

    div-float/2addr v7, v8

    .line 2368
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v4, p3

    div-float/2addr v4, v8

    .line 2369
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 2370
    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :cond_1
    double-to-float v0, v0

    mul-float v1, v0, v5

    add-float/2addr v1, p2

    double-to-float v2, v2

    mul-float v5, v5, v2

    add-float/2addr v5, p3

    mul-float v0, v0, v6

    add-float/2addr p2, v0

    mul-float v2, v2, v6

    add-float/2addr p3, v2

    move/from16 p5, p2

    move/from16 p6, p3

    move-object/from16 p7, p8

    move p3, v1

    move/from16 p4, v5

    move-object p2, p1

    .line 2379
    invoke-virtual/range {p2 .. p7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLoading(Landroid/graphics/Canvas;)V
    .locals 12

    .line 402
    iget-boolean v0, p0, Lcom/qh/xcad/XCadView;->loadingVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x41000000    # 8.0f

    .line 404
    iget v1, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 406
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v5, v1

    .line 407
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v4, v1

    .line 408
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    .line 410
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->loadingBgPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42a00000    # 80.0f

    iget v2, p0, Lcom/qh/xcad/XCadView;->loadingAlpha:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 411
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->loadingPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/qh/xcad/XCadView;->loadingAlpha:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 413
    iget-object v7, p0, Lcom/qh/xcad/XCadView;->loadingBgPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 414
    iget p1, p0, Lcom/qh/xcad/XCadView;->loadingProgress:F

    mul-float v5, v5, p1

    add-float v9, v5, v3

    iget-object v11, p0, Lcom/qh/xcad/XCadView;->loadingPaint:Landroid/graphics/Paint;

    move v8, v4

    move v10, v6

    const/4 v7, 0x0

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLockEntityLine(Landroid/graphics/Canvas;I)V
    .locals 2

    .line 1945
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1948
    :cond_0
    iget v1, p0, Lcom/qh/xcad/XCadView;->lockEntityLineIndex:I

    if-ltz v1, :cond_1

    iget-object v0, v0, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1949
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1950
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    iget-object v0, v0, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    iget v1, p0, Lcom/qh/xcad/XCadView;->lockEntityLineIndex:I

    .line 1951
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qh/xcad/XCadEntity;

    iget v1, p0, Lcom/qh/xcad/XCadView;->lockEntityLineIndex:I

    .line 1950
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/qh/xcad/XCadView;->paintHighlight(Landroid/graphics/Canvas;Lcom/qh/xcad/XCadEntity;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawPointLabel(Landroid/graphics/Canvas;DDII)V
    .locals 6

    .line 2594
    iget v0, p0, Lcom/qh/xcad/XCadView;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v1, v1, v0

    const/high16 v2, -0x3e600000    # -20.0f

    mul-float v0, v0, v2

    .line 2597
    iget-wide v2, p0, Lcom/qh/xcad/XCadView;->cx:D

    sub-double/2addr p2, v2

    iget-wide v2, p0, Lcom/qh/xcad/XCadView;->scale:D

    mul-double p2, p2, v2

    iget-wide v4, p0, Lcom/qh/xcad/XCadView;->tx:D

    add-double/2addr p2, v4

    double-to-float p2, p2

    .line 2598
    iget-wide v4, p0, Lcom/qh/xcad/XCadView;->cy:D

    sub-double/2addr p4, v4

    neg-double p3, p4

    mul-double p3, p3, v2

    iget-wide v2, p0, Lcom/qh/xcad/XCadView;->ty:D

    add-double/2addr p3, v2

    double-to-float p3, p3

    add-float/2addr v1, p2

    add-float/2addr v0, p3

    .line 2603
    new-instance p4, Landroid/graphics/Paint;

    const/4 p5, 0x1

    invoke-direct {p4, p5}, Landroid/graphics/Paint;-><init>(I)V

    .line 2604
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2605
    invoke-virtual {p4, p6}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p6, 0x41600000    # 14.0f

    .line 2607
    iget v2, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v2, v2, p6

    .line 2608
    invoke-virtual {p1, v1, v0, v2, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2610
    new-instance p6, Landroid/graphics/Path;

    invoke-direct {p6}, Landroid/graphics/Path;-><init>()V

    .line 2611
    invoke-virtual {p6, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    const p2, 0x3e99999a    # 0.3f

    mul-float p2, p2, v2

    sub-float p2, v1, p2

    .line 2612
    invoke-virtual {p6, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    const p2, 0x3f19999a    # 0.6f

    mul-float v2, v2, p2

    add-float/2addr v2, v0

    .line 2613
    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2614
    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    .line 2615
    invoke-virtual {p1, p6, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2617
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p5}, Landroid/graphics/Paint;-><init>(I)V

    const/4 p3, -0x1

    .line 2618
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p3, 0x41200000    # 10.0f

    .line 2619
    iget p4, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float p4, p4, p3

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2620
    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2622
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p3

    .line 2623
    iget p4, p3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget p3, p3, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr p4, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p4, p3

    sub-float/2addr v0, p4

    add-int/2addr p7, p5

    .line 2625
    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, v1, v0, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawPointLight(Landroid/graphics/Canvas;)V
    .locals 12

    .line 2756
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->selectedLightPoints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2757
    :cond_0
    iget-object v0, v0, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    .line 2759
    iget-object v1, p0, Lcom/qh/xcad/XCadView;->selectedLightPoints:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2760
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_2

    .line 2761
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_3

    :cond_2
    :goto_1
    move-object v6, p1

    goto :goto_4

    .line 2762
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qh/xcad/XCadEntity;

    .line 2763
    iget-object v4, v3, Lcom/qh/xcad/XCadEntity;->points:[D

    if-nez v4, :cond_4

    goto :goto_1

    .line 2768
    :cond_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_5

    .line 2769
    invoke-virtual {v3}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v5

    if-lt v4, v5, :cond_6

    :cond_5
    move-object v6, p1

    goto :goto_3

    .line 2773
    :cond_6
    invoke-virtual {v3, v4}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v7

    invoke-virtual {v3, v4}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v9

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v11}, Lcom/qh/xcad/XCadView;->drawPointLightMarker(Landroid/graphics/Canvas;DDI)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :goto_3
    move-object p1, v6

    goto :goto_2

    :goto_4
    move-object p1, v6

    goto :goto_0

    :cond_7
    :goto_5
    return-void
.end method

.method private drawPointLightMarker(Landroid/graphics/Canvas;DDI)V
    .locals 6

    .line 2785
    iget-wide v0, p0, Lcom/qh/xcad/XCadView;->cx:D

    sub-double/2addr p2, v0

    iget-wide v0, p0, Lcom/qh/xcad/XCadView;->scale:D

    mul-double p2, p2, v0

    iget-wide v2, p0, Lcom/qh/xcad/XCadView;->tx:D

    add-double/2addr p2, v2

    double-to-float p2, p2

    .line 2786
    iget-wide v2, p0, Lcom/qh/xcad/XCadView;->cy:D

    sub-double/2addr p4, v2

    neg-double p3, p4

    mul-double p3, p3, v0

    iget-wide v0, p0, Lcom/qh/xcad/XCadView;->ty:D

    add-double/2addr p3, v0

    double-to-float p3, p3

    .line 2788
    iget p4, p0, Lcom/qh/xcad/XCadView;->density:F

    const/high16 p5, 0x41900000    # 18.0f

    mul-float p5, p5, p4

    const/high16 v0, 0x41200000    # 10.0f

    mul-float p4, p4, v0

    .line 2792
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 2793
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x40400000    # 3.0f

    .line 2794
    iget v4, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v4, v4, v3

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2795
    iget v3, p0, Lcom/qh/xcad/XCadView;->highlightColorP:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x41400000    # 12.0f

    .line 2798
    iget v4, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v4, v4, v3

    const/4 v3, 0x0

    iget v5, p0, Lcom/qh/xcad/XCadView;->highlightColorP:I

    invoke-virtual {v1, v4, v3, v3, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 2799
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 2802
    invoke-virtual {p1, p2, p3, p5, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2805
    new-instance p5, Landroid/graphics/Paint;

    invoke-direct {p5, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 2806
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2807
    iget v3, p0, Lcom/qh/xcad/XCadView;->highlightColorP:I

    invoke-virtual {p5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2809
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2812
    new-instance p5, Landroid/graphics/Paint;

    invoke-direct {p5, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 2813
    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, -0x1

    .line 2814
    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setColor(I)V

    const v3, 0x3eb33333    # 0.35f

    mul-float p4, p4, v3

    .line 2816
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2819
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 2820
    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2821
    iget p5, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float p5, p5, v0

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2822
    sget-object p5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2824
    invoke-virtual {p4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p5

    .line 2825
    iget v0, p5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget p5, p5, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v0, p5

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr v0, p5

    sub-float/2addr p3, v0

    add-int/2addr p6, v2

    .line 2827
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5, p2, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawPointMarcker(Landroid/graphics/Canvas;DDLjava/lang/Integer;I)V
    .locals 4

    const/high16 v0, 0x41f00000    # 30.0f

    .line 2701
    iget v1, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v1, v1, v0

    .line 2703
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object p2

    const/4 p3, 0x0

    .line 2705
    aget p3, p2, p3

    const/4 p4, 0x1

    .line 2706
    aget p2, p2, p4

    sub-float p5, p2, v1

    .line 2712
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p4}, Landroid/graphics/Paint;-><init>(I)V

    .line 2713
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2714
    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p7, 0x41600000    # 14.0f

    .line 2716
    iget v1, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v1, v1, p7

    .line 2719
    invoke-virtual {p1, p3, p5, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2722
    new-instance p7, Landroid/graphics/Path;

    invoke-direct {p7}, Landroid/graphics/Path;-><init>()V

    .line 2723
    invoke-virtual {p7, p3, p2}, Landroid/graphics/Path;->moveTo(FF)V

    const p2, 0x3ecccccd    # 0.4f

    mul-float p2, p2, v1

    sub-float v2, p3, p2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v3

    add-float/2addr v1, p5

    .line 2725
    invoke-virtual {p7, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr p2, p3

    .line 2730
    invoke-virtual {p7, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2735
    invoke-virtual {p7}, Landroid/graphics/Path;->close()V

    .line 2737
    invoke-virtual {p1, p7, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-nez p6, :cond_0

    return-void

    .line 2744
    :cond_0
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p4}, Landroid/graphics/Paint;-><init>(I)V

    const/4 p7, -0x1

    .line 2745
    invoke-virtual {p2, p7}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p7, 0x41200000    # 10.0f

    .line 2746
    iget v0, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v0, v0, p7

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2747
    sget-object p7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2749
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p7

    .line 2750
    iget v0, p7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget p7, p7, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v0, p7

    const/high16 p7, 0x40000000    # 2.0f

    div-float/2addr v0, p7

    sub-float/2addr p5, v0

    .line 2752
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    add-int/2addr p6, p4

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p3, p5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawScaleBar(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1869
    iget-boolean v2, p0, Lcom/qh/xcad/XCadView;->drawScaleBarEnable:Z

    if-nez v2, :cond_0

    return-void

    .line 1873
    :cond_0
    iget v2, p0, Lcom/qh/xcad/XCadView;->scaleBarLenMinUnit:F

    iget v3, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v2, v2, v3

    .line 1876
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v6, v3, v4

    add-float v8, v6, v2

    .line 1879
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x41200000    # 10.0f

    iget v7, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v7, v7, v5

    sub-float v7, v3, v7

    float-to-double v2, v2

    .line 1882
    iget-wide v9, p0, Lcom/qh/xcad/XCadView;->scale:D

    div-double/2addr v2, v9

    const-wide v9, 0x408f400000000000L    # 1000.0

    cmpl-double v5, v2, v9

    if-ltz v5, :cond_1

    .line 1888
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    div-double/2addr v2, v9

    .line 1891
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 1888
    const-string v0, "%.1f km"

    invoke-static {v5, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1894
    :cond_1
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1897
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 1894
    const-string v0, "%.2f m"

    invoke-static {v5, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1902
    :goto_0
    iget-object v1, p0, Lcom/qh/xcad/XCadView;->scaleBarPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1903
    iget-object v1, p0, Lcom/qh/xcad/XCadView;->scaleBarPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1904
    iget-object v10, p0, Lcom/qh/xcad/XCadView;->scaleBarPaint:Landroid/graphics/Paint;

    move v9, v7

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move p1, v8

    .line 1912
    iget v1, p0, Lcom/qh/xcad/XCadView;->density:F

    const/high16 v3, 0x41000000    # 8.0f

    mul-float v1, v1, v3

    sub-float v1, v7, v1

    iget-object v10, p0, Lcom/qh/xcad/XCadView;->scaleBarPaint:Landroid/graphics/Paint;

    move v8, v6

    move v7, v1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v7, v9

    .line 1921
    iget v1, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v1, v1, v3

    sub-float v9, v7, v1

    iget-object v12, p0, Lcom/qh/xcad/XCadView;->scaleBarPaint:Landroid/graphics/Paint;

    move v10, p1

    move v8, p1

    move v11, v7

    move-object v7, v5

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v7, v11

    .line 1932
    iget-object p1, p0, Lcom/qh/xcad/XCadView;->scaleTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1933
    iget-object p1, p0, Lcom/qh/xcad/XCadView;->scaleTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41500000    # 13.0f

    iget v2, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1934
    iget-object p1, p0, Lcom/qh/xcad/XCadView;->scaleTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    add-float/2addr v6, v8

    div-float/2addr v6, v4

    const/high16 p1, 0x40c00000    # 6.0f

    .line 1936
    iget v1, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v1, v1, p1

    sub-float/2addr v7, v1

    iget-object p1, p0, Lcom/qh/xcad/XCadView;->scaleTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0, v6, v7, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSelectedLinePointLabel(Landroid/graphics/Canvas;Lcom/qh/xcad/XCadEntity;II)V
    .locals 9

    const/4 v0, 0x0

    .line 2590
    invoke-virtual {p2, v0}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v3

    invoke-virtual {p2, v0}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/qh/xcad/XCadView;->drawPointLabel(Landroid/graphics/Canvas;DDII)V

    return-void
.end method

.method private drawTexts(Landroid/graphics/Canvas;)V
    .locals 14

    .line 2419
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->texts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2420
    :cond_0
    iget v0, p0, Lcom/qh/xcad/XCadView;->density:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    .line 2422
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2424
    iget-object v1, p0, Lcom/qh/xcad/XCadView;->texts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qh/xcad/XCadEntity;

    .line 2425
    iget v5, v4, Lcom/qh/xcad/XCadEntity;->textHeight:F

    float-to-double v5, v5

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-lez v9, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_3

    .line 2427
    iget-wide v8, p0, Lcom/qh/xcad/XCadView;->scale:D

    mul-double v5, v5, v8

    goto :goto_2

    :cond_3
    const/high16 v5, 0x41400000    # 12.0f

    iget v6, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v6, v6, v5

    float-to-double v5, v6

    :goto_2
    if-eqz v7, :cond_4

    float-to-double v8, v0

    cmpg-double v10, v5, v8

    if-gez v10, :cond_4

    goto :goto_0

    .line 2430
    :cond_4
    invoke-virtual {v4, v2}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v8

    iget-wide v10, p0, Lcom/qh/xcad/XCadView;->cx:D

    sub-double/2addr v8, v10

    iget-wide v10, p0, Lcom/qh/xcad/XCadView;->scale:D

    mul-double v8, v8, v10

    iget-wide v10, p0, Lcom/qh/xcad/XCadView;->tx:D

    add-double/2addr v8, v10

    .line 2431
    invoke-virtual {v4, v2}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v10

    iget-wide v12, p0, Lcom/qh/xcad/XCadView;->cy:D

    sub-double/2addr v10, v12

    neg-double v10, v10

    iget-wide v12, p0, Lcom/qh/xcad/XCadView;->scale:D

    mul-double v10, v10, v12

    iget-wide v12, p0, Lcom/qh/xcad/XCadView;->ty:D

    add-double/2addr v10, v12

    .line 2436
    iget-object v12, p0, Lcom/qh/xcad/XCadView;->textPaint:Landroid/graphics/Paint;

    iget v13, v4, Lcom/qh/xcad/XCadEntity;->color:I

    invoke-direct {p0, v13}, Lcom/qh/xcad/XCadView;->getCADColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 2437
    iget-object v12, p0, Lcom/qh/xcad/XCadView;->textPaint:Landroid/graphics/Paint;

    double-to-float v5, v5

    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2439
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    double-to-float v5, v8

    double-to-float v6, v10

    .line 2440
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v7, :cond_5

    .line 2441
    iget v5, v4, Lcom/qh/xcad/XCadEntity;->textRotation:F

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_5

    neg-float v5, v5

    float-to-double v5, v5

    const-wide v7, 0x4066800000000000L    # 180.0

    mul-double v5, v5, v7

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v5, v7

    double-to-float v5, v5

    .line 2443
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2445
    :cond_5
    invoke-direct {p0, p1, v4}, Lcom/qh/xcad/XCadView;->drawAlignedText(Landroid/graphics/Canvas;Lcom/qh/xcad/XCadEntity;)V

    .line 2446
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x5dc

    if-lt v3, v4, :cond_1

    :cond_6
    :goto_3
    return-void
.end method

.method private drawVehicle(Landroid/graphics/Canvas;)V
    .locals 13

    .line 2096
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->vehiclePoint:Lcom/qh/xcad/XCadVehiclePoint;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2099
    :cond_0
    iget-boolean v1, v0, Lcom/qh/xcad/XCadVehiclePoint;->visible:Z

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 2103
    :cond_1
    iget-wide v1, v0, Lcom/qh/xcad/XCadVehiclePoint;->x:D

    iget-wide v3, v0, Lcom/qh/xcad/XCadVehiclePoint;->y:D

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object v0

    const/4 v1, 0x0

    .line 2105
    aget v2, v0, v1

    const/4 v1, 0x1

    .line 2106
    aget v3, v0, v1

    .line 2109
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->vehiclePoint:Lcom/qh/xcad/XCadVehiclePoint;

    iget-boolean v4, v0, Lcom/qh/xcad/XCadVehiclePoint;->drawAxis:Z

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, -0x1

    if-eqz v4, :cond_2

    .line 2110
    iget-wide v4, v0, Lcom/qh/xcad/XCadVehiclePoint;->heading:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 2111
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 2112
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    neg-double v11, v4

    .line 2117
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 2118
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 2119
    iget v0, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v0, v0, v9

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2120
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-wide v0, v6

    move-wide v6, v4

    move-wide v4, v0

    move-object v0, p0

    move-object v1, p1

    .line 2122
    invoke-direct/range {v0 .. v8}, Lcom/qh/xcad/XCadView;->drawInfiniteLine(Landroid/graphics/Canvas;FFDDLandroid/graphics/Paint;)V

    move-wide v6, v4

    move-wide v4, v11

    .line 2123
    invoke-direct/range {v0 .. v8}, Lcom/qh/xcad/XCadView;->drawInfiniteLine(Landroid/graphics/Canvas;FFDDLandroid/graphics/Paint;)V

    .line 2127
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2130
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2132
    iget v2, p0, Lcom/qh/xcad/XCadView;->density:F

    const/high16 v3, 0x41900000    # 18.0f

    mul-float v4, v2, v3

    iget v5, p0, Lcom/qh/xcad/XCadView;->vehiclePulse:F

    const/high16 v6, 0x41000000    # 8.0f

    mul-float v5, v5, v6

    mul-float v5, v5, v2

    add-float/2addr v4, v5

    .line 2135
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->glowPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2136
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->glowPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x33ff0000

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2137
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->glowPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v7, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 2139
    iget v4, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v4, v4, v2

    .line 2141
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->vehiclePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2142
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->vehiclePaint:Landroid/graphics/Paint;

    const/high16 v8, -0x10000

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 2143
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->vehiclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v7, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2145
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->vehiclePaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2146
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->vehiclePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 2147
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->vehiclePaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v10, v10, v9

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2148
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->vehiclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v7, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2152
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->vehiclePoint:Lcom/qh/xcad/XCadVehiclePoint;

    iget-wide v9, v2, Lcom/qh/xcad/XCadVehiclePoint;->heading:D

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2153
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->vehiclePoint:Lcom/qh/xcad/XCadVehiclePoint;

    iget-wide v9, v2, Lcom/qh/xcad/XCadVehiclePoint;->heading:D

    double-to-float v2, v9

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2155
    iget v2, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v4, v2, v3

    const/high16 v9, 0x41600000    # 14.0f

    mul-float v9, v9, v2

    mul-float v2, v2, v3

    .line 2159
    iget-object v3, p0, Lcom/qh/xcad/XCadView;->vehiclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2160
    iget-object v3, p0, Lcom/qh/xcad/XCadView;->vehiclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 2161
    iget-object v3, p0, Lcom/qh/xcad/XCadView;->vehiclePaint:Landroid/graphics/Paint;

    const/high16 v10, 0x40400000    # 3.0f

    iget v11, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v11, v11, v10

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2162
    iget-object v3, p0, Lcom/qh/xcad/XCadView;->vehiclePaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2163
    iget-object v3, p0, Lcom/qh/xcad/XCadView;->vehiclePaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 2165
    iget-object v3, p0, Lcom/qh/xcad/XCadView;->vehiclePath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 2167
    iget-object v3, p0, Lcom/qh/xcad/XCadView;->vehiclePath:Landroid/graphics/Path;

    neg-float v10, v2

    neg-float v4, v4

    invoke-virtual {v3, v10, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2168
    iget-object v3, p0, Lcom/qh/xcad/XCadView;->vehiclePath:Landroid/graphics/Path;

    const v11, 0x3f99999a    # 1.2f

    mul-float v10, v10, v11

    const v12, 0x3ecccccd    # 0.4f

    mul-float v12, v12, v9

    sub-float v12, v4, v12

    sub-float v9, v4, v9

    invoke-virtual {v3, v10, v12, v7, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 2172
    iget-object v3, p0, Lcom/qh/xcad/XCadView;->vehiclePath:Landroid/graphics/Path;

    mul-float v11, v11, v2

    invoke-virtual {v3, v11, v12, v2, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 2175
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->vehiclePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/qh/xcad/XCadView;->vehiclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2178
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->vehiclePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2179
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->vehiclePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 2180
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->vehiclePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2181
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->vehiclePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 2183
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->vehiclePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 2184
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->vehiclePath:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2185
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->vehiclePath:Landroid/graphics/Path;

    iget v3, p0, Lcom/qh/xcad/XCadView;->density:F

    const/high16 v4, -0x3f400000    # -6.0f

    mul-float v4, v4, v3

    mul-float v3, v3, v6

    add-float/2addr v3, v9

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2186
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->vehiclePath:Landroid/graphics/Path;

    iget v3, p0, Lcom/qh/xcad/XCadView;->density:F

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float v4, v4, v3

    mul-float v3, v3, v6

    add-float/2addr v9, v3

    invoke-virtual {v2, v4, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2187
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->vehiclePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 2188
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->vehiclePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/qh/xcad/XCadView;->vehiclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2191
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawVisLinePoints(Landroid/graphics/Canvas;)V
    .locals 15

    .line 2631
    iget-object v1, p0, Lcom/qh/xcad/XCadView;->markerHits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2633
    iget-object v1, p0, Lcom/qh/xcad/XCadView;->selectedIndicePoints:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 2637
    :cond_0
    iget-object v8, v1, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    .line 2639
    iget-object v1, p0, Lcom/qh/xcad/XCadView;->selectedIndicePoints:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2640
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1

    .line 2641
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    goto :goto_0

    .line 2642
    :cond_2
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/qh/xcad/XCadEntity;

    .line 2643
    iget-object v3, v10, Lcom/qh/xcad/XCadEntity;->points:[D

    if-nez v3, :cond_3

    goto :goto_0

    .line 2648
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2649
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_4

    .line 2651
    invoke-virtual {v10}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v5

    if-lt v3, v5, :cond_5

    goto :goto_1

    .line 2654
    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qh/xcad/XCadView$IndicePointStyle;

    .line 2655
    iget v7, v1, Lcom/qh/xcad/XCadView$IndicePointStyle;->color:I

    .line 2658
    iget-object v5, v1, Lcom/qh/xcad/XCadView$IndicePointStyle;->displayNumber:Ljava/lang/Integer;

    if-nez v5, :cond_6

    move-object v12, v4

    goto :goto_3

    .line 2660
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_7

    .line 2661
    iget-object v1, v1, Lcom/qh/xcad/XCadView$IndicePointStyle;->displayNumber:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    move-object v12, v1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    .line 2664
    :goto_3
    invoke-virtual {v10, v3}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v4

    .line 2665
    invoke-virtual {v10, v3}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v13

    .line 2666
    invoke-direct {p0, v4, v5, v13, v14}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object v4

    .line 2667
    iget v1, p0, Lcom/qh/xcad/XCadView;->density:F

    const/high16 v5, 0x420c0000    # 35.0f

    mul-float v5, v5, v1

    const/high16 v6, 0x41600000    # 14.0f

    mul-float v6, v6, v1

    .line 2669
    iget-object v13, p0, Lcom/qh/xcad/XCadView;->markerHits:Ljava/util/List;

    new-instance v0, Lcom/qh/xcad/XCadView$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/qh/xcad/XCadView$3;-><init>(Lcom/qh/xcad/XCadView;II[FFF)V

    move v14, v2

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2680
    invoke-virtual {v10, v3}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v0

    invoke-virtual {v10, v3}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v4

    move-wide v2, v0

    move-object v6, v12

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/qh/xcad/XCadView;->paintVisLinePoint(Landroid/graphics/Canvas;DDLjava/lang/Integer;I)V

    move v2, v14

    goto :goto_1

    :cond_8
    :goto_4
    return-void
.end method

.method private drawXCadItemAreaCicle(Landroid/graphics/Canvas;DDF)V
    .locals 0

    .line 1837
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object p2

    const/4 p3, 0x0

    .line 1838
    aget p3, p2, p3

    const/4 p4, 0x1

    .line 1839
    aget p2, p2, p4

    .line 1840
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1842
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1844
    iget-object p2, p0, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1845
    iget-object p2, p0, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    const p3, -0xd72da4

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1846
    iget-object p2, p0, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p6, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1848
    iget-object p2, p0, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1849
    iget-object p2, p0, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    const/4 p4, -0x1

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1850
    iget-object p2, p0, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    const/high16 p4, 0x40000000    # 2.0f

    iget p5, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float p5, p5, p4

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1851
    iget-object p2, p0, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p3, p6, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1853
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawXCadItemAreaPoint(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1695
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->xCadItemAreaPoint:Lcom/qh/xcad/XCadItemAreaPoint;

    if-eqz v0, :cond_d

    iget-object v1, v0, Lcom/qh/xcad/XCadItemAreaPoint;->itemAreaPosition:[Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    if-eqz v1, :cond_d

    iget-boolean v0, v0, Lcom/qh/xcad/XCadItemAreaPoint;->visible:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 1701
    :cond_0
    array-length v0, v1

    if-nez v0, :cond_1

    goto/16 :goto_6

    .line 1706
    :cond_1
    iget v2, p0, Lcom/qh/xcad/XCadView;->density:F

    const/high16 v3, 0x41000000    # 8.0f

    mul-float v10, v2, v3

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 1709
    aget-object v0, v1, v2

    if-eqz v0, :cond_2

    .line 1712
    iget-wide v6, v0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->x:D

    iget-wide v8, v0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->y:D

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/qh/xcad/XCadView;->drawXCadItemAreaCicle(Landroid/graphics/Canvas;DDF)V

    .line 1716
    iget-boolean p1, v0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->infoVis:Z

    if-eqz p1, :cond_2

    .line 1717
    iget-wide v6, v0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->x:D

    iget-wide v8, v0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->y:D

    iget-object v11, v0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->info:Ljava/lang/String;

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/qh/xcad/XCadView;->drawXCadItemAreaText(Landroid/graphics/Canvas;DDFLjava/lang/String;)V

    move-object p1, v4

    return-void

    :cond_2
    move-object p1, p0

    goto/16 :goto_6

    :cond_3
    move-object v5, p1

    move-object p1, p0

    .line 1725
    iget-object v1, p1, Lcom/qh/xcad/XCadView;->itemAreaPointPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/4 v1, 0x0

    const/4 v6, 0x1

    :goto_0
    if-ge v1, v0, :cond_6

    .line 1729
    iget-object v7, p1, Lcom/qh/xcad/XCadView;->xCadItemAreaPoint:Lcom/qh/xcad/XCadItemAreaPoint;

    iget-object v7, v7, Lcom/qh/xcad/XCadItemAreaPoint;->itemAreaPosition:[Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    aget-object v7, v7, v1

    if-nez v7, :cond_4

    goto :goto_1

    .line 1734
    :cond_4
    iget-wide v8, v7, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->x:D

    .line 1735
    iget-wide v11, v7, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->y:D

    .line 1736
    invoke-direct {p0, v8, v9, v11, v12}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object v7

    if-eqz v6, :cond_5

    .line 1738
    iget-object v6, p1, Lcom/qh/xcad/XCadView;->itemAreaPointPath:Landroid/graphics/Path;

    aget v8, v7, v2

    aget v7, v7, v4

    invoke-virtual {v6, v8, v7}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v6, 0x0

    goto :goto_1

    .line 1742
    :cond_5
    iget-object v8, p1, Lcom/qh/xcad/XCadView;->itemAreaPointPath:Landroid/graphics/Path;

    aget v9, v7, v2

    aget v7, v7, v4

    invoke-virtual {v8, v9, v7}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1745
    :cond_6
    iget-object v1, p1, Lcom/qh/xcad/XCadView;->xCadItemAreaPoint:Lcom/qh/xcad/XCadItemAreaPoint;

    iget-object v1, v1, Lcom/qh/xcad/XCadItemAreaPoint;->xCadItemAreaStyle:Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;

    iget-boolean v1, v1, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->closed:Z

    if-eqz v1, :cond_7

    .line 1746
    iget-object v1, p1, Lcom/qh/xcad/XCadView;->itemAreaPointPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 1749
    :cond_7
    iget-object v1, p1, Lcom/qh/xcad/XCadView;->xCadItemAreaPoint:Lcom/qh/xcad/XCadItemAreaPoint;

    iget-object v1, v1, Lcom/qh/xcad/XCadItemAreaPoint;->xCadItemAreaStyle:Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;

    iget-boolean v1, v1, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->fill:Z

    if-eqz v1, :cond_8

    .line 1750
    iget-object v1, p1, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1752
    iget-object v1, p1, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    const v4, 0x5528d25c    # 1.160134E13f

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1753
    iget-object v1, p1, Lcom/qh/xcad/XCadView;->itemAreaPointPath:Landroid/graphics/Path;

    iget-object v4, p1, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1759
    :cond_8
    iget-object v1, p1, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1761
    iget-object v1, p1, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    const v4, 0x4d28d25c    # 1.770224E8f

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1762
    iget-object v1, p1, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    iget v4, p1, Lcom/qh/xcad/XCadView;->density:F

    mul-float v4, v4, v3

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1763
    iget-object v1, p1, Lcom/qh/xcad/XCadView;->itemAreaPointPath:Landroid/graphics/Path;

    iget-object v3, p1, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1764
    iget-object v1, p1, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    const v3, -0xd72da4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1765
    iget-object v1, p1, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    iget v4, p1, Lcom/qh/xcad/XCadView;->density:F

    mul-float v4, v4, v3

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1766
    iget-object v1, p1, Lcom/qh/xcad/XCadView;->itemAreaPointPath:Landroid/graphics/Path;

    iget-object v3, p1, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1768
    iget-object v1, p1, Lcom/qh/xcad/XCadView;->xCadItemAreaPoint:Lcom/qh/xcad/XCadItemAreaPoint;

    iget-object v1, v1, Lcom/qh/xcad/XCadItemAreaPoint;->xCadItemAreaStyle:Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;

    iget-boolean v1, v1, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->drawPointCircle:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_a

    .line 1770
    iget-object v3, p1, Lcom/qh/xcad/XCadView;->xCadItemAreaPoint:Lcom/qh/xcad/XCadItemAreaPoint;

    iget-object v3, v3, Lcom/qh/xcad/XCadItemAreaPoint;->itemAreaPosition:[Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    aget-object v3, v3, v1

    if-nez v3, :cond_9

    move-object v4, p1

    goto :goto_3

    .line 1775
    :cond_9
    iget-wide v6, v3, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->x:D

    .line 1776
    iget-wide v8, v3, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->y:D

    move-object v4, p1

    .line 1777
    invoke-direct/range {v4 .. v10}, Lcom/qh/xcad/XCadView;->drawXCadItemAreaCicle(Landroid/graphics/Canvas;DDF)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move-object p1, v4

    goto :goto_2

    :cond_a
    move-object v4, p1

    :goto_4
    if-ge v2, v0, :cond_d

    .line 1786
    iget-object p1, v4, Lcom/qh/xcad/XCadView;->xCadItemAreaPoint:Lcom/qh/xcad/XCadItemAreaPoint;

    iget-object p1, p1, Lcom/qh/xcad/XCadItemAreaPoint;->itemAreaPosition:[Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    aget-object p1, p1, v2

    if-nez p1, :cond_b

    goto :goto_5

    .line 1791
    :cond_b
    iget-boolean v1, p1, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->infoVis:Z

    if-nez v1, :cond_c

    goto :goto_5

    .line 1794
    :cond_c
    iget-wide v6, p1, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->x:D

    .line 1795
    iget-wide v8, p1, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->y:D

    .line 1796
    iget-object v11, p1, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->info:Ljava/lang/String;

    invoke-direct/range {v4 .. v11}, Lcom/qh/xcad/XCadView;->drawXCadItemAreaText(Landroid/graphics/Canvas;DDFLjava/lang/String;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    move-object v4, p0

    goto :goto_4

    :cond_d
    :goto_6
    return-void
.end method

.method private drawXCadItemAreaText(Landroid/graphics/Canvas;DDFLjava/lang/String;)V
    .locals 1

    if-eqz p7, :cond_1

    .line 1809
    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1812
    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object p2

    const/4 p3, 0x0

    .line 1813
    aget p3, p2, p3

    const/4 p4, 0x1

    .line 1814
    aget p2, p2, p4

    .line 1815
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1817
    iget-object p4, p0, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1818
    iget-object p4, p0, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    const/4 p5, -0x1

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1820
    iget-object p4, p0, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    const/high16 p5, 0x41600000    # 14.0f

    iget v0, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v0, v0, p5

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1822
    iget-object p4, p0, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1824
    iget-object p4, p0, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p4

    sub-float/2addr p2, p6

    const/high16 p5, 0x40a00000    # 5.0f

    .line 1826
    iget p6, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float p6, p6, p5

    sub-float/2addr p2, p6

    .line 1828
    iget p4, p4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr p2, p4

    .line 1830
    iget-object p4, p0, Lcom/qh/xcad/XCadView;->itemAreaPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p7, p3, p2, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1832
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method private entityDist2(Lcom/qh/xcad/XCadEntity;DD)D
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1484
    invoke-virtual {v1}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 1486
    invoke-virtual {v1, v3}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v4

    iget-wide v6, v0, Lcom/qh/xcad/XCadView;->cx:D

    sub-double/2addr v4, v6

    sub-double v4, v4, p2

    .line 1487
    invoke-virtual {v1, v3}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v1

    iget-wide v6, v0, Lcom/qh/xcad/XCadView;->cy:D

    sub-double/2addr v1, v6

    neg-double v1, v1

    sub-double v1, v1, p4

    mul-double v4, v4, v4

    mul-double v1, v1, v1

    add-double/2addr v4, v1

    return-wide v4

    .line 1491
    :cond_0
    invoke-virtual {v1, v3}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v5

    iget-wide v7, v0, Lcom/qh/xcad/XCadView;->cx:D

    sub-double/2addr v5, v7

    .line 1492
    invoke-virtual {v1, v3}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v7

    iget-wide v9, v0, Lcom/qh/xcad/XCadView;->cy:D

    sub-double/2addr v7, v9

    neg-double v7, v7

    const-wide/high16 v9, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide/from16 v17, v9

    :goto_0
    if-ge v4, v2, :cond_2

    .line 1494
    invoke-virtual {v1, v4}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v9

    iget-wide v11, v0, Lcom/qh/xcad/XCadView;->cx:D

    sub-double/2addr v9, v11

    .line 1495
    invoke-virtual {v1, v4}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v11

    iget-wide v13, v0, Lcom/qh/xcad/XCadView;->cy:D

    sub-double/2addr v11, v13

    neg-double v11, v11

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    .line 1496
    invoke-static/range {v5 .. v16}, Lcom/qh/xcad/XCadView;->segDist2(DDDDDD)D

    move-result-wide v5

    cmpg-double v7, v5, v17

    if-gez v7, :cond_1

    move-wide/from16 v17, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move-wide v5, v9

    move-wide v7, v11

    goto :goto_0

    .line 1501
    :cond_2
    invoke-virtual {v1}, Lcom/qh/xcad/XCadEntity;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    if-le v2, v4, :cond_3

    .line 1502
    invoke-virtual {v1, v3}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v9

    iget-wide v11, v0, Lcom/qh/xcad/XCadView;->cx:D

    sub-double/2addr v9, v11

    .line 1503
    invoke-virtual {v1, v3}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v1

    iget-wide v3, v0, Lcom/qh/xcad/XCadView;->cy:D

    sub-double/2addr v1, v3

    neg-double v11, v1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    .line 1504
    invoke-static/range {v5 .. v16}, Lcom/qh/xcad/XCadView;->segDist2(DDDDDD)D

    move-result-wide v1

    cmpg-double v3, v1, v17

    if-gez v3, :cond_3

    return-wide v1

    :cond_3
    return-wide v17
.end method

.method private fillFor(I)Landroid/graphics/Path;
    .locals 2

    .line 992
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->fillByColor:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 994
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 995
    iget-object v1, p0, Lcom/qh/xcad/XCadView;->fillByColor:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private finishLoading()V
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->progressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 447
    :cond_0
    iget v0, p0, Lcom/qh/xcad/XCadView;->loadingProgress:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/qh/xcad/XCadView;->progressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xb4

    .line 448
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 449
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/qh/xcad/XCadView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qh/xcad/XCadView$$ExternalSyntheticLambda1;-><init>(Lcom/qh/xcad/XCadView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 453
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 454
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/qh/xcad/XCadView$1;

    invoke-direct {v1, p0}, Lcom/qh/xcad/XCadView$1;-><init>(Lcom/qh/xcad/XCadView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private fit(II)V
    .locals 19

    move-object/from16 v0, p0

    .line 1065
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    if-nez v1, :cond_0

    return-void

    .line 1066
    :cond_0
    iget-object v1, v1, Lcom/qh/xcad/XCadScene;->bbox:[D

    const/high16 v2, 0x41c00000    # 24.0f

    .line 1067
    iget v3, v0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v3, v3, v2

    float-to-double v2, v3

    const/4 v4, 0x3

    .line 1068
    aget-wide v4, v1, v4

    const/4 v6, 0x0

    aget-wide v6, v1, v6

    sub-double/2addr v4, v6

    const/4 v6, 0x4

    aget-wide v6, v1, v6

    const/4 v8, 0x1

    aget-wide v9, v1, v8

    sub-double/2addr v6, v9

    const-wide/16 v11, 0x0

    cmpg-double v1, v4, v11

    if-gtz v1, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :cond_1
    cmpg-double v1, v6, v11

    if-gtz v1, :cond_2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    :cond_2
    move/from16 v1, p1

    int-to-double v13, v1

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v15

    sub-double v17, v13, v2

    div-double v4, v17, v4

    move/from16 v1, p2

    int-to-double v9, v1

    sub-double v1, v9, v2

    div-double/2addr v1, v6

    .line 1073
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 1074
    invoke-static {v1, v2}, Lcom/qh/xcad/XCadView$$ExternalSyntheticBackport0;->m(D)Z

    move-result v3

    if-eqz v3, :cond_3

    cmpg-double v3, v1, v11

    if-gtz v3, :cond_4

    :cond_3
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 1075
    :cond_4
    iput-wide v1, v0, Lcom/qh/xcad/XCadView;->fitScale:D

    .line 1076
    iput-wide v1, v0, Lcom/qh/xcad/XCadView;->scale:D

    div-double/2addr v13, v15

    .line 1079
    iput-wide v13, v0, Lcom/qh/xcad/XCadView;->tx:D

    div-double/2addr v9, v15

    .line 1080
    iput-wide v9, v0, Lcom/qh/xcad/XCadView;->ty:D

    .line 1082
    iput-boolean v8, v0, Lcom/qh/xcad/XCadView;->cacheDirty:Z

    return-void
.end method

.method private fitBtnCx()F
    .locals 3

    .line 2837
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    iget v2, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->fitBtnRadius()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private fitBtnCy()F
    .locals 3

    .line 2841
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    iget v2, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->fitBtnRadius()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private fitBtnRadius()F
    .locals 2

    const/high16 v0, 0x41b80000    # 23.0f

    .line 2833
    iget v1, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v1, v1, v0

    return v1
.end method

.method private focalSpan(Landroid/view/MotionEvent;I)[F
    .locals 12

    const/4 v0, 0x1

    .line 1305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    if-ne v4, p2, :cond_0

    goto :goto_1

    .line 1310
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v6, v8

    .line 1311
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    add-float/2addr v7, v8

    add-int/2addr v5, v0

    :goto_1
    add-int/2addr v4, v0

    goto :goto_0

    :cond_1
    if-nez v5, :cond_2

    const/4 v5, 0x1

    :cond_2
    int-to-float v4, v5

    div-float/2addr v6, v4

    div-float/2addr v7, v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_4

    if-ne v5, p2, :cond_3

    goto :goto_3

    .line 1320
    :cond_3
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    sub-float/2addr v8, v6

    float-to-double v8, v8

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    sub-float/2addr v10, v7

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    add-float/2addr v2, v8

    :goto_3
    add-int/2addr v5, v0

    goto :goto_2

    :cond_4
    div-float/2addr v2, v4

    const/4 p1, 0x3

    .line 1323
    new-array p1, p1, [F

    aput v6, p1, v3

    aput v7, p1, v0

    const/4 p2, 0x2

    aput v2, p1, p2

    return-object p1
.end method

.method private getCADColor(I)I
    .locals 2

    const/16 v0, 0x100

    if-ne p1, v0, :cond_0

    const/4 p1, 0x7

    :cond_0
    const v0, 0xffffff

    const/high16 v1, -0x1000000

    packed-switch p1, :pswitch_data_0

    return p1

    .line 2412
    :pswitch_0
    iget p1, p0, Lcom/qh/xcad/XCadView;->backgroundColor:I

    :goto_0
    not-int p1, p1

    and-int/2addr p1, v0

    or-int/2addr p1, v1

    return p1

    :pswitch_1
    const p1, -0xff01

    return p1

    :pswitch_2
    const p1, -0xffff01

    return p1

    :pswitch_3
    const p1, -0xff0001

    return p1

    :pswitch_4
    const p1, -0xff0100

    return p1

    :pswitch_5
    const/16 p1, -0x100

    return p1

    :pswitch_6
    const/high16 p1, -0x10000

    return p1

    .line 2398
    :pswitch_7
    iget p1, p0, Lcom/qh/xcad/XCadView;->backgroundColor:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleMarkerTap(FF)Z
    .locals 8

    .line 1340
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->markerHits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->markerHits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qh/xcad/XCadView$MarkerHit;

    .line 1346
    iget v3, v2, Lcom/qh/xcad/XCadView$MarkerHit;->bubbleX:F

    sub-float v3, p1, v3

    .line 1347
    iget v4, v2, Lcom/qh/xcad/XCadView$MarkerHit;->bubbleY:F

    sub-float v4, p2, v4

    mul-float v3, v3, v3

    mul-float v4, v4, v4

    add-float/2addr v3, v4

    .line 1349
    iget v4, v2, Lcom/qh/xcad/XCadView$MarkerHit;->bubbleRadius:F

    mul-float v4, v4, v4

    const/4 v5, 0x1

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    .line 1350
    iget-object p1, p0, Lcom/qh/xcad/XCadView;->onMarkerClickListener:Lcom/qh/xcad/XCadView$OnMarkerClickListener;

    if-eqz p1, :cond_2

    .line 1351
    iget p2, v2, Lcom/qh/xcad/XCadView$MarkerHit;->entityIndex:I

    iget v0, v2, Lcom/qh/xcad/XCadView$MarkerHit;->pointIndex:I

    invoke-interface {p1, p2, v0}, Lcom/qh/xcad/XCadView$OnMarkerClickListener;->onMarkerClick(II)V

    :cond_2
    return v5

    .line 1360
    :cond_3
    iget v3, v2, Lcom/qh/xcad/XCadView$MarkerHit;->sx:F

    sub-float v3, p1, v3

    .line 1361
    iget v4, v2, Lcom/qh/xcad/XCadView$MarkerHit;->sy:F

    sub-float v4, p2, v4

    const/high16 v6, 0x41200000    # 10.0f

    .line 1363
    iget v7, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v7, v7, v6

    mul-float v3, v3, v3

    mul-float v4, v4, v4

    add-float/2addr v3, v4

    mul-float v7, v7, v7

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_1

    .line 1366
    iget-object p1, p0, Lcom/qh/xcad/XCadView;->onMarkerClickListener:Lcom/qh/xcad/XCadView$OnMarkerClickListener;

    if-eqz p1, :cond_4

    .line 1367
    iget p2, v2, Lcom/qh/xcad/XCadView$MarkerHit;->entityIndex:I

    iget v0, v2, Lcom/qh/xcad/XCadView$MarkerHit;->pointIndex:I

    invoke-interface {p1, p2, v0}, Lcom/qh/xcad/XCadView$OnMarkerClickListener;->onMarkerClick(II)V

    :cond_4
    return v5

    :cond_5
    return v1
.end method

.method private handleTap(FF)V
    .locals 21

    move-object/from16 v0, p0

    .line 1382
    iget-wide v1, v0, Lcom/qh/xcad/XCadView;->scale:D

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-lez v5, :cond_12

    iget-object v3, v0, Lcom/qh/xcad/XCadView;->hitIndices:[I

    array-length v3, v3

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    if-nez v3, :cond_0

    goto/16 :goto_9

    :cond_0
    move/from16 v4, p1

    float-to-double v4, v4

    .line 1383
    iget-wide v6, v0, Lcom/qh/xcad/XCadView;->tx:D

    sub-double/2addr v4, v6

    div-double/2addr v4, v1

    move/from16 v6, p2

    float-to-double v6, v6

    .line 1384
    iget-wide v8, v0, Lcom/qh/xcad/XCadView;->ty:D

    sub-double/2addr v6, v8

    div-double/2addr v6, v1

    .line 1385
    iget v8, v0, Lcom/qh/xcad/XCadView;->hitTolPx:F

    float-to-double v8, v8

    div-double/2addr v8, v1

    mul-double v10, v8, v8

    .line 1388
    iget-object v12, v3, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/4 v3, -0x1

    move-wide v14, v1

    const/4 v1, 0x0

    .line 1391
    :goto_0
    iget-object v2, v0, Lcom/qh/xcad/XCadView;->hitIndices:[I

    array-length v13, v2

    if-ge v1, v13, :cond_4

    mul-int/lit8 v13, v1, 0x4

    move/from16 p2, v1

    .line 1393
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->hitBounds:[D

    aget-wide v16, v1, v13

    sub-double v16, v16, v8

    cmpg-double v18, v4, v16

    if-ltz v18, :cond_1

    add-int/lit8 v16, v13, 0x2

    aget-wide v16, v1, v16

    add-double v16, v16, v8

    cmpl-double v18, v4, v16

    if-gtz v18, :cond_1

    add-int/lit8 v16, v13, 0x1

    aget-wide v16, v1, v16

    sub-double v16, v16, v8

    cmpg-double v18, v6, v16

    if-ltz v18, :cond_1

    add-int/lit8 v13, v13, 0x3

    aget-wide v16, v1, v13

    add-double v16, v16, v8

    cmpl-double v1, v6, v16

    if-lez v1, :cond_2

    :cond_1
    move-wide/from16 v19, v6

    move v7, v3

    move-wide v2, v4

    move-wide/from16 v4, v19

    move/from16 v6, p2

    goto :goto_1

    .line 1397
    :cond_2
    aget v13, v2, p2

    .line 1398
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qh/xcad/XCadEntity;

    move-wide/from16 v19, v6

    move v7, v3

    move-wide v2, v4

    move-wide/from16 v4, v19

    move/from16 v6, p2

    invoke-direct/range {v0 .. v5}, Lcom/qh/xcad/XCadView;->entityDist2(Lcom/qh/xcad/XCadEntity;DD)D

    move-result-wide v16

    cmpg-double v1, v16, v14

    if-gez v1, :cond_3

    move-wide/from16 v14, v16

    goto :goto_2

    :cond_3
    :goto_1
    move v13, v7

    :goto_2
    add-int/lit8 v1, v6, 0x1

    move-wide v6, v4

    move-wide v4, v2

    move v3, v13

    goto :goto_0

    :cond_4
    move v7, v3

    if-ltz v7, :cond_f

    cmpl-double v1, v14, v10

    if-lez v1, :cond_5

    goto/16 :goto_7

    .line 1418
    :cond_5
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->selectedIndices:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1420
    iget-boolean v1, v0, Lcom/qh/xcad/XCadView;->selectSingleLine:Z

    if-eqz v1, :cond_6

    .line 1421
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->selectedIndices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1423
    invoke-virtual {v0}, Lcom/qh/xcad/XCadView;->retainCheckedSelectIndicePoints()V

    .line 1426
    :cond_6
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->selectedIndices:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1428
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->selectedIndicePoints:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_7

    .line 1430
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1431
    iget-object v2, v0, Lcom/qh/xcad/XCadView;->selectedIndicePoints:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    :cond_7
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qh/xcad/XCadEntity;

    .line 1435
    iget-object v3, v2, Lcom/qh/xcad/XCadEntity;->points:[D

    if-eqz v3, :cond_9

    const/4 v13, 0x0

    .line 1436
    :goto_3
    invoke-virtual {v2}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v3

    if-ge v13, v3, :cond_9

    .line 1437
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qh/xcad/XCadView$IndicePointStyle;

    if-eqz v3, :cond_8

    .line 1439
    iget v3, v3, Lcom/qh/xcad/XCadView$IndicePointStyle;->color:I

    iget v4, v0, Lcom/qh/xcad/XCadView;->touchHighlightCheckColor:I

    if-ne v3, v4, :cond_8

    goto :goto_4

    .line 1442
    :cond_8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/qh/xcad/XCadView$IndicePointStyle;

    iget v5, v0, Lcom/qh/xcad/XCadView;->touchHighlightColor:I

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/qh/xcad/XCadView$IndicePointStyle;-><init>(ILjava/lang/Integer;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1446
    :cond_9
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->entityClickListener:Lcom/qh/xcad/XCadView$OnEntityClickListener;

    if-eqz v1, :cond_11

    if-ltz v7, :cond_11

    .line 1447
    invoke-interface {v1, v7, v2}, Lcom/qh/xcad/XCadView$OnEntityClickListener;->onEntityClick(ILcom/qh/xcad/XCadEntity;)V

    goto/16 :goto_8

    .line 1451
    :cond_a
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->selectedIndicePoints:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_e

    .line 1453
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1454
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1455
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qh/xcad/XCadView$IndicePointStyle;

    iget v5, v5, Lcom/qh/xcad/XCadView$IndicePointStyle;->color:I

    iget v6, v0, Lcom/qh/xcad/XCadView;->touchHighlightCheckColor:I

    if-eq v5, v6, :cond_b

    .line 1456
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1459
    :cond_c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1460
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1462
    :cond_d
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1463
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->selectedIndicePoints:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    :cond_e
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->entityClickListener:Lcom/qh/xcad/XCadView$OnEntityClickListener;

    if-eqz v1, :cond_11

    if-ltz v7, :cond_11

    .line 1468
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qh/xcad/XCadEntity;

    invoke-interface {v1, v7, v2}, Lcom/qh/xcad/XCadView$OnEntityClickListener;->onEntityCancel(ILcom/qh/xcad/XCadEntity;)V

    goto :goto_8

    .line 1407
    :cond_f
    :goto_7
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->selectedIndices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_9

    .line 1408
    :cond_10
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->selectedIndices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1410
    invoke-virtual {v0}, Lcom/qh/xcad/XCadView;->retainCheckedSelectIndicePoints()V

    .line 1412
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->entityClickListener:Lcom/qh/xcad/XCadView$OnEntityClickListener;

    if-eqz v1, :cond_11

    .line 1413
    invoke-interface {v1}, Lcom/qh/xcad/XCadView$OnEntityClickListener;->onEntityClear()V

    .line 1475
    :cond_11
    :goto_8
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1476
    invoke-direct {v0}, Lcom/qh/xcad/XCadView;->notifySelection()V

    :cond_12
    :goto_9
    return-void
.end method

.method private handleTapOrDoubleTap(FF)V
    .locals 9

    .line 1147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1149
    iget v2, p0, Lcom/qh/xcad/XCadView;->lastTapX:F

    sub-float v2, p1, v2

    .line 1150
    iget v3, p0, Lcom/qh/xcad/XCadView;->lastTapY:F

    sub-float v3, p2, v3

    .line 1153
    iget-wide v4, p0, Lcom/qh/xcad/XCadView;->lastTapTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x12c

    cmp-long v8, v4, v6

    if-gtz v8, :cond_0

    mul-float v2, v2, v2

    mul-float v3, v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/qh/xcad/XCadView;->touchSlop:I

    mul-int v3, v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v3, v3, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 1159
    sget-object p1, Lcom/qh/xcad/XCadView;->mainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/qh/xcad/XCadView;->singleTapRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x0

    .line 1161
    iput-wide p1, p0, Lcom/qh/xcad/XCadView;->lastTapTime:J

    .line 1164
    invoke-virtual {p0}, Lcom/qh/xcad/XCadView;->fitToScreen()V

    return-void

    .line 1166
    :cond_0
    iput-wide v0, p0, Lcom/qh/xcad/XCadView;->lastTapTime:J

    .line 1167
    iput p1, p0, Lcom/qh/xcad/XCadView;->lastTapX:F

    .line 1168
    iput p2, p0, Lcom/qh/xcad/XCadView;->lastTapY:F

    .line 1171
    sget-object p1, Lcom/qh/xcad/XCadView;->mainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/qh/xcad/XCadView;->singleTapRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1172
    iget-object p2, p0, Lcom/qh/xcad/XCadView;->singleTapRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private hasContent()Z
    .locals 3

    .line 2384
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2385
    :cond_0
    iget-object v0, v0, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qh/xcad/XCadEntity;

    .line 2386
    invoke-virtual {v2}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private insideFitButton(FF)Z
    .locals 2

    .line 2845
    iget-boolean v0, p0, Lcom/qh/xcad/XCadView;->showControls:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2846
    :cond_0
    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->fitBtnCx()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->fitBtnCy()F

    move-result v0

    sub-float/2addr p2, v0

    .line 2847
    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->fitBtnRadius()F

    move-result v0

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    mul-float v0, v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private isSnappable(Ljava/lang/String;)Z
    .locals 6

    .line 1522
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->layerSnappable:Lcom/qh/xcad/XCadView$LayerSnappable;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/qh/xcad/XCadView$LayerSnappable;->isSnappable(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 1523
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1524
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1525
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 1526
    :cond_2
    sget-object v1, Lcom/qh/xcad/XCadView;->AUX_LAYER_KEYWORDS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 1527
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method private maxScale()D
    .locals 4

    .line 1090
    iget-wide v0, p0, Lcom/qh/xcad/XCadView;->fitScale:D

    const-wide v2, 0x41286a0000000000L    # 800000.0

    mul-double v0, v0, v2

    return-wide v0
.end method

.method private minScale()D
    .locals 4

    .line 1086
    iget-wide v0, p0, Lcom/qh/xcad/XCadView;->fitScale:D

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double v0, v0, v2

    return-wide v0
.end method

.method private notifySelection()V
    .locals 3

    .line 1533
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->selectionListener:Lcom/qh/xcad/XCadView$OnSelectionChangedListener;

    if-eqz v0, :cond_0

    .line 1534
    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/qh/xcad/XCadView;->selectedIndices:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/qh/xcad/XCadView$OnSelectionChangedListener;->onSelectionChanged(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method private paintHighlight(Landroid/graphics/Canvas;Lcom/qh/xcad/XCadEntity;II)V
    .locals 9

    .line 2547
    invoke-virtual {p2}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const v2, 0xffffff

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    .line 2551
    iget v4, p2, Lcom/qh/xcad/XCadEntity;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    .line 2564
    :cond_1
    invoke-virtual {p2, v3}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v4

    invoke-virtual {p2, v3}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object v4

    .line 2565
    iget-object v5, p0, Lcom/qh/xcad/XCadView;->highlightPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 2566
    iget-object v5, p0, Lcom/qh/xcad/XCadView;->highlightPath:Landroid/graphics/Path;

    aget v6, v4, v3

    aget v4, v4, v1

    invoke-virtual {v5, v6, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v0, :cond_2

    .line 2569
    invoke-virtual {p2, v4}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v5

    invoke-virtual {p2, v4}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v7

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object v5

    .line 2570
    iget-object v6, p0, Lcom/qh/xcad/XCadView;->highlightPath:Landroid/graphics/Path;

    aget v7, v5, v3

    aget v5, v5, v1

    invoke-virtual {v6, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2572
    :cond_2
    invoke-virtual {p2}, Lcom/qh/xcad/XCadEntity;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qh/xcad/XCadView;->highlightPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 2575
    :cond_3
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->highlightHalo:Landroid/graphics/Paint;

    and-int v1, p3, v2

    const/high16 v2, 0x4d000000    # 1.3421773E8f

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2576
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->highlightHalo:Landroid/graphics/Paint;

    iget v1, p0, Lcom/qh/xcad/XCadView;->highlightWidth:F

    const/high16 v2, 0x40a00000    # 5.0f

    iget v3, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2577
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->highlightPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/qh/xcad/XCadView;->highlightHalo:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2578
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->highlightCore:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2579
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->highlightCore:Landroid/graphics/Paint;

    iget v1, p0, Lcom/qh/xcad/XCadView;->highlightWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2580
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->highlightPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/qh/xcad/XCadView;->highlightCore:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2583
    iget-boolean v0, p0, Lcom/qh/xcad/XCadView;->drawSelectedLineNumText:Z

    if-eqz v0, :cond_4

    .line 2585
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qh/xcad/XCadView;->drawSelectedLinePointLabel(Landroid/graphics/Canvas;Lcom/qh/xcad/XCadEntity;II)V

    :cond_4
    :goto_1
    return-void

    .line 2552
    :cond_5
    :goto_2
    invoke-virtual {p2, v3}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v4

    invoke-virtual {p2, v3}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object p2

    .line 2553
    aget p4, p2, v3

    .line 2554
    aget p2, p2, v1

    .line 2555
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->highlightCore:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2556
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->highlightCore:Landroid/graphics/Paint;

    and-int v1, p3, v2

    const/high16 v2, 0x59000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2557
    iget v0, p0, Lcom/qh/xcad/XCadView;->highlightWidth:F

    const v1, 0x3fe66666    # 1.8f

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/qh/xcad/XCadView;->highlightCore:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2558
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->highlightCore:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2559
    iget p3, p0, Lcom/qh/xcad/XCadView;->highlightWidth:F

    iget-object v0, p0, Lcom/qh/xcad/XCadView;->highlightCore:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2560
    iget-object p1, p0, Lcom/qh/xcad/XCadView;->highlightCore:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private paintVisLinePoint(Landroid/graphics/Canvas;DDLjava/lang/Integer;I)V
    .locals 0

    .line 2695
    invoke-direct/range {p0 .. p7}, Lcom/qh/xcad/XCadView;->drawPointMarcker(Landroid/graphics/Canvas;DDLjava/lang/Integer;I)V

    return-void
.end method

.method private pointSegDist2(DDDDDD)D
    .locals 12

    sub-double v0, p9, p5

    sub-double v2, p11, p7

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-nez v6, :cond_0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    sub-double p1, p1, p5

    sub-double v0, p3, p7

    :goto_0
    mul-double p1, p1, p1

    mul-double v0, v0, v0

    add-double/2addr p1, v0

    return-wide p1

    :cond_0
    sub-double v6, p1, p5

    mul-double v6, v6, v0

    sub-double v8, p3, p7

    mul-double v8, v8, v2

    add-double/2addr v6, v8

    mul-double v8, v0, v0

    mul-double v10, v2, v2

    add-double/2addr v8, v10

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 890
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    mul-double v0, v0, v4

    add-double v0, p5, v0

    mul-double v4, v4, v2

    add-double v2, p7, v4

    sub-double/2addr p1, v0

    sub-double v0, p3, v2

    goto :goto_0
.end method

.method private screenToWorld(DD)[D
    .locals 4

    .line 2943
    iget-wide v0, p0, Lcom/qh/xcad/XCadView;->tx:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Lcom/qh/xcad/XCadView;->scale:D

    div-double/2addr p1, v0

    .line 2944
    iget-wide v2, p0, Lcom/qh/xcad/XCadView;->ty:D

    sub-double/2addr p3, v2

    div-double/2addr p3, v0

    const/4 v0, 0x2

    .line 2945
    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 p1, 0x1

    aput-wide p3, v0, p1

    return-object v0
.end method

.method private static segDist2(DDDDDD)D
    .locals 12

    .line 0
    sub-double v0, p4, p0

    sub-double v2, p6, p2

    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_0

    move-wide v8, v6

    goto :goto_0

    :cond_0
    sub-double v8, p8, p0

    mul-double v8, v8, v0

    sub-double v10, p10, p2

    mul-double v10, v10, v2

    add-double/2addr v8, v10

    div-double/2addr v8, v4

    :goto_0
    cmpg-double v4, v8, v6

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    move-wide v6, v8

    :goto_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v6, v4

    if-lez v8, :cond_2

    move-wide v6, v4

    :cond_2
    mul-double v0, v0, v6

    add-double/2addr p0, v0

    sub-double p0, p8, p0

    mul-double v6, v6, v2

    add-double/2addr p2, v6

    sub-double p2, p10, p2

    mul-double p0, p0, p0

    mul-double p2, p2, p2

    add-double/2addr p0, p2

    return-wide p0
.end method

.method private simplifyDP(Ljava/util/List;D)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qh/xcad/XCadPoint;",
            ">;D)",
            "Ljava/util/List<",
            "Lcom/qh/xcad/XCadPoint;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p1

    .line 830
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Z

    .line 831
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aput-boolean v1, v3, v0

    const/4 v0, 0x0

    aput-boolean v1, v3, v0

    .line 833
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v5, v2, -0x1

    mul-double v6, p2, p2

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/qh/xcad/XCadView;->simplifyDPRec(Ljava/util/List;[ZIID)V

    .line 835
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 836
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    .line 837
    aget-boolean p2, v3, v0

    if-eqz p2, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qh/xcad/XCadPoint;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private simplifyDPRec(Ljava/util/List;[ZIID)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qh/xcad/XCadPoint;",
            ">;[ZIID)V"
        }
    .end annotation

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v7, p4

    .line 844
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qh/xcad/XCadPoint;

    .line 845
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qh/xcad/XCadPoint;

    .line 846
    iget-wide v13, v0, Lcom/qh/xcad/XCadPoint;->x:D

    .line 847
    iget-wide v4, v0, Lcom/qh/xcad/XCadPoint;->y:D

    .line 848
    iget-wide v8, v2, Lcom/qh/xcad/XCadPoint;->x:D

    .line 849
    iget-wide v10, v2, Lcom/qh/xcad/XCadPoint;->y:D

    add-int/lit8 v0, v3, 0x1

    const-wide/16 v15, 0x0

    const/4 v2, -0x1

    move-wide/from16 v21, v15

    :goto_0
    if-ge v0, v7, :cond_1

    .line 855
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qh/xcad/XCadPoint;

    move-wide/from16 v17, v8

    move-wide/from16 v19, v10

    .line 856
    iget-wide v9, v6, Lcom/qh/xcad/XCadPoint;->x:D

    .line 857
    iget-wide v11, v6, Lcom/qh/xcad/XCadPoint;->y:D

    move-object/from16 v8, p0

    move-wide v15, v4

    .line 859
    invoke-direct/range {v8 .. v20}, Lcom/qh/xcad/XCadView;->pointSegDist2(DDDDDD)D

    move-result-wide v4

    cmpl-double v6, v4, v21

    if-lez v6, :cond_0

    move v2, v0

    move-wide/from16 v21, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-wide v4, v15

    move-wide/from16 v8, v17

    move-wide/from16 v10, v19

    goto :goto_0

    :cond_1
    cmpl-double v0, v21, p5

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 867
    aput-boolean v0, p2, v2

    move-object/from16 v0, p0

    move-wide/from16 v5, p5

    move v4, v2

    move-object/from16 v2, p2

    .line 868
    invoke-direct/range {v0 .. v6}, Lcom/qh/xcad/XCadView;->simplifyDPRec(Ljava/util/List;[ZIID)V

    move v3, v4

    move v4, v7

    .line 869
    invoke-direct/range {v0 .. v6}, Lcom/qh/xcad/XCadView;->simplifyDPRec(Ljava/util/List;[ZIID)V

    :cond_2
    return-void
.end method

.method private startGesture(Landroid/view/MotionEvent;I)V
    .locals 0

    .line 1292
    invoke-direct {p0, p1, p2}, Lcom/qh/xcad/XCadView;->focalSpan(Landroid/view/MotionEvent;I)[F

    move-result-object p1

    const/4 p2, 0x0

    .line 1293
    aget p2, p1, p2

    iput p2, p0, Lcom/qh/xcad/XCadView;->startFocalX:F

    const/4 p2, 0x1

    .line 1294
    aget p2, p1, p2

    iput p2, p0, Lcom/qh/xcad/XCadView;->startFocalY:F

    const/4 p2, 0x2

    .line 1295
    aget p1, p1, p2

    iput p1, p0, Lcom/qh/xcad/XCadView;->startSpan:F

    .line 1296
    iget-wide p1, p0, Lcom/qh/xcad/XCadView;->scale:D

    iput-wide p1, p0, Lcom/qh/xcad/XCadView;->startScale:D

    .line 1297
    iget-wide p1, p0, Lcom/qh/xcad/XCadView;->tx:D

    iput-wide p1, p0, Lcom/qh/xcad/XCadView;->startTx:D

    .line 1298
    iget-wide p1, p0, Lcom/qh/xcad/XCadView;->ty:D

    iput-wide p1, p0, Lcom/qh/xcad/XCadView;->startTy:D

    return-void
.end method

.method private startLoading()V
    .locals 3

    const/4 v0, 0x1

    .line 425
    iput-boolean v0, p0, Lcom/qh/xcad/XCadView;->loadingVisible:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 426
    iput v0, p0, Lcom/qh/xcad/XCadView;->loadingAlpha:F

    const/4 v0, 0x0

    .line 427
    iput v0, p0, Lcom/qh/xcad/XCadView;->loadingProgress:F

    .line 428
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->progressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    .line 431
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/qh/xcad/XCadView;->progressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    .line 432
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 434
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/qh/xcad/XCadView$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/qh/xcad/XCadView$$ExternalSyntheticLambda7;-><init>(Lcom/qh/xcad/XCadView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 439
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private startVehiclePulse()V
    .locals 4

    const/4 v0, 0x2

    .line 2008
    iget-object v1, p0, Lcom/qh/xcad/XCadView;->vehiclePulseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2012
    :cond_0
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/qh/xcad/XCadView;->vehiclePulseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x4b0

    .line 2013
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2014
    iget-object v1, p0, Lcom/qh/xcad/XCadView;->vehiclePulseAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 2015
    iget-object v1, p0, Lcom/qh/xcad/XCadView;->vehiclePulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 2016
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->vehiclePulseAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2018
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->vehiclePulseAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/qh/xcad/XCadView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/qh/xcad/XCadView$$ExternalSyntheticLambda6;-><init>(Lcom/qh/xcad/XCadView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2023
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->vehiclePulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private stopLoadCadFileThread()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->loadCadFileThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->loadCadFileThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method private strokeFor(I)Landroid/graphics/Path;
    .locals 2

    .line 983
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->strokeByColor:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 985
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 986
    iget-object v1, p0, Lcom/qh/xcad/XCadView;->strokeByColor:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private worldToScreen(DD)[F
    .locals 4

    .line 2936
    iget-wide v0, p0, Lcom/qh/xcad/XCadView;->cx:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Lcom/qh/xcad/XCadView;->scale:D

    mul-double p1, p1, v0

    iget-wide v2, p0, Lcom/qh/xcad/XCadView;->tx:D

    add-double/2addr p1, v2

    double-to-float p1, p1

    .line 2937
    iget-wide v2, p0, Lcom/qh/xcad/XCadView;->cy:D

    sub-double/2addr p3, v2

    neg-double p2, p3

    mul-double p2, p2, v0

    iget-wide v0, p0, Lcom/qh/xcad/XCadView;->ty:D

    add-double/2addr p2, v0

    double-to-float p2, p2

    const/4 p3, 0x2

    .line 2938
    new-array p3, p3, [F

    const/4 p4, 0x0

    aput p1, p3, p4

    const/4 p1, 0x1

    aput p2, p3, p1

    return-object p3
.end method

.method private zoomAt(FFD)V
    .locals 8

    .line 1100
    iget v0, p0, Lcom/qh/xcad/XCadView;->scaleBarLenMinUnit:F

    iget v1, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v0, v0, v1

    float-to-double v0, v0

    .line 1102
    iget-wide v2, p0, Lcom/qh/xcad/XCadView;->startScale:D

    mul-double v2, v2, p3

    div-double/2addr v0, v2

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 1103
    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->maxScale()D

    .line 1104
    :cond_0
    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->maxScale()D

    .line 1105
    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->maxScale()D

    .line 1109
    iget-wide v0, p0, Lcom/qh/xcad/XCadView;->scale:D

    mul-double v2, v0, p3

    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->minScale()D

    move-result-wide v4

    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->maxScale()D

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/qh/xcad/XCadView;->clamp(DDD)D

    move-result-wide p3

    .line 1111
    iget-wide v0, p0, Lcom/qh/xcad/XCadView;->scale:D

    cmpl-double v2, p3, v0

    if-nez v2, :cond_1

    return-void

    :cond_1
    float-to-double v2, p1

    .line 1112
    iget-wide v4, p0, Lcom/qh/xcad/XCadView;->tx:D

    sub-double v4, v2, v4

    div-double/2addr v4, v0

    float-to-double p1, p2

    .line 1113
    iget-wide v6, p0, Lcom/qh/xcad/XCadView;->ty:D

    sub-double v6, p1, v6

    div-double/2addr v6, v0

    .line 1114
    iput-wide p3, p0, Lcom/qh/xcad/XCadView;->scale:D

    mul-double v4, v4, p3

    sub-double/2addr v2, v4

    .line 1115
    iput-wide v2, p0, Lcom/qh/xcad/XCadView;->tx:D

    mul-double v6, v6, p3

    sub-double/2addr p1, v6

    .line 1116
    iput-wide p1, p0, Lcom/qh/xcad/XCadView;->ty:D

    const/4 p1, 0x1

    .line 1118
    iput-boolean p1, p0, Lcom/qh/xcad/XCadView;->cacheDirty:Z

    .line 1120
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public addEndPoint(Landroid/graphics/Path;Lcom/qh/xcad/XCadEntity;D)V
    .locals 6

    const/4 v0, 0x0

    .line 1019
    invoke-virtual {p2, v0}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/qh/xcad/XCadView;->cx:D

    sub-double/2addr v1, v3

    double-to-float v1, v1

    .line 1020
    invoke-virtual {p2, v0}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/qh/xcad/XCadView;->cy:D

    sub-double/2addr v2, v4

    neg-double v2, v2

    double-to-float p2, v2

    double-to-float p3, p3

    sub-float p4, v1, p3

    .line 1022
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Path;->moveTo(FF)V

    add-float p4, v1, p3

    .line 1023
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float p4, p2, p3

    .line 1024
    invoke-virtual {p1, v1, p4}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr p2, p3

    .line 1025
    invoke-virtual {p1, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public addSelectIndicePoint(II)V
    .locals 2

    .line 648
    iget v0, p0, Lcom/qh/xcad/XCadView;->touchHighlightColor:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/qh/xcad/XCadView;->addSelectIndicePoint(IIILjava/lang/Integer;)V

    return-void
.end method

.method public addSelectIndicePoint(III)V
    .locals 1

    const/4 v0, 0x0

    .line 670
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qh/xcad/XCadView;->addSelectIndicePoint(IIILjava/lang/Integer;)V

    return-void
.end method

.method public addSelectIndicePoint(IIILjava/lang/Integer;)V
    .locals 2

    .line 682
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->selectedIndicePoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 684
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 685
    iget-object v1, p0, Lcom/qh/xcad/XCadView;->selectedIndicePoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lcom/qh/xcad/XCadView$IndicePointStyle;

    invoke-direct {p2, p3, p4}, Lcom/qh/xcad/XCadView$IndicePointStyle;-><init>(ILjava/lang/Integer;)V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public addSelectIndicePointCheck(II)V
    .locals 2

    .line 652
    iget v0, p0, Lcom/qh/xcad/XCadView;->touchHighlightCheckColor:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/qh/xcad/XCadView;->addSelectIndicePoint(IIILjava/lang/Integer;)V

    return-void
.end method

.method public addSelectIndicePointCheck(IILjava/lang/Integer;)V
    .locals 1

    .line 659
    iget v0, p0, Lcom/qh/xcad/XCadView;->touchHighlightCheckColor:I

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/qh/xcad/XCadView;->addSelectIndicePoint(IIILjava/lang/Integer;)V

    return-void
.end method

.method public addSelectLightPoint(II)V
    .locals 2

    .line 756
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_3

    .line 759
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->selectedLightPoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_2

    .line 765
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 766
    iget-object v1, p0, Lcom/qh/xcad/XCadView;->selectedLightPoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 769
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 770
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method

.method public addSelectLine(I)V
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    .line 637
    iget-object v0, v0, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->selectedIndices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 641
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->selectedIndices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public centerVehiclePointLocation()V
    .locals 7

    .line 2042
    iget v0, p0, Lcom/qh/xcad/XCadView;->lastW:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/qh/xcad/XCadView;->lastH:I

    if-gtz v0, :cond_0

    goto :goto_1

    .line 2047
    :cond_0
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->vehiclePoint:Lcom/qh/xcad/XCadVehiclePoint;

    if-eqz v0, :cond_1

    .line 2048
    iget-wide v1, v0, Lcom/qh/xcad/XCadVehiclePoint;->x:D

    iget-wide v3, v0, Lcom/qh/xcad/XCadVehiclePoint;->y:D

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object v0

    goto :goto_0

    .line 2049
    :cond_1
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->xCadExcavatorBucket:Lcom/qh/xcad/XCadExcavatorBucket;

    if-eqz v0, :cond_2

    .line 2050
    iget-wide v1, v0, Lcom/qh/xcad/XCadExcavatorBucket;->xL:D

    iget-wide v3, v0, Lcom/qh/xcad/XCadExcavatorBucket;->yL:D

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    .line 2056
    :cond_3
    iget v1, p0, Lcom/qh/xcad/XCadView;->lastW:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 2057
    iget v3, p0, Lcom/qh/xcad/XCadView;->lastH:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 2058
    iget-wide v4, p0, Lcom/qh/xcad/XCadView;->tx:D

    const/4 v2, 0x0

    aget v2, v0, v2

    sub-float/2addr v1, v2

    float-to-double v1, v1

    add-double/2addr v4, v1

    iput-wide v4, p0, Lcom/qh/xcad/XCadView;->tx:D

    .line 2059
    iget-wide v1, p0, Lcom/qh/xcad/XCadView;->ty:D

    const/4 v4, 0x1

    aget v0, v0, v4

    sub-float/2addr v3, v0

    float-to-double v5, v3

    add-double/2addr v1, v5

    iput-wide v1, p0, Lcom/qh/xcad/XCadView;->ty:D

    .line 2060
    iput-boolean v4, p0, Lcom/qh/xcad/XCadView;->cacheDirty:Z

    .line 2061
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    :goto_1
    return-void
.end method

.method public centerXCadItemAreaPointLocation()V
    .locals 7

    .line 2068
    iget v0, p0, Lcom/qh/xcad/XCadView;->lastW:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/qh/xcad/XCadView;->lastH:I

    if-gtz v0, :cond_0

    goto :goto_1

    .line 2073
    :cond_0
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->xCadItemAreaPoint:Lcom/qh/xcad/XCadItemAreaPoint;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/qh/xcad/XCadItemAreaPoint;->itemAreaPosition:[Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 2076
    aget-object v0, v0, v1

    iget-wide v2, v0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->x:D

    iget-wide v4, v0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->y:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 2083
    :cond_2
    iget v2, p0, Lcom/qh/xcad/XCadView;->lastW:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 2084
    iget v4, p0, Lcom/qh/xcad/XCadView;->lastH:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 2085
    iget-wide v5, p0, Lcom/qh/xcad/XCadView;->tx:D

    aget v1, v0, v1

    sub-float/2addr v2, v1

    float-to-double v1, v2

    add-double/2addr v5, v1

    iput-wide v5, p0, Lcom/qh/xcad/XCadView;->tx:D

    .line 2086
    iget-wide v1, p0, Lcom/qh/xcad/XCadView;->ty:D

    const/4 v3, 0x1

    aget v0, v0, v3

    sub-float/2addr v4, v0

    float-to-double v4, v4

    add-double/2addr v1, v4

    iput-wide v1, p0, Lcom/qh/xcad/XCadView;->ty:D

    .line 2087
    iput-boolean v3, p0, Lcom/qh/xcad/XCadView;->cacheDirty:Z

    .line 2088
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method

.method public clearSelectIndicePoint()V
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->selectedIndicePoints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->selectedIndicePoints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 716
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public clearSelectLightPoint()V
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->selectedLightPoints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->selectedLightPoints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 796
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1284
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 1279
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1288
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawExcavatorBucket(Landroid/graphics/Canvas;)V
    .locals 41

    move-object/from16 v0, p0

    .line 2199
    iget-object v2, v0, Lcom/qh/xcad/XCadView;->xCadExcavatorBucket:Lcom/qh/xcad/XCadExcavatorBucket;

    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lcom/qh/xcad/XCadExcavatorBucket;->visible:Z

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 2203
    :cond_0
    iget-wide v3, v2, Lcom/qh/xcad/XCadExcavatorBucket;->xL:D

    .line 2204
    iget-wide v5, v2, Lcom/qh/xcad/XCadExcavatorBucket;->yL:D

    .line 2205
    iget-wide v7, v2, Lcom/qh/xcad/XCadExcavatorBucket;->xR:D

    .line 2206
    iget-wide v9, v2, Lcom/qh/xcad/XCadExcavatorBucket;->yR:D

    sub-double v11, v7, v3

    sub-double v13, v9, v5

    .line 2211
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v15

    const-wide v17, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v2, v15, v17

    if-gez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    div-double/2addr v11, v15

    div-double/2addr v13, v15

    move-wide/from16 v17, v13

    neg-double v13, v11

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    mul-double v21, v17, v19

    add-double v23, v3, v21

    mul-double v19, v19, v13

    add-double v25, v5, v19

    add-double v21, v7, v21

    add-double v19, v9, v19

    const-wide v27, 0x3fa999999999999aL    # 0.05

    mul-double v29, v11, v27

    move-wide/from16 v31, v11

    sub-double v11, v23, v29

    mul-double v23, v17, v27

    move-wide/from16 v27, v13

    sub-double v13, v25, v23

    add-double v1, v21, v29

    move-wide/from16 v21, v1

    add-double v1, v19, v23

    .line 2245
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object v19

    .line 2246
    invoke-direct {v0, v7, v8, v9, v10}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object v20

    .line 2248
    invoke-direct {v0, v11, v12, v13, v14}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object v11

    move-wide/from16 v12, v21

    .line 2249
    invoke-direct {v0, v12, v13, v1, v2}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object v1

    .line 2252
    iget-object v2, v0, Lcom/qh/xcad/XCadView;->excavatorBucketPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2253
    iget-object v2, v0, Lcom/qh/xcad/XCadView;->excavatorBucketPaint:Landroid/graphics/Paint;

    const v12, -0x79002900

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 2254
    iget-object v2, v0, Lcom/qh/xcad/XCadView;->excavatorBucketPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 2255
    iget-object v2, v0, Lcom/qh/xcad/XCadView;->excavatorBucketPath:Landroid/graphics/Path;

    const/4 v12, 0x0

    aget v13, v19, v12

    const/4 v14, 0x1

    const/16 v21, 0x0

    aget v12, v19, v14

    invoke-virtual {v2, v13, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2256
    iget-object v2, v0, Lcom/qh/xcad/XCadView;->excavatorBucketPath:Landroid/graphics/Path;

    aget v12, v20, v21

    aget v13, v20, v14

    invoke-virtual {v2, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2257
    iget-object v2, v0, Lcom/qh/xcad/XCadView;->excavatorBucketPath:Landroid/graphics/Path;

    aget v12, v1, v21

    aget v1, v1, v14

    invoke-virtual {v2, v12, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2258
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->excavatorBucketPath:Landroid/graphics/Path;

    aget v2, v11, v21

    aget v11, v11, v14

    invoke-virtual {v1, v2, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2259
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->excavatorBucketPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 2260
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->excavatorBucketPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/qh/xcad/XCadView;->excavatorBucketPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2267
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->excavatorBucketTeethPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/16 v1, 0xa

    int-to-double v12, v1

    div-double/2addr v15, v12

    .line 2274
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object v2

    .line 2275
    iget-object v12, v0, Lcom/qh/xcad/XCadView;->excavatorBucketTeethPath:Landroid/graphics/Path;

    aget v13, v2, v21

    aget v2, v2, v14

    invoke-virtual {v12, v13, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    int-to-double v12, v2

    mul-double v12, v12, v15

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v22, v15

    const/16 v19, 0x1

    int-to-double v14, v2

    mul-double v14, v14, v22

    add-double v24, v12, v14

    const-wide/high16 v29, 0x3fe0000000000000L    # 0.5

    mul-double v24, v24, v29

    mul-double v29, v31, v12

    move/from16 v20, v2

    add-double v1, v3, v29

    mul-double v12, v12, v17

    add-double/2addr v12, v5

    mul-double v29, v31, v24

    add-double v29, v3, v29

    mul-double v24, v24, v17

    add-double v24, v5, v24

    mul-double v33, v31, v14

    move-wide/from16 v35, v14

    add-double v14, v3, v33

    mul-double v33, v17, v35

    move-wide/from16 v35, v3

    add-double v3, v5, v33

    const-wide v33, 0x3fc999999999999aL    # 0.2

    mul-double v37, v17, v33

    move-wide/from16 v39, v5

    add-double v5, v29, v37

    mul-double v29, v27, v33

    move-wide/from16 v33, v7

    add-double v7, v24, v29

    .line 2296
    invoke-direct {v0, v1, v2, v12, v13}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object v1

    .line 2297
    invoke-direct {v0, v5, v6, v7, v8}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object v2

    .line 2298
    invoke-direct {v0, v14, v15, v3, v4}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object v3

    .line 2300
    iget-object v4, v0, Lcom/qh/xcad/XCadView;->excavatorBucketTeethPath:Landroid/graphics/Path;

    aget v5, v1, v21

    aget v1, v1, v19

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2301
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->excavatorBucketTeethPath:Landroid/graphics/Path;

    aget v4, v2, v21

    aget v2, v2, v19

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2302
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->excavatorBucketTeethPath:Landroid/graphics/Path;

    aget v2, v3, v21

    aget v3, v3, v19

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v2, v20

    move-wide/from16 v15, v22

    move-wide/from16 v7, v33

    move-wide/from16 v3, v35

    move-wide/from16 v5, v39

    const/16 v1, 0xa

    const/4 v14, 0x1

    goto :goto_0

    :cond_2
    move-wide/from16 v35, v3

    move-wide/from16 v39, v5

    move-wide v1, v7

    const/16 v19, 0x1

    .line 2306
    invoke-direct {v0, v1, v2, v9, v10}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object v3

    .line 2307
    iget-object v4, v0, Lcom/qh/xcad/XCadView;->excavatorBucketTeethPath:Landroid/graphics/Path;

    aget v5, v3, v21

    aget v3, v3, v19

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2308
    iget-object v3, v0, Lcom/qh/xcad/XCadView;->excavatorBucketTeethPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 2311
    iget-object v3, v0, Lcom/qh/xcad/XCadView;->excavatorBucketPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2312
    iget-object v3, v0, Lcom/qh/xcad/XCadView;->excavatorBucketPaint:Landroid/graphics/Paint;

    const v4, -0xbbbbbc

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2313
    iget-object v3, v0, Lcom/qh/xcad/XCadView;->excavatorBucketPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2314
    iget-object v3, v0, Lcom/qh/xcad/XCadView;->excavatorBucketTeethPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/qh/xcad/XCadView;->excavatorBucketPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2318
    iget-object v3, v0, Lcom/qh/xcad/XCadView;->excavatorBucketPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2319
    iget-object v3, v0, Lcom/qh/xcad/XCadView;->excavatorBucketPaint:Landroid/graphics/Paint;

    const/16 v5, -0x100

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2320
    iget-object v3, v0, Lcom/qh/xcad/XCadView;->excavatorBucketPaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/qh/xcad/XCadView;->density:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2321
    iget-object v3, v0, Lcom/qh/xcad/XCadView;->excavatorBucketPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/qh/xcad/XCadView;->excavatorBucketPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2323
    iget-object v3, v0, Lcom/qh/xcad/XCadView;->xCadExcavatorBucket:Lcom/qh/xcad/XCadExcavatorBucket;

    iget-boolean v3, v3, Lcom/qh/xcad/XCadExcavatorBucket;->drawAxis:Z

    if-eqz v3, :cond_3

    .line 2327
    new-instance v8, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v8, v12}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v3, -0x1

    .line 2328
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2329
    iget v3, v0, Lcom/qh/xcad/XCadView;->density:F

    mul-float v3, v3, v6

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2330
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-wide/from16 v3, v35

    move-wide/from16 v5, v39

    .line 2332
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object v13

    .line 2333
    invoke-direct {v0, v1, v2, v9, v10}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object v9

    .line 2336
    aget v2, v13, v21

    aget v3, v13, v12

    move-object v1, v11

    move-wide/from16 v6, v17

    move-wide/from16 v4, v31

    invoke-direct/range {v0 .. v8}, Lcom/qh/xcad/XCadView;->drawInfiniteLine(Landroid/graphics/Canvas;FFDDLandroid/graphics/Paint;)V

    move-wide v4, v6

    .line 2337
    aget v2, v13, v21

    aget v3, v13, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v6, v27

    invoke-direct/range {v0 .. v8}, Lcom/qh/xcad/XCadView;->drawInfiniteLine(Landroid/graphics/Canvas;FFDDLandroid/graphics/Paint;)V

    .line 2340
    aget v2, v9, v21

    aget v3, v9, v12

    move-wide v6, v4

    move-wide/from16 v4, v31

    invoke-direct/range {v0 .. v8}, Lcom/qh/xcad/XCadView;->drawInfiniteLine(Landroid/graphics/Canvas;FFDDLandroid/graphics/Paint;)V

    move-wide v4, v6

    .line 2341
    aget v2, v9, v21

    aget v3, v9, v12

    move-wide/from16 v6, v27

    invoke-direct/range {v0 .. v8}, Lcom/qh/xcad/XCadView;->drawInfiniteLine(Landroid/graphics/Canvas;FFDDLandroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public fitToScreen()V
    .locals 3

    .line 533
    iget v0, p0, Lcom/qh/xcad/XCadView;->lastW:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/qh/xcad/XCadView;->lastH:I

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    if-nez v2, :cond_0

    goto :goto_0

    .line 534
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/qh/xcad/XCadView;->fit(II)V

    .line 535
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCadItemAreaPoint()Lcom/qh/xcad/XCadItemAreaPoint;
    .locals 1

    .line 3200
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->xCadItemAreaPoint:Lcom/qh/xcad/XCadItemAreaPoint;

    if-nez v0, :cond_0

    .line 3201
    new-instance v0, Lcom/qh/xcad/XCadItemAreaPoint;

    invoke-direct {v0}, Lcom/qh/xcad/XCadItemAreaPoint;-><init>()V

    return-object v0

    .line 3205
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/qh/xcad/XCadItemAreaPoint;->clone()Lcom/qh/xcad/XCadItemAreaPoint;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3207
    :catch_0
    new-instance v0, Lcom/qh/xcad/XCadItemAreaPoint;

    invoke-direct {v0}, Lcom/qh/xcad/XCadItemAreaPoint;-><init>()V

    return-object v0
.end method

.method public getScale()D
    .locals 2

    .line 1582
    iget-wide v0, p0, Lcom/qh/xcad/XCadView;->scale:D

    return-wide v0
.end method

.method public getScene()Lcom/qh/xcad/XCadScene;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    return-object v0
.end method

.method public getScenePoint(II)Lcom/qh/xcad/XCadPoint;
    .locals 3

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 512
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, v0, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 514
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 515
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qh/xcad/XCadEntity;

    if-eqz p1, :cond_0

    .line 516
    invoke-virtual {p1}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 517
    new-instance v0, Lcom/qh/xcad/XCadPoint;

    .line 518
    invoke-virtual {p1, p2}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v1

    .line 519
    invoke-virtual {p1, p2}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide p1

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/qh/xcad/XCadPoint;-><init>(DD)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSelectedIndicePoints()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 616
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 617
    iget-object v1, p0, Lcom/qh/xcad/XCadView;->selectedIndicePoints:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 618
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 619
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 620
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qh/xcad/XCadView$IndicePointStyle;

    iget v5, v5, Lcom/qh/xcad/XCadView$IndicePointStyle;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 622
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSelectedIndices()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 612
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/qh/xcad/XCadView;->selectedIndices:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTx()D
    .locals 2

    .line 1562
    iget-wide v0, p0, Lcom/qh/xcad/XCadView;->tx:D

    return-wide v0
.end method

.method public getTy()D
    .locals 2

    .line 1572
    iget-wide v0, p0, Lcom/qh/xcad/XCadView;->ty:D

    return-wide v0
.end method

.method public hideExcavatorBucket()V
    .locals 2

    .line 3097
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->xCadExcavatorBucket:Lcom/qh/xcad/XCadExcavatorBucket;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3100
    iput-boolean v1, v0, Lcom/qh/xcad/XCadExcavatorBucket;->visible:Z

    .line 3101
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public hideVehicle()V
    .locals 2

    .line 3012
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->vehiclePoint:Lcom/qh/xcad/XCadVehiclePoint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3015
    iput-boolean v1, v0, Lcom/qh/xcad/XCadVehiclePoint;->visible:Z

    .line 3017
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->vehiclePulseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 3018
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 3019
    iput-object v0, p0, Lcom/qh/xcad/XCadView;->vehiclePulseAnimator:Landroid/animation/ValueAnimator;

    .line 3022
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public hideXCadItemAreaPoint()V
    .locals 2

    .line 3224
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->xCadItemAreaPoint:Lcom/qh/xcad/XCadItemAreaPoint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3227
    iput-boolean v1, v0, Lcom/qh/xcad/XCadItemAreaPoint;->visible:Z

    .line 3228
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 276
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 277
    sget-object v0, Lcom/qh/xcad/XCadView;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 278
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->singleTapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 279
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 281
    :cond_0
    iput-object v1, p0, Lcom/qh/xcad/XCadView;->currentPath:Ljava/lang/String;

    .line 282
    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->stopLoadCadFileThread()V

    .line 283
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->vehiclePulseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 285
    iput-object v1, p0, Lcom/qh/xcad/XCadView;->vehiclePulseAnimator:Landroid/animation/ValueAnimator;

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->progressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1630
    iget v0, p0, Lcom/qh/xcad/XCadView;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1632
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->hasContent()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1641
    :cond_0
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->cacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/qh/xcad/XCadView;->cacheDirty:Z

    if-eqz v0, :cond_2

    .line 1642
    :cond_1
    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->buildCache()V

    .line 1645
    :cond_2
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->cacheBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1663
    invoke-direct {p0, p1}, Lcom/qh/xcad/XCadView;->drawXCadItemAreaPoint(Landroid/graphics/Canvas;)V

    .line 1665
    invoke-direct {p0, p1}, Lcom/qh/xcad/XCadView;->drawTexts(Landroid/graphics/Canvas;)V

    .line 1667
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->selectedIndices:Ljava/util/Set;

    iget v1, p0, Lcom/qh/xcad/XCadView;->touchHighlightColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/qh/xcad/XCadView;->drawHighlights(Landroid/graphics/Canvas;Ljava/util/Set;I)V

    .line 1669
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->carSelectedIndices:Ljava/util/Set;

    iget v1, p0, Lcom/qh/xcad/XCadView;->carHighlightColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/qh/xcad/XCadView;->drawHighlights(Landroid/graphics/Canvas;Ljava/util/Set;I)V

    .line 1671
    iget v0, p0, Lcom/qh/xcad/XCadView;->lockHighlightColor:I

    invoke-direct {p0, p1, v0}, Lcom/qh/xcad/XCadView;->drawLockEntityLine(Landroid/graphics/Canvas;I)V

    .line 1673
    invoke-direct {p0, p1}, Lcom/qh/xcad/XCadView;->drawVisLinePoints(Landroid/graphics/Canvas;)V

    .line 1675
    invoke-direct {p0, p1}, Lcom/qh/xcad/XCadView;->drawPointLight(Landroid/graphics/Canvas;)V

    .line 1677
    invoke-virtual {p0, p1}, Lcom/qh/xcad/XCadView;->drawExcavatorBucket(Landroid/graphics/Canvas;)V

    .line 1679
    invoke-direct {p0, p1}, Lcom/qh/xcad/XCadView;->drawVehicle(Landroid/graphics/Canvas;)V

    .line 1681
    invoke-direct {p0, p1}, Lcom/qh/xcad/XCadView;->drawFitButton(Landroid/graphics/Canvas;)V

    .line 1683
    invoke-direct {p0, p1}, Lcom/qh/xcad/XCadView;->drawCompass(Landroid/graphics/Canvas;)V

    .line 1685
    invoke-direct {p0, p1}, Lcom/qh/xcad/XCadView;->drawLoading(Landroid/graphics/Canvas;)V

    .line 1687
    invoke-direct {p0, p1}, Lcom/qh/xcad/XCadView;->drawScaleBar(Landroid/graphics/Canvas;)V

    return-void

    .line 1634
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/qh/xcad/XCadView;->drawFitButton(Landroid/graphics/Canvas;)V

    .line 1636
    invoke-direct {p0, p1}, Lcom/qh/xcad/XCadView;->drawLoading(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1328
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/16 v0, 0x9

    .line 1329
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 1331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const-wide v2, 0x3ff3333333333333L    # 1.2

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/qh/xcad/XCadView;->zoomAt(FFD)V

    const/4 p1, 0x1

    return p1

    .line 1335
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1542
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1543
    iput p1, p0, Lcom/qh/xcad/XCadView;->lastW:I

    .line 1544
    iput p2, p0, Lcom/qh/xcad/XCadView;->lastH:I

    .line 1546
    iget-object p3, p0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    if-nez p3, :cond_0

    goto :goto_0

    .line 1549
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/qh/xcad/XCadView;->fit(II)V

    const/4 p3, 0x1

    .line 1550
    iput-boolean p3, p0, Lcom/qh/xcad/XCadView;->fitted:Z

    .line 1553
    iget-boolean p3, p0, Lcom/qh/xcad/XCadView;->restoreState:Z

    if-eqz p3, :cond_1

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 1554
    iget-wide p1, p0, Lcom/qh/xcad/XCadView;->txRestoreState:D

    iput-wide p1, p0, Lcom/qh/xcad/XCadView;->tx:D

    .line 1555
    iget-wide p1, p0, Lcom/qh/xcad/XCadView;->tyRestoreState:D

    iput-wide p1, p0, Lcom/qh/xcad/XCadView;->ty:D

    .line 1556
    iget-wide p1, p0, Lcom/qh/xcad/XCadView;->scaleRestoreState:D

    iput-wide p1, p0, Lcom/qh/xcad/XCadView;->scale:D

    const/4 p1, 0x0

    .line 1557
    iput-boolean p1, p0, Lcom/qh/xcad/XCadView;->restoreState:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1184
    iget-boolean v1, p0, Lcom/qh/xcad/XCadView;->showControls:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/qh/xcad/XCadView;->insideFitButton(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1185
    iput-boolean v2, p0, Lcom/qh/xcad/XCadView;->pressingFit:Z

    return v2

    .line 1188
    :cond_0
    iget-boolean v1, p0, Lcom/qh/xcad/XCadView;->pressingFit:Z

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    if-ne v0, v2, :cond_2

    .line 1190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/qh/xcad/XCadView;->insideFitButton(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/qh/xcad/XCadView;->fitToScreen()V

    .line 1191
    :cond_1
    iput-boolean v4, p0, Lcom/qh/xcad/XCadView;->pressingFit:Z

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_3

    .line 1193
    iput-boolean v4, p0, Lcom/qh/xcad/XCadView;->pressingFit:Z

    :cond_3
    :goto_0
    return v2

    :cond_4
    const/4 v1, -0x1

    if-eqz v0, :cond_13

    if-eq v0, v2, :cond_f

    const/4 v5, 0x2

    if-eq v0, v5, :cond_8

    if-eq v0, v3, :cond_7

    const/4 v3, 0x5

    if-eq v0, v3, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    .line 1271
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1210
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/qh/xcad/XCadView;->startGesture(Landroid/view/MotionEvent;I)V

    return v2

    .line 1205
    :cond_6
    invoke-direct {p0, p1, v1}, Lcom/qh/xcad/XCadView;->startGesture(Landroid/view/MotionEvent;I)V

    .line 1206
    iput-boolean v2, p0, Lcom/qh/xcad/XCadView;->moved:Z

    :cond_7
    return v2

    .line 1214
    :cond_8
    invoke-direct {p0, p1, v1}, Lcom/qh/xcad/XCadView;->focalSpan(Landroid/view/MotionEvent;I)[F

    move-result-object v0

    .line 1215
    aget v1, v0, v4

    aget v3, v0, v2

    aget v0, v0, v5

    .line 1216
    iget-boolean v5, p0, Lcom/qh/xcad/XCadView;->moved:Z

    if-nez v5, :cond_c

    .line 1217
    iget v5, p0, Lcom/qh/xcad/XCadView;->startFocalX:F

    sub-float v5, v1, v5

    float-to-double v5, v5

    iget v7, p0, Lcom/qh/xcad/XCadView;->startFocalY:F

    sub-float v7, v3, v7

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    iget v7, p0, Lcom/qh/xcad/XCadView;->touchSlop:I

    int-to-double v7, v7

    cmpl-double v9, v5, v7

    if-lez v9, :cond_9

    const/4 v4, 0x1

    .line 1218
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-gt p1, v2, :cond_b

    if-eqz v4, :cond_a

    goto :goto_1

    :cond_a
    return v2

    .line 1219
    :cond_b
    :goto_1
    iput-boolean v2, p0, Lcom/qh/xcad/XCadView;->moved:Z

    .line 1224
    :cond_c
    iget p1, p0, Lcom/qh/xcad/XCadView;->startSpan:F

    const/4 v4, 0x0

    cmpl-float v5, p1, v4

    if-lez v5, :cond_d

    cmpl-float v4, v0, v4

    if-lez v4, :cond_d

    div-float/2addr v0, p1

    float-to-double v4, v0

    goto :goto_2

    :cond_d
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 1226
    :goto_2
    iget p1, p0, Lcom/qh/xcad/XCadView;->scaleBarLenMinUnit:F

    iget v0, p0, Lcom/qh/xcad/XCadView;->density:F

    mul-float p1, p1, v0

    float-to-double v6, p1

    .line 1230
    iget-wide v8, p0, Lcom/qh/xcad/XCadView;->startScale:D

    mul-double v8, v8, v4

    div-double/2addr v6, v8

    const-wide v8, 0x3f947ae147ae147bL    # 0.02

    cmpl-double p1, v6, v8

    if-lez p1, :cond_e

    .line 1231
    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->maxScale()D

    .line 1232
    :cond_e
    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->maxScale()D

    .line 1233
    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->maxScale()D

    .line 1237
    iget-wide v6, p0, Lcom/qh/xcad/XCadView;->startScale:D

    mul-double v8, v6, v4

    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->minScale()D

    move-result-wide v10

    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->maxScale()D

    move-result-wide v12

    invoke-static/range {v8 .. v13}, Lcom/qh/xcad/XCadView;->clamp(DDD)D

    move-result-wide v4

    .line 1239
    iget p1, p0, Lcom/qh/xcad/XCadView;->startFocalX:F

    float-to-double v6, p1

    iget-wide v8, p0, Lcom/qh/xcad/XCadView;->startTx:D

    sub-double/2addr v6, v8

    iget-wide v8, p0, Lcom/qh/xcad/XCadView;->startScale:D

    div-double/2addr v6, v8

    .line 1240
    iget p1, p0, Lcom/qh/xcad/XCadView;->startFocalY:F

    float-to-double v10, p1

    iget-wide v12, p0, Lcom/qh/xcad/XCadView;->startTy:D

    sub-double/2addr v10, v12

    div-double/2addr v10, v8

    .line 1241
    iput-wide v4, p0, Lcom/qh/xcad/XCadView;->scale:D

    float-to-double v0, v1

    mul-double v6, v6, v4

    sub-double/2addr v0, v6

    .line 1242
    iput-wide v0, p0, Lcom/qh/xcad/XCadView;->tx:D

    float-to-double v0, v3

    mul-double v10, v10, v4

    sub-double/2addr v0, v10

    .line 1243
    iput-wide v0, p0, Lcom/qh/xcad/XCadView;->ty:D

    .line 1245
    iput-boolean v2, p0, Lcom/qh/xcad/XCadView;->cacheDirty:Z

    .line 1247
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2

    .line 1252
    :cond_f
    iget-boolean p1, p0, Lcom/qh/xcad/XCadView;->moved:Z

    if-nez p1, :cond_12

    .line 1253
    iget-boolean p1, p0, Lcom/qh/xcad/XCadView;->cadTouchEnable:Z

    if-eqz p1, :cond_12

    .line 1254
    iget-boolean p1, p0, Lcom/qh/xcad/XCadView;->doubleClickResetViewStatus:Z

    if-eqz p1, :cond_10

    .line 1255
    iget p1, p0, Lcom/qh/xcad/XCadView;->startFocalX:F

    iget v0, p0, Lcom/qh/xcad/XCadView;->startFocalY:F

    invoke-direct {p0, p1, v0}, Lcom/qh/xcad/XCadView;->handleTapOrDoubleTap(FF)V

    return v2

    .line 1259
    :cond_10
    iget p1, p0, Lcom/qh/xcad/XCadView;->startFocalX:F

    iget v0, p0, Lcom/qh/xcad/XCadView;->startFocalY:F

    invoke-direct {p0, p1, v0}, Lcom/qh/xcad/XCadView;->handleMarkerTap(FF)Z

    move-result p1

    if-eqz p1, :cond_11

    return v2

    .line 1263
    :cond_11
    iget p1, p0, Lcom/qh/xcad/XCadView;->startFocalX:F

    iget v0, p0, Lcom/qh/xcad/XCadView;->startFocalY:F

    invoke-direct {p0, p1, v0}, Lcom/qh/xcad/XCadView;->handleTap(FF)V

    :cond_12
    return v2

    .line 1200
    :cond_13
    invoke-direct {p0, p1, v1}, Lcom/qh/xcad/XCadView;->startGesture(Landroid/view/MotionEvent;I)V

    .line 1201
    iput-boolean v4, p0, Lcom/qh/xcad/XCadView;->moved:Z

    return v2
.end method

.method public removeSelectIndicePoint(II)V
    .locals 2

    .line 698
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->selectedIndicePoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 700
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 701
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 703
    iget-object p2, p0, Lcom/qh/xcad/XCadView;->selectedIndicePoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public removeSelectLightPoint(II)V
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->selectedLightPoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 783
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 785
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public retainCheckedSelectIndicePoints()V
    .locals 9

    .line 724
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->selectedIndicePoints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 727
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 728
    iget-object v1, p0, Lcom/qh/xcad/XCadView;->selectedIndicePoints:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 729
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 730
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 731
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 732
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qh/xcad/XCadView$IndicePointStyle;

    iget v7, v7, Lcom/qh/xcad/XCadView$IndicePointStyle;->color:I

    iget v8, p0, Lcom/qh/xcad/XCadView;->touchHighlightCheckColor:I

    if-eq v7, v8, :cond_2

    .line 733
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 736
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 737
    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 739
    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 740
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 743
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 744
    iget-object v2, p0, Lcom/qh/xcad/XCadView;->selectedIndicePoints:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 746
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public selectByWorldPoint(DD)I
    .locals 20

    move-object/from16 v0, p0

    .line 2888
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/qh/xcad/XCadView;->hitIndices:[I

    array-length v1, v1

    if-nez v1, :cond_1

    :cond_0
    const/16 v16, -0x1

    goto/16 :goto_2

    .line 2892
    :cond_1
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->carSelectedIndices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2894
    iget-wide v1, v0, Lcom/qh/xcad/XCadView;->cx:D

    sub-double v2, p1, v1

    .line 2895
    iget-wide v4, v0, Lcom/qh/xcad/XCadView;->cy:D

    sub-double v4, p3, v4

    neg-double v4, v4

    .line 2898
    iget-wide v7, v0, Lcom/qh/xcad/XCadView;->toleranceWorld:D

    mul-double v9, v7, v7

    .line 2901
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    iget-object v11, v1, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/4 v1, 0x0

    move-wide v13, v12

    const/4 v12, 0x0

    const/4 v15, -0x1

    .line 2906
    :goto_0
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->hitIndices:[I

    const/16 v16, -0x1

    array-length v6, v1

    if-ge v12, v6, :cond_4

    mul-int/lit8 v6, v12, 0x4

    move-object/from16 p1, v1

    .line 2909
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->hitBounds:[D

    aget-wide v17, v1, v6

    sub-double v17, v17, v7

    cmpg-double v19, v2, v17

    if-ltz v19, :cond_3

    add-int/lit8 v17, v6, 0x2

    aget-wide v17, v1, v17

    add-double v17, v17, v7

    cmpl-double v19, v2, v17

    if-gtz v19, :cond_3

    add-int/lit8 v17, v6, 0x1

    aget-wide v17, v1, v17

    sub-double v17, v17, v7

    cmpg-double v19, v4, v17

    if-ltz v19, :cond_3

    add-int/lit8 v6, v6, 0x3

    aget-wide v17, v1, v6

    add-double v17, v17, v7

    cmpl-double v1, v4, v17

    if-lez v1, :cond_2

    goto :goto_1

    .line 2914
    :cond_2
    aget v6, p1, v12

    .line 2915
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qh/xcad/XCadEntity;

    invoke-direct/range {v0 .. v5}, Lcom/qh/xcad/XCadView;->entityDist2(Lcom/qh/xcad/XCadEntity;DD)D

    move-result-wide v17

    cmpg-double v1, v17, v13

    if-gez v1, :cond_3

    move v15, v6

    move-wide/from16 v13, v17

    :cond_3
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    if-ltz v15, :cond_5

    cmpg-double v1, v13, v9

    if-gtz v1, :cond_5

    .line 2925
    iget-object v1, v0, Lcom/qh/xcad/XCadView;->carSelectedIndices:Ljava/util/Set;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2926
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return v15

    :cond_5
    :goto_2
    return v16
.end method

.method public setCadBackgroundColor(I)V
    .locals 0

    .line 559
    iput p1, p0, Lcom/qh/xcad/XCadView;->backgroundColor:I

    .line 560
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 561
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCadFilePath(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->currentPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 319
    :cond_1
    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->stopLoadCadFileThread()V

    .line 321
    iput-object p1, p0, Lcom/qh/xcad/XCadView;->currentPath:Ljava/lang/String;

    .line 326
    sget-object v0, Lcom/qh/xcad/XCadView;->SCENE_CACHE:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qh/xcad/XCadScene;

    if-eqz v0, :cond_3

    .line 328
    invoke-static {v0, p1}, Lcom/qh/xcad/DxfTextSupplement;->mergeMissingTexts(Lcom/qh/xcad/XCadScene;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0, v0}, Lcom/qh/xcad/XCadView;->setScene(Lcom/qh/xcad/XCadScene;)V

    .line 330
    iget-object p1, p0, Lcom/qh/xcad/XCadView;->onLoadCadFileListener:Lcom/qh/xcad/XCadView$OnLoadCadFileListener;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 331
    invoke-interface {p1, v0}, Lcom/qh/xcad/XCadView$OnLoadCadFileListener;->onLoadCadFileFinished(Z)V

    :cond_2
    :goto_0
    return-void

    .line 337
    :cond_3
    sget-object v0, Lcom/qh/xcad/XCadView;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qh/xcad/XCadView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/qh/xcad/XCadView$$ExternalSyntheticLambda4;-><init>(Lcom/qh/xcad/XCadView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qh/xcad/XCadView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p1}, Lcom/qh/xcad/XCadView$$ExternalSyntheticLambda5;-><init>(Lcom/qh/xcad/XCadView;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "xcad-parse"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qh/xcad/XCadView;->loadCadFileThread:Ljava/lang/Thread;

    .line 397
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 311
    invoke-virtual {p0, p1}, Lcom/qh/xcad/XCadView;->setScene(Lcom/qh/xcad/XCadScene;)V

    return-void
.end method

.method public setCadTouchEnable(Z)V
    .locals 0

    .line 565
    iput-boolean p1, p0, Lcom/qh/xcad/XCadView;->cadTouchEnable:Z

    return-void
.end method

.method public setCarHighlightColor(I)V
    .locals 0

    .line 554
    iput p1, p0, Lcom/qh/xcad/XCadView;->carHighlightColor:I

    .line 555
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDoubleClickResetViewStatus(Z)V
    .locals 1

    .line 570
    iput-boolean p1, p0, Lcom/qh/xcad/XCadView;->doubleClickResetViewStatus:Z

    .line 571
    sget-object v0, Lcom/qh/xcad/XCadView;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 572
    iget-object p1, p0, Lcom/qh/xcad/XCadView;->singleTapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setDrawScaleBarEnable(Z)V
    .locals 0

    .line 1863
    iput-boolean p1, p0, Lcom/qh/xcad/XCadView;->drawScaleBarEnable:Z

    .line 1864
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawSelectedLineNumText(Z)V
    .locals 0

    .line 587
    iput-boolean p1, p0, Lcom/qh/xcad/XCadView;->drawSelectedLineNumText:Z

    .line 588
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFollowVehicle(Z)V
    .locals 0

    .line 2034
    iput-boolean p1, p0, Lcom/qh/xcad/XCadView;->followVehicle:Z

    .line 2035
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLayerSnappable(Lcom/qh/xcad/XCadView$LayerSnappable;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/qh/xcad/XCadView;->layerSnappable:Lcom/qh/xcad/XCadView$LayerSnappable;

    return-void
.end method

.method public setLockEntityLineIndex(I)V
    .locals 0

    .line 806
    iput p1, p0, Lcom/qh/xcad/XCadView;->lockEntityLineIndex:I

    .line 807
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnCarSelectedEntityListener(Lcom/qh/xcad/XCadView$OnCarSelectedEntityListener;)V
    .locals 0

    .line 3286
    iput-object p1, p0, Lcom/qh/xcad/XCadView;->onCarSelectedEntityListener:Lcom/qh/xcad/XCadView$OnCarSelectedEntityListener;

    return-void
.end method

.method public setOnEntityClickListener(Lcom/qh/xcad/XCadView$OnEntityClickListener;)V
    .locals 0

    .line 3276
    iput-object p1, p0, Lcom/qh/xcad/XCadView;->entityClickListener:Lcom/qh/xcad/XCadView$OnEntityClickListener;

    return-void
.end method

.method public setOnExcavatorBucketSelectedEntityListener(Lcom/qh/xcad/XCadView$OnExcavatorBucketSelectedEntityListener;)V
    .locals 0

    .line 3297
    iput-object p1, p0, Lcom/qh/xcad/XCadView;->onExcavatorBucketSelectedEntityListener:Lcom/qh/xcad/XCadView$OnExcavatorBucketSelectedEntityListener;

    return-void
.end method

.method public setOnLoadCadFileListener(Lcom/qh/xcad/XCadView$OnLoadCadFileListener;)V
    .locals 0

    .line 3262
    iput-object p1, p0, Lcom/qh/xcad/XCadView;->onLoadCadFileListener:Lcom/qh/xcad/XCadView$OnLoadCadFileListener;

    return-void
.end method

.method public setOnMarkerClickListener(Lcom/qh/xcad/XCadView$OnMarkerClickListener;)V
    .locals 0

    .line 3307
    iput-object p1, p0, Lcom/qh/xcad/XCadView;->onMarkerClickListener:Lcom/qh/xcad/XCadView$OnMarkerClickListener;

    return-void
.end method

.method public setOnSelectionChangedListener(Lcom/qh/xcad/XCadView$OnSelectionChangedListener;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/qh/xcad/XCadView;->selectionListener:Lcom/qh/xcad/XCadView$OnSelectionChangedListener;

    return-void
.end method

.method public setScaleRestoreState(D)V
    .locals 0

    .line 1586
    iput-wide p1, p0, Lcom/qh/xcad/XCadView;->scaleRestoreState:D

    const/4 p1, 0x1

    .line 1587
    iput-boolean p1, p0, Lcom/qh/xcad/XCadView;->restoreState:Z

    .line 1588
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScene(Lcom/qh/xcad/XCadScene;)V
    .locals 2

    .line 480
    iput-object p1, p0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    .line 481
    iget-object p1, p0, Lcom/qh/xcad/XCadView;->selectedIndices:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 482
    iget-object p1, p0, Lcom/qh/xcad/XCadView;->selectedIndicePoints:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 483
    iget-object p1, p0, Lcom/qh/xcad/XCadView;->selectedLightPoints:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 484
    iget-object p1, p0, Lcom/qh/xcad/XCadView;->carSelectedIndices:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const/4 p1, -0x1

    .line 485
    iput p1, p0, Lcom/qh/xcad/XCadView;->lockEntityLineIndex:I

    const/4 p1, 0x0

    .line 486
    iput-boolean p1, p0, Lcom/qh/xcad/XCadView;->fitted:Z

    .line 487
    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->build()V

    .line 488
    iget p1, p0, Lcom/qh/xcad/XCadView;->lastW:I

    const/4 v0, 0x1

    if-lez p1, :cond_0

    iget v1, p0, Lcom/qh/xcad/XCadView;->lastH:I

    if-lez v1, :cond_0

    .line 489
    invoke-direct {p0, p1, v1}, Lcom/qh/xcad/XCadView;->fit(II)V

    .line 490
    iput-boolean v0, p0, Lcom/qh/xcad/XCadView;->fitted:Z

    .line 493
    :cond_0
    iput-boolean v0, p0, Lcom/qh/xcad/XCadView;->cacheDirty:Z

    .line 495
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 496
    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->notifySelection()V

    return-void
.end method

.method public setSelectSingleLine(Z)V
    .locals 0

    .line 597
    iput-boolean p1, p0, Lcom/qh/xcad/XCadView;->selectSingleLine:Z

    return-void
.end method

.method public setShowControls(Z)V
    .locals 0

    .line 577
    iput-boolean p1, p0, Lcom/qh/xcad/XCadView;->showControls:Z

    .line 578
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setToleranceWorld(D)V
    .locals 0

    .line 2878
    iput-wide p1, p0, Lcom/qh/xcad/XCadView;->toleranceWorld:D

    return-void
.end method

.method public setTouchHighlightColor(I)V
    .locals 0

    .line 544
    iput p1, p0, Lcom/qh/xcad/XCadView;->touchHighlightColor:I

    .line 545
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTxRestoreState(D)V
    .locals 0

    .line 1566
    iput-wide p1, p0, Lcom/qh/xcad/XCadView;->txRestoreState:D

    const/4 p1, 0x1

    .line 1567
    iput-boolean p1, p0, Lcom/qh/xcad/XCadView;->restoreState:Z

    .line 1568
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTyRestoreState(D)V
    .locals 0

    .line 1576
    iput-wide p1, p0, Lcom/qh/xcad/XCadView;->tyRestoreState:D

    const/4 p1, 0x1

    .line 1577
    iput-boolean p1, p0, Lcom/qh/xcad/XCadView;->restoreState:Z

    .line 1578
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVehicleHeading(F)V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->vehiclePoint:Lcom/qh/xcad/XCadVehiclePoint;

    if-eqz v0, :cond_0

    float-to-double v1, p1

    .line 93
    iput-wide v1, v0, Lcom/qh/xcad/XCadVehiclePoint;->heading:D

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setXCadExcavatorBucketPosition(DDDDD)V
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    .line 3030
    invoke-virtual/range {v0 .. v11}, Lcom/qh/xcad/XCadView;->setXCadExcavatorBucketPosition(DDDDDZ)V

    return-void
.end method

.method public setXCadExcavatorBucketPosition(DDDDDZ)V
    .locals 1

    .line 3053
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->xCadExcavatorBucket:Lcom/qh/xcad/XCadExcavatorBucket;

    if-nez v0, :cond_0

    .line 3054
    new-instance v0, Lcom/qh/xcad/XCadExcavatorBucket;

    invoke-direct {v0}, Lcom/qh/xcad/XCadExcavatorBucket;-><init>()V

    iput-object v0, p0, Lcom/qh/xcad/XCadView;->xCadExcavatorBucket:Lcom/qh/xcad/XCadExcavatorBucket;

    .line 3056
    :cond_0
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->xCadExcavatorBucket:Lcom/qh/xcad/XCadExcavatorBucket;

    iput-wide p1, v0, Lcom/qh/xcad/XCadExcavatorBucket;->xL:D

    .line 3057
    iput-wide p3, v0, Lcom/qh/xcad/XCadExcavatorBucket;->yL:D

    .line 3058
    iput-wide p5, v0, Lcom/qh/xcad/XCadExcavatorBucket;->xR:D

    .line 3059
    iput-wide p7, v0, Lcom/qh/xcad/XCadExcavatorBucket;->yR:D

    .line 3060
    iput-wide p9, v0, Lcom/qh/xcad/XCadExcavatorBucket;->heading:D

    .line 3061
    iput-boolean p11, v0, Lcom/qh/xcad/XCadExcavatorBucket;->drawAxis:Z

    .line 3063
    iget-object p9, p0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    if-nez p9, :cond_1

    return-void

    .line 3066
    :cond_1
    iget-object p9, p0, Lcom/qh/xcad/XCadView;->onExcavatorBucketSelectedEntityListener:Lcom/qh/xcad/XCadView$OnExcavatorBucketSelectedEntityListener;

    if-eqz p9, :cond_4

    .line 3069
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qh/xcad/XCadView;->selectByWorldPoint(DD)I

    move-result p1

    .line 3070
    invoke-virtual {p0, p5, p6, p7, p8}, Lcom/qh/xcad/XCadView;->selectByWorldPoint(DD)I

    move-result p2

    .line 3071
    iget-object p3, p0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    iget-object p3, p3, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    const/4 p4, 0x0

    if-ltz p1, :cond_2

    if-eqz p3, :cond_2

    .line 3072
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p5

    if-ge p1, p5, :cond_2

    .line 3073
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/qh/xcad/XCadEntity;

    goto :goto_0

    :cond_2
    move-object p5, p4

    :goto_0
    if-ltz p2, :cond_3

    if-eqz p3, :cond_3

    .line 3075
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p6

    if-ge p2, p6, :cond_3

    .line 3076
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object p4, p3

    check-cast p4, Lcom/qh/xcad/XCadEntity;

    .line 3078
    :cond_3
    iget-object p3, p0, Lcom/qh/xcad/XCadView;->onExcavatorBucketSelectedEntityListener:Lcom/qh/xcad/XCadView$OnExcavatorBucketSelectedEntityListener;

    invoke-interface {p3, p1, p5, p2, p4}, Lcom/qh/xcad/XCadView$OnExcavatorBucketSelectedEntityListener;->onEntitySelect(ILcom/qh/xcad/XCadEntity;ILcom/qh/xcad/XCadEntity;)V

    .line 3083
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setXCadItemAreaPoint(DD)V
    .locals 2

    const/4 v0, 0x2

    .line 3105
    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 p1, 0x1

    aput-wide p3, v0, p1

    invoke-virtual {p0, v0, v1, v1}, Lcom/qh/xcad/XCadView;->setXCadItemAreaPoint([DZZ)V

    return-void
.end method

.method public setXCadItemAreaPoint(Lcom/qh/xcad/XCadItemAreaPoint;)V
    .locals 4

    .line 3167
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->xCadItemAreaPoint:Lcom/qh/xcad/XCadItemAreaPoint;

    if-nez v0, :cond_0

    .line 3168
    new-instance v0, Lcom/qh/xcad/XCadItemAreaPoint;

    invoke-direct {v0}, Lcom/qh/xcad/XCadItemAreaPoint;-><init>()V

    iput-object v0, p0, Lcom/qh/xcad/XCadView;->xCadItemAreaPoint:Lcom/qh/xcad/XCadItemAreaPoint;

    :cond_0
    if-nez p1, :cond_1

    .line 3172
    iget-object p1, p0, Lcom/qh/xcad/XCadView;->xCadItemAreaPoint:Lcom/qh/xcad/XCadItemAreaPoint;

    invoke-virtual {p1}, Lcom/qh/xcad/XCadItemAreaPoint;->reset()V

    .line 3173
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 3178
    :cond_1
    iget-object v0, p1, Lcom/qh/xcad/XCadItemAreaPoint;->itemAreaPosition:[Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    if-eqz v0, :cond_3

    .line 3179
    array-length v0, v0

    new-array v0, v0, [Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    const/4 v1, 0x0

    .line 3180
    :goto_0
    iget-object v2, p1, Lcom/qh/xcad/XCadItemAreaPoint;->itemAreaPosition:[Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 3181
    aget-object v2, v2, v1

    if-nez v2, :cond_2

    goto :goto_1

    .line 3185
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;->clone()Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 3191
    :cond_4
    iget-object v1, p0, Lcom/qh/xcad/XCadView;->xCadItemAreaPoint:Lcom/qh/xcad/XCadItemAreaPoint;

    iput-object v0, v1, Lcom/qh/xcad/XCadItemAreaPoint;->itemAreaPosition:[Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    .line 3192
    iget-object v0, v1, Lcom/qh/xcad/XCadItemAreaPoint;->xCadItemAreaStyle:Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;

    iget-object v1, p1, Lcom/qh/xcad/XCadItemAreaPoint;->xCadItemAreaStyle:Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->setXCadItemAreaStyle(Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;)V

    .line 3193
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->xCadItemAreaPoint:Lcom/qh/xcad/XCadItemAreaPoint;

    iget-boolean p1, p1, Lcom/qh/xcad/XCadItemAreaPoint;->visible:Z

    iput-boolean p1, v0, Lcom/qh/xcad/XCadItemAreaPoint;->visible:Z

    .line 3194
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public varargs setXCadItemAreaPoint([D)V
    .locals 1

    const/4 v0, 0x0

    .line 3109
    invoke-virtual {p0, p1, v0, v0}, Lcom/qh/xcad/XCadView;->setXCadItemAreaPoint([DZZ)V

    return-void
.end method

.method public setXCadItemAreaPoint([DZ)V
    .locals 1

    const/4 v0, 0x0

    .line 3113
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/qh/xcad/XCadView;->setXCadItemAreaPoint([DZZZ)V

    return-void
.end method

.method public setXCadItemAreaPoint([DZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 3117
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/qh/xcad/XCadView;->setXCadItemAreaPoint([DZZZ)V

    return-void
.end method

.method public setXCadItemAreaPoint([DZZZ)V
    .locals 9

    if-eqz p1, :cond_1

    .line 3128
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 3130
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 3131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setXCadItemAreaPoint: point array length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is odd, last coordinate ignored."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XCadView"

    nop

    nop

    nop

    .line 3137
    :cond_0
    new-array v1, v0, [Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3139
    new-instance v3, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    mul-int/lit8 v4, v2, 0x2

    aget-wide v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v7, p1, v4

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;-><init>(DD)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3143
    :cond_2
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/qh/xcad/XCadView;->setXCadItemAreaPoint([Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;ZZZ)V

    return-void
.end method

.method public setXCadItemAreaPoint([Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;)V
    .locals 1

    .line 3159
    new-instance v0, Lcom/qh/xcad/XCadItemAreaPoint;

    invoke-direct {v0}, Lcom/qh/xcad/XCadItemAreaPoint;-><init>()V

    .line 3160
    iput-object p1, v0, Lcom/qh/xcad/XCadItemAreaPoint;->itemAreaPosition:[Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    .line 3161
    iget-object p1, v0, Lcom/qh/xcad/XCadItemAreaPoint;->xCadItemAreaStyle:Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;

    invoke-virtual {p1, p2}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;->setXCadItemAreaStyle(Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;)V

    .line 3162
    invoke-virtual {p0, v0}, Lcom/qh/xcad/XCadView;->setXCadItemAreaPoint(Lcom/qh/xcad/XCadItemAreaPoint;)V

    return-void
.end method

.method public setXCadItemAreaPoint([Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;ZZZ)V
    .locals 1

    .line 3152
    new-instance v0, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;

    invoke-direct {v0, p2, p3, p4}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;-><init>(ZZZ)V

    .line 3154
    invoke-virtual {p0, p1, v0}, Lcom/qh/xcad/XCadView;->setXCadItemAreaPoint([Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;Lcom/qh/xcad/XCadItemAreaPoint$XCadItemAreaStyle;)V

    return-void
.end method

.method public setXCadVehiclePosition(DDD)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .line 2949
    invoke-virtual/range {v0 .. v7}, Lcom/qh/xcad/XCadView;->setXCadVehiclePosition(DDDZ)V

    return-void
.end method

.method public setXCadVehiclePosition(DDDZ)V
    .locals 4

    .line 2960
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->vehiclePoint:Lcom/qh/xcad/XCadVehiclePoint;

    if-nez v0, :cond_0

    .line 2961
    new-instance v0, Lcom/qh/xcad/XCadVehiclePoint;

    invoke-direct {v0}, Lcom/qh/xcad/XCadVehiclePoint;-><init>()V

    iput-object v0, p0, Lcom/qh/xcad/XCadView;->vehiclePoint:Lcom/qh/xcad/XCadVehiclePoint;

    const/high16 v1, -0x10000

    .line 2962
    iput v1, v0, Lcom/qh/xcad/XCadVehiclePoint;->color:I

    .line 2964
    :cond_0
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->vehiclePoint:Lcom/qh/xcad/XCadVehiclePoint;

    iput-wide p1, v0, Lcom/qh/xcad/XCadVehiclePoint;->x:D

    .line 2965
    iput-wide p3, v0, Lcom/qh/xcad/XCadVehiclePoint;->y:D

    .line 2966
    iput-wide p5, v0, Lcom/qh/xcad/XCadVehiclePoint;->heading:D

    .line 2967
    iput-boolean p7, v0, Lcom/qh/xcad/XCadVehiclePoint;->drawAxis:Z

    .line 2969
    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->startVehiclePulse()V

    .line 2971
    iget-boolean p5, p0, Lcom/qh/xcad/XCadView;->followVehicle:Z

    if-eqz p5, :cond_1

    iget p5, p0, Lcom/qh/xcad/XCadView;->lastW:I

    if-lez p5, :cond_1

    iget p5, p0, Lcom/qh/xcad/XCadView;->lastH:I

    if-lez p5, :cond_1

    .line 2973
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qh/xcad/XCadView;->worldToScreen(DD)[F

    move-result-object p5

    .line 2975
    iget p6, p0, Lcom/qh/xcad/XCadView;->lastW:I

    int-to-float p6, p6

    const/high16 p7, 0x40000000    # 2.0f

    div-float/2addr p6, p7

    .line 2976
    iget v0, p0, Lcom/qh/xcad/XCadView;->lastH:I

    int-to-float v0, v0

    div-float/2addr v0, p7

    .line 2978
    iget-wide v1, p0, Lcom/qh/xcad/XCadView;->tx:D

    const/4 p7, 0x0

    aget p7, p5, p7

    sub-float/2addr p6, p7

    float-to-double p6, p6

    add-double/2addr v1, p6

    iput-wide v1, p0, Lcom/qh/xcad/XCadView;->tx:D

    .line 2979
    iget-wide p6, p0, Lcom/qh/xcad/XCadView;->ty:D

    const/4 v1, 0x1

    aget p5, p5, v1

    sub-float/2addr v0, p5

    float-to-double v2, v0

    add-double/2addr p6, v2

    iput-wide p6, p0, Lcom/qh/xcad/XCadView;->ty:D

    .line 2981
    iput-boolean v1, p0, Lcom/qh/xcad/XCadView;->cacheDirty:Z

    .line 2984
    :cond_1
    iget-object p5, p0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    if-nez p5, :cond_2

    return-void

    .line 2988
    :cond_2
    iget-object p5, p0, Lcom/qh/xcad/XCadView;->onCarSelectedEntityListener:Lcom/qh/xcad/XCadView$OnCarSelectedEntityListener;

    if-eqz p5, :cond_3

    .line 2989
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qh/xcad/XCadView;->selectByWorldPoint(DD)I

    move-result p1

    .line 2990
    iget-object p2, p0, Lcom/qh/xcad/XCadView;->scene:Lcom/qh/xcad/XCadScene;

    iget-object p2, p2, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    if-ltz p1, :cond_3

    if-eqz p2, :cond_3

    .line 2991
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_3

    .line 2992
    iget-object p3, p0, Lcom/qh/xcad/XCadView;->onCarSelectedEntityListener:Lcom/qh/xcad/XCadView$OnCarSelectedEntityListener;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qh/xcad/XCadEntity;

    invoke-interface {p3, p1, p2}, Lcom/qh/xcad/XCadView$OnCarSelectedEntityListener;->onEntitySelect(ILcom/qh/xcad/XCadEntity;)V

    .line 2997
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showExcavatorBucket()V
    .locals 2

    .line 3088
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->xCadExcavatorBucket:Lcom/qh/xcad/XCadExcavatorBucket;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3091
    iput-boolean v1, v0, Lcom/qh/xcad/XCadExcavatorBucket;->visible:Z

    .line 3092
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showVehicle()V
    .locals 2

    .line 3002
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->vehiclePoint:Lcom/qh/xcad/XCadVehiclePoint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3005
    iput-boolean v1, v0, Lcom/qh/xcad/XCadVehiclePoint;->visible:Z

    .line 3006
    invoke-direct {p0}, Lcom/qh/xcad/XCadView;->startVehiclePulse()V

    .line 3007
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showXCadItemAreaPoint()V
    .locals 2

    .line 3215
    iget-object v0, p0, Lcom/qh/xcad/XCadView;->xCadItemAreaPoint:Lcom/qh/xcad/XCadItemAreaPoint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3218
    iput-boolean v1, v0, Lcom/qh/xcad/XCadItemAreaPoint;->visible:Z

    .line 3219
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public unLockEntityLineIndex()V
    .locals 1

    const/4 v0, -0x1

    .line 811
    invoke-virtual {p0, v0}, Lcom/qh/xcad/XCadView;->setLockEntityLineIndex(I)V

    return-void
.end method
