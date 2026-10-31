.class public Lcom/qianhe/yct/view/ScrollStableNestedScrollView;
.super Landroidx/core/widget/NestedScrollView;
.source "ScrollStableNestedScrollView.java"


# instance fields
.field private lockedScrollY:I

.field private final restoreRunnable:Ljava/lang/Runnable;

.field private restoreScrollOnLayout:Z


# direct methods
.method public static synthetic $r8$lambda$gQqk4WeVLVhRzOExO2xiRF7qNdk(Lcom/qianhe/yct/view/ScrollStableNestedScrollView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/view/ScrollStableNestedScrollView;->restoreLockedScroll()V

    return-void
.end method

.method public static synthetic $r8$lambda$yqNSdUIT0u-Zg3utl9gPKq0o2Jg(Lcom/qianhe/yct/view/ScrollStableNestedScrollView;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/qianhe/yct/view/ScrollStableNestedScrollView;->restoreScrollOnLayout:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance p1, Lcom/qianhe/yct/view/ScrollStableNestedScrollView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/view/ScrollStableNestedScrollView$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/view/ScrollStableNestedScrollView;)V

    iput-object p1, p0, Lcom/qianhe/yct/view/ScrollStableNestedScrollView;->restoreRunnable:Ljava/lang/Runnable;

    .line 23
    invoke-direct {p0}, Lcom/qianhe/yct/view/ScrollStableNestedScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance p1, Lcom/qianhe/yct/view/ScrollStableNestedScrollView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/view/ScrollStableNestedScrollView$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/view/ScrollStableNestedScrollView;)V

    iput-object p1, p0, Lcom/qianhe/yct/view/ScrollStableNestedScrollView;->restoreRunnable:Ljava/lang/Runnable;

    .line 28
    invoke-direct {p0}, Lcom/qianhe/yct/view/ScrollStableNestedScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance p1, Lcom/qianhe/yct/view/ScrollStableNestedScrollView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/view/ScrollStableNestedScrollView$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/view/ScrollStableNestedScrollView;)V

    iput-object p1, p0, Lcom/qianhe/yct/view/ScrollStableNestedScrollView;->restoreRunnable:Ljava/lang/Runnable;

    .line 33
    invoke-direct {p0}, Lcom/qianhe/yct/view/ScrollStableNestedScrollView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const/high16 v0, 0x60000

    .line 37
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private restoreLockedScroll()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/qianhe/yct/view/ScrollStableNestedScrollView;->lockedScrollY:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0, v1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 55
    :cond_0
    new-instance v0, Lcom/qianhe/yct/view/ScrollStableNestedScrollView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/view/ScrollStableNestedScrollView$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/view/ScrollStableNestedScrollView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public lockScrollPosition()V
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/qianhe/yct/view/ScrollStableNestedScrollView;->restoreScrollOnLayout:Z

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/view/ScrollStableNestedScrollView;->lockedScrollY:I

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/qianhe/yct/view/ScrollStableNestedScrollView;->restoreScrollOnLayout:Z

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/ScrollStableNestedScrollView;->restoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 48
    iget-object v0, p0, Lcom/qianhe/yct/view/ScrollStableNestedScrollView;->restoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 75
    invoke-super/range {p0 .. p5}, Landroidx/core/widget/NestedScrollView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 76
    iget-boolean p2, p1, Lcom/qianhe/yct/view/ScrollStableNestedScrollView;->restoreScrollOnLayout:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    iget p3, p1, Lcom/qianhe/yct/view/ScrollStableNestedScrollView;->lockedScrollY:I

    if-eq p2, p3, :cond_0

    const/4 p2, 0x0

    .line 77
    invoke-virtual {p0, p2, p3}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method
