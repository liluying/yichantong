.class Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$3;
.super Ljava/lang/Object;
.source "FmwForcedUpgradeDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    sget v1, Lcom/qianhe/yct/R$string;->download_success_transferring_firmware:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->refreshTip(Ljava/lang/String;)V

    return-void
.end method
