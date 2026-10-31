.class Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$2;
.super Ljava/lang/Object;
.source "UpgradeFmwDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->onError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$2;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$2;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$mcancelUpgradeingDialog(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)V

    .line 252
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$2;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    sget v1, Lcom/qianhe/yct/R$string;->firmware_download_failed:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$2;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;

    iget-object v2, v2, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->access$100(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
