.class Lcom/qianhe/yct/activity/dike/DikeWorkActivity$6;
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

    .line 236
    iput-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 239
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetmBeepPlayer(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/utils/BeepPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 241
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetmBeepPlayer(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/utils/BeepPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    .line 242
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fputmBeepPlayer(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;Lcom/qianhe/yct/utils/BeepPlayer;)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$minitPlayer(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V

    .line 247
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivSound:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method
