.class Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;
.super Ljava/lang/Object;
.source "BucketFineTuneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;

.field final synthetic val$result:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

.field final synthetic val$stdevBefore:D


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;DLcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 801
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;

    iput-wide p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;->val$stdevBefore:D

    iput-object p4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;->val$result:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 804
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;

    iget-object v0, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;

    iget-object v0, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;->val$stdevBefore:D

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputmStdevBefore(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;D)V

    .line 808
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;->val$result:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->isSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u9ad8\u5ea6\u5fae\u8c03\u5931\u8d25\uff0ccode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;->val$result:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    iget v2, v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->code:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff0cflags="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;

    iget v2, v2, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->val$adjustFlags:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff0cheightLlh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;

    iget-wide v2, v2, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->val$heightMeters:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff0cheightNed=("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;

    iget-object v2, v2, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->val$heightNed:[D

    aget-wide v1, v2, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;

    iget-object v2, v2, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->val$heightNed:[D

    const/4 v3, 0x1

    aget-wide v3, v2, v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;

    iget-object v1, v1, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->val$heightNed:[D

    const/4 v2, 0x2

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;

    iget-object v0, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    sget v1, Lcom/qianhe/yct/R$string;->calibration_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$monCollectAdjustFailed(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;)V

    return-void

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;

    iget-boolean v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->val$forearmScheme:Z

    if-eqz v2, :cond_2

    .line 814
    iget-object v0, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;->val$result:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    iget-wide v2, v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->heightStdev:D

    invoke-static {v0, v2, v3}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputmStdevAfterForearm(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;D)V

    .line 815
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;

    iget-object v0, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    const-string/jumbo v2, "\u5fae\u8c03\u5c0f\u81c2"

    invoke-static {v0, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputmSelectedSchemeLabel(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 817
    :cond_2
    iget-object v0, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;->val$result:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    iget-wide v2, v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->heightStdev:D

    invoke-static {v0, v2, v3}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputmStdevAfterBucket(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;D)V

    .line 818
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;

    iget-object v0, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    const-string/jumbo v2, "\u5fae\u8c03\u94f2\u6597"

    invoke-static {v0, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputmSelectedSchemeLabel(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;)V

    .line 820
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;

    iget-object v0, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputisCalibrating(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Z)V

    .line 821
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;->this$1:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;

    iget-object v0, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;->val$result:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$monHeightAdjustSuccess(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V

    return-void
.end method
