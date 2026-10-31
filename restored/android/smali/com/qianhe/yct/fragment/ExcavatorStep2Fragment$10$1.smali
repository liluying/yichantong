.class Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10$1;
.super Ljava/lang/Object;
.source "ExcavatorStep2Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;

.field final synthetic val$result:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 656
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10$1;->val$result:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 659
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->access$1800(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V

    .line 660
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10$1;->val$result:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 661
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 662
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10$1;->val$result:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    iget-object v1, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;

    iget-boolean v0, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->val$comboCreate:Z

    if-eqz v0, :cond_2

    .line 666
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->clearReuseBucketInput()V

    .line 668
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$mrecordStep2ToolEvents(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V

    .line 669
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->tvContinue:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->access$1900(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Landroid/view/View;)V

    return-void

    .line 671
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->tvContinue:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->access$2000(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Landroid/view/View;)V

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u751f\u6210\u94f2\u6597\u53c2\u6570\u5931\u8d25\uff0ccode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10$1;->val$result:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    iget v1, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->shovel_parameter_generation_failed:I

    .line 674
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;

    iget-object v2, v2, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    .line 675
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 673
    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
