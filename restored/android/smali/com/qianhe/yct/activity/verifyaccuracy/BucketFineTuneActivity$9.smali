.class Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;
.super Ljava/lang/Object;
.source "BucketFineTuneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->runSmartCalibAutoOptimize(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

.field final synthetic val$bucketFlags:I

.field final synthetic val$calibParams:Ljava/lang/String;

.field final synthetic val$forearmFlags:I

.field final synthetic val$heightLlh:[D

.field final synthetic val$heightNed:[D

.field final synthetic val$samples:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;Ljava/util/List;I[D[DI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 844
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    iput-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$calibParams:Ljava/lang/String;

    iput-object p3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$samples:Ljava/util/List;

    iput p4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$forearmFlags:I

    iput-object p5, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$heightNed:[D

    iput-object p6, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$heightLlh:[D

    iput p7, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$bucketFlags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 847
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$calibParams:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$samples:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->getHeightStdevBeforeAdjust(Ljava/lang/String;Ljava/util/List;)D

    move-result-wide v4

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u667a\u80fd\u6821\u51c6\u65b9\u6848[\u5fae\u8c03\u5c0f\u81c2]\u4f20\u5165\u53c2\u6570\uff1aflags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$forearmFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\uff0ccalibParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$calibParams:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    iget v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$forearmFlags:I

    invoke-static {v0, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$mrecordAdjustHeightCmd(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;I)V

    .line 852
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$calibParams:Ljava/lang/String;

    iget v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$forearmFlags:I

    iget-object v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$heightNed:[D

    iget-object v6, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$heightLlh:[D

    iget-object v7, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$samples:Ljava/util/List;

    invoke-static {v0, v2, v3, v6, v7}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->adjustHeight(Ljava/lang/String;I[D[DLjava/util/List;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    move-result-object v0

    .line 853
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    const-string/jumbo v3, "\u5fae\u8c03\u5c0f\u81c2"

    invoke-static {v2, v3, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$mlogSmartCalibSchemeResult(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V

    .line 855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u667a\u80fd\u6821\u51c6\u65b9\u6848[\u5fae\u8c03\u94f2\u6597]\u4f20\u5165\u53c2\u6570\uff1aflags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$bucketFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$calibParams:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 856
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    iget v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$bucketFlags:I

    invoke-static {v1, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$mrecordAdjustHeightCmd(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;I)V

    .line 857
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$calibParams:Ljava/lang/String;

    iget v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$bucketFlags:I

    iget-object v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$heightNed:[D

    iget-object v6, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$heightLlh:[D

    iget-object v7, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$samples:Ljava/util/List;

    invoke-static {v1, v2, v3, v6, v7}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->adjustHeight(Ljava/lang/String;I[D[DLjava/util/List;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    move-result-object v1

    .line 858
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    const-string/jumbo v3, "\u5fae\u8c03\u94f2\u6597"

    invoke-static {v2, v3, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$mlogSmartCalibSchemeResult(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V

    .line 862
    iget v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$bucketFlags:I

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->calibParamsBase64:Ljava/lang/String;

    .line 864
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 865
    iget-object v6, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->calibParamsBase64:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v6, v3

    .line 866
    :goto_0
    iget-object v7, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {v7, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$mrecordAdjustHeightCmd(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;I)V

    if-eqz v6, :cond_1

    .line 868
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u667a\u80fd\u6821\u51c6\u65b9\u6848[\u5fae\u8c03\u5c0f\u81c2\u540e\u518d\u5fae\u8c03\u94f2\u6597]\u4f20\u5165\u53c2\u6570\uff1aflags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$bucketFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\uff0ccalibParams(\u65b0\u5c0f\u81c2\u53c2\u6570)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 869
    iget v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$bucketFlags:I

    iget-object v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$heightNed:[D

    iget-object v7, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$heightLlh:[D

    iget-object v8, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->val$samples:Ljava/util/List;

    invoke-static {v6, v2, v3, v7, v8}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->adjustHeight(Ljava/lang/String;I[D[DLjava/util/List;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    move-result-object v3

    .line 870
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    const-string/jumbo v6, "\u5fae\u8c03\u5c0f\u81c2\u540e\u518d\u5fae\u8c03\u94f2\u6597"

    invoke-static {v2, v6, v3}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$mlogSmartCalibSchemeResult(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V

    goto :goto_1

    .line 872
    :cond_1
    const-string/jumbo v2, "\u667a\u80fd\u6821\u51c6\u65b9\u6848[\u5fae\u8c03\u5c0f\u81c2\u540e\u518d\u5fae\u8c03\u94f2\u6597]\u8df3\u8fc7\uff1a\u5c0f\u81c2\u65b9\u6848\u672a\u6210\u529f\uff08\u5df2\u8bb0 ADJUST cmd\uff09"

    invoke-static {v2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 875
    :goto_1
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {v2, v0, v1, v3}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$mpickBestSmartCalibScheme(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    move-result-object v12

    .line 876
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {v2, v12, v0, v1, v3}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$mresolveSchemeResult(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    move-result-object v13

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    if-eqz v0, :cond_2

    .line 877
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v8, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->heightStdev:D

    goto :goto_2

    :cond_2
    move-wide v8, v6

    :goto_2
    if-eqz v1, :cond_3

    .line 878
    invoke-virtual {v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->heightStdev:D

    goto :goto_3

    :cond_3
    move-wide v0, v6

    :goto_3
    if-eqz v3, :cond_4

    .line 879
    invoke-virtual {v3}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v6, v3, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->heightStdev:D

    :cond_4
    move-wide v10, v6

    .line 880
    iget-object v14, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    new-instance v2, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;

    move-object v3, p0

    move-wide v6, v8

    move-wide v8, v0

    invoke-direct/range {v2 .. v13}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9$1;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;DDDDLcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V

    invoke-virtual {v14, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
