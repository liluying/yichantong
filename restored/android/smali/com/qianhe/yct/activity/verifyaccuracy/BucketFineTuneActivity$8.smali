.class Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;
.super Ljava/lang/Object;
.source "BucketFineTuneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->runHeightAdjust()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

.field final synthetic val$adjustFlags:I

.field final synthetic val$calibParams:Ljava/lang/String;

.field final synthetic val$forearmScheme:Z

.field final synthetic val$heightLlh:[D

.field final synthetic val$heightMeters:D

.field final synthetic val$heightNed:[D

.field final synthetic val$samples:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;Ljava/util/List;I[D[DDZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 794
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    iput-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->val$calibParams:Ljava/lang/String;

    iput-object p3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->val$samples:Ljava/util/List;

    iput p4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->val$adjustFlags:I

    iput-object p5, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->val$heightNed:[D

    iput-object p6, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->val$heightLlh:[D

    iput-wide p7, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->val$heightMeters:D

    iput-boolean p9, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->val$forearmScheme:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 797
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->val$calibParams:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->val$samples:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->getHeightStdevBeforeAdjust(Ljava/lang/String;Ljava/util/List;)D

    move-result-wide v0

    .line 799
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    iget v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->val$adjustFlags:I

    invoke-static {v2, v3}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$mrecordAdjustHeightCmd(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;I)V

    .line 800
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->val$calibParams:Ljava/lang/String;

    iget v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->val$adjustFlags:I

    iget-object v4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->val$heightNed:[D

    iget-object v5, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->val$heightLlh:[D

    iget-object v6, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->val$samples:Ljava/util/List;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->adjustHeight(Ljava/lang/String;I[D[DLjava/util/List;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    move-result-object v2

    .line 801
    iget-object v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    new-instance v4, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8$1;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;DLcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
