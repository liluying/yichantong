.class Lcom/qianhe/yct/dialog/ExitDialogFragment$1;
.super Ljava/lang/Object;
.source "ExitDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ExitDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/ExitDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ExitDialogFragment;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ExitDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ExitDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 57
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ExitDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ExitDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ExitDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/ExitDialogFragment;)Lcom/qianhe/yct/dialog/ExitDialogFragment$OnConfirmListener;

    .line 58
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 59
    const-string v0, "confirm"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ExitDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ExitDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ExitDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ExitDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/ExitDialogFragment;->access$000(Lcom/qianhe/yct/dialog/ExitDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 61
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ExitDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ExitDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
