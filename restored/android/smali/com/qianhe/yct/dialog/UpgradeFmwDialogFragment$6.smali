.class Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;
.super Ljava/lang/Object;
.source "UpgradeFmwDialogFragment.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->onEventMessage(Lcom/qianhe/yct/event/FirmwareFileInfoResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

.field final synthetic val$event:Lcom/qianhe/yct/event/FirmwareFileInfoResponse;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;Lcom/qianhe/yct/event/FirmwareFileInfoResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    iput-object p2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->val$event:Lcom/qianhe/yct/event/FirmwareFileInfoResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$2;-><init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public update(JJZ)V
    .locals 8

    .line 221
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;-><init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;JJZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
