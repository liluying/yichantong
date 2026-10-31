.class Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$1;
.super Ljava/lang/Object;
.source "UpgradeFmwDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;->onUpdateSuccessed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 283
    const-string v0, "===============\u677f\u5361\u56fa\u4ef6\u5347\u7ea7\u6210\u529f==================="

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->access$200(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/Constant;->GNSS_FWM_VERSION:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;

    iget-object v2, v2, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v2}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetversionNew(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 285
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetyctDevice(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Lcom/qh/yctdevice/YctDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qh/yctdevice/YctDevice;->stopFmwUpdate()V

    .line 286
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$mcancelUpgradeingDialog(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)V

    .line 287
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvClose:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/ReloadAppConfigEvent;

    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qianhe/yct/event/ReloadAppConfigEvent;-><init>(Lcom/qianhe/yct/bean/AppConfig;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetcurrentStep(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;

    iget-object v1, v1, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgettotalStep(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    sget v1, Lcom/qianhe/yct/R$string;->firmware_upgrade_completed:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;

    iget-object v2, v2, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->access$300(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 294
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "restoreConnectCheck"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgethandler(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$1$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$1$1;-><init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8$1;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
