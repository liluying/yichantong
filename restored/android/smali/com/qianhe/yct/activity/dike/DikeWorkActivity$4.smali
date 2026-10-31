.class Lcom/qianhe/yct/activity/dike/DikeWorkActivity$4;
.super Ljava/lang/Object;
.source "DikeWorkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 205
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 207
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 210
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    return-void

    .line 214
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$mhasCadPath(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 215
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 218
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 220
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
