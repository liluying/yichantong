.class Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$5;
.super Ljava/lang/Object;
.source "UpgradeFmwDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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

    .line 195
    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$5;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 198
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$5;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$5;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$5;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    sget v0, Lcom/qianhe/yct/R$string;->obtain_firmware_address:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$5;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    iget-object v1, v1, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->showUpgradeingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    .line 200
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkDataLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$5;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetid(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$5;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetdeviceType(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getFirmwareDownloadUrl(ILcom/qianhe/baselib/enums/DeviceType;)V

    return-void
.end method
