.class Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$5;
.super Ljava/lang/Object;
.source "PolyLineWorkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 231
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 232
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 233
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 236
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    return-void

    .line 240
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$mhasCadPath(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 241
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 244
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 246
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
