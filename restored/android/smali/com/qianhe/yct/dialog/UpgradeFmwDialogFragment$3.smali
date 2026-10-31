.class Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$3;
.super Ljava/lang/Object;
.source "UpgradeFmwDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 176
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fputmanual(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;I)V

    .line 177
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetcurrentStep(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)I

    move-result p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgettotalStep(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetcurrentStep(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;->next(I)V

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_1
    return-void
.end method
