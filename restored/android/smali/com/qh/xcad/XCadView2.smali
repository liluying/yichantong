.class public Lcom/qh/xcad/XCadView2;
.super Landroid/view/View;
.source "XCadView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qh/xcad/XCadView2$OnLoadCadFileListener;,
        Lcom/qh/xcad/XCadView2$OnSelectionChangedListener;,
        Lcom/qh/xcad/XCadView2$LayerSnappable;,
        Lcom/qh/xcad/XCadView2$MarkerHit;,
        Lcom/qh/xcad/XCadView2$OnMarkerClickListener;,
        Lcom/qh/xcad/XCadView2$OnEntityClickListener;,
        Lcom/qh/xcad/XCadView2$OnCarSelectedEntityListener;,
        Lcom/qh/xcad/XCadView2$OnExcavatorBucketSelectedEntityListener;
    }
.end annotation


# static fields
.field private static final AUX_LAYER_KEYWORDS:[Ljava/lang/String;

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
.field private backgroundColor:I

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

.field private drawSelectedLineNumText:Z

.field private final emptyTextPaint:Landroid/graphics/Paint;

.field private entityClickListener:Lcom/qh/xcad/XCadView2$OnEntityClickListener;

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

.field private lastH:I

.field private lastW:I

.field private layerSnappable:Lcom/qh/xcad/XCadView2$LayerSnappable;

.field private loadCadFileThread:Ljava/lang/Thread;

.field private lockEntityLineIndex:I

.field private lockHighlightColor:I

.field private mapRotateDeg:F

.field private final markerHits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qh/xcad/XCadView2$MarkerHit;",
            ">;"
        }
    .end annotation
.end field

.field private moved:Z

.field private onCarSelectedEntityListener:Lcom/qh/xcad/XCadView2$OnCarSelectedEntityListener;

.field private onExcavatorBucketSelectedEntityListener:Lcom/qh/xcad/XCadView2$OnExcavatorBucketSelectedEntityListener;

.field public onLoadCadFileListener:Lcom/qh/xcad/XCadView2$OnLoadCadFileListener;

.field private onMarkerClickListener:Lcom/qh/xcad/XCadView2$OnMarkerClickListener;

.field private pressingFit:Z

.field private scale:D

.field private scene:Lcom/qh/xcad/XCadScene;

.field private selectSingleLine:Z

.field private final selectedIndicePoints:Ljava/util/Map;
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

.field private selectionListener:Lcom/qh/xcad/XCadView2$OnSelectionChangedListener;

.field private showControls:Z

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

.field private touchHighlightColor:I

.field private final touchSlop:I

.field private tx:D

.field private ty:D

.field private vehiclePaint:Landroid/graphics/Paint;

.field private vehiclePath:Landroid/graphics/Path;

.field private vehiclePoint:Lcom/qh/xcad/XCadVehiclePoint;

.field private vehiclePulse:F

.field private vehiclePulseAnimator:Landroid/animation/ValueAnimator;

.field private xCadExcavatorBucket:Lcom/qh/xcad/XCadExcavatorBucket;


# direct methods
.method public static synthetic $r8$lambda$0vfM99vLqOssW9lw4zcMw1RkOBI(Lcom/qh/xcad/XCadView2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dxf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-static {p1}, Lcom/qh/xcad/XCad;->parseDxf(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/qh/xcad/XCad;->parseDwg(Ljava/lang/String;)[B

    move-result-object v0

    .line 292
    :goto_0
    const-string v1, "XCadView"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 294
    :try_start_0
    invoke-static {v0}, Lcom/qh/xcad/XCadBinary;->decode([B)Lcom/qh/xcad/XCadScene;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 295
    :try_start_1
    invoke-static {v0, p1}, Lcom/qh/xcad/DxfTextSupplement;->mergeMissingTexts(Lcom/qh/xcad/XCadScene;Ljava/lang/String;)V

    .line 296
    sget-object p1, Lcom/qh/xcad/XCadView2;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/qh/xcad/XCadView2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/qh/xcad/XCadView2$$ExternalSyntheticLambda0;-><init>(Lcom/qh/xcad/XCadView2;)V

    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move-object v2, v0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, v2

    .line 306
    :goto_2
    invoke-virtual {p0, v2}, Lcom/qh/xcad/XCadView2;->setScene(Lcom/qh/xcad/XCadScene;)V

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto :goto_1

    .line 310
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse returned null (\u672a\u6388\u6743\u8c03\u7528 \u6216 \u89e3\u6790\u5931\u8d25): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    .line 311
    sget-object v0, Lcom/qh/xcad/XCadView2;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qh/xcad/XCadView2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/qh/xcad/XCadView2$$ExternalSyntheticLambda1;-><init>(Lcom/qh/xcad/XCadView2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    :goto_3
    sget-object p1, Lcom/qh/xcad/XCadView2;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/qh/xcad/XCadView2$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, v2}, Lcom/qh/xcad/XCadView2$$ExternalSyntheticLambda2;-><init>(Lcom/qh/xcad/XCadView2;Ljava/lang/String;Lcom/qh/xcad/XCadScene;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$g8pA_hN6RPm3_JueAyl178eK3s0(Lcom/qh/xcad/XCadView2;)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->currentPath:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    iget-object p0, p0, Lcom/qh/xcad/XCadView2;->onLoadCadFileListener:Lcom/qh/xcad/XCadView2$OnLoadCadFileListener;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 301
    invoke-interface {p0, v0}, Lcom/qh/xcad/XCadView2$OnLoadCadFileListener;->onLoadCadFileFinished(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$gH4Z3UOUaBg2EFqp4gdKfq-nkLo(Lcom/qh/xcad/XCadView2;Ljava/lang/String;Lcom/qh/xcad/XCadScene;)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->currentPath:Ljava/lang/String;

    .line 324
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->currentPath:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual {p0, p2}, Lcom/qh/xcad/XCadView2;->setScene(Lcom/qh/xcad/XCadScene;)V

    if-eqz p2, :cond_2

    .line 332
    sget-object p0, Lcom/qh/xcad/XCadView2;->SCENE_CACHE:Landroid/util/LruCache;

    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$iBsiARd2DDJqDdXRwWSEzcTiiro(Lcom/qh/xcad/XCadView2;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1211
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/qh/xcad/XCadView2;->vehiclePulse:F

    .line 1212
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic $r8$lambda$y0foCvSn-8yRYlvpHNy1SnUKNV8(Lcom/qh/xcad/XCadView2;Ljava/lang/String;)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->currentPath:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 315
    invoke-virtual {p0, v0}, Lcom/qh/xcad/XCadView2;->setScene(Lcom/qh/xcad/XCadScene;)V

    .line 316
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->onLoadCadFileListener:Lcom/qh/xcad/XCadView2$OnLoadCadFileListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 317
    invoke-interface {v0, v1}, Lcom/qh/xcad/XCadView2$OnLoadCadFileListener;->onLoadCadFileFinished(Z)V

    .line 319
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u89e3\u6790\u5931\u8d25 (\u672a\u6388\u6743\u8c03\u7528 \u6216 \u89e3\u6790\u5931\u8d25): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 26

    .line 60
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/qh/xcad/XCadView2;->SCENE_CACHE:Landroid/util/LruCache;

    .line 65
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

    sput-object v0, Lcom/qh/xcad/XCadView2;->AUX_LAYER_KEYWORDS:[Ljava/lang/String;

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/qh/xcad/XCadView2;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, p1, v0}, Lcom/qh/xcad/XCadView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    .line 198
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/qh/xcad/XCadView2;->strokeByColor:Ljava/util/Map;

    .line 110
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/qh/xcad/XCadView2;->fillByColor:Ljava/util/Map;

    .line 111
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/qh/xcad/XCadView2;->texts:Ljava/util/List;

    const/4 p2, 0x0

    .line 114
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/qh/xcad/XCadView2;->hitIndices:[I

    .line 115
    new-array v0, p2, [D

    iput-object v0, p0, Lcom/qh/xcad/XCadView2;->hitBounds:[D

    .line 120
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/qh/xcad/XCadView2;->selectedIndices:Ljava/util/Set;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qh/xcad/XCadView2;->selectedIndicePoints:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qh/xcad/XCadView2;->selectedLightPoints:Ljava/util/Map;

    .line 133
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/qh/xcad/XCadView2;->carSelectedIndices:Ljava/util/Set;

    const/4 v0, -0x1

    .line 137
    iput v0, p0, Lcom/qh/xcad/XCadView2;->lockEntityLineIndex:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 143
    iput-wide v1, p0, Lcom/qh/xcad/XCadView2;->scale:D

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/qh/xcad/XCadView2;->tx:D

    iput-wide v3, p0, Lcom/qh/xcad/XCadView2;->ty:D

    iput-wide v1, p0, Lcom/qh/xcad/XCadView2;->fitScale:D

    .line 144
    iput-boolean p2, p0, Lcom/qh/xcad/XCadView2;->fitted:Z

    .line 145
    iput p2, p0, Lcom/qh/xcad/XCadView2;->lastW:I

    iput p2, p0, Lcom/qh/xcad/XCadView2;->lastH:I

    const/4 v5, 0x0

    .line 148
    iput v5, p0, Lcom/qh/xcad/XCadView2;->mapRotateDeg:F

    .line 150
    iput-wide v1, p0, Lcom/qh/xcad/XCadView2;->startScale:D

    iput-wide v3, p0, Lcom/qh/xcad/XCadView2;->startTx:D

    iput-wide v3, p0, Lcom/qh/xcad/XCadView2;->startTy:D

    .line 151
    iput v5, p0, Lcom/qh/xcad/XCadView2;->startFocalX:F

    iput v5, p0, Lcom/qh/xcad/XCadView2;->startFocalY:F

    iput v5, p0, Lcom/qh/xcad/XCadView2;->startSpan:F

    .line 152
    iput-boolean p2, p0, Lcom/qh/xcad/XCadView2;->moved:Z

    .line 153
    iput-boolean p2, p0, Lcom/qh/xcad/XCadView2;->pressingFit:Z

    .line 155
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/qh/xcad/XCadView2;->strokePaint:Landroid/graphics/Paint;

    .line 156
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/qh/xcad/XCadView2;->fillPaint:Landroid/graphics/Paint;

    .line 157
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lcom/qh/xcad/XCadView2;->textPaint:Landroid/graphics/Paint;

    .line 158
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lcom/qh/xcad/XCadView2;->highlightHalo:Landroid/graphics/Paint;

    .line 159
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/qh/xcad/XCadView2;->highlightCore:Landroid/graphics/Paint;

    .line 160
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/qh/xcad/XCadView2;->emptyTextPaint:Landroid/graphics/Paint;

    .line 161
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/qh/xcad/XCadView2;->fitBtnBgPaint:Landroid/graphics/Paint;

    .line 162
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, p0, Lcom/qh/xcad/XCadView2;->fitBtnIconPaint:Landroid/graphics/Paint;

    const v10, -0xe1e1e2

    .line 165
    iput v10, p0, Lcom/qh/xcad/XCadView2;->backgroundColor:I

    const v10, -0xd21d01

    .line 167
    iput v10, p0, Lcom/qh/xcad/XCadView2;->touchHighlightColor:I

    const v10, -0xd72da4

    .line 170
    iput v10, p0, Lcom/qh/xcad/XCadView2;->carHighlightColor:I

    .line 171
    iput v10, p0, Lcom/qh/xcad/XCadView2;->lockHighlightColor:I

    const v10, -0x2458c6

    .line 172
    iput v10, p0, Lcom/qh/xcad/XCadView2;->highlightColorP:I

    .line 174
    iput-boolean p2, p0, Lcom/qh/xcad/XCadView2;->cadTouchEnable:Z

    .line 176
    iput-boolean p2, p0, Lcom/qh/xcad/XCadView2;->showControls:Z

    .line 179
    iput-boolean v2, p0, Lcom/qh/xcad/XCadView2;->drawSelectedLineNumText:Z

    .line 182
    iput-boolean v2, p0, Lcom/qh/xcad/XCadView2;->selectSingleLine:Z

    .line 189
    iput-boolean p2, p0, Lcom/qh/xcad/XCadView2;->followVehicle:Z

    .line 1150
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/qh/xcad/XCadView2;->compassPaint:Landroid/graphics/Paint;

    .line 1151
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/qh/xcad/XCadView2;->compassPath:Landroid/graphics/Path;

    .line 1195
    iput v5, p0, Lcom/qh/xcad/XCadView2;->vehiclePulse:F

    .line 1218
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/qh/xcad/XCadView2;->glowPaint:Landroid/graphics/Paint;

    .line 1255
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/qh/xcad/XCadView2;->vehiclePaint:Landroid/graphics/Paint;

    .line 1256
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/qh/xcad/XCadView2;->vehiclePath:Landroid/graphics/Path;

    .line 1338
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/qh/xcad/XCadView2;->excavatorBucketPaint:Landroid/graphics/Paint;

    .line 1339
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/qh/xcad/XCadView2;->excavatorBucketPath:Landroid/graphics/Path;

    .line 1340
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/qh/xcad/XCadView2;->excavatorBucketTeethPath:Landroid/graphics/Path;

    .line 1618
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/qh/xcad/XCadView2;->highlightPath:Landroid/graphics/Path;

    const-wide v10, 0x3fc999999999999aL    # 0.2

    .line 1932
    iput-wide v10, p0, Lcom/qh/xcad/XCadView2;->toleranceWorld:D

    .line 2109
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/qh/xcad/XCadView2;->markerHits:Ljava/util/List;

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/qh/xcad/XCadView2;->density:F

    .line 201
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/qh/xcad/XCadView2;->touchSlop:I

    const/high16 p1, 0x41200000    # 10.0f

    mul-float p1, p1, p2

    .line 202
    iput p1, p0, Lcom/qh/xcad/XCadView2;->hitTolPx:F

    const/high16 p1, 0x40400000    # 3.0f

    mul-float p1, p1, p2

    .line 203
    iput p1, p0, Lcom/qh/xcad/XCadView2;->highlightWidth:F

    .line 205
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 206
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 207
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 209
    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 210
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 211
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 212
    invoke-virtual {v6, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 213
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 214
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const v2, -0x4c000001

    .line 216
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x41600000    # 14.0f

    mul-float v2, v2, p2

    .line 217
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 218
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/16 v2, 0x28

    const/16 v3, 0xff

    .line 220
    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    invoke-virtual {v9, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, 0x40000000    # 2.0f

    mul-float p2, p2, p1

    .line 223
    invoke-virtual {v9, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 224
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 226
    iget p1, p0, Lcom/qh/xcad/XCadView2;->backgroundColor:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private addDashed(Landroid/graphics/Path;Lcom/qh/xcad/XCadEntity;DD)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 690
    invoke-virtual {v2}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v3

    add-double v4, p3, p5

    .line 692
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

    .line 695
    rem-int v9, v8, v3

    .line 696
    invoke-virtual {v2, v7}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v10

    iget-wide v12, v0, Lcom/qh/xcad/XCadView2;->cx:D

    sub-double/2addr v10, v12

    invoke-virtual {v2, v7}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v12

    iget-wide v14, v0, Lcom/qh/xcad/XCadView2;->cy:D

    sub-double/2addr v12, v14

    neg-double v12, v12

    .line 697
    invoke-virtual {v2, v9}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v14

    move v7, v3

    move-wide/from16 v16, v4

    iget-wide v3, v0, Lcom/qh/xcad/XCadView2;->cx:D

    sub-double/2addr v14, v3

    invoke-virtual {v2, v9}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v3

    move-wide/from16 v18, v3

    iget-wide v2, v0, Lcom/qh/xcad/XCadView2;->cy:D

    sub-double v3, v18, v2

    neg-double v2, v3

    sub-double v4, v14, v10

    sub-double v18, v2, v12

    mul-double v20, v4, v4

    mul-double v22, v18, v18

    add-double v20, v20, v22

    move-wide/from16 v22, v4

    .line 699
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

    .line 702
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    double-to-float v4, v14

    double-to-float v2, v2

    .line 703
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

    .line 711
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

    .line 713
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    mul-double v2, v24, v14

    add-double/2addr v2, v10

    double-to-float v2, v2

    mul-double v3, v18, v14

    add-double/2addr v3, v12

    double-to-float v3, v3

    .line 714
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

    .line 680
    invoke-virtual {p2, v0}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/qh/xcad/XCadView2;->cx:D

    sub-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {p2, v0}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/qh/xcad/XCadView2;->cy:D

    sub-double/2addr v2, v4

    neg-double v2, v2

    double-to-float v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 681
    invoke-virtual {p2}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 683
    invoke-virtual {p2, v1}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/qh/xcad/XCadView2;->cx:D

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {p2, v1}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v3

    iget-wide v5, p0, Lcom/qh/xcad/XCadView2;->cy:D

    sub-double/2addr v3, v5

    neg-double v3, v3

    double-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 685
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private addPolyline(Landroid/graphics/Path;Lcom/qh/xcad/XCadEntity;)V
    .locals 7

    const/4 v0, 0x0

    .line 671
    invoke-virtual {p2, v0}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/qh/xcad/XCadView2;->cx:D

    sub-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {p2, v0}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/qh/xcad/XCadView2;->cy:D

    sub-double/2addr v2, v4

    neg-double v2, v2

    double-to-float v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 672
    invoke-virtual {p2}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 674
    invoke-virtual {p2, v1}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/qh/xcad/XCadView2;->cx:D

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {p2, v1}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v3

    iget-wide v5, p0, Lcom/qh/xcad/XCadView2;->cy:D

    sub-double/2addr v3, v5

    neg-double v3, v3

    double-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 676
    :cond_0
    invoke-virtual {p2}, Lcom/qh/xcad/XCadEntity;->isClosed()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    :cond_1
    return-void
.end method

.method private build()V
    .locals 32

    move-object/from16 v0, p0

    .line 568
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->strokeByColor:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 569
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->fillByColor:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 570
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->texts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v7, 0x0

    .line 571
    new-array v1, v7, [I

    iput-object v1, v0, Lcom/qh/xcad/XCadView2;->hitIndices:[I

    .line 572
    new-array v1, v7, [D

    iput-object v1, v0, Lcom/qh/xcad/XCadView2;->hitBounds:[D

    .line 573
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    if-nez v1, :cond_0

    goto/16 :goto_c

    .line 575
    :cond_0
    iget-object v1, v1, Lcom/qh/xcad/XCadScene;->bbox:[D

    .line 576
    aget-wide v2, v1, v7

    const/4 v8, 0x3

    aget-wide v4, v1, v8

    add-double v9, v2, v4

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    iput-wide v9, v0, Lcom/qh/xcad/XCadView2;->cx:D

    const/4 v9, 0x1

    .line 577
    aget-wide v13, v1, v9

    const/4 v10, 0x4

    aget-wide v15, v1, v10

    add-double v17, v13, v15

    div-double v11, v17, v11

    iput-wide v11, v0, Lcom/qh/xcad/XCadView2;->cy:D

    sub-double/2addr v4, v2

    sub-double/2addr v15, v13

    .line 579
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

    .line 580
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

    .line 584
    :goto_2
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    iget-object v15, v1, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    .line 585
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 586
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 588
    :goto_3
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_11

    .line 589
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qh/xcad/XCadEntity;

    move-wide/from16 v16, v11

    .line 591
    iget v11, v6, Lcom/qh/xcad/XCadEntity;->type:I

    const/4 v12, 0x5

    if-eq v11, v12, :cond_3

    const/4 v12, 0x6

    if-ne v11, v12, :cond_4

    :cond_3
    move-object v7, v1

    move-object v8, v2

    move-wide/from16 v26, v3

    move v9, v5

    move-object v2, v6

    goto/16 :goto_8

    .line 599
    :cond_4
    invoke-virtual {v6}, Lcom/qh/xcad/XCadEntity;->isFilled()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v6}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v11

    if-lt v11, v8, :cond_6

    .line 600
    iget v11, v6, Lcom/qh/xcad/XCadEntity;->color:I

    invoke-direct {v0, v11}, Lcom/qh/xcad/XCadView2;->fillFor(I)Landroid/graphics/Path;

    move-result-object v11

    invoke-direct {v0, v11, v6}, Lcom/qh/xcad/XCadView2;->addPolygon(Landroid/graphics/Path;Lcom/qh/xcad/XCadEntity;)V

    :cond_5
    :goto_4
    move-object v7, v1

    move-object v8, v2

    move v9, v5

    move-object v2, v6

    goto/16 :goto_5

    .line 601
    :cond_6
    iget v11, v6, Lcom/qh/xcad/XCadEntity;->type:I

    if-ne v11, v10, :cond_7

    .line 602
    invoke-virtual {v6}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v11

    if-lt v11, v9, :cond_5

    .line 603
    iget v11, v6, Lcom/qh/xcad/XCadEntity;->color:I

    invoke-direct {v0, v11}, Lcom/qh/xcad/XCadView2;->strokeFor(I)Landroid/graphics/Path;

    move-result-object v11

    .line 604
    invoke-virtual {v6, v7}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v18

    iget-wide v8, v0, Lcom/qh/xcad/XCadView2;->cx:D

    sub-double v8, v18, v8

    double-to-float v8, v8

    .line 605
    invoke-virtual {v6, v7}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v18

    move/from16 v20, v8

    iget-wide v7, v0, Lcom/qh/xcad/XCadView2;->cy:D

    sub-double v7, v18, v7

    neg-double v7, v7

    double-to-float v7, v7

    double-to-float v8, v13

    sub-float v9, v20, v8

    .line 607
    invoke-virtual {v11, v9, v7}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v9, v20, v8

    .line 608
    invoke-virtual {v11, v9, v7}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v9, v7, v8

    move/from16 v10, v20

    .line 609
    invoke-virtual {v11, v10, v9}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v7, v8

    .line 610
    invoke-virtual {v11, v10, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4

    .line 612
    :cond_7
    invoke-virtual {v6}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_5

    .line 613
    iget v7, v6, Lcom/qh/xcad/XCadEntity;->color:I

    invoke-direct {v0, v7}, Lcom/qh/xcad/XCadView2;->strokeFor(I)Landroid/graphics/Path;

    move-result-object v7

    .line 614
    invoke-virtual {v6}, Lcom/qh/xcad/XCadEntity;->isDashed()Z

    move-result v8

    if-eqz v8, :cond_8

    cmpl-double v8, v3, v16

    if-lez v8, :cond_8

    const-wide v8, 0x3fe3333333333333L    # 0.6

    mul-double v8, v8, v3

    move-object/from16 v30, v7

    move-object v7, v1

    move-object/from16 v1, v30

    move-wide/from16 v30, v8

    move-object v8, v2

    move v9, v5

    move-object v2, v6

    move-wide/from16 v5, v30

    .line 615
    invoke-direct/range {v0 .. v6}, Lcom/qh/xcad/XCadView2;->addDashed(Landroid/graphics/Path;Lcom/qh/xcad/XCadEntity;DD)V

    goto :goto_5

    :cond_8
    move-object v8, v7

    move-object v7, v1

    move-object v1, v8

    move-object v8, v2

    move v9, v5

    move-object v2, v6

    .line 617
    invoke-direct {v0, v1, v2}, Lcom/qh/xcad/XCadView2;->addPolyline(Landroid/graphics/Path;Lcom/qh/xcad/XCadEntity;)V

    .line 622
    :goto_5
    invoke-virtual {v2}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v1

    const/4 v5, 0x1

    if-ge v1, v5, :cond_9

    move-wide/from16 v26, v3

    goto/16 :goto_9

    .line 623
    :cond_9
    iget-object v1, v2, Lcom/qh/xcad/XCadEntity;->layerName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/qh/xcad/XCadView2;->isSnappable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    move-wide/from16 v26, v3

    :goto_6
    const/4 v5, 0x1

    goto/16 :goto_9

    .line 626
    :cond_a
    invoke-virtual {v2}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v1

    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide/from16 v20, v10

    move-wide/from16 v22, v20

    const/4 v12, 0x0

    move-wide v10, v5

    :goto_7
    if-ge v12, v1, :cond_f

    .line 628
    invoke-virtual {v2, v12}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v24

    move-wide/from16 v26, v3

    iget-wide v3, v0, Lcom/qh/xcad/XCadView2;->cx:D

    sub-double v24, v24, v3

    .line 629
    invoke-virtual {v2, v12}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v3

    move-wide/from16 v28, v3

    iget-wide v3, v0, Lcom/qh/xcad/XCadView2;->cy:D

    sub-double v3, v28, v3

    neg-double v3, v3

    cmpg-double v28, v24, v20

    if-gez v28, :cond_b

    move-wide/from16 v20, v24

    :cond_b
    cmpl-double v28, v24, v5

    if-lez v28, :cond_c

    move-wide/from16 v5, v24

    :cond_c
    cmpg-double v24, v3, v22

    if-gez v24, :cond_d

    move-wide/from16 v22, v3

    :cond_d
    cmpl-double v24, v3, v10

    if-lez v24, :cond_e

    move-wide v10, v3

    :cond_e
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v3, v26

    goto :goto_7

    :cond_f
    move-wide/from16 v26, v3

    .line 635
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 592
    :goto_8
    invoke-virtual {v2}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v1

    const/4 v5, 0x1

    if-lt v1, v5, :cond_10

    iget-object v1, v2, Lcom/qh/xcad/XCadEntity;->text:Ljava/lang/String;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 593
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->texts:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_9
    add-int/lit8 v1, v9, 0x1

    move v5, v1

    move-object v1, v7

    move-object v2, v8

    move-wide/from16 v11, v16

    move-wide/from16 v3, v26

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x4

    goto/16 :goto_3

    :cond_11
    move-object v7, v1

    move-object v8, v2

    .line 642
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/qh/xcad/XCadView2;->hitIndices:[I

    const/4 v1, 0x0

    .line 643
    :goto_a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_12

    .line 644
    iget-object v2, v0, Lcom/qh/xcad/XCadView2;->hitIndices:[I

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 646
    :cond_12
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [D

    iput-object v1, v0, Lcom/qh/xcad/XCadView2;->hitBounds:[D

    const/4 v7, 0x0

    .line 647
    :goto_b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_13

    .line 648
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->hitBounds:[D

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_13
    :goto_c
    return-void
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

    .line 1534
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

    .line 1535
    :goto_0
    array-length v5, v2

    if-nez v5, :cond_1

    goto/16 :goto_9

    .line 1539
    :cond_1
    iget-object v5, v0, Lcom/qh/xcad/XCadView2;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-lez v7, :cond_2

    .line 1541
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1542
    iget-object v8, v0, Lcom/qh/xcad/XCadView2;->textPaint:Landroid/graphics/Paint;

    const-string v9, "H"

    invoke-virtual {v8, v9, v3, v4, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1543
    iget v7, v7, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 1544
    iget-object v8, v0, Lcom/qh/xcad/XCadView2;->textPaint:Landroid/graphics/Paint;

    div-float v7, v5, v7

    mul-float v5, v5, v7

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1547
    :cond_2
    iget-object v5, v0, Lcom/qh/xcad/XCadView2;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    .line 1548
    iget v7, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v7, v5

    .line 1550
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1554
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

    .line 1558
    :goto_2
    iget-object v15, v0, Lcom/qh/xcad/XCadView2;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    invoke-static {v13, v15}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 1559
    iget-object v15, v0, Lcom/qh/xcad/XCadView2;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v15, v14, v3, v6, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1560
    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-static {v12, v6}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 1561
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

    .line 1568
    :goto_3
    iget-object v8, v0, Lcom/qh/xcad/XCadView2;->textPaint:Landroid/graphics/Paint;

    aget-object v9, v2, v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8, v9, v3, v11, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1569
    iget v8, v5, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    .line 1570
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

    .line 1571
    :goto_4
    iget-object v11, v0, Lcom/qh/xcad/XCadView2;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v9, v3, v12, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1572
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    .line 1574
    iget v9, v1, Lcom/qh/xcad/XCadEntity;->textAttachment:I

    if-lt v9, v4, :cond_7

    const/16 v11, 0x9

    if-le v9, v11, :cond_9

    .line 1576
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

    .line 1578
    div-int/lit8 v1, v9, 0x3

    .line 1579
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

    .line 1592
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

    .line 1601
    :goto_7
    array-length v4, v2

    if-ge v3, v4, :cond_f

    .line 1602
    aget-object v4, v2, v3

    if-eqz v4, :cond_e

    goto :goto_8

    :cond_e
    move-object v4, v14

    :goto_8
    int-to-float v5, v3

    mul-float v5, v5, v7

    add-float/2addr v5, v1

    .line 1603
    iget-object v8, v0, Lcom/qh/xcad/XCadView2;->textPaint:Landroid/graphics/Paint;

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

    .line 1155
    iget v0, p0, Lcom/qh/xcad/XCadView2;->density:F

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float v2, v0, v1

    mul-float v1, v1, v0

    const/high16 v3, 0x41400000    # 12.0f

    mul-float v0, v0, v3

    .line 1160
    iget-object v4, p0, Lcom/qh/xcad/XCadView2;->compassPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1161
    iget-object v4, p0, Lcom/qh/xcad/XCadView2;->compassPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1162
    iget-object v4, p0, Lcom/qh/xcad/XCadView2;->compassPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x40400000    # 3.0f

    iget v7, p0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float v7, v7, v6

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1164
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1167
    iget v4, p0, Lcom/qh/xcad/XCadView2;->mapRotateDeg:F

    neg-float v4, v4

    invoke-virtual {p1, v4, v2, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1169
    iget-object v4, p0, Lcom/qh/xcad/XCadView2;->compassPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 1171
    iget-object v4, p0, Lcom/qh/xcad/XCadView2;->compassPath:Landroid/graphics/Path;

    sub-float v6, v1, v0

    invoke-virtual {v4, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1172
    iget-object v4, p0, Lcom/qh/xcad/XCadView2;->compassPath:Landroid/graphics/Path;

    const v6, 0x3f19999a    # 0.6f

    mul-float v6, v6, v0

    sub-float v7, v2, v6

    add-float/2addr v1, v0

    invoke-virtual {v4, v7, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1173
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->compassPath:Landroid/graphics/Path;

    add-float/2addr v6, v2

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1174
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->compassPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 1176
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->compassPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1177
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->compassPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1178
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->compassPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/qh/xcad/XCadView2;->compassPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1181
    new-instance v0, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 1182
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1183
    iget v4, p0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1184
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v3, 0x41700000    # 15.0f

    .line 1185
    iget v4, p0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float v4, v4, v3

    add-float/2addr v1, v4

    const-string v3, "N"

    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawFitButton(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1909
    iget-boolean v0, p0, Lcom/qh/xcad/XCadView2;->showControls:Z

    if-nez v0, :cond_0

    return-void

    .line 1910
    :cond_0
    invoke-direct {p0}, Lcom/qh/xcad/XCadView2;->fitBtnCx()F

    move-result v0

    invoke-direct {p0}, Lcom/qh/xcad/XCadView2;->fitBtnCy()F

    move-result v1

    invoke-direct {p0}, Lcom/qh/xcad/XCadView2;->fitBtnRadius()F

    move-result v2

    .line 1911
    iget-object v3, p0, Lcom/qh/xcad/XCadView2;->fitBtnBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    const v3, 0x3ee66666    # 0.45f

    mul-float v3, v3, v2

    sub-float v5, v0, v2

    sub-float v6, v1, v2

    add-float/2addr v0, v2

    add-float/2addr v1, v2

    .line 1916
    iget-object v9, p0, Lcom/qh/xcad/XCadView2;->fitBtnIconPaint:Landroid/graphics/Paint;

    add-float v7, v5, v3

    move v8, v6

    move-object v4, p1

    .line 1918
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move p1, v7

    add-float v8, v6, v3

    move v7, v5

    .line 1919
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v2, v8

    sub-float v10, v0, v3

    move-object v11, v9

    move v9, v10

    move v10, v6

    move v7, v0

    move v8, v6

    move-object v6, v4

    .line 1921
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v6, v8

    move v0, v9

    move-object v9, v11

    move v8, v7

    move v10, v2

    move v9, v8

    move v8, v6

    move-object v6, v4

    .line 1922
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v2, v7

    move-object v9, v11

    move v8, v1

    move v7, p1

    move v6, v1

    .line 1924
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v8, v6, v3

    move v7, v5

    .line 1925
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v1, v8

    move v11, v6

    move v10, v0

    move v8, v2

    move-object v7, v4

    move-object v12, v9

    move v9, v6

    .line 1927
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v7, v8

    move-object v9, v12

    move v10, v7

    move v11, v1

    move-object v7, v4

    move v9, v6

    .line 1928
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

    .line 1608
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1609
    :cond_0
    iget-object v0, v0, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    .line 1611
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

    .line 1612
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    goto :goto_0

    .line 1613
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qh/xcad/XCadEntity;

    invoke-direct {p0, p1, v2, p3, v1}, Lcom/qh/xcad/XCadView2;->paintHighlight(Landroid/graphics/Canvas;Lcom/qh/xcad/XCadEntity;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private drawLockEntityLine(Landroid/graphics/Canvas;I)V
    .locals 2

    .line 1137
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1140
    :cond_0
    iget v1, p0, Lcom/qh/xcad/XCadView2;->lockEntityLineIndex:I

    if-ltz v1, :cond_1

    iget-object v0, v0, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1141
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1142
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    iget-object v0, v0, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    iget v1, p0, Lcom/qh/xcad/XCadView2;->lockEntityLineIndex:I

    .line 1143
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qh/xcad/XCadEntity;

    iget v1, p0, Lcom/qh/xcad/XCadView2;->lockEntityLineIndex:I

    .line 1142
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/qh/xcad/XCadView2;->paintHighlight(Landroid/graphics/Canvas;Lcom/qh/xcad/XCadEntity;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawPointLabel(Landroid/graphics/Canvas;DDII)V
    .locals 6

    .line 1668
    iget v0, p0, Lcom/qh/xcad/XCadView2;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v1, v1, v0

    const/high16 v2, -0x3e600000    # -20.0f

    mul-float v0, v0, v2

    .line 1671
    iget-wide v2, p0, Lcom/qh/xcad/XCadView2;->cx:D

    sub-double/2addr p2, v2

    iget-wide v2, p0, Lcom/qh/xcad/XCadView2;->scale:D

    mul-double p2, p2, v2

    iget-wide v4, p0, Lcom/qh/xcad/XCadView2;->tx:D

    add-double/2addr p2, v4

    double-to-float p2, p2

    .line 1672
    iget-wide v4, p0, Lcom/qh/xcad/XCadView2;->cy:D

    sub-double/2addr p4, v4

    neg-double p3, p4

    mul-double p3, p3, v2

    iget-wide v2, p0, Lcom/qh/xcad/XCadView2;->ty:D

    add-double/2addr p3, v2

    double-to-float p3, p3

    add-float/2addr v1, p2

    add-float/2addr v0, p3

    .line 1677
    new-instance p4, Landroid/graphics/Paint;

    const/4 p5, 0x1

    invoke-direct {p4, p5}, Landroid/graphics/Paint;-><init>(I)V

    .line 1678
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1679
    invoke-virtual {p4, p6}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p6, 0x41600000    # 14.0f

    .line 1681
    iget v2, p0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float v2, v2, p6

    .line 1682
    invoke-virtual {p1, v1, v0, v2, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1684
    new-instance p6, Landroid/graphics/Path;

    invoke-direct {p6}, Landroid/graphics/Path;-><init>()V

    .line 1685
    invoke-virtual {p6, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    const p2, 0x3e99999a    # 0.3f

    mul-float p2, p2, v2

    sub-float p2, v1, p2

    .line 1686
    invoke-virtual {p6, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    const p2, 0x3f19999a    # 0.6f

    mul-float v2, v2, p2

    add-float/2addr v2, v0

    .line 1687
    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1688
    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    .line 1689
    invoke-virtual {p1, p6, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1691
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p5}, Landroid/graphics/Paint;-><init>(I)V

    const/4 p3, -0x1

    .line 1692
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p3, 0x41200000    # 10.0f

    .line 1693
    iget p4, p0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float p4, p4, p3

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1694
    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1696
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p3

    .line 1697
    iget p4, p3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget p3, p3, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr p4, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p4, p3

    sub-float/2addr v0, p4

    add-int/2addr p7, p5

    .line 1699
    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, v1, v0, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawPointLight(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1813
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->selectedLightPoints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 1814
    :cond_0
    iget-object v0, v0, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    .line 1816
    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->selectedLightPoints:Ljava/util/Map;

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

    .line 1817
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_2

    .line 1818
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_3

    :cond_2
    :goto_1
    move-object v6, p1

    goto :goto_4

    .line 1819
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qh/xcad/XCadEntity;

    .line 1820
    iget-object v4, v3, Lcom/qh/xcad/XCadEntity;->points:[D

    if-nez v4, :cond_4

    goto :goto_1

    .line 1825
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

    .line 1826
    invoke-virtual {v3}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v5

    if-lt v4, v5, :cond_6

    :cond_5
    move-object v6, p1

    goto :goto_3

    .line 1830
    :cond_6
    invoke-virtual {v3, v4}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v7

    invoke-virtual {v3, v4}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v9

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v11}, Lcom/qh/xcad/XCadView2;->drawPointLightMarker(Landroid/graphics/Canvas;DDI)V

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

    .line 1842
    iget-wide v0, p0, Lcom/qh/xcad/XCadView2;->cx:D

    sub-double/2addr p2, v0

    iget-wide v0, p0, Lcom/qh/xcad/XCadView2;->scale:D

    mul-double p2, p2, v0

    iget-wide v2, p0, Lcom/qh/xcad/XCadView2;->tx:D

    add-double/2addr p2, v2

    double-to-float p2, p2

    .line 1843
    iget-wide v2, p0, Lcom/qh/xcad/XCadView2;->cy:D

    sub-double/2addr p4, v2

    neg-double p3, p4

    mul-double p3, p3, v0

    iget-wide v0, p0, Lcom/qh/xcad/XCadView2;->ty:D

    add-double/2addr p3, v0

    double-to-float p3, p3

    .line 1845
    iget p4, p0, Lcom/qh/xcad/XCadView2;->density:F

    const/high16 p5, 0x41900000    # 18.0f

    mul-float p5, p5, p4

    const/high16 v0, 0x41200000    # 10.0f

    mul-float p4, p4, v0

    .line 1849
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 1850
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x40400000    # 3.0f

    .line 1851
    iget v4, p0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float v4, v4, v3

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1852
    iget v3, p0, Lcom/qh/xcad/XCadView2;->highlightColorP:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x41400000    # 12.0f

    .line 1855
    iget v4, p0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float v4, v4, v3

    const/4 v3, 0x0

    iget v5, p0, Lcom/qh/xcad/XCadView2;->highlightColorP:I

    invoke-virtual {v1, v4, v3, v3, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1856
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 1859
    invoke-virtual {p1, p2, p3, p5, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1862
    new-instance p5, Landroid/graphics/Paint;

    invoke-direct {p5, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 1863
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1864
    iget v3, p0, Lcom/qh/xcad/XCadView2;->highlightColorP:I

    invoke-virtual {p5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1866
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1869
    new-instance p5, Landroid/graphics/Paint;

    invoke-direct {p5, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 1870
    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, -0x1

    .line 1871
    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setColor(I)V

    const v3, 0x3eb33333    # 0.35f

    mul-float p4, p4, v3

    .line 1873
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1876
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 1877
    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1878
    iget p5, p0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float p5, p5, v0

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1879
    sget-object p5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1881
    invoke-virtual {p4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p5

    .line 1882
    iget v0, p5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget p5, p5, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v0, p5

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr v0, p5

    sub-float/2addr p3, v0

    add-int/2addr p6, v2

    .line 1884
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5, p2, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawPointMarcker(Landroid/graphics/Canvas;DDI)V
    .locals 5

    const/high16 v0, 0x41f00000    # 30.0f

    .line 1762
    iget v1, p0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float v1, v1, v0

    .line 1764
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/qh/xcad/XCadView2;->worldToScreen(DD)[F

    move-result-object p2

    const/4 p3, 0x0

    .line 1766
    aget p3, p2, p3

    const/4 p4, 0x1

    .line 1767
    aget p2, p2, p4

    sub-float p5, p2, v1

    .line 1773
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p4}, Landroid/graphics/Paint;-><init>(I)V

    .line 1774
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1775
    iget v1, p0, Lcom/qh/xcad/XCadView2;->touchHighlightColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 1777
    iget v2, p0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float v2, v2, v1

    .line 1780
    invoke-virtual {p1, p3, p5, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1783
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1784
    invoke-virtual {v1, p3, p2}, Landroid/graphics/Path;->moveTo(FF)V

    const p2, 0x3ecccccd    # 0.4f

    mul-float p2, p2, v2

    sub-float v3, p3, p2

    const v4, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v4

    add-float/2addr v2, p5

    .line 1786
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr p2, p3

    .line 1791
    invoke-virtual {v1, p2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1796
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 1798
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1801
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p4}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v0, -0x1

    .line 1802
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x41200000    # 10.0f

    .line 1803
    iget v1, p0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float v1, v1, v0

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1804
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1806
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 1807
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    sub-float/2addr p5, v1

    add-int/2addr p6, p4

    .line 1809
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p3, p5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSelectedLinePointLabel(Landroid/graphics/Canvas;Lcom/qh/xcad/XCadEntity;II)V
    .locals 9

    const/4 v0, 0x0

    .line 1664
    invoke-virtual {p2, v0}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v3

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/qh/xcad/XCadView2;->drawPointLabel(Landroid/graphics/Canvas;DDII)V

    return-void
.end method

.method private drawTexts(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1501
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->texts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1502
    :cond_0
    iget v0, p0, Lcom/qh/xcad/XCadView2;->density:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    .line 1504
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 1506
    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->texts:Ljava/util/List;

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

    .line 1507
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

    .line 1509
    iget-wide v8, p0, Lcom/qh/xcad/XCadView2;->scale:D

    mul-double v5, v5, v8

    goto :goto_2

    :cond_3
    const/high16 v5, 0x41400000    # 12.0f

    iget v6, p0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float v6, v6, v5

    float-to-double v5, v6

    :goto_2
    if-eqz v7, :cond_4

    float-to-double v8, v0

    cmpg-double v10, v5, v8

    if-gez v10, :cond_4

    goto :goto_0

    .line 1512
    :cond_4
    invoke-virtual {v4, v2}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v8

    iget-wide v10, p0, Lcom/qh/xcad/XCadView2;->cx:D

    sub-double/2addr v8, v10

    iget-wide v10, p0, Lcom/qh/xcad/XCadView2;->scale:D

    mul-double v8, v8, v10

    iget-wide v10, p0, Lcom/qh/xcad/XCadView2;->tx:D

    add-double/2addr v8, v10

    .line 1513
    invoke-virtual {v4, v2}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v10

    iget-wide v12, p0, Lcom/qh/xcad/XCadView2;->cy:D

    sub-double/2addr v10, v12

    neg-double v10, v10

    iget-wide v12, p0, Lcom/qh/xcad/XCadView2;->scale:D

    mul-double v10, v10, v12

    iget-wide v12, p0, Lcom/qh/xcad/XCadView2;->ty:D

    add-double/2addr v10, v12

    .line 1518
    iget-object v12, p0, Lcom/qh/xcad/XCadView2;->textPaint:Landroid/graphics/Paint;

    iget v13, v4, Lcom/qh/xcad/XCadEntity;->color:I

    invoke-direct {p0, v13}, Lcom/qh/xcad/XCadView2;->getCADColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1519
    iget-object v12, p0, Lcom/qh/xcad/XCadView2;->textPaint:Landroid/graphics/Paint;

    double-to-float v5, v5

    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1521
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    double-to-float v5, v8

    double-to-float v6, v10

    .line 1522
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v7, :cond_5

    .line 1523
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

    .line 1524
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1526
    :cond_5
    invoke-direct {p0, p1, v4}, Lcom/qh/xcad/XCadView2;->drawAlignedText(Landroid/graphics/Canvas;Lcom/qh/xcad/XCadEntity;)V

    .line 1527
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x5dc

    if-lt v3, v4, :cond_1

    :cond_6
    :goto_3
    return-void
.end method

.method private drawVehicle(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1259
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePoint:Lcom/qh/xcad/XCadVehiclePoint;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1262
    :cond_0
    iget-boolean v1, v0, Lcom/qh/xcad/XCadVehiclePoint;->visible:Z

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 1266
    :cond_1
    iget-wide v1, v0, Lcom/qh/xcad/XCadVehiclePoint;->x:D

    iget-wide v3, v0, Lcom/qh/xcad/XCadVehiclePoint;->y:D

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/qh/xcad/XCadView2;->worldToScreen(DD)[F

    move-result-object v0

    const/4 v1, 0x0

    .line 1268
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 1269
    aget v0, v0, v2

    .line 1271
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1274
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1276
    iget v0, p0, Lcom/qh/xcad/XCadView2;->density:F

    const/high16 v1, 0x41900000    # 18.0f

    mul-float v2, v0, v1

    iget v3, p0, Lcom/qh/xcad/XCadView2;->vehiclePulse:F

    const/high16 v4, 0x41000000    # 8.0f

    mul-float v3, v3, v4

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    .line 1279
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->glowPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1280
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->glowPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x33ff0000

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1281
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->glowPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x41200000    # 10.0f

    .line 1283
    iget v2, p0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float v2, v2, v0

    .line 1285
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1286
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePaint:Landroid/graphics/Paint;

    const/high16 v6, -0x10000

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1287
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1289
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1290
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePaint:Landroid/graphics/Paint;

    const/4 v8, -0x1

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1291
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePaint:Landroid/graphics/Paint;

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float v9, v9, v8

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1292
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1296
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePoint:Lcom/qh/xcad/XCadVehiclePoint;

    iget-wide v8, v0, Lcom/qh/xcad/XCadVehiclePoint;->heading:D

    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    cmpl-double v0, v8, v10

    if-eqz v0, :cond_2

    double-to-float v0, v8

    .line 1297
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1299
    iget v0, p0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float v2, v0, v1

    const/high16 v8, 0x41600000    # 14.0f

    mul-float v8, v8, v0

    mul-float v0, v0, v1

    .line 1303
    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->vehiclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1304
    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->vehiclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1305
    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->vehiclePaint:Landroid/graphics/Paint;

    const/high16 v7, 0x40400000    # 3.0f

    iget v9, p0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float v9, v9, v7

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1306
    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->vehiclePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1307
    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->vehiclePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1309
    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->vehiclePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 1311
    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->vehiclePath:Landroid/graphics/Path;

    neg-float v7, v0

    neg-float v2, v2

    invoke-virtual {v1, v7, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1312
    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->vehiclePath:Landroid/graphics/Path;

    const v9, 0x3f99999a    # 1.2f

    mul-float v7, v7, v9

    const v10, 0x3ecccccd    # 0.4f

    mul-float v10, v10, v8

    sub-float v10, v2, v10

    sub-float v8, v2, v8

    invoke-virtual {v1, v7, v10, v5, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1316
    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->vehiclePath:Landroid/graphics/Path;

    mul-float v9, v9, v0

    invoke-virtual {v1, v9, v10, v0, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1319
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->vehiclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1322
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1323
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1324
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1325
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1327
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1328
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePath:Landroid/graphics/Path;

    invoke-virtual {v0, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1329
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/qh/xcad/XCadView2;->density:F

    const/high16 v2, -0x3f400000    # -6.0f

    mul-float v2, v2, v1

    mul-float v1, v1, v4

    add-float/2addr v1, v8

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1330
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/qh/xcad/XCadView2;->density:F

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float v2, v2, v1

    mul-float v1, v1, v4

    add-float/2addr v8, v1

    invoke-virtual {v0, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1331
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 1332
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->vehiclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1335
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawVisLinePoints(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1705
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->markerHits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1707
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->selectedIndicePoints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1711
    :cond_0
    iget-object v0, v0, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    .line 1713
    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->selectedIndicePoints:Ljava/util/Map;

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

    .line 1714
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_2

    .line 1715
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v6, v3, :cond_3

    :cond_2
    :goto_1
    move-object v8, p1

    goto :goto_3

    .line 1716
    :cond_3
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qh/xcad/XCadEntity;

    .line 1717
    iget-object v4, v3, Lcom/qh/xcad/XCadEntity;->points:[D

    if-nez v4, :cond_4

    goto :goto_1

    .line 1722
    :cond_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ltz v7, :cond_5

    .line 1724
    invoke-virtual {v3}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v4

    if-lt v7, v4, :cond_6

    goto :goto_2

    .line 1728
    :cond_6
    invoke-virtual {v3, v7}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v4

    invoke-virtual {v3, v7}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v8

    invoke-direct {p0, v4, v5, v8, v9}, Lcom/qh/xcad/XCadView2;->worldToScreen(DD)[F

    move-result-object v8

    .line 1729
    iget v4, p0, Lcom/qh/xcad/XCadView2;->density:F

    const/high16 v5, 0x420c0000    # 35.0f

    mul-float v9, v4, v5

    const/high16 v5, 0x41600000    # 14.0f

    mul-float v10, v4, v5

    .line 1731
    iget-object v11, p0, Lcom/qh/xcad/XCadView2;->markerHits:Ljava/util/List;

    new-instance v4, Lcom/qh/xcad/XCadView2$1;

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/qh/xcad/XCadView2$1;-><init>(Lcom/qh/xcad/XCadView2;II[FFF)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1742
    invoke-virtual {v3, v7}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v9

    invoke-virtual {v3, v7}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v11

    move-object v8, p1

    move v13, v7

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/qh/xcad/XCadView2;->paintVisLinePoint(Landroid/graphics/Canvas;DDI)V

    goto :goto_2

    :goto_3
    move-object p1, v8

    goto :goto_0

    :cond_7
    :goto_4
    return-void
.end method

.method private entityDist2(Lcom/qh/xcad/XCadEntity;DD)D
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1016
    invoke-virtual {v1}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 1018
    invoke-virtual {v1, v3}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v4

    iget-wide v6, v0, Lcom/qh/xcad/XCadView2;->cx:D

    sub-double/2addr v4, v6

    sub-double v4, v4, p2

    .line 1019
    invoke-virtual {v1, v3}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v1

    iget-wide v6, v0, Lcom/qh/xcad/XCadView2;->cy:D

    sub-double/2addr v1, v6

    neg-double v1, v1

    sub-double v1, v1, p4

    mul-double v4, v4, v4

    mul-double v1, v1, v1

    add-double/2addr v4, v1

    return-wide v4

    .line 1023
    :cond_0
    invoke-virtual {v1, v3}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v5

    iget-wide v7, v0, Lcom/qh/xcad/XCadView2;->cx:D

    sub-double/2addr v5, v7

    .line 1024
    invoke-virtual {v1, v3}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v7

    iget-wide v9, v0, Lcom/qh/xcad/XCadView2;->cy:D

    sub-double/2addr v7, v9

    neg-double v7, v7

    const-wide/high16 v9, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide/from16 v17, v9

    :goto_0
    if-ge v4, v2, :cond_2

    .line 1026
    invoke-virtual {v1, v4}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v9

    iget-wide v11, v0, Lcom/qh/xcad/XCadView2;->cx:D

    sub-double/2addr v9, v11

    .line 1027
    invoke-virtual {v1, v4}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v11

    iget-wide v13, v0, Lcom/qh/xcad/XCadView2;->cy:D

    sub-double/2addr v11, v13

    neg-double v11, v11

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    .line 1028
    invoke-static/range {v5 .. v16}, Lcom/qh/xcad/XCadView2;->segDist2(DDDDDD)D

    move-result-wide v5

    cmpg-double v7, v5, v17

    if-gez v7, :cond_1

    move-wide/from16 v17, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move-wide v5, v9

    move-wide v7, v11

    goto :goto_0

    .line 1033
    :cond_2
    invoke-virtual {v1}, Lcom/qh/xcad/XCadEntity;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    if-le v2, v4, :cond_3

    .line 1034
    invoke-virtual {v1, v3}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v9

    iget-wide v11, v0, Lcom/qh/xcad/XCadView2;->cx:D

    sub-double/2addr v9, v11

    .line 1035
    invoke-virtual {v1, v3}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v1

    iget-wide v3, v0, Lcom/qh/xcad/XCadView2;->cy:D

    sub-double/2addr v1, v3

    neg-double v11, v1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    .line 1036
    invoke-static/range {v5 .. v16}, Lcom/qh/xcad/XCadView2;->segDist2(DDDDDD)D

    move-result-wide v1

    cmpg-double v3, v1, v17

    if-gez v3, :cond_3

    return-wide v1

    :cond_3
    return-wide v17
.end method

.method private fillFor(I)Landroid/graphics/Path;
    .locals 2

    .line 662
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->fillByColor:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 664
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 665
    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->fillByColor:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private fit(II)V
    .locals 18

    move-object/from16 v0, p0

    .line 725
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    if-nez v1, :cond_0

    return-void

    .line 726
    :cond_0
    iget-object v1, v1, Lcom/qh/xcad/XCadScene;->bbox:[D

    const/high16 v2, 0x41c00000    # 24.0f

    .line 727
    iget v3, v0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float v3, v3, v2

    float-to-double v2, v3

    const/4 v4, 0x3

    .line 728
    aget-wide v4, v1, v4

    const/4 v6, 0x0

    aget-wide v6, v1, v6

    sub-double/2addr v4, v6

    const/4 v6, 0x4

    aget-wide v6, v1, v6

    const/4 v8, 0x1

    aget-wide v8, v1, v8

    sub-double/2addr v6, v8

    const-wide/16 v10, 0x0

    cmpg-double v1, v4, v10

    if-gtz v1, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :cond_1
    cmpg-double v1, v6, v10

    if-gtz v1, :cond_2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    :cond_2
    move/from16 v1, p1

    int-to-double v12, v1

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v14

    sub-double v16, v12, v2

    div-double v4, v16, v4

    move/from16 v1, p2

    int-to-double v8, v1

    sub-double v1, v8, v2

    div-double/2addr v1, v6

    .line 733
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 734
    invoke-static {v1, v2}, Lcom/qh/xcad/XCadView$$ExternalSyntheticBackport0;->m(D)Z

    move-result v3

    if-eqz v3, :cond_3

    cmpg-double v3, v1, v10

    if-gtz v3, :cond_4

    :cond_3
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 735
    :cond_4
    iput-wide v1, v0, Lcom/qh/xcad/XCadView2;->fitScale:D

    .line 736
    iput-wide v1, v0, Lcom/qh/xcad/XCadView2;->scale:D

    div-double/2addr v12, v14

    .line 737
    iput-wide v12, v0, Lcom/qh/xcad/XCadView2;->tx:D

    div-double/2addr v8, v14

    .line 738
    iput-wide v8, v0, Lcom/qh/xcad/XCadView2;->ty:D

    return-void
.end method

.method private fitBtnCx()F
    .locals 3

    .line 1894
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    iget v2, p0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    invoke-direct {p0}, Lcom/qh/xcad/XCadView2;->fitBtnRadius()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private fitBtnCy()F
    .locals 3

    .line 1898
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    iget v2, p0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    invoke-direct {p0}, Lcom/qh/xcad/XCadView2;->fitBtnRadius()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private fitBtnRadius()F
    .locals 2

    const/high16 v0, 0x41b80000    # 23.0f

    .line 1890
    iget v1, p0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float v1, v1, v0

    return v1
.end method

.method private focalSpan(Landroid/view/MotionEvent;I)[F
    .locals 12

    const/4 v0, 0x1

    .line 859
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

    .line 864
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v6, v8

    .line 865
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

    .line 874
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

    .line 877
    new-array p1, p1, [F

    aput v6, p1, v3

    aput v7, p1, v0

    const/4 p2, 0x2

    aput v2, p1, p2

    return-object p1
.end method

.method private getCADColor(I)I
    .locals 2

    const v0, 0xffffff

    const/high16 v1, -0x1000000

    packed-switch p1, :pswitch_data_0

    return p1

    .line 1494
    :pswitch_0
    iget p1, p0, Lcom/qh/xcad/XCadView2;->backgroundColor:I

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

    .line 1480
    :pswitch_7
    iget p1, p0, Lcom/qh/xcad/XCadView2;->backgroundColor:I

    goto :goto_0

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

    .line 894
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->markerHits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->markerHits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qh/xcad/XCadView2$MarkerHit;

    .line 900
    iget v3, v2, Lcom/qh/xcad/XCadView2$MarkerHit;->bubbleX:F

    sub-float v3, p1, v3

    .line 901
    iget v4, v2, Lcom/qh/xcad/XCadView2$MarkerHit;->bubbleY:F

    sub-float v4, p2, v4

    mul-float v3, v3, v3

    mul-float v4, v4, v4

    add-float/2addr v3, v4

    .line 903
    iget v4, v2, Lcom/qh/xcad/XCadView2$MarkerHit;->bubbleRadius:F

    mul-float v4, v4, v4

    const/4 v5, 0x1

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    .line 904
    iget-object p1, p0, Lcom/qh/xcad/XCadView2;->onMarkerClickListener:Lcom/qh/xcad/XCadView2$OnMarkerClickListener;

    if-eqz p1, :cond_2

    .line 905
    iget p2, v2, Lcom/qh/xcad/XCadView2$MarkerHit;->entityIndex:I

    iget v0, v2, Lcom/qh/xcad/XCadView2$MarkerHit;->pointIndex:I

    invoke-interface {p1, p2, v0}, Lcom/qh/xcad/XCadView2$OnMarkerClickListener;->onMarkerClick(II)V

    :cond_2
    return v5

    .line 914
    :cond_3
    iget v3, v2, Lcom/qh/xcad/XCadView2$MarkerHit;->sx:F

    sub-float v3, p1, v3

    .line 915
    iget v4, v2, Lcom/qh/xcad/XCadView2$MarkerHit;->sy:F

    sub-float v4, p2, v4

    const/high16 v6, 0x41200000    # 10.0f

    .line 917
    iget v7, p0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float v7, v7, v6

    mul-float v3, v3, v3

    mul-float v4, v4, v4

    add-float/2addr v3, v4

    mul-float v7, v7, v7

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_1

    .line 920
    iget-object p1, p0, Lcom/qh/xcad/XCadView2;->onMarkerClickListener:Lcom/qh/xcad/XCadView2$OnMarkerClickListener;

    if-eqz p1, :cond_4

    .line 921
    iget p2, v2, Lcom/qh/xcad/XCadView2$MarkerHit;->entityIndex:I

    iget v0, v2, Lcom/qh/xcad/XCadView2$MarkerHit;->pointIndex:I

    invoke-interface {p1, p2, v0}, Lcom/qh/xcad/XCadView2$OnMarkerClickListener;->onMarkerClick(II)V

    :cond_4
    return v5

    :cond_5
    return v1
.end method

.method private handleTap(FF)V
    .locals 21

    move-object/from16 v0, p0

    .line 936
    iget-wide v1, v0, Lcom/qh/xcad/XCadView2;->scale:D

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-lez v5, :cond_d

    iget-object v3, v0, Lcom/qh/xcad/XCadView2;->hitIndices:[I

    array-length v3, v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    if-nez v3, :cond_0

    goto/16 :goto_6

    :cond_0
    move/from16 v4, p1

    float-to-double v4, v4

    .line 937
    iget-wide v6, v0, Lcom/qh/xcad/XCadView2;->tx:D

    sub-double/2addr v4, v6

    div-double/2addr v4, v1

    move/from16 v6, p2

    float-to-double v6, v6

    .line 938
    iget-wide v8, v0, Lcom/qh/xcad/XCadView2;->ty:D

    sub-double/2addr v6, v8

    div-double/2addr v6, v1

    .line 939
    iget v8, v0, Lcom/qh/xcad/XCadView2;->hitTolPx:F

    float-to-double v8, v8

    div-double/2addr v8, v1

    mul-double v10, v8, v8

    .line 942
    iget-object v12, v3, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/4 v3, -0x1

    move-wide v14, v1

    const/4 v1, 0x0

    .line 945
    :goto_0
    iget-object v2, v0, Lcom/qh/xcad/XCadView2;->hitIndices:[I

    array-length v13, v2

    if-ge v1, v13, :cond_4

    mul-int/lit8 v13, v1, 0x4

    move/from16 p2, v1

    .line 947
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->hitBounds:[D

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

    .line 951
    :cond_2
    aget v13, v2, p2

    .line 952
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qh/xcad/XCadEntity;

    move-wide/from16 v19, v6

    move v7, v3

    move-wide v2, v4

    move-wide/from16 v4, v19

    move/from16 v6, p2

    invoke-direct/range {v0 .. v5}, Lcom/qh/xcad/XCadView2;->entityDist2(Lcom/qh/xcad/XCadEntity;DD)D

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

    if-ltz v7, :cond_a

    cmpl-double v1, v14, v10

    if-lez v1, :cond_5

    goto/16 :goto_4

    .line 971
    :cond_5
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->selectedIndices:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 973
    iget-boolean v1, v0, Lcom/qh/xcad/XCadView2;->selectSingleLine:Z

    if-eqz v1, :cond_6

    .line 974
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->selectedIndices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 975
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->selectedIndicePoints:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 978
    :cond_6
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->selectedIndices:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 980
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->selectedIndicePoints:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_7

    .line 982
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 983
    iget-object v2, v0, Lcom/qh/xcad/XCadView2;->selectedIndicePoints:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    :cond_7
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qh/xcad/XCadEntity;

    .line 987
    iget-object v3, v2, Lcom/qh/xcad/XCadEntity;->points:[D

    if-eqz v3, :cond_8

    const/4 v13, 0x0

    .line 988
    :goto_3
    invoke-virtual {v2}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v3

    if-ge v13, v3, :cond_8

    .line 989
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 993
    :cond_8
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->entityClickListener:Lcom/qh/xcad/XCadView2$OnEntityClickListener;

    if-eqz v1, :cond_c

    if-ltz v7, :cond_c

    .line 994
    invoke-interface {v1, v7, v2}, Lcom/qh/xcad/XCadView2$OnEntityClickListener;->onEntityClick(ILcom/qh/xcad/XCadEntity;)V

    goto :goto_5

    .line 997
    :cond_9
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->selectedIndicePoints:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->entityClickListener:Lcom/qh/xcad/XCadView2$OnEntityClickListener;

    if-eqz v1, :cond_c

    if-ltz v7, :cond_c

    .line 1000
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qh/xcad/XCadEntity;

    invoke-interface {v1, v7, v2}, Lcom/qh/xcad/XCadView2$OnEntityClickListener;->onEntityCancel(ILcom/qh/xcad/XCadEntity;)V

    goto :goto_5

    .line 961
    :cond_a
    :goto_4
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->selectedIndices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_6

    .line 962
    :cond_b
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->selectedIndices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 963
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->selectedIndicePoints:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 965
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->entityClickListener:Lcom/qh/xcad/XCadView2$OnEntityClickListener;

    if-eqz v1, :cond_c

    .line 966
    invoke-interface {v1}, Lcom/qh/xcad/XCadView2$OnEntityClickListener;->onEntityClear()V

    .line 1007
    :cond_c
    :goto_5
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1008
    invoke-direct {v0}, Lcom/qh/xcad/XCadView2;->notifySelection()V

    :cond_d
    :goto_6
    return-void
.end method

.method private hasContent()Z
    .locals 3

    .line 1470
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1471
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

    .line 1472
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

    .line 1902
    iget-boolean v0, p0, Lcom/qh/xcad/XCadView2;->showControls:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1903
    :cond_0
    invoke-direct {p0}, Lcom/qh/xcad/XCadView2;->fitBtnCx()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-direct {p0}, Lcom/qh/xcad/XCadView2;->fitBtnCy()F

    move-result v0

    sub-float/2addr p2, v0

    .line 1904
    invoke-direct {p0}, Lcom/qh/xcad/XCadView2;->fitBtnRadius()F

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

    .line 1054
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->layerSnappable:Lcom/qh/xcad/XCadView2$LayerSnappable;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/qh/xcad/XCadView2$LayerSnappable;->isSnappable(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 1055
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1056
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1057
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 1058
    :cond_2
    sget-object v1, Lcom/qh/xcad/XCadView2;->AUX_LAYER_KEYWORDS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 1059
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

    .line 746
    iget-wide v0, p0, Lcom/qh/xcad/XCadView2;->fitScale:D

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    mul-double v0, v0, v2

    return-wide v0
.end method

.method private minScale()D
    .locals 4

    .line 742
    iget-wide v0, p0, Lcom/qh/xcad/XCadView2;->fitScale:D

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double v0, v0, v2

    return-wide v0
.end method

.method private notifySelection()V
    .locals 3

    .line 1065
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->selectionListener:Lcom/qh/xcad/XCadView2$OnSelectionChangedListener;

    if-eqz v0, :cond_0

    .line 1066
    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/qh/xcad/XCadView2;->selectedIndices:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/qh/xcad/XCadView2$OnSelectionChangedListener;->onSelectionChanged(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method private paintHighlight(Landroid/graphics/Canvas;Lcom/qh/xcad/XCadEntity;II)V
    .locals 9

    .line 1621
    invoke-virtual {p2}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const v2, 0xffffff

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    .line 1625
    iget v4, p2, Lcom/qh/xcad/XCadEntity;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    .line 1638
    :cond_1
    invoke-virtual {p2, v3}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v4

    invoke-virtual {p2, v1}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/qh/xcad/XCadView2;->worldToScreen(DD)[F

    move-result-object v4

    .line 1639
    iget-object v5, p0, Lcom/qh/xcad/XCadView2;->highlightPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 1640
    iget-object v5, p0, Lcom/qh/xcad/XCadView2;->highlightPath:Landroid/graphics/Path;

    aget v6, v4, v3

    aget v4, v4, v1

    invoke-virtual {v5, v6, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v0, :cond_2

    .line 1643
    invoke-virtual {p2, v4}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v5

    invoke-virtual {p2, v4}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v7

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/qh/xcad/XCadView2;->worldToScreen(DD)[F

    move-result-object v5

    .line 1644
    iget-object v6, p0, Lcom/qh/xcad/XCadView2;->highlightPath:Landroid/graphics/Path;

    aget v7, v5, v3

    aget v5, v5, v1

    invoke-virtual {v6, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1646
    :cond_2
    invoke-virtual {p2}, Lcom/qh/xcad/XCadEntity;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->highlightPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 1649
    :cond_3
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->highlightHalo:Landroid/graphics/Paint;

    and-int v1, p3, v2

    const/high16 v2, 0x4d000000    # 1.3421773E8f

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1650
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->highlightHalo:Landroid/graphics/Paint;

    iget v1, p0, Lcom/qh/xcad/XCadView2;->highlightWidth:F

    const/high16 v2, 0x40a00000    # 5.0f

    iget v3, p0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1651
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->highlightPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->highlightHalo:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1652
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->highlightCore:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1653
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->highlightCore:Landroid/graphics/Paint;

    iget v1, p0, Lcom/qh/xcad/XCadView2;->highlightWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1654
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->highlightPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->highlightCore:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1657
    iget-boolean v0, p0, Lcom/qh/xcad/XCadView2;->drawSelectedLineNumText:Z

    if-eqz v0, :cond_4

    .line 1659
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qh/xcad/XCadView2;->drawSelectedLinePointLabel(Landroid/graphics/Canvas;Lcom/qh/xcad/XCadEntity;II)V

    :cond_4
    :goto_1
    return-void

    .line 1626
    :cond_5
    :goto_2
    invoke-virtual {p2, v3}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v4

    invoke-virtual {p2, v3}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/qh/xcad/XCadView2;->worldToScreen(DD)[F

    move-result-object p2

    .line 1627
    aget p4, p2, v3

    .line 1628
    aget p2, p2, v1

    .line 1629
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->highlightCore:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1630
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->highlightCore:Landroid/graphics/Paint;

    and-int v1, p3, v2

    const/high16 v2, 0x59000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1631
    iget v0, p0, Lcom/qh/xcad/XCadView2;->highlightWidth:F

    const v1, 0x3fe66666    # 1.8f

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->highlightCore:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1632
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->highlightCore:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1633
    iget p3, p0, Lcom/qh/xcad/XCadView2;->highlightWidth:F

    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->highlightCore:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1634
    iget-object p1, p0, Lcom/qh/xcad/XCadView2;->highlightCore:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private paintVisLinePoint(Landroid/graphics/Canvas;DDI)V
    .locals 0

    .line 1756
    invoke-direct/range {p0 .. p6}, Lcom/qh/xcad/XCadView2;->drawPointMarcker(Landroid/graphics/Canvas;DDI)V

    return-void
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

.method private startGesture(Landroid/view/MotionEvent;I)V
    .locals 0

    .line 846
    invoke-direct {p0, p1, p2}, Lcom/qh/xcad/XCadView2;->focalSpan(Landroid/view/MotionEvent;I)[F

    move-result-object p1

    const/4 p2, 0x0

    .line 847
    aget p2, p1, p2

    iput p2, p0, Lcom/qh/xcad/XCadView2;->startFocalX:F

    const/4 p2, 0x1

    .line 848
    aget p2, p1, p2

    iput p2, p0, Lcom/qh/xcad/XCadView2;->startFocalY:F

    const/4 p2, 0x2

    .line 849
    aget p1, p1, p2

    iput p1, p0, Lcom/qh/xcad/XCadView2;->startSpan:F

    .line 850
    iget-wide p1, p0, Lcom/qh/xcad/XCadView2;->scale:D

    iput-wide p1, p0, Lcom/qh/xcad/XCadView2;->startScale:D

    .line 851
    iget-wide p1, p0, Lcom/qh/xcad/XCadView2;->tx:D

    iput-wide p1, p0, Lcom/qh/xcad/XCadView2;->startTx:D

    .line 852
    iget-wide p1, p0, Lcom/qh/xcad/XCadView2;->ty:D

    iput-wide p1, p0, Lcom/qh/xcad/XCadView2;->startTy:D

    return-void
.end method

.method private startVehiclePulse()V
    .locals 4

    const/4 v0, 0x2

    .line 1200
    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->vehiclePulseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1204
    :cond_0
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/qh/xcad/XCadView2;->vehiclePulseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x4b0

    .line 1205
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1206
    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->vehiclePulseAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1207
    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->vehiclePulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 1208
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePulseAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1210
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePulseAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/qh/xcad/XCadView2$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/qh/xcad/XCadView2$$ExternalSyntheticLambda4;-><init>(Lcom/qh/xcad/XCadView2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1215
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePulseAnimator:Landroid/animation/ValueAnimator;

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

    .line 245
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->loadCadFileThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->loadCadFileThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method private strokeFor(I)Landroid/graphics/Path;
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->strokeByColor:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 655
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 656
    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->strokeByColor:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private worldToScreen(DD)[F
    .locals 4

    .line 1993
    iget-wide v0, p0, Lcom/qh/xcad/XCadView2;->cx:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Lcom/qh/xcad/XCadView2;->scale:D

    mul-double p1, p1, v0

    iget-wide v2, p0, Lcom/qh/xcad/XCadView2;->tx:D

    add-double/2addr p1, v2

    double-to-float p1, p1

    .line 1994
    iget-wide v2, p0, Lcom/qh/xcad/XCadView2;->cy:D

    sub-double/2addr p3, v2

    neg-double p2, p3

    mul-double p2, p2, v0

    iget-wide v0, p0, Lcom/qh/xcad/XCadView2;->ty:D

    add-double/2addr p2, v0

    double-to-float p2, p2

    const/4 p3, 0x2

    .line 1995
    new-array p3, p3, [F

    const/4 p4, 0x0

    aput p1, p3, p4

    const/4 p1, 0x1

    aput p2, p3, p1

    return-object p3
.end method

.method private zoomAt(FFD)V
    .locals 8

    .line 753
    iget-wide v0, p0, Lcom/qh/xcad/XCadView2;->scale:D

    mul-double v2, v0, p3

    invoke-direct {p0}, Lcom/qh/xcad/XCadView2;->minScale()D

    move-result-wide v4

    invoke-direct {p0}, Lcom/qh/xcad/XCadView2;->maxScale()D

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/qh/xcad/XCadView2;->clamp(DDD)D

    move-result-wide p3

    .line 754
    iget-wide v0, p0, Lcom/qh/xcad/XCadView2;->scale:D

    cmpl-double v2, p3, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    float-to-double v2, p1

    .line 755
    iget-wide v4, p0, Lcom/qh/xcad/XCadView2;->tx:D

    sub-double v4, v2, v4

    div-double/2addr v4, v0

    float-to-double p1, p2

    .line 756
    iget-wide v6, p0, Lcom/qh/xcad/XCadView2;->ty:D

    sub-double v6, p1, v6

    div-double/2addr v6, v0

    .line 757
    iput-wide p3, p0, Lcom/qh/xcad/XCadView2;->scale:D

    mul-double v4, v4, p3

    sub-double/2addr v2, v4

    .line 758
    iput-wide v2, p0, Lcom/qh/xcad/XCadView2;->tx:D

    mul-double v6, v6, p3

    sub-double/2addr p1, v6

    .line 759
    iput-wide p1, p0, Lcom/qh/xcad/XCadView2;->ty:D

    .line 760
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public addSelectIndicePoint(II)V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->selectedIndicePoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 474
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 475
    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->selectedIndicePoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 478
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public addSelectLightPoint(II)V
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_3

    .line 509
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->selectedLightPoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_2

    .line 515
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 516
    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->selectedLightPoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 519
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method

.method public addSelectLine(I)V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    .line 456
    iget-object v0, v0, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->selectedIndices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 460
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->selectedIndices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public centerVehiclePointLocation()V
    .locals 6

    .line 1234
    iget v0, p0, Lcom/qh/xcad/XCadView2;->lastW:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/qh/xcad/XCadView2;->lastH:I

    if-gtz v0, :cond_0

    goto :goto_1

    .line 1239
    :cond_0
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePoint:Lcom/qh/xcad/XCadVehiclePoint;

    if-eqz v0, :cond_1

    .line 1240
    iget-wide v1, v0, Lcom/qh/xcad/XCadVehiclePoint;->x:D

    iget-wide v3, v0, Lcom/qh/xcad/XCadVehiclePoint;->y:D

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/qh/xcad/XCadView2;->worldToScreen(DD)[F

    move-result-object v0

    goto :goto_0

    .line 1241
    :cond_1
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->xCadExcavatorBucket:Lcom/qh/xcad/XCadExcavatorBucket;

    if-eqz v0, :cond_2

    .line 1242
    iget-wide v1, v0, Lcom/qh/xcad/XCadExcavatorBucket;->xL:D

    iget-wide v3, v0, Lcom/qh/xcad/XCadExcavatorBucket;->yL:D

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/qh/xcad/XCadView2;->worldToScreen(DD)[F

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    .line 1248
    :cond_3
    iget v1, p0, Lcom/qh/xcad/XCadView2;->lastW:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 1249
    iget v3, p0, Lcom/qh/xcad/XCadView2;->lastH:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 1250
    iget-wide v4, p0, Lcom/qh/xcad/XCadView2;->tx:D

    const/4 v2, 0x0

    aget v2, v0, v2

    sub-float/2addr v1, v2

    float-to-double v1, v1

    add-double/2addr v4, v1

    iput-wide v4, p0, Lcom/qh/xcad/XCadView2;->tx:D

    .line 1251
    iget-wide v1, p0, Lcom/qh/xcad/XCadView2;->ty:D

    const/4 v4, 0x1

    aget v0, v0, v4

    sub-float/2addr v3, v0

    float-to-double v3, v3

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/qh/xcad/XCadView2;->ty:D

    .line 1252
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    :goto_1
    return-void
.end method

.method public clearSelectLightPoint()V
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->selectedLightPoints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->selectedLightPoints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 546
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public drawExcavatorBucket(Landroid/graphics/Canvas;)V
    .locals 41

    move-object/from16 v0, p0

    .line 1343
    iget-object v2, v0, Lcom/qh/xcad/XCadView2;->xCadExcavatorBucket:Lcom/qh/xcad/XCadExcavatorBucket;

    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lcom/qh/xcad/XCadExcavatorBucket;->visible:Z

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 1347
    :cond_0
    iget-wide v3, v2, Lcom/qh/xcad/XCadExcavatorBucket;->xL:D

    .line 1348
    iget-wide v5, v2, Lcom/qh/xcad/XCadExcavatorBucket;->yL:D

    .line 1349
    iget-wide v7, v2, Lcom/qh/xcad/XCadExcavatorBucket;->xR:D

    .line 1350
    iget-wide v9, v2, Lcom/qh/xcad/XCadExcavatorBucket;->yR:D

    sub-double v11, v7, v3

    sub-double v13, v9, v5

    .line 1355
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

    .line 1389
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/qh/xcad/XCadView2;->worldToScreen(DD)[F

    move-result-object v19

    .line 1390
    invoke-direct {v0, v7, v8, v9, v10}, Lcom/qh/xcad/XCadView2;->worldToScreen(DD)[F

    move-result-object v20

    .line 1391
    invoke-direct {v0, v11, v12, v13, v14}, Lcom/qh/xcad/XCadView2;->worldToScreen(DD)[F

    move-result-object v11

    move-wide/from16 v12, v21

    .line 1392
    invoke-direct {v0, v12, v13, v1, v2}, Lcom/qh/xcad/XCadView2;->worldToScreen(DD)[F

    move-result-object v1

    .line 1395
    iget-object v2, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1396
    iget-object v2, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketPaint:Landroid/graphics/Paint;

    const v12, -0x79002900

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1397
    iget-object v2, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1398
    iget-object v2, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketPath:Landroid/graphics/Path;

    const/4 v12, 0x0

    aget v13, v19, v12

    const/4 v14, 0x1

    const/16 v21, 0x0

    aget v12, v19, v14

    invoke-virtual {v2, v13, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1399
    iget-object v2, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketPath:Landroid/graphics/Path;

    aget v12, v20, v21

    aget v13, v20, v14

    invoke-virtual {v2, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1400
    iget-object v2, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketPath:Landroid/graphics/Path;

    aget v12, v1, v21

    aget v1, v1, v14

    invoke-virtual {v2, v12, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1401
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketPath:Landroid/graphics/Path;

    aget v2, v11, v21

    aget v11, v11, v14

    invoke-virtual {v1, v2, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1402
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 1403
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1410
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketTeethPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/16 v1, 0xa

    int-to-double v12, v1

    div-double/2addr v15, v12

    .line 1417
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/qh/xcad/XCadView2;->worldToScreen(DD)[F

    move-result-object v2

    .line 1418
    iget-object v12, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketTeethPath:Landroid/graphics/Path;

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

    move-wide/from16 v35, v3

    add-double v3, v35, v33

    mul-double v14, v14, v17

    add-double/2addr v14, v5

    const-wide v33, 0x3fc999999999999aL    # 0.2

    mul-double v37, v17, v33

    move-wide/from16 v39, v5

    add-double v5, v29, v37

    mul-double v29, v27, v33

    move-wide/from16 v33, v7

    add-double v7, v24, v29

    .line 1439
    invoke-direct {v0, v1, v2, v12, v13}, Lcom/qh/xcad/XCadView2;->worldToScreen(DD)[F

    move-result-object v1

    .line 1440
    invoke-direct {v0, v5, v6, v7, v8}, Lcom/qh/xcad/XCadView2;->worldToScreen(DD)[F

    move-result-object v2

    .line 1441
    invoke-direct {v0, v3, v4, v14, v15}, Lcom/qh/xcad/XCadView2;->worldToScreen(DD)[F

    move-result-object v3

    .line 1443
    iget-object v4, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketTeethPath:Landroid/graphics/Path;

    aget v5, v1, v21

    aget v1, v1, v19

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1444
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketTeethPath:Landroid/graphics/Path;

    aget v4, v2, v21

    aget v2, v2, v19

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1445
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketTeethPath:Landroid/graphics/Path;

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
    move-wide v1, v7

    const/16 v19, 0x1

    .line 1449
    invoke-direct {v0, v1, v2, v9, v10}, Lcom/qh/xcad/XCadView2;->worldToScreen(DD)[F

    move-result-object v1

    .line 1450
    iget-object v2, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketTeethPath:Landroid/graphics/Path;

    aget v3, v1, v21

    aget v1, v1, v19

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1451
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketTeethPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 1454
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1455
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketPaint:Landroid/graphics/Paint;

    const v2, -0xbbbbbc

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1456
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1457
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketTeethPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1461
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1462
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketPaint:Landroid/graphics/Paint;

    const/16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1463
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, v0, Lcom/qh/xcad/XCadView2;->density:F

    mul-float v3, v3, v2

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1464
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/qh/xcad/XCadView2;->excavatorBucketPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public fitToScreen()V
    .locals 3

    .line 369
    iget v0, p0, Lcom/qh/xcad/XCadView2;->lastW:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/qh/xcad/XCadView2;->lastH:I

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    if-nez v2, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/qh/xcad/XCadView2;->fit(II)V

    .line 371
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getScene()Lcom/qh/xcad/XCadScene;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    return-object v0
.end method

.method public getSelectedIndicePoints()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 444
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->selectedIndicePoints:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

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

    .line 440
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->selectedIndices:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hideExcavatorBucket()V
    .locals 2

    .line 2102
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->xCadExcavatorBucket:Lcom/qh/xcad/XCadExcavatorBucket;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2105
    iput-boolean v1, v0, Lcom/qh/xcad/XCadExcavatorBucket;->visible:Z

    .line 2106
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public hideVehicle()V
    .locals 2

    .line 2046
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePoint:Lcom/qh/xcad/XCadVehiclePoint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2049
    iput-boolean v1, v0, Lcom/qh/xcad/XCadVehiclePoint;->visible:Z

    .line 2051
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePulseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 2052
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 2053
    iput-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePulseAnimator:Landroid/animation/ValueAnimator;

    .line 2056
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 231
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/qh/xcad/XCadView2;->currentPath:Ljava/lang/String;

    .line 233
    invoke-direct {p0}, Lcom/qh/xcad/XCadView2;->stopLoadCadFileThread()V

    .line 234
    iget-object v1, p0, Lcom/qh/xcad/XCadView2;->vehiclePulseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 236
    iput-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePulseAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1091
    iget v0, p0, Lcom/qh/xcad/XCadView2;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1092
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/qh/xcad/XCadView2;->hasContent()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1098
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1099
    iget-wide v0, p0, Lcom/qh/xcad/XCadView2;->tx:D

    double-to-float v0, v0

    iget-wide v1, p0, Lcom/qh/xcad/XCadView2;->ty:D

    double-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1100
    iget-wide v0, p0, Lcom/qh/xcad/XCadView2;->scale:D

    double-to-float v2, v0

    double-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1102
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->fillByColor:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1103
    iget-object v2, p0, Lcom/qh/xcad/XCadView2;->fillPaint:Landroid/graphics/Paint;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1104
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    iget-object v2, p0, Lcom/qh/xcad/XCadView2;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1107
    :cond_1
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->strokeByColor:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1108
    iget-object v2, p0, Lcom/qh/xcad/XCadView2;->strokePaint:Landroid/graphics/Paint;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1109
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    iget-object v2, p0, Lcom/qh/xcad/XCadView2;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 1111
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1114
    invoke-direct {p0, p1}, Lcom/qh/xcad/XCadView2;->drawTexts(Landroid/graphics/Canvas;)V

    .line 1116
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->selectedIndices:Ljava/util/Set;

    iget v1, p0, Lcom/qh/xcad/XCadView2;->touchHighlightColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/qh/xcad/XCadView2;->drawHighlights(Landroid/graphics/Canvas;Ljava/util/Set;I)V

    .line 1118
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->carSelectedIndices:Ljava/util/Set;

    iget v1, p0, Lcom/qh/xcad/XCadView2;->carHighlightColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/qh/xcad/XCadView2;->drawHighlights(Landroid/graphics/Canvas;Ljava/util/Set;I)V

    .line 1120
    iget v0, p0, Lcom/qh/xcad/XCadView2;->lockHighlightColor:I

    invoke-direct {p0, p1, v0}, Lcom/qh/xcad/XCadView2;->drawLockEntityLine(Landroid/graphics/Canvas;I)V

    .line 1122
    invoke-direct {p0, p1}, Lcom/qh/xcad/XCadView2;->drawVisLinePoints(Landroid/graphics/Canvas;)V

    .line 1124
    invoke-direct {p0, p1}, Lcom/qh/xcad/XCadView2;->drawPointLight(Landroid/graphics/Canvas;)V

    .line 1126
    invoke-virtual {p0, p1}, Lcom/qh/xcad/XCadView2;->drawExcavatorBucket(Landroid/graphics/Canvas;)V

    .line 1128
    invoke-direct {p0, p1}, Lcom/qh/xcad/XCadView2;->drawVehicle(Landroid/graphics/Canvas;)V

    .line 1130
    invoke-direct {p0, p1}, Lcom/qh/xcad/XCadView2;->drawFitButton(Landroid/graphics/Canvas;)V

    .line 1132
    invoke-direct {p0, p1}, Lcom/qh/xcad/XCadView2;->drawCompass(Landroid/graphics/Canvas;)V

    return-void

    .line 1094
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/qh/xcad/XCadView2;->drawFitButton(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 882
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/16 v0, 0x9

    .line 883
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 885
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const-wide v2, 0x3ff3333333333333L    # 1.2

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/qh/xcad/XCadView2;->zoomAt(FFD)V

    const/4 p1, 0x1

    return p1

    .line 889
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1074
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1075
    iput p1, p0, Lcom/qh/xcad/XCadView2;->lastW:I

    .line 1076
    iput p2, p0, Lcom/qh/xcad/XCadView2;->lastH:I

    .line 1078
    iget-object p3, p0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    if-nez p3, :cond_0

    return-void

    .line 1081
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/qh/xcad/XCadView2;->fit(II)V

    const/4 p1, 0x1

    .line 1082
    iput-boolean p1, p0, Lcom/qh/xcad/XCadView2;->fitted:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 771
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 774
    iget-boolean v1, p0, Lcom/qh/xcad/XCadView2;->showControls:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/qh/xcad/XCadView2;->insideFitButton(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 775
    iput-boolean v2, p0, Lcom/qh/xcad/XCadView2;->pressingFit:Z

    return v2

    .line 778
    :cond_0
    iget-boolean v1, p0, Lcom/qh/xcad/XCadView2;->pressingFit:Z

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    if-ne v0, v2, :cond_2

    .line 780
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/qh/xcad/XCadView2;->insideFitButton(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/qh/xcad/XCadView2;->fitToScreen()V

    .line 781
    :cond_1
    iput-boolean v4, p0, Lcom/qh/xcad/XCadView2;->pressingFit:Z

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_3

    .line 783
    iput-boolean v4, p0, Lcom/qh/xcad/XCadView2;->pressingFit:Z

    :cond_3
    :goto_0
    return v2

    :cond_4
    const/4 v1, -0x1

    if-eqz v0, :cond_11

    if-eq v0, v2, :cond_e

    const/4 v5, 0x2

    if-eq v0, v5, :cond_8

    if-eq v0, v3, :cond_7

    const/4 v3, 0x5

    if-eq v0, v3, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    .line 842
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 800
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/qh/xcad/XCadView2;->startGesture(Landroid/view/MotionEvent;I)V

    return v2

    .line 795
    :cond_6
    invoke-direct {p0, p1, v1}, Lcom/qh/xcad/XCadView2;->startGesture(Landroid/view/MotionEvent;I)V

    .line 796
    iput-boolean v2, p0, Lcom/qh/xcad/XCadView2;->moved:Z

    :cond_7
    return v2

    .line 804
    :cond_8
    invoke-direct {p0, p1, v1}, Lcom/qh/xcad/XCadView2;->focalSpan(Landroid/view/MotionEvent;I)[F

    move-result-object v0

    .line 805
    aget v1, v0, v4

    aget v3, v0, v2

    aget v0, v0, v5

    .line 806
    iget-boolean v5, p0, Lcom/qh/xcad/XCadView2;->moved:Z

    if-nez v5, :cond_c

    .line 807
    iget v5, p0, Lcom/qh/xcad/XCadView2;->startFocalX:F

    sub-float v5, v1, v5

    float-to-double v5, v5

    iget v7, p0, Lcom/qh/xcad/XCadView2;->startFocalY:F

    sub-float v7, v3, v7

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    iget v7, p0, Lcom/qh/xcad/XCadView2;->touchSlop:I

    int-to-double v7, v7

    cmpl-double v9, v5, v7

    if-lez v9, :cond_9

    const/4 v4, 0x1

    .line 808
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-gt p1, v2, :cond_b

    if-eqz v4, :cond_a

    goto :goto_1

    :cond_a
    return v2

    .line 809
    :cond_b
    :goto_1
    iput-boolean v2, p0, Lcom/qh/xcad/XCadView2;->moved:Z

    .line 814
    :cond_c
    iget p1, p0, Lcom/qh/xcad/XCadView2;->startSpan:F

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

    .line 815
    :goto_2
    iget-wide v6, p0, Lcom/qh/xcad/XCadView2;->startScale:D

    mul-double v8, v6, v4

    invoke-direct {p0}, Lcom/qh/xcad/XCadView2;->minScale()D

    move-result-wide v10

    invoke-direct {p0}, Lcom/qh/xcad/XCadView2;->maxScale()D

    move-result-wide v12

    invoke-static/range {v8 .. v13}, Lcom/qh/xcad/XCadView2;->clamp(DDD)D

    move-result-wide v4

    .line 816
    iget p1, p0, Lcom/qh/xcad/XCadView2;->startFocalX:F

    float-to-double v6, p1

    iget-wide v8, p0, Lcom/qh/xcad/XCadView2;->startTx:D

    sub-double/2addr v6, v8

    iget-wide v8, p0, Lcom/qh/xcad/XCadView2;->startScale:D

    div-double/2addr v6, v8

    .line 817
    iget p1, p0, Lcom/qh/xcad/XCadView2;->startFocalY:F

    float-to-double v10, p1

    iget-wide v12, p0, Lcom/qh/xcad/XCadView2;->startTy:D

    sub-double/2addr v10, v12

    div-double/2addr v10, v8

    .line 818
    iput-wide v4, p0, Lcom/qh/xcad/XCadView2;->scale:D

    float-to-double v0, v1

    mul-double v6, v6, v4

    sub-double/2addr v0, v6

    .line 819
    iput-wide v0, p0, Lcom/qh/xcad/XCadView2;->tx:D

    float-to-double v0, v3

    mul-double v10, v10, v4

    sub-double/2addr v0, v10

    .line 820
    iput-wide v0, p0, Lcom/qh/xcad/XCadView2;->ty:D

    .line 822
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2

    .line 827
    :cond_e
    iget-boolean p1, p0, Lcom/qh/xcad/XCadView2;->moved:Z

    if-nez p1, :cond_10

    .line 828
    iget-boolean p1, p0, Lcom/qh/xcad/XCadView2;->cadTouchEnable:Z

    if-eqz p1, :cond_10

    .line 830
    iget p1, p0, Lcom/qh/xcad/XCadView2;->startFocalX:F

    iget v0, p0, Lcom/qh/xcad/XCadView2;->startFocalY:F

    invoke-direct {p0, p1, v0}, Lcom/qh/xcad/XCadView2;->handleMarkerTap(FF)Z

    move-result p1

    if-eqz p1, :cond_f

    return v2

    .line 834
    :cond_f
    iget p1, p0, Lcom/qh/xcad/XCadView2;->startFocalX:F

    iget v0, p0, Lcom/qh/xcad/XCadView2;->startFocalY:F

    invoke-direct {p0, p1, v0}, Lcom/qh/xcad/XCadView2;->handleTap(FF)V

    :cond_10
    return v2

    .line 790
    :cond_11
    invoke-direct {p0, p1, v1}, Lcom/qh/xcad/XCadView2;->startGesture(Landroid/view/MotionEvent;I)V

    .line 791
    iput-boolean v4, p0, Lcom/qh/xcad/XCadView2;->moved:Z

    return v2
.end method

.method public removeSelectIndicePoint(II)V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->selectedIndicePoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 492
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 494
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public removeSelectLightPoint(II)V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->selectedLightPoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 533
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 535
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public selectByWorldPoint(DD)I
    .locals 20

    move-object/from16 v0, p0

    .line 1945
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->hitIndices:[I

    array-length v1, v1

    if-nez v1, :cond_1

    :cond_0
    const/16 v16, -0x1

    goto/16 :goto_2

    .line 1949
    :cond_1
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->carSelectedIndices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1951
    iget-wide v1, v0, Lcom/qh/xcad/XCadView2;->cx:D

    sub-double v2, p1, v1

    .line 1952
    iget-wide v4, v0, Lcom/qh/xcad/XCadView2;->cy:D

    sub-double v4, p3, v4

    neg-double v4, v4

    .line 1955
    iget-wide v7, v0, Lcom/qh/xcad/XCadView2;->toleranceWorld:D

    mul-double v9, v7, v7

    .line 1958
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    iget-object v11, v1, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/4 v1, 0x0

    move-wide v13, v12

    const/4 v12, 0x0

    const/4 v15, -0x1

    .line 1963
    :goto_0
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->hitIndices:[I

    const/16 v16, -0x1

    array-length v6, v1

    if-ge v12, v6, :cond_4

    mul-int/lit8 v6, v12, 0x4

    move-object/from16 p1, v1

    .line 1966
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->hitBounds:[D

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

    .line 1971
    :cond_2
    aget v6, p1, v12

    .line 1972
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qh/xcad/XCadEntity;

    invoke-direct/range {v0 .. v5}, Lcom/qh/xcad/XCadView2;->entityDist2(Lcom/qh/xcad/XCadEntity;DD)D

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

    .line 1982
    iget-object v1, v0, Lcom/qh/xcad/XCadView2;->carSelectedIndices:Ljava/util/Set;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1983
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return v15

    :cond_5
    :goto_2
    return v16
.end method

.method public setCadBackgroundColor(I)V
    .locals 0

    .line 395
    iput p1, p0, Lcom/qh/xcad/XCadView2;->backgroundColor:I

    .line 396
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 397
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCadFilePath(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->currentPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 267
    :cond_1
    invoke-direct {p0}, Lcom/qh/xcad/XCadView2;->stopLoadCadFileThread()V

    .line 269
    iput-object p1, p0, Lcom/qh/xcad/XCadView2;->currentPath:Ljava/lang/String;

    .line 274
    sget-object v0, Lcom/qh/xcad/XCadView2;->SCENE_CACHE:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qh/xcad/XCadScene;

    if-eqz v0, :cond_3

    .line 276
    invoke-static {v0, p1}, Lcom/qh/xcad/DxfTextSupplement;->mergeMissingTexts(Lcom/qh/xcad/XCadScene;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0, v0}, Lcom/qh/xcad/XCadView2;->setScene(Lcom/qh/xcad/XCadScene;)V

    .line 278
    iget-object p1, p0, Lcom/qh/xcad/XCadView2;->onLoadCadFileListener:Lcom/qh/xcad/XCadView2$OnLoadCadFileListener;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 279
    invoke-interface {p1, v0}, Lcom/qh/xcad/XCadView2$OnLoadCadFileListener;->onLoadCadFileFinished(Z)V

    :cond_2
    :goto_0
    return-void

    .line 284
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qh/xcad/XCadView2$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p1}, Lcom/qh/xcad/XCadView2$$ExternalSyntheticLambda3;-><init>(Lcom/qh/xcad/XCadView2;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "xcad-parse"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qh/xcad/XCadView2;->loadCadFileThread:Ljava/lang/Thread;

    .line 337
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 259
    invoke-virtual {p0, p1}, Lcom/qh/xcad/XCadView2;->setScene(Lcom/qh/xcad/XCadScene;)V

    return-void
.end method

.method public setCadTouchEnable(Z)V
    .locals 0

    .line 401
    iput-boolean p1, p0, Lcom/qh/xcad/XCadView2;->cadTouchEnable:Z

    return-void
.end method

.method public setCarHighlightColor(I)V
    .locals 0

    .line 390
    iput p1, p0, Lcom/qh/xcad/XCadView2;->carHighlightColor:I

    .line 391
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawSelectedLineNumText(Z)V
    .locals 0

    .line 415
    iput-boolean p1, p0, Lcom/qh/xcad/XCadView2;->drawSelectedLineNumText:Z

    .line 416
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFollowVehicle(Z)V
    .locals 0

    .line 1226
    iput-boolean p1, p0, Lcom/qh/xcad/XCadView2;->followVehicle:Z

    .line 1227
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLayerSnappable(Lcom/qh/xcad/XCadView2$LayerSnappable;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/qh/xcad/XCadView2;->layerSnappable:Lcom/qh/xcad/XCadView2$LayerSnappable;

    return-void
.end method

.method public setLockEntityLineIndex(I)V
    .locals 0

    .line 556
    iput p1, p0, Lcom/qh/xcad/XCadView2;->lockEntityLineIndex:I

    .line 557
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnCarSelectedEntityListener(Lcom/qh/xcad/XCadView2$OnCarSelectedEntityListener;)V
    .locals 0

    .line 2154
    iput-object p1, p0, Lcom/qh/xcad/XCadView2;->onCarSelectedEntityListener:Lcom/qh/xcad/XCadView2$OnCarSelectedEntityListener;

    return-void
.end method

.method public setOnEntityClickListener(Lcom/qh/xcad/XCadView2$OnEntityClickListener;)V
    .locals 0

    .line 2144
    iput-object p1, p0, Lcom/qh/xcad/XCadView2;->entityClickListener:Lcom/qh/xcad/XCadView2$OnEntityClickListener;

    return-void
.end method

.method public setOnExcavatorBucketSelectedEntityListener(Lcom/qh/xcad/XCadView2$OnExcavatorBucketSelectedEntityListener;)V
    .locals 0

    .line 2165
    iput-object p1, p0, Lcom/qh/xcad/XCadView2;->onExcavatorBucketSelectedEntityListener:Lcom/qh/xcad/XCadView2$OnExcavatorBucketSelectedEntityListener;

    return-void
.end method

.method public setOnLoadCadFileListener(Lcom/qh/xcad/XCadView2$OnLoadCadFileListener;)V
    .locals 0

    .line 2130
    iput-object p1, p0, Lcom/qh/xcad/XCadView2;->onLoadCadFileListener:Lcom/qh/xcad/XCadView2$OnLoadCadFileListener;

    return-void
.end method

.method public setOnMarkerClickListener(Lcom/qh/xcad/XCadView2$OnMarkerClickListener;)V
    .locals 0

    .line 2175
    iput-object p1, p0, Lcom/qh/xcad/XCadView2;->onMarkerClickListener:Lcom/qh/xcad/XCadView2$OnMarkerClickListener;

    return-void
.end method

.method public setOnSelectionChangedListener(Lcom/qh/xcad/XCadView2$OnSelectionChangedListener;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/qh/xcad/XCadView2;->selectionListener:Lcom/qh/xcad/XCadView2$OnSelectionChangedListener;

    return-void
.end method

.method public setScene(Lcom/qh/xcad/XCadScene;)V
    .locals 1

    .line 344
    iput-object p1, p0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    .line 345
    iget-object p1, p0, Lcom/qh/xcad/XCadView2;->selectedIndices:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 346
    iget-object p1, p0, Lcom/qh/xcad/XCadView2;->selectedIndicePoints:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 347
    iget-object p1, p0, Lcom/qh/xcad/XCadView2;->selectedLightPoints:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 348
    iget-object p1, p0, Lcom/qh/xcad/XCadView2;->carSelectedIndices:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const/4 p1, -0x1

    .line 349
    iput p1, p0, Lcom/qh/xcad/XCadView2;->lockEntityLineIndex:I

    const/4 p1, 0x0

    .line 350
    iput-boolean p1, p0, Lcom/qh/xcad/XCadView2;->fitted:Z

    .line 351
    invoke-direct {p0}, Lcom/qh/xcad/XCadView2;->build()V

    .line 352
    iget p1, p0, Lcom/qh/xcad/XCadView2;->lastW:I

    if-lez p1, :cond_0

    iget v0, p0, Lcom/qh/xcad/XCadView2;->lastH:I

    if-lez v0, :cond_0

    .line 353
    invoke-direct {p0, p1, v0}, Lcom/qh/xcad/XCadView2;->fit(II)V

    const/4 p1, 0x1

    .line 354
    iput-boolean p1, p0, Lcom/qh/xcad/XCadView2;->fitted:Z

    .line 357
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 358
    invoke-direct {p0}, Lcom/qh/xcad/XCadView2;->notifySelection()V

    return-void
.end method

.method public setSelectSingleLine(Z)V
    .locals 0

    .line 425
    iput-boolean p1, p0, Lcom/qh/xcad/XCadView2;->selectSingleLine:Z

    return-void
.end method

.method public setShowControls(Z)V
    .locals 0

    .line 405
    iput-boolean p1, p0, Lcom/qh/xcad/XCadView2;->showControls:Z

    .line 406
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setToleranceWorld(D)V
    .locals 0

    .line 1935
    iput-wide p1, p0, Lcom/qh/xcad/XCadView2;->toleranceWorld:D

    return-void
.end method

.method public setTouchHighlightColor(I)V
    .locals 0

    .line 380
    iput p1, p0, Lcom/qh/xcad/XCadView2;->touchHighlightColor:I

    .line 381
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVehicleHeading(F)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePoint:Lcom/qh/xcad/XCadVehiclePoint;

    if-eqz v0, :cond_0

    float-to-double v1, p1

    .line 76
    iput-wide v1, v0, Lcom/qh/xcad/XCadVehiclePoint;->heading:D

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setXCadExcavatorBucketPosition(DDDDD)V
    .locals 1

    .line 2069
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->xCadExcavatorBucket:Lcom/qh/xcad/XCadExcavatorBucket;

    if-nez v0, :cond_0

    .line 2070
    new-instance v0, Lcom/qh/xcad/XCadExcavatorBucket;

    invoke-direct {v0}, Lcom/qh/xcad/XCadExcavatorBucket;-><init>()V

    iput-object v0, p0, Lcom/qh/xcad/XCadView2;->xCadExcavatorBucket:Lcom/qh/xcad/XCadExcavatorBucket;

    .line 2072
    :cond_0
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->xCadExcavatorBucket:Lcom/qh/xcad/XCadExcavatorBucket;

    iput-wide p1, v0, Lcom/qh/xcad/XCadExcavatorBucket;->xL:D

    .line 2073
    iput-wide p3, v0, Lcom/qh/xcad/XCadExcavatorBucket;->yL:D

    .line 2074
    iput-wide p5, v0, Lcom/qh/xcad/XCadExcavatorBucket;->xR:D

    .line 2075
    iput-wide p7, v0, Lcom/qh/xcad/XCadExcavatorBucket;->yR:D

    .line 2076
    iput-wide p9, v0, Lcom/qh/xcad/XCadExcavatorBucket;->heading:D

    .line 2078
    iget-object p9, p0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    if-nez p9, :cond_1

    return-void

    .line 2081
    :cond_1
    iget-object p9, p0, Lcom/qh/xcad/XCadView2;->onExcavatorBucketSelectedEntityListener:Lcom/qh/xcad/XCadView2$OnExcavatorBucketSelectedEntityListener;

    if-eqz p9, :cond_4

    .line 2084
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qh/xcad/XCadView2;->selectByWorldPoint(DD)I

    move-result p1

    .line 2085
    invoke-virtual {p0, p5, p6, p7, p8}, Lcom/qh/xcad/XCadView2;->selectByWorldPoint(DD)I

    move-result p2

    .line 2086
    iget-object p3, p0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    iget-object p3, p3, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    const/4 p4, 0x0

    if-ltz p1, :cond_2

    if-eqz p3, :cond_2

    .line 2087
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p5

    if-ge p1, p5, :cond_2

    .line 2088
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/qh/xcad/XCadEntity;

    goto :goto_0

    :cond_2
    move-object p5, p4

    :goto_0
    if-ltz p2, :cond_3

    if-eqz p3, :cond_3

    .line 2090
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p6

    if-ge p2, p6, :cond_3

    .line 2091
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object p4, p3

    check-cast p4, Lcom/qh/xcad/XCadEntity;

    .line 2093
    :cond_3
    iget-object p3, p0, Lcom/qh/xcad/XCadView2;->onExcavatorBucketSelectedEntityListener:Lcom/qh/xcad/XCadView2$OnExcavatorBucketSelectedEntityListener;

    invoke-interface {p3, p1, p5, p2, p4}, Lcom/qh/xcad/XCadView2$OnExcavatorBucketSelectedEntityListener;->onEntitySelect(ILcom/qh/xcad/XCadEntity;ILcom/qh/xcad/XCadEntity;)V

    .line 2098
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setXCadVehiclePosition(DDD)V
    .locals 6

    .line 2007
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePoint:Lcom/qh/xcad/XCadVehiclePoint;

    if-nez v0, :cond_0

    .line 2008
    new-instance v0, Lcom/qh/xcad/XCadVehiclePoint;

    invoke-direct {v0}, Lcom/qh/xcad/XCadVehiclePoint;-><init>()V

    iput-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePoint:Lcom/qh/xcad/XCadVehiclePoint;

    const/high16 v1, -0x10000

    .line 2009
    iput v1, v0, Lcom/qh/xcad/XCadVehiclePoint;->color:I

    .line 2011
    :cond_0
    iget-object v0, p0, Lcom/qh/xcad/XCadView2;->vehiclePoint:Lcom/qh/xcad/XCadVehiclePoint;

    iput-wide p1, v0, Lcom/qh/xcad/XCadVehiclePoint;->x:D

    .line 2012
    iput-wide p3, v0, Lcom/qh/xcad/XCadVehiclePoint;->y:D

    .line 2013
    iput-wide p5, v0, Lcom/qh/xcad/XCadVehiclePoint;->heading:D

    .line 2015
    invoke-direct {p0}, Lcom/qh/xcad/XCadView2;->startVehiclePulse()V

    .line 2017
    iget-boolean p5, p0, Lcom/qh/xcad/XCadView2;->followVehicle:Z

    if-eqz p5, :cond_1

    iget p5, p0, Lcom/qh/xcad/XCadView2;->lastW:I

    if-lez p5, :cond_1

    iget p5, p0, Lcom/qh/xcad/XCadView2;->lastH:I

    if-lez p5, :cond_1

    .line 2019
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qh/xcad/XCadView2;->worldToScreen(DD)[F

    move-result-object p5

    .line 2021
    iget p6, p0, Lcom/qh/xcad/XCadView2;->lastW:I

    int-to-float p6, p6

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p6, v0

    .line 2022
    iget v1, p0, Lcom/qh/xcad/XCadView2;->lastH:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 2024
    iget-wide v2, p0, Lcom/qh/xcad/XCadView2;->tx:D

    const/4 v0, 0x0

    aget v0, p5, v0

    sub-float/2addr p6, v0

    float-to-double v4, p6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/qh/xcad/XCadView2;->tx:D

    .line 2025
    iget-wide v2, p0, Lcom/qh/xcad/XCadView2;->ty:D

    const/4 p6, 0x1

    aget p5, p5, p6

    sub-float/2addr v1, p5

    float-to-double p5, v1

    add-double/2addr v2, p5

    iput-wide v2, p0, Lcom/qh/xcad/XCadView2;->ty:D

    .line 2028
    :cond_1
    iget-object p5, p0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    if-nez p5, :cond_2

    return-void

    .line 2032
    :cond_2
    iget-object p5, p0, Lcom/qh/xcad/XCadView2;->onCarSelectedEntityListener:Lcom/qh/xcad/XCadView2$OnCarSelectedEntityListener;

    if-eqz p5, :cond_3

    .line 2033
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qh/xcad/XCadView2;->selectByWorldPoint(DD)I

    move-result p1

    .line 2034
    iget-object p2, p0, Lcom/qh/xcad/XCadView2;->scene:Lcom/qh/xcad/XCadScene;

    iget-object p2, p2, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    if-ltz p1, :cond_3

    if-eqz p2, :cond_3

    .line 2035
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_3

    .line 2036
    iget-object p3, p0, Lcom/qh/xcad/XCadView2;->onCarSelectedEntityListener:Lcom/qh/xcad/XCadView2$OnCarSelectedEntityListener;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qh/xcad/XCadEntity;

    invoke-interface {p3, p1, p2}, Lcom/qh/xcad/XCadView2$OnCarSelectedEntityListener;->onEntitySelect(ILcom/qh/xcad/XCadEntity;)V

    .line 2041
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public unLockEntityLineIndex()V
    .locals 1

    const/4 v0, -0x1

    .line 561
    invoke-virtual {p0, v0}, Lcom/qh/xcad/XCadView2;->setLockEntityLineIndex(I)V

    return-void
.end method
