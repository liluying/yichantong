.class Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11;
.super Ljava/lang/Object;
.source "UpgradeFmwDialogFragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;
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

    .line 493
    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 497
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 498
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    sget v1, Lcom/qianhe/yct/R$string;->cancel_upgrade:I

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$mcancelUpgrade(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;Ljava/lang/String;)V

    .line 499
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {p1, v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fputmanual(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;I)V

    .line 500
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetyctDevice(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Lcom/qh/yctdevice/YctDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qh/yctdevice/YctDevice;->stopFmwUpdate()V

    .line 501
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgethandler(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11$1;-><init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
