.class Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$3;
.super Ljava/lang/Object;
.source "FmwForcedUpgradeDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;->onUpdateProgress(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;

.field final synthetic val$progress:I

.field final synthetic val$step:I


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$3;->this$1:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;

    iput p2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$3;->val$step:I

    iput p3, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$3;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 259
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$3;->this$1:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    iget v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$3;->val$step:I

    const-string v1, "%"

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$3;->this$1:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$3;->this$1:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;

    iget-object v3, v3, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    sget v4, Lcom/qianhe/yct/R$string;->transferring_firmware:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$3;->val$progress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->refreshTip(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 263
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$3;->this$1:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    sget v1, Lcom/qianhe/yct/R$string;->unzip_firmware:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->refreshTip(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 265
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$3;->this$1:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$3;->this$1:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;

    iget-object v3, v3, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    sget v4, Lcom/qianhe/yct/R$string;->burn_firmware:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$3;->val$progress:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$3;->val$progress:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->refreshTip(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
