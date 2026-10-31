.class Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$6;
.super Ljava/lang/Object;
.source "UpgradeApkDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;)Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;)Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$OnActionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$OnActionListener;->onDownload()V

    :cond_1
    return-void
.end method
