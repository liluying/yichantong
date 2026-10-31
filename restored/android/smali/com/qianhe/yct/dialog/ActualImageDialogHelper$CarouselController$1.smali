.class Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "ActualImageDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;-><init>(Landroid/content/Context;Landroidx/viewpager2/widget/ViewPager2;Lcom/qianhe/yct/adapter/ActualImageGifAdapter;Landroid/widget/LinearLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController$1;->this$0:Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 223
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController$1;->this$0:Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;

    invoke-static {p1, v0}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->-$$Nest$fputuserDragging(Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;Z)V

    .line 224
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController$1;->this$0:Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;

    invoke-virtual {p1}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->pauseAutoScroll()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 225
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController$1;->this$0:Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->-$$Nest$fgetuserDragging(Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 226
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController$1;->this$0:Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->-$$Nest$fputuserDragging(Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;Z)V

    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController$1;->this$0:Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;

    invoke-static {v0, p1}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->-$$Nest$mupdatePagerHeight(Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;I)V

    .line 217
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController$1;->this$0:Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;

    invoke-static {v0, p1}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;->-$$Nest$mupdateIndicatorSelection(Lcom/qianhe/yct/dialog/ActualImageDialogHelper$CarouselController;I)V

    return-void
.end method
