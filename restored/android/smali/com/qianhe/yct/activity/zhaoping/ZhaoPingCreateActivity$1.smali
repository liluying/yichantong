.class Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "ZhaoPingCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 167
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 168
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->-$$Nest$fputpagePosition(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;I)V

    return-void
.end method
