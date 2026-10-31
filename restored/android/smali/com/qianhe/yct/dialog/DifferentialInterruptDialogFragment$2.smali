.class Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment$2;
.super Ljava/lang/Object;
.source "DifferentialInterruptDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 113
    iget-object p1, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;)Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment$OnConfirmListener;

    .line 114
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 115
    const-string v0, "confirm"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 116
    iget-object v0, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;->access$100(Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 117
    iget-object p1, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
