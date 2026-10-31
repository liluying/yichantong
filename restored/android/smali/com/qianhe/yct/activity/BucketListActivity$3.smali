.class Lcom/qianhe/yct/activity/BucketListActivity$3;
.super Ljava/lang/Object;
.source "BucketListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/BucketListActivity;->startLocalBucketSwitch(Lcom/qianhe/baselib/bean/ShovelEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/BucketListActivity;

.field final synthetic val$bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

.field final synthetic val$calibParams:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/BucketListActivity;Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$3;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    iput-object p2, p0, Lcom/qianhe/yct/activity/BucketListActivity$3;->val$bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iput-object p3, p0, Lcom/qianhe/yct/activity/BucketListActivity$3;->val$calibParams:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 277
    iget-object v3, p0, Lcom/qianhe/yct/activity/BucketListActivity$3;->val$bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 278
    iget-object v0, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    invoke-static {v3}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->makeToolParam(Lcom/qianhe/baselib/bean/ShovelEntity;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity$3;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    sget v2, Lcom/qianhe/yct/R$string;->shovel_parameter_generation_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->code:I

    invoke-static {v1, v2, v0}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$mpostSwitchFailed(Lcom/qianhe/yct/activity/BucketListActivity;Ljava/lang/String;I)V

    return-void

    .line 284
    :cond_0
    iget-object v0, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    iput-object v0, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 285
    iget-wide v0, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    .line 286
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$3;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetdatabaseManager(Lcom/qianhe/yct/activity/BucketListActivity;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/qianhe/yct/db/DatabaseManager;->updateShovelById(Lcom/qianhe/baselib/bean/ShovelEntity;)I

    .line 287
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$3;->val$calibParams:Ljava/lang/String;

    iget-object v1, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->applyTool(Ljava/lang/String;Ljava/lang/String;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object v2

    .line 292
    iget-object v5, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 293
    iget-object v4, p0, Lcom/qianhe/yct/activity/BucketListActivity$3;->val$calibParams:Ljava/lang/String;

    .line 294
    iget-object v6, p0, Lcom/qianhe/yct/activity/BucketListActivity$3;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    new-instance v0, Lcom/qianhe/yct/activity/BucketListActivity$3$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/activity/BucketListActivity$3$1;-><init>(Lcom/qianhe/yct/activity/BucketListActivity$3;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
