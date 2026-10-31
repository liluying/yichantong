.class Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$4;
.super Ljava/lang/Object;
.source "OnePointAreaWorkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 213
    iget-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 215
    iget-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;)Lcom/qianhe/yct/databinding/ActivityOnepointAreaWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityOnepointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;)Lcom/qianhe/yct/databinding/ActivityOnepointAreaWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityOnepointAreaWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 217
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;)Lcom/qianhe/yct/databinding/ActivityOnepointAreaWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityOnepointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 218
    iget-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;)Lcom/qianhe/yct/databinding/ActivityOnepointAreaWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityOnepointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 220
    iget-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;)Lcom/qianhe/yct/databinding/ActivityOnepointAreaWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityOnepointAreaWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 222
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->-$$Nest$mhasCadPath(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 223
    iget-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;)Lcom/qianhe/yct/databinding/ActivityOnepointAreaWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityOnepointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;)Lcom/qianhe/yct/databinding/ActivityOnepointAreaWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityOnepointAreaWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 226
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;)Lcom/qianhe/yct/databinding/ActivityOnepointAreaWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityOnepointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;)Lcom/qianhe/yct/databinding/ActivityOnepointAreaWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityOnepointAreaWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
