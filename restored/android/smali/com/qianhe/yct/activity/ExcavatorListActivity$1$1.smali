.class Lcom/qianhe/yct/activity/ExcavatorListActivity$1$1;
.super Ljava/lang/Object;
.source "ExcavatorListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ExcavatorListActivity$1;->onClick(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/ExcavatorListActivity$1;

.field final synthetic val$excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ExcavatorListActivity$1;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ExcavatorListActivity$1;

    iput-object p2, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$1$1;->val$excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onConfirm()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$1$1;->val$excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$1$1;->val$excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CALIBRATE,,SET_PARAM,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$1$1;->val$excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$1$1;->val$excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bbe\u7f6e\u6821\u51c6\u53c2\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    invoke-direct {v2, v0}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ExcavatorListActivity$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/ExcavatorListActivity$1;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    sget v1, Lcom/qianhe/yct/R$string;->cannot_configure:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method
