.class Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7$1;
.super Ljava/lang/Object;
.source "ExcavatorStep4Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;

.field final synthetic val$result:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7$1;->val$result:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 339
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->access$1600(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)V

    .line 340
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7$1;->val$result:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7$1;->val$result:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    iget-object v1, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$monLocalCalibrationSuccess(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;Ljava/lang/String;)V

    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$msetContinueProcessing(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;Z)V

    .line 345
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->clearAwaitSetParamReply()V

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6316\u673a\u6821\u51c6\u5931\u8d25\uff0ccode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7$1;->val$result:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    iget v1, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->calibration_failed_check_unit_or_params:I

    .line 348
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;

    iget-object v2, v2, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    .line 349
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 347
    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
