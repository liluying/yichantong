.class Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$8;
.super Ljava/lang/Object;
.source "DebugUpgradeFmwDialog.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$8;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 457
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$8;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$8;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->gotoBluetoothActivity()V

    .line 451
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$8;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
