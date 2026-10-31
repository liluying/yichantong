.class Lcom/qianhe/yct/base/BaseActivity$12;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseActivity;->getApkList(Lcom/qianhe/baselib/enums/DeviceType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/base/BaseActivity;

.field final synthetic val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field final synthetic val$isManualUpgrade:Z

.field final synthetic val$onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/base/BaseActivity;ZLcom/qianhe/baselib/enums/DeviceType;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 810
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    iput-boolean p2, p0, Lcom/qianhe/yct/base/BaseActivity$12;->val$isManualUpgrade:Z

    iput-object p3, p0, Lcom/qianhe/yct/base/BaseActivity$12;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iput-object p4, p0, Lcom/qianhe/yct/base/BaseActivity$12;->val$onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNewVersion(Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 831
    iget-boolean p1, p1, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->forced:Z

    if-eqz p1, :cond_0

    .line 832
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {p1}, Lcom/qianhe/yct/base/BaseActivity;->cancelUpgradeingDialog()V

    :cond_0
    return-void
.end method

.method public onCancel(I)V
    .locals 2

    .line 853
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->cancelUpgradeingDialog()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 855
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/application/YCTApplication;->setAppVersionCheckedComplete(Z)V

    .line 857
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/AppVersionCheckEndEvent;

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity$12;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v0, v1}, Lcom/qianhe/yct/event/AppVersionCheckEndEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCheckFailed(Ljava/lang/String;)V
    .locals 3

    .line 813
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->cancelUpgradeingDialog()V

    .line 814
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->val$isManualUpgrade:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method

.method public onDownloadDone(ZLjava/lang/String;)V
    .locals 3

    .line 886
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->cancelUpgradeingDialog()V

    .line 887
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->cancelForcedUpgradeDialog()V

    if-eqz p1, :cond_0

    .line 889
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->download_completed_click_install:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0, p2}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$mshowAppForcedUpgradeDialog(Lcom/qianhe/yct/base/BaseActivity;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 891
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->download_completed_click_install:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->install:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/base/BaseActivity$12$1;

    invoke-direct {v2, p0, p2}, Lcom/qianhe/yct/base/BaseActivity$12$1;-><init>(Lcom/qianhe/yct/base/BaseActivity$12;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 904
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-static {p1, p1, p2}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$minstallApkWithRestart(Lcom/qianhe/yct/base/BaseActivity;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadError(Z)V
    .locals 4

    .line 914
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->cancelUpgradeingDialog()V

    .line 915
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->upgrade_package_download_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/base/BaseActivity$12$2;

    invoke-direct {v3, p0, p1}, Lcom/qianhe/yct/base/BaseActivity$12$2;-><init>(Lcom/qianhe/yct/base/BaseActivity$12;Z)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onDownloadInfo()V
    .locals 3

    .line 863
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->get_upgrade_info:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity$12;->val$onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showUpgradeingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void
.end method

.method public onDownloadProgress(ZI)V
    .locals 4

    .line 877
    const-string v0, "%"

    if-eqz p1, :cond_0

    .line 878
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    sget v3, Lcom/qianhe/yct/R$string;->download_upgrade_package:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v0}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$mshowAppForcedUpgradeDialog(Lcom/qianhe/yct/base/BaseActivity;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 880
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    sget v3, Lcom/qianhe/yct/R$string;->download_upgrade_package:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->val$onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-virtual {p1, p2, v0}, Lcom/qianhe/yct/base/BaseActivity;->showUpgradeingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void
.end method

.method public onIgnore(Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;)V
    .locals 2

    .line 844
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->cancelUpgradeingDialog()V

    .line 845
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, v0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ignoreApkVersion"

    iget-object p1, p1, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->version:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 846
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/application/YCTApplication;->setAppVersionCheckedComplete(Z)V

    .line 848
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/AppVersionCheckEndEvent;

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity$12;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v0, v1}, Lcom/qianhe/yct/event/AppVersionCheckEndEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onLatestVersion()V
    .locals 4

    .line 819
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->cancelUpgradeingDialog()V

    .line 820
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->setAppVersionCheckedComplete(Z)V

    .line 821
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->val$isManualUpgrade:Z

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->app_is_already_latest_version:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 825
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/AppVersionCheckEndEvent;

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity$12;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v1, v2}, Lcom/qianhe/yct/event/AppVersionCheckEndEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onParsingError()V
    .locals 4

    .line 930
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->cancelUpgradeingDialog()V

    .line 931
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->installation_package_parsing_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    sget v3, Lcom/qianhe/yct/R$string;->redownload:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/base/BaseActivity$12$3;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/base/BaseActivity$12$3;-><init>(Lcom/qianhe/yct/base/BaseActivity$12;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onParsingPackage()V
    .locals 3

    .line 909
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->analyzing_upgrade_package:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity$12;->val$onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showUpgradeingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void
.end method

.method public onStartDownload(Z)V
    .locals 4

    .line 868
    const-string v0, "0%"

    if-eqz p1, :cond_0

    .line 869
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    sget v3, Lcom/qianhe/yct/R$string;->download_upgrade_package:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$mshowAppForcedUpgradeDialog(Lcom/qianhe/yct/base/BaseActivity;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 871
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    sget v3, Lcom/qianhe/yct/R$string;->download_upgrade_package:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity$12;->val$onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showUpgradeingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void
.end method

.method public onUpgradeFailed(Ljava/lang/String;)V
    .locals 3

    .line 949
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->cancelUpgradeingDialog()V

    .line 950
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->setAppVersionCheckedComplete(Z)V

    .line 952
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/AppVersionCheckEndEvent;

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity$12;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v1, v2}, Lcom/qianhe/yct/event/AppVersionCheckEndEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 953
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onUpgradeTipsDialogShown()V
    .locals 3

    .line 838
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    new-instance v2, Lcom/qianhe/yct/base/BaseActivity$12$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/qianhe/yct/base/BaseActivity$12$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/base/BaseActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
