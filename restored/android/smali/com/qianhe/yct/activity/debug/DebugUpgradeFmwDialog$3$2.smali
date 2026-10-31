.class Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$2;
.super Ljava/lang/Object;
.source "DebugUpgradeFmwDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;->onUpdateFailed(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;

.field final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$2;->this$1:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;

    iput-object p2, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$2;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$2;->this$1:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$2;->val$errorMessage:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$2;->this$1:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$2;->val$errorMessage:Ljava/lang/String;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->access$200(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$2;->this$1:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_1
    return-void
.end method
