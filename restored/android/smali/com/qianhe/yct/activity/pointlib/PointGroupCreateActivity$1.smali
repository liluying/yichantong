.class Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "PointGroupCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->-$$Nest$fputpagePosition(Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;I)V

    return-void
.end method
