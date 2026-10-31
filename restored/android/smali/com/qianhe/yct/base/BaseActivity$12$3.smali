.class Lcom/qianhe/yct/base/BaseActivity$12$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseActivity$12;->onParsingError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/base/BaseActivity$12;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/base/BaseActivity$12;)V
    .locals 0

    .line 931
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$12$3;->this$1:Lcom/qianhe/yct/base/BaseActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 2

    .line 940
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$12$3;->this$1:Lcom/qianhe/yct/base/BaseActivity$12;

    iget-object p1, p1, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/application/YCTApplication;->setAppVersionCheckedComplete(Z)V

    .line 942
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/AppVersionCheckEndEvent;

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity$12$3;->this$1:Lcom/qianhe/yct/base/BaseActivity$12;

    iget-object v1, v1, Lcom/qianhe/yct/base/BaseActivity$12;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v0, v1}, Lcom/qianhe/yct/event/AppVersionCheckEndEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onConfirm()V
    .locals 3

    .line 934
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12$3;->this$1:Lcom/qianhe/yct/base/BaseActivity$12;

    iget-object v0, v0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->get_upgrade_info:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity$12$3;->this$1:Lcom/qianhe/yct/base/BaseActivity$12;

    iget-object v2, v2, Lcom/qianhe/yct/base/BaseActivity$12;->val$onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showUpgradeingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    .line 935
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12$3;->this$1:Lcom/qianhe/yct/base/BaseActivity$12;

    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/base/BaseActivity$12;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-boolean v0, v0, Lcom/qianhe/yct/base/BaseActivity$12;->val$isManualUpgrade:Z

    invoke-virtual {v1, v2, v0}, Lcom/qianhe/yct/base/BaseActivity;->getApkList(Lcom/qianhe/baselib/enums/DeviceType;Z)V

    return-void
.end method
