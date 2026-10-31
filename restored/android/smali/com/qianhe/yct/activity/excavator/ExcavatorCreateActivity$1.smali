.class Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "ExcavatorCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 394
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 395
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->-$$Nest$fputpagePosition(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;I)V

    .line 396
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->-$$Nest$mrefreshTopBarTitle(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;)V

    return-void
.end method
