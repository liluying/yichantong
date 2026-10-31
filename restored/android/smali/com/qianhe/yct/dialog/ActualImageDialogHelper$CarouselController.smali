.class final Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;
.super Ljava/lang/Object;
.source "ActualImageDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/dialog/ActualImageDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CarouselController"
.end annotation


# instance fields
.field private final adapter:Lcom/qianhe/yct/adapter/ActualImageGifAdapter;

.field private autoScrollPaused:Z

.field private final autoScrollRunnable:Ljava/lang/Runnable;

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private final indicatorDots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final maxPagerHeight:I

.field private final pageIndicator:Landroid/widget/LinearLayout;

.field private userDragging:Z

.field private final viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public static synthetic $r8$lambda$J7tcgBxEkHYLLp8mQzWnsbhfZDI(Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->autoScrollNext()V

    return-void
.end method

.method public static synthetic $r8$lambda$xYO88qaim_cvmObMzxcoRKACTLg(Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;I)V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 284
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :cond_0
    if-gtz v0, :cond_1

    goto :goto_0

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->context:Landroid/content/Context;

    iget v2, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->maxPagerHeight:I

    invoke-static {v1, p1, v0, v2}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->-$$Nest$smcalculateImageHeight(Landroid/content/Context;III)I

    move-result p1

    if-lez p1, :cond_2

    .line 292
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, p1, :cond_2

    .line 293
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 294
    iget-object p0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    :goto_0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetuserDragging(Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->userDragging:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputuserDragging(Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->userDragging:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateIndicatorSelection(Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->updateIndicatorSelection(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePagerHeight(Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->updatePagerHeight(I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/viewpager2/widget/ViewPager2;Lcom/qianhe/yct/adapter/ActualImageGifAdapter;Landroid/widget/LinearLayout;I)V
    .locals 2

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->handler:Landroid/os/Handler;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->indicatorDots:Ljava/util/List;

    .line 202
    new-instance v0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;)V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->autoScrollRunnable:Ljava/lang/Runnable;

    .line 208
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->context:Landroid/content/Context;

    .line 209
    iput-object p2, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 210
    iput-object p3, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->adapter:Lcom/qianhe/yct/adapter/ActualImageGifAdapter;

    .line 211
    iput-object p4, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->pageIndicator:Landroid/widget/LinearLayout;

    .line 212
    iput p5, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->maxPagerHeight:I

    .line 213
    new-instance p1, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController$1;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController$1;-><init>(Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;)V

    invoke-virtual {p2, p1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method private applyPagerHeight(I)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private autoScrollNext()V
    .locals 3

    .line 267
    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->autoScrollPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->adapter:Lcom/qianhe/yct/adapter/ActualImageGifAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ActualImageGifAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->adapter:Lcom/qianhe/yct/adapter/ActualImageGifAdapter;

    invoke-virtual {v2}, Lcom/qianhe/yct/adapter/ActualImageGifAdapter;->getItemCount()I

    move-result v2

    rem-int/2addr v0, v2

    .line 271
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 272
    invoke-virtual {p0}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->startAutoScroll()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setupIndicators(II)V
    .locals 7

    .line 300
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->pageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 301
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->indicatorDots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    .line 303
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->pageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 306
    :cond_0
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->pageIndicator:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->-$$Nest$smdp(Landroid/content/Context;I)I

    move-result v0

    .line 308
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->context:Landroid/content/Context;

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->-$$Nest$smdp(Landroid/content/Context;I)I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_3

    .line 310
    new-instance v5, Landroid/view/View;

    iget-object v6, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 311
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v4, :cond_1

    .line 313
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 315
    :cond_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    sget v6, Lcom/qianhe/yct/R$drawable;->sel_indicator_dot:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    if-ne v4, p2, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 317
    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 318
    iget-object v6, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->pageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 319
    iget-object v6, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->indicatorDots:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateIndicatorSelection(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 324
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->indicatorDots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 325
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->indicatorDots:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updatePagerHeight(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 276
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->adapter:Lcom/qianhe/yct/adapter/ActualImageGifAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ActualImageGifAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->adapter:Lcom/qianhe/yct/adapter/ActualImageGifAdapter;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/adapter/ActualImageGifAdapter;->getImageResId(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->applyPagerHeight(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method pauseAutoScroll()V
    .locals 1

    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->autoScrollPaused:Z

    .line 259
    invoke-virtual {p0}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->stopAutoScroll()V

    return-void
.end method

.method resumeAutoScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 253
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->autoScrollPaused:Z

    .line 254
    invoke-virtual {p0}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->startAutoScroll()V

    return-void
.end method

.method startAutoScroll()V
    .locals 4

    .line 245
    invoke-virtual {p0}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->stopAutoScroll()V

    .line 246
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->adapter:Lcom/qianhe/yct/adapter/ActualImageGifAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ActualImageGifAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->autoScrollPaused:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->autoScrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method stopAutoScroll()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->autoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method switchGroup(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 233
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .line 234
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 235
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->applyPagerHeight(I)V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->adapter:Lcom/qianhe/yct/adapter/ActualImageGifAdapter;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/adapter/ActualImageGifAdapter;->setImages(Ljava/util/List;)V

    .line 238
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 239
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 240
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 241
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->setupIndicators(II)V

    return-void
.end method
