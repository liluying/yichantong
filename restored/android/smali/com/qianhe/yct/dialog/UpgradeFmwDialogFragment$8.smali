.class Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;
.super Ljava/lang/Object;
.source "UpgradeFmwDialogFragment.java"

# interfaces
.implements Lcom/qh/yctdevice/YctDevice$FmwUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->startGnssUpgrade()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateFailed(ILjava/lang/String;)V
    .locals 1

    .line 310
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgethandler(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$2;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$2;-><init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUpdateProgress(II)V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgethandler(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$3;-><init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUpdateSuccessed()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgethandler(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$1;-><init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
