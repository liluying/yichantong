.class Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$7;
.super Ljava/lang/Object;
.source "UpgradeFmwDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$7;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$7;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    sget v1, Lcom/qianhe/yct/R$string;->download_success_transferring_firmware:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$7;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    iget-object v2, v2, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->showUpgradeingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void
.end method
