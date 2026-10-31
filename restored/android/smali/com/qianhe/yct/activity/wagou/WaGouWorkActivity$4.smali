.class Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$4;
.super Ljava/lang/Object;
.source "WaGouWorkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 202
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 204
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->fltWorkView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 206
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 207
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->fltWorkView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    return-void

    .line 211
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$mhasCadPath(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 212
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->fltWorkView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 215
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->fltWorkView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
