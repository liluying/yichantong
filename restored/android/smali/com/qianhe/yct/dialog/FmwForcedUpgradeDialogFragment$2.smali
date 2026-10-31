.class Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;
.super Ljava/lang/Object;
.source "FmwForcedUpgradeDialogFragment.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->onEventMessage(Lcom/qianhe/yct/event/FirmwareFileInfoResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

.field final synthetic val$event:Lcom/qianhe/yct/event/FirmwareFileInfoResponse;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;Lcom/qianhe/yct/event/FirmwareFileInfoResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    iput-object p2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;->val$event:Lcom/qianhe/yct/event/FirmwareFileInfoResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    return-void
.end method

.method public update(JJZ)V
    .locals 8

    .line 166
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2$1;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2$1;-><init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;JJZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
