.class Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$8;
.super Ljava/lang/Object;
.source "FmwForcedUpgradeDialogFragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$8;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 469
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$8;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$8;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->gotoBluetoothActivity()V

    return-void
.end method
