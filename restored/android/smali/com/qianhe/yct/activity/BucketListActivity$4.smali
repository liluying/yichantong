.class Lcom/qianhe/yct/activity/BucketListActivity$4;
.super Ljava/lang/Object;
.source "BucketListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/BucketListActivity;->postSwitchFailed(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/BucketListActivity;

.field final synthetic val$code:I


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/BucketListActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 322
    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$4;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    iput p2, p0, Lcom/qianhe/yct/activity/BucketListActivity$4;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$4;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$4;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u672c\u5730\u751f\u6210\u94f2\u6597\u53c2\u6570\u5931\u8d25\uff0ccode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/yct/activity/BucketListActivity$4;->val$code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$4;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetmCurrentExcavator(Lcom/qianhe/yct/activity/BucketListActivity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity$4;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetselectShovelEntity(Lcom/qianhe/yct/activity/BucketListActivity;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->endBucketSwitchFailed(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 331
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$4;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fputswitchingBucket(Lcom/qianhe/yct/activity/BucketListActivity;Z)V

    .line 332
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$4;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$mshowSwitchConfigFailedDialog(Lcom/qianhe/yct/activity/BucketListActivity;)V

    .line 333
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$4;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fputselectShovelEntity(Lcom/qianhe/yct/activity/BucketListActivity;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    return-void
.end method
