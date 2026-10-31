.class Lcom/qianhe/yct/fragment/BucketCreateFragment$6;
.super Ljava/lang/Object;
.source "BucketCreateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/BucketCreateFragment;->startLocalBucketSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

.field final synthetic val$calibParams:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 815
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->val$calibParams:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 818
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$fgetbucket(Lcom/qianhe/yct/fragment/BucketCreateFragment;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$fgetuseAutoGenerateParams(Lcom/qianhe/yct/fragment/BucketCreateFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$fgetbucket(Lcom/qianhe/yct/fragment/BucketCreateFragment;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->makeToolParam(Lcom/qianhe/baselib/bean/ShovelEntity;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object v0

    .line 820
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_2

    .line 821
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 824
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$1;

    invoke-direct {v2, p0, v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$1;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment$6;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 840
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$fgetbucket(Lcom/qianhe/yct/fragment/BucketCreateFragment;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v1

    iget-object v0, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 842
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->val$calibParams:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$fgetbucket(Lcom/qianhe/yct/fragment/BucketCreateFragment;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->applyTool(Ljava/lang/String;Ljava/lang/String;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object v0

    .line 843
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$fgetbucket(Lcom/qianhe/yct/fragment/BucketCreateFragment;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 844
    iget-object v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->val$calibParams:Ljava/lang/String;

    .line 845
    iget-object v3, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_4

    :goto_0
    return-void

    .line 848
    :cond_4
    iget-object v3, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$2;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment$6$2;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment$6;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
