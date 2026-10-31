.class Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;
.super Ljava/lang/Object;
.source "BucketFineTuneActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$OnHeightConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->showFineTuneHeightDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

.field final synthetic val$hadConfirmedHeight:Z

.field final synthetic val$proceedToCollectAfterConfirm:Z


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 561
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    iput-boolean p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->val$proceedToCollectAfterConfirm:Z

    iput-boolean p3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->val$hadConfirmedHeight:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 591
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->val$hadConfirmedHeight:Z

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputmHeightInputReady(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Z)V

    :cond_0
    return-void
.end method

.method public onConfirm(DDDZ)V
    .locals 5

    .line 564
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {v0, p1, p2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputmReferenceHeightMeters(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;D)V

    .line 565
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-eqz p7, :cond_0

    cmpl-double p7, p1, v3

    if-eqz p7, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputmHasReferenceLlh(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Z)V

    .line 566
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fgetmHasReferenceLlh(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 567
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {p1, p3, p4}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputmReferenceLon(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;D)V

    .line 568
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {p1, p5, p6}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputmReferenceLat(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;D)V

    goto :goto_1

    .line 570
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    const-wide/high16 p2, 0x7ff8000000000000L    # Double.NaN

    invoke-static {p1, p2, p3}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputmReferenceLon(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;D)V

    .line 571
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {p1, p2, p3}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputmReferenceLat(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;D)V

    .line 573
    :goto_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {p1, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputmHeightInputReady(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Z)V

    .line 574
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fgetmHasReferenceLlh(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)Z

    move-result p1

    const-string/jumbo p2, "\u5fae\u8c03\u53c2\u8003\u9ad8\u7a0b(\u7c73)\uff1a"

    if-eqz p1, :cond_2

    .line 575
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fgetmReferenceHeightMeters(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "\uff0c\u7ecf\u7eac\u9ad8\uff1alon="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fgetmReferenceLon(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ",lat="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fgetmReferenceLat(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ",h="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fgetmReferenceHeightMeters(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    goto :goto_3

    .line 577
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fgetmReferenceHeightMeters(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fgetmReferenceHeightMeters(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)D

    move-result-wide p2

    cmpl-double p4, p2, v3

    if-nez p4, :cond_3

    const-string/jumbo p2, "\uff08\u65e0\u6709\u6548\u9ad8\u7a0b\uff09"

    goto :goto_2

    :cond_3
    const-string/jumbo p2, "\uff08\u624b\u52a8\u8f93\u5165\uff0c\u65e0\u7ecf\u7eac\uff09"

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 579
    :goto_3
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->val$proceedToCollectAfterConfirm:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$misHostInstallAngleFineTune(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return-void

    .line 581
    :cond_5
    :goto_4
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->val$proceedToCollectAfterConfirm:Z

    if-eqz p1, :cond_6

    .line 582
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {p1, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$fputmCurrentStep(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;I)V

    .line 584
    :cond_6
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->-$$Nest$mupdateStepUi(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)V

    return-void
.end method
