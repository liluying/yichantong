.class Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$7;
.super Ljava/lang/Object;
.source "VerifyAccuracyActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$OnHeightConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->createFineTuneHeightConfirmListener()Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$OnHeightConfirmListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V
    .locals 0

    .line 1066
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .line 0
    return-void
.end method

.method public onConfirm(DDDZ)V
    .locals 4

    .line 1069
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-static {v0, p1, p2}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$fputmReferenceHeightMeters(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;D)V

    .line 1070
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz p7, :cond_0

    cmpl-double p7, p1, v2

    if-eqz p7, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$fputmHasReferenceLlh(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Z)V

    .line 1071
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$fgetmHasReferenceLlh(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1072
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-static {p1, p3, p4}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$fputmReferenceLon(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;D)V

    .line 1073
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-static {p1, p5, p6}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$fputmReferenceLat(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;D)V

    goto :goto_1

    .line 1075
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    const-wide/high16 p2, 0x7ff8000000000000L    # Double.NaN

    invoke-static {p1, p2, p3}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$fputmReferenceLon(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;D)V

    .line 1076
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-static {p1, p2, p3}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$fputmReferenceLat(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;D)V

    .line 1078
    :goto_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-static {p1, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$fputmHeightInputReady(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Z)V

    .line 1079
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$fgetmHasReferenceLlh(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)Z

    move-result p1

    const-string/jumbo p2, "\u7cbe\u51c6\u6821\u51c6\u53c2\u8003\u9ad8\u7a0b(\u7c73)\uff1a"

    if-eqz p1, :cond_2

    .line 1080
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$fgetmReferenceHeightMeters(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "\uff0c\u7ecf\u7eac\u9ad8\uff1alon="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$fgetmReferenceLon(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ",lat="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$fgetmReferenceLat(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ",h="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$fgetmReferenceHeightMeters(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 1084
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$fgetmReferenceHeightMeters(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1085
    iget-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$7;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$fgetmReferenceHeightMeters(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)D

    move-result-wide p2

    cmpl-double p4, p2, v2

    if-nez p4, :cond_3

    const-string/jumbo p2, "\uff08\u65e0\u6709\u6548\u9ad8\u7a0b\uff09"

    goto :goto_2

    :cond_3
    const-string/jumbo p2, "\uff08\u624b\u52a8\u8f93\u5165\uff0c\u65e0\u7ecf\u7eac\uff09"

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1084
    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void
.end method
