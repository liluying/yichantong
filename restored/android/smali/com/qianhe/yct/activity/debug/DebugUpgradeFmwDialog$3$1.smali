.class Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;
.super Ljava/lang/Object;
.source "DebugUpgradeFmwDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;->onUpdateSuccessed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;->this$1:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 165
    const-string v0, "===============\u677f\u5361\u56fa\u4ef6\u5347\u7ea7\u6210\u529f==================="

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;->this$1:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-static {v0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->-$$Nest$fgetyctDevice(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)Lcom/qh/yctdevice/YctDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qh/yctdevice/YctDevice;->stopFmwUpdate()V

    .line 167
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;->this$1:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-static {v0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)Lcom/qianhe/yct/databinding/DialogDebugUpgradeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogDebugUpgradeBinding;->tvClose:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/ReloadAppConfigEvent;

    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qianhe/yct/event/ReloadAppConfigEvent;-><init>(Lcom/qianhe/yct/bean/AppConfig;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;->this$1:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    sget v1, Lcom/qianhe/yct/R$string;->upgrade_success:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;->this$1:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;

    iget-object v2, v2, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->access$100(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 170
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;->this$1:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;

    iget-object v1, v1, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-static {v1}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->-$$Nest$fgetmodel(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->isGnssFmw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "restoreConnectCheck"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;->this$1:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-static {v0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->-$$Nest$fgethandler(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1$1;-><init>(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3$1;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
