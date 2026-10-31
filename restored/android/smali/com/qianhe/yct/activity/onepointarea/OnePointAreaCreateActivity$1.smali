.class Lcom/qianhe/yct/activity/onepointarea/OnePointAreaCreateActivity$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "OnePointAreaCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/onepointarea/OnePointAreaCreateActivity;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaCreateActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaCreateActivity;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaCreateActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 123
    iget-object v0, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaCreateActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaCreateActivity;->-$$Nest$fputpagePosition(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaCreateActivity;I)V

    return-void
.end method
