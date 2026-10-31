.class Lcom/qianhe/yct/activity/line/LineCreateActivity$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "LineCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/line/LineCreateActivity;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/line/LineCreateActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/line/LineCreateActivity;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/qianhe/yct/activity/line/LineCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/line/LineCreateActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 146
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 147
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/line/LineCreateActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/line/LineCreateActivity;->-$$Nest$fputpagePosition(Lcom/qianhe/yct/activity/line/LineCreateActivity;I)V

    return-void
.end method
