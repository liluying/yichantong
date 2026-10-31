.class Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;
.super Ljava/lang/Object;
.source "BucketFineTuneActivity.java"

# interfaces
.implements Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->onFineTuneApplySuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

.field final synthetic val$applied:Lcom/qianhe/baselib/bean/ShovelEntity;

.field final synthetic val$switchBucketAfterApply:Z


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;ZLcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1497
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    iput-boolean p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;->val$switchBucketAfterApply:Z

    iput-object p3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;->val$applied:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    .line 1516
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1517
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    sget v1, Lcom/qianhe/yct/R$string;->save_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$monFineTuneFailed(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onSaved(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1500
    iget-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 1501
    :cond_0
    iget-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-virtual {v2}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 1502
    iget-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {v2, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputcurrentExcavator(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 1503
    iget-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    iget-object v3, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputdeviceCalibParamsId(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;)V

    .line 1504
    iget-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputmPendingFineTuneExcavator(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 1505
    iget-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {v2, v3}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputselectShovelEntity(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 1506
    iget-boolean v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;->val$switchBucketAfterApply:Z

    if-eqz v2, :cond_1

    .line 1507
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/event/SwicthBucketEvent;

    iget-object v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;->val$applied:Lcom/qianhe/baselib/bean/ShovelEntity;

    const/4 v5, 0x1

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v1}, Lcom/qianhe/yct/event/SwicthBucketEvent;-><init>(Lcom/qianhe/baselib/bean/ShovelEntity;ZLjava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1508
    iget-object v6, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    sget v1, Lcom/qianhe/yct/R$string;->bucket_fine_tune_completed:I

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    sget v2, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    sget v2, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    sget v2, Lcom/qianhe/yct/R$string;->bucket_fine_tune_completed_hint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const-string v12, "bucket_fine_tune_completed"

    invoke-virtual/range {v6 .. v12}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void

    .line 1510
    :cond_1
    iget-object v13, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    sget v1, Lcom/qianhe/yct/R$string;->bucket_fine_tune_completed:I

    invoke-virtual {v13, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iget-object v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    sget v2, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-object v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    sget v2, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const-string v19, "bucket_fine_tune_completed"

    const-string v17, ""

    invoke-virtual/range {v13 .. v19}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void
.end method
