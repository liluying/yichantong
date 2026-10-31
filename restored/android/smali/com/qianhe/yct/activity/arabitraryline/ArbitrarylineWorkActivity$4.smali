.class Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$4;
.super Ljava/lang/Object;
.source "ArbitrarylineWorkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 220
    iget-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 222
    iget-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 225
    iget-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 229
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$mhasCadPath(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 230
    iget-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 233
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
