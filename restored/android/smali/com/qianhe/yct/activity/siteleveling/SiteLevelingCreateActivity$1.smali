.class Lcom/qianhe/yct/activity/siteleveling/SiteLevelingCreateActivity$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SiteLevelingCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/siteleveling/SiteLevelingCreateActivity;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingCreateActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingCreateActivity;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingCreateActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 137
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 138
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingCreateActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingCreateActivity;->-$$Nest$fputpagePosition(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingCreateActivity;I)V

    return-void
.end method
