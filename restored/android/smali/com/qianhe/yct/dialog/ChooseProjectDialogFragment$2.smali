.class Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$2;
.super Ljava/lang/Object;
.source "ChooseProjectDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 87
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetbaseProEntity(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/baselib/base/BaseProEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 89
    const-string v0, "action"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 90
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetbaseProEntity(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/baselib/base/BaseProEntity;

    move-result-object v0

    const-string v1, "baseProEntity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->access$000(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 92
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    sget v1, Lcom/qianhe/yct/R$string;->select_project:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
