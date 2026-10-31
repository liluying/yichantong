.class Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;
.super Ljava/lang/Object;
.source "BucketFineTuneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;

.field final synthetic val$bestResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

.field final synthetic val$bestScheme:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

.field final synthetic val$bucketStdev:D

.field final synthetic val$combinedStdev:D

.field final synthetic val$forearmStdev:D

.field final synthetic val$stdevBefore:D


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;DDDDLcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 880
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;

    iput-wide p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->val$stdevBefore:D

    iput-wide p4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->val$forearmStdev:D

    iput-wide p6, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->val$bucketStdev:D

    iput-wide p8, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->val$combinedStdev:D

    iput-object p10, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->val$bestScheme:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    iput-object p11, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->val$bestResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 883
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;

    iget-object v0, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;

    iget-object v0, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->val$stdevBefore:D

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputmStdevBefore(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;D)V

    .line 887
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;

    iget-object v0, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->val$forearmStdev:D

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputmStdevAfterForearm(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;D)V

    .line 888
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;

    iget-object v0, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->val$bucketStdev:D

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputmStdevAfterBucket(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;D)V

    .line 889
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;

    iget-object v0, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->val$combinedStdev:D

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputmStdevAfterForearmThenBucket(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;D)V

    .line 890
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->val$bestScheme:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->val$bestResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;

    iget-object v0, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->val$bestScheme:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$mschemeLabel(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputmSelectedSchemeLabel(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;

    iget-object v0, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->val$bestScheme:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->val$bestResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$mlogSmartCalibSelectedScheme(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V

    .line 897
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;

    iget-object v0, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputisCalibrating(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Z)V

    .line 898
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;

    iget-object v0, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->val$bestScheme:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->val$bestResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$mapplySmartCalibBestResult(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V

    return-void

    .line 891
    :cond_2
    :goto_0
    const-string/jumbo v0, "\u667a\u80fd\u6821\u51c6\u591a\u65b9\u6848\u6bd4\u8f83\u5931\u8d25\uff1a\u65e0\u53ef\u7528\u65b9\u6848"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;

    iget-object v0, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    sget v1, Lcom/qianhe/yct/R$string;->calibration_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$monCollectAdjustFailed(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;)V

    return-void
.end method
