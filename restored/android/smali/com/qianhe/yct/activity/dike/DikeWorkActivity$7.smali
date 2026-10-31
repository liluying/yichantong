.class Lcom/qianhe/yct/activity/dike/DikeWorkActivity$7;
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

    .line 250
    iput-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 253
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivDirection:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivDirection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 254
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetbaseX(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_0

    .line 255
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$mapplyWorkViewProjectData(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V

    return-void

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivDirection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/WorkView;->resfreshDirection(I)V

    return-void
.end method
