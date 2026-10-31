.class Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaCreateActivity$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "MultiPointAreaCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaCreateActivity;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaCreateActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaCreateActivity;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaCreateActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 108
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 109
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaCreateActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaCreateActivity;->-$$Nest$fputpagePosition(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaCreateActivity;I)V

    return-void
.end method
