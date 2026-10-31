.class Lcom/qianhe/yct/fragment/BucketCreateFragment$6$1;
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

.field final synthetic val$toolResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/BucketCreateFragment$6;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 824
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$1;->this$1:Lcom/qianhe/yct/fragment/BucketCreateFragment$6;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$1;->val$toolResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 827
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$1;->this$1:Lcom/qianhe/yct/fragment/BucketCreateFragment$6;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$fputwaitingSwitchBeforeSave(Lcom/qianhe/yct/fragment/BucketCreateFragment;Z)V

    .line 828
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$1;->this$1:Lcom/qianhe/yct/fragment/BucketCreateFragment$6;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {v0, v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$fputwaitingSetParam(Lcom/qianhe/yct/fragment/BucketCreateFragment;Z)V

    .line 829
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$1;->this$1:Lcom/qianhe/yct/fragment/BucketCreateFragment$6;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {v0, v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$fputawaitBucketSwitchLogEnd(Lcom/qianhe/yct/fragment/BucketCreateFragment;Z)V

    .line 830
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$1;->this$1:Lcom/qianhe/yct/fragment/BucketCreateFragment$6;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->access$000(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u672c\u5730\u751f\u6210\u94f2\u6597\u53c2\u6570\u5931\u8d25\uff0ccode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$1;->val$toolResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    iget v1, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$1;->this$1:Lcom/qianhe/yct/fragment/BucketCreateFragment$6;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$fgetcurrentExcavator(Lcom/qianhe/yct/fragment/BucketCreateFragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$1;->this$1:Lcom/qianhe/yct/fragment/BucketCreateFragment$6;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$fgetbucket(Lcom/qianhe/yct/fragment/BucketCreateFragment;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->endBucketSwitchFailed(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 833
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$1;->this$1:Lcom/qianhe/yct/fragment/BucketCreateFragment$6;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$1;->this$1:Lcom/qianhe/yct/fragment/BucketCreateFragment$6;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    sget v2, Lcom/qianhe/yct/R$string;->shovel_parameter_generation_failed:I

    .line 834
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$1;->this$1:Lcom/qianhe/yct/fragment/BucketCreateFragment$6;

    iget-object v2, v2, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    .line 835
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 833
    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
