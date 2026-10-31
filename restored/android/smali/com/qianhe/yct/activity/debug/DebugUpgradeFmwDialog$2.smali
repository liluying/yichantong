.class Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$2;
.super Ljava/lang/Object;
.source "DebugUpgradeFmwDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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

    .line 144
    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$2;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 147
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$2;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    sget v0, Lcom/qianhe/yct/R$string;->cancel_upgrade:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$2;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->access$000(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 148
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$2;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->-$$Nest$fgetyctDevice(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)Lcom/qh/yctdevice/YctDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qh/yctdevice/YctDevice;->stopFmwUpdate()V

    .line 149
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$2;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
