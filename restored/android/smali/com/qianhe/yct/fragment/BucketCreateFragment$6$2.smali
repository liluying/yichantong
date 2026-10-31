.class Lcom/qianhe/yct/fragment/BucketCreateFragment$6$2;
.super Ljava/lang/Object;
.source "BucketCreateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/fragment/BucketCreateFragment$6;

.field final synthetic val$applyResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

.field final synthetic val$sourceCalibParams:Ljava/lang/String;

.field final synthetic val$toolParam:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/BucketCreateFragment$6;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 848
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$2;->this$1:Lcom/qianhe/yct/fragment/BucketCreateFragment$6;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$2;->val$applyResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    iput-object p3, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$2;->val$sourceCalibParams:Ljava/lang/String;

    iput-object p4, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$2;->val$toolParam:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 851
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$2;->val$applyResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u672c\u5730\u5207\u6362\u94f2\u6597\u5931\u8d25\uff0ccode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$2;->val$applyResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    iget v1, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$2;->this$1:Lcom/qianhe/yct/fragment/BucketCreateFragment$6;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$monBucketSwitchFailed(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    return-void

    .line 856
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v6

    .line 857
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$2;->val$sourceCalibParams:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$2;->val$toolParam:Ljava/lang/String;

    .line 859
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$2;->this$1:Lcom/qianhe/yct/fragment/BucketCreateFragment$6;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$fgetbucket(Lcom/qianhe/yct/fragment/BucketCreateFragment;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$2;->this$1:Lcom/qianhe/yct/fragment/BucketCreateFragment$6;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$fgetbucket(Lcom/qianhe/yct/fragment/BucketCreateFragment;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$2;->this$1:Lcom/qianhe/yct/fragment/BucketCreateFragment$6;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$fgetmLatestGga(Lcom/qianhe/yct/fragment/BucketCreateFragment;)Lcom/qianhe/baselib/bean/GGAEntity;

    move-result-object v4

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$2;->this$1:Lcom/qianhe/yct/fragment/BucketCreateFragment$6;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$fgetmLatestIns(Lcom/qianhe/yct/fragment/BucketCreateFragment;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v5

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$2;->this$1:Lcom/qianhe/yct/fragment/BucketCreateFragment$6;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    .line 860
    invoke-static {v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$mheadingError(Lcom/qianhe/yct/fragment/BucketCreateFragment;)Ljava/lang/Double;

    move-result-object v7

    .line 857
    invoke-static/range {v1 .. v7}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordBucketSwitchApply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 861
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$2;->this$1:Lcom/qianhe/yct/fragment/BucketCreateFragment$6;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$2;->val$applyResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    iget-object v1, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$monLocalSwitchSuccess(Lcom/qianhe/yct/fragment/BucketCreateFragment;Ljava/lang/String;)V

    return-void
.end method
