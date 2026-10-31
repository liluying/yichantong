.class Lcom/qianhe/yct/activity/dike/DikeWorkActivity$5;
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

    .line 226
    iput-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 229
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivZoom:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivZoom:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 230
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->lltLeft:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->lltLeft:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/WorkView;->requestLocateToStartPoint()V

    return-void
.end method
