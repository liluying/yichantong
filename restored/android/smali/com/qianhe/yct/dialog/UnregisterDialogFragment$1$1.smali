.class Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1$1;
.super Ljava/lang/Object;
.source "UnregisterDialogFragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;

.field final synthetic val$activity:Lcom/qianhe/yct/base/BaseActivity;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;Lcom/qianhe/yct/base/BaseActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1$1;->this$1:Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;

    iput-object p2, p0, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1$1;->val$activity:Lcom/qianhe/yct/base/BaseActivity;

    iput-object p3, p0, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1$1;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onConfirm()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1$1;->val$activity:Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1$1;->this$1:Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;

    iget-object v1, v1, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/UnregisterDialogFragment;

    sget v2, Lcom/qianhe/yct/R$string;->process_please_wait:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1$1;->this$1:Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/UnregisterDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UnregisterDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/UnregisterDialogFragment;)Lcom/qianhe/yct/dialog/UnregisterDialogFragment$OnConfirmListener;

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    const-string v1, "confirm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    iget-object v1, p0, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1$1;->this$1:Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;

    iget-object v1, v1, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/UnregisterDialogFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1$1;->this$1:Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;

    iget-object v2, v2, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/UnregisterDialogFragment;

    invoke-static {v2}, Lcom/qianhe/yct/dialog/UnregisterDialogFragment;->access$000(Lcom/qianhe/yct/dialog/UnregisterDialogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 86
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1$1;->this$1:Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;

    iget-object v1, v1, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/UnregisterDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/UnregisterDialogFragment;->-$$Nest$fgetaccount(Lcom/qianhe/yct/dialog/UnregisterDialogFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1$1;->val$password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->unRegisterAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1$1;->this$1:Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/UnregisterDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UnregisterDialogFragment;->-$$Nest$mclose(Lcom/qianhe/yct/dialog/UnregisterDialogFragment;)V

    return-void
.end method
