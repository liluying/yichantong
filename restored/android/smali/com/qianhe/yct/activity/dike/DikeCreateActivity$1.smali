.class Lcom/qianhe/yct/activity/dike/DikeCreateActivity$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "DikeCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/dike/DikeCreateActivity;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/dike/DikeCreateActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/dike/DikeCreateActivity;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/dike/DikeCreateActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 142
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 143
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/dike/DikeCreateActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/dike/DikeCreateActivity;->-$$Nest$fputpagePosition(Lcom/qianhe/yct/activity/dike/DikeCreateActivity;I)V

    return-void
.end method
