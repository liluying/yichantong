.class Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;
.super Ljava/lang/Object;
.source "FmwForcedUpgradeDialogFragment.java"

# interfaces
.implements Lcom/qh/yctdevice/YctDevice$FmwUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->startGnssUpgrade()V
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

    .line 212
    iput-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateFailed(ILjava/lang/String;)V
    .locals 1

    .line 243
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->-$$Nest$fgethandler(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$2;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$2;-><init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUpdateProgress(II)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->-$$Nest$fgethandler(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$3;-><init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUpdateSuccessed()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->-$$Nest$fgethandler(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4$1;-><init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
