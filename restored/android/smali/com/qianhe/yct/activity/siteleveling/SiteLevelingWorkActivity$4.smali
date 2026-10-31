.class Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$4;
.super Ljava/lang/Object;
.source "SiteLevelingWorkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 230
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 231
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 232
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 235
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 239
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$mhasCadPath(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 240
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 243
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 244
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
