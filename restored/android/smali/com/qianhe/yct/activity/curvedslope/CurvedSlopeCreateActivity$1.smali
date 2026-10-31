.class Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "CurvedSlopeCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 151
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 152
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->-$$Nest$fputpagePosition(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;I)V

    return-void
.end method
