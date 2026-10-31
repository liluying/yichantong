.class Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$10;
.super Ljava/lang/Object;
.source "VerifyAccuracyActivity.java"

# interfaces
.implements Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->onPreciseApplySuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

.field final synthetic val$applied:Lcom/qianhe/baselib/bean/ShovelEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1549
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    iput-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$10;->val$applied:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 4

    .line 1568
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1569
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 1570
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    sget v1, Lcom/qianhe/yct/R$string;->save_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onSaved(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 9

    .line 1552
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1553
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 1554
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$fputcurrentExcavator(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 1555
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$mcacheOldCalibParams(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    .line 1556
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$10;->val$applied:Lcom/qianhe/baselib/bean/ShovelEntity;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1557
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/yct/event/SwicthBucketEvent;

    iget-object v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$10;->val$applied:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-direct {v2, v3, v1, p1}, Lcom/qianhe/yct/event/SwicthBucketEvent;-><init>(Lcom/qianhe/baselib/bean/ShovelEntity;ZLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1559
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$mclearPendingPreciseFinetune(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    .line 1560
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-static {p1, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$fputmShowingCheckAccuracyDialog(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Z)V

    .line 1561
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    sget p1, Lcom/qianhe/yct/R$string;->calibrate_completed_checking_accuracy:I

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    .line 1562
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const-string v8, "check_accuracy"

    const/4 v6, 0x0

    .line 1561
    invoke-virtual/range {v2 .. v8}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void
.end method
