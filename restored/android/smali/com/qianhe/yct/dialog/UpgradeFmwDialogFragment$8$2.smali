.class Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$2;
.super Ljava/lang/Object;
.source "UpgradeFmwDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;->onUpdateFailed(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;

.field final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 310
    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$2;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;

    iput-object p2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$2;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$2;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$2;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fputmanual(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;I)V

    .line 315
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$2;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 316
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$2;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$mcancelUpgradeingDialog(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)V

    .line 317
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$2;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$2;->val$errorMessage:Ljava/lang/String;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->access$400(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method
