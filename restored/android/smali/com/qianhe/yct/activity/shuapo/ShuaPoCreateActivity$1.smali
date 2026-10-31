.class Lcom/qianhe/yct/activity/shuapo/ShuaPoCreateActivity$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "ShuaPoCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/shuapo/ShuaPoCreateActivity;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/shuapo/ShuaPoCreateActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/shuapo/ShuaPoCreateActivity;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/shuapo/ShuaPoCreateActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 152
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 153
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/shuapo/ShuaPoCreateActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/shuapo/ShuaPoCreateActivity;->-$$Nest$fputpagePosition(Lcom/qianhe/yct/activity/shuapo/ShuaPoCreateActivity;I)V

    return-void
.end method
