.class Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$4;
.super Ljava/lang/Object;
.source "ZhaoPingWorkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 223
    iget-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;)Lcom/qianhe/yct/databinding/ActivityZpWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityZpWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;)Lcom/qianhe/yct/databinding/ActivityZpWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityZpWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;)Lcom/qianhe/yct/databinding/ActivityZpWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityZpWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 228
    iget-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;)Lcom/qianhe/yct/databinding/ActivityZpWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityZpWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 230
    iget-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;)Lcom/qianhe/yct/databinding/ActivityZpWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityZpWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 232
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->-$$Nest$mhasCadPath(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 233
    iget-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;)Lcom/qianhe/yct/databinding/ActivityZpWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityZpWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;)Lcom/qianhe/yct/databinding/ActivityZpWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityZpWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 236
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;)Lcom/qianhe/yct/databinding/ActivityZpWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityZpWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;)Lcom/qianhe/yct/databinding/ActivityZpWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityZpWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
