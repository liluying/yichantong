.class Lcom/qianhe/yct/activity/BucketListActivity$3$1;
.super Ljava/lang/Object;
.source "BucketListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/BucketListActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/BucketListActivity$3;

.field final synthetic val$appliedBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

.field final synthetic val$applyResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

.field final synthetic val$sourceCalibParams:Ljava/lang/String;

.field final synthetic val$toolParam:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/BucketListActivity$3;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 294
    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$3;

    iput-object p2, p0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;->val$applyResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    iput-object p3, p0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;->val$appliedBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iput-object p4, p0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;->val$sourceCalibParams:Ljava/lang/String;

    iput-object p5, p0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;->val$toolParam:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 297
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/BucketListActivity$3;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;->val$applyResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/BucketListActivity$3;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u672c\u5730\u5207\u6362\u94f2\u6597\u5931\u8d25\uff0ccode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;->val$applyResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    iget v1, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/BucketListActivity$3;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetmCurrentExcavator(Lcom/qianhe/yct/activity/BucketListActivity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;->val$appliedBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->endBucketSwitchFailed(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 304
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/BucketListActivity$3;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fputswitchingBucket(Lcom/qianhe/yct/activity/BucketListActivity;Z)V

    .line 305
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/BucketListActivity$3;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$mshowSwitchConfigFailedDialog(Lcom/qianhe/yct/activity/BucketListActivity;)V

    .line 306
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/BucketListActivity$3;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fputselectShovelEntity(Lcom/qianhe/yct/activity/BucketListActivity;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    return-void

    .line 309
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v6

    .line 310
    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;->val$sourceCalibParams:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;->val$toolParam:Ljava/lang/String;

    .line 312
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;->val$appliedBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/BucketListActivity$3;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    iget-object v4, v0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetmLatestIns(Lcom/qianhe/yct/activity/BucketListActivity;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v5

    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/BucketListActivity$3;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    .line 313
    invoke-static {v0}, Lcom/qianhe/yct/activity/BucketListActivity;->access$000(Lcom/qianhe/yct/activity/BucketListActivity;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 310
    invoke-static/range {v1 .. v7}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordBucketSwitchApply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 314
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/BucketListActivity$3;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;->val$appliedBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v2, p0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;->val$applyResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    iget-object v2, v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$monLocalSwitchSuccess(Lcom/qianhe/yct/activity/BucketListActivity;Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;)V

    return-void
.end method
