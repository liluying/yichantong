.class Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$2;
.super Ljava/lang/Object;
.source "FmwForcedUpgradeDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;->onUpdateFailed(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;

.field final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$2;->this$1:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;

    iput-object p2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$2;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 246
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$2;->this$1:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$2;->this$1:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 248
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$2;->this$1:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$2;->val$errorMessage:Ljava/lang/String;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->access$200(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method
