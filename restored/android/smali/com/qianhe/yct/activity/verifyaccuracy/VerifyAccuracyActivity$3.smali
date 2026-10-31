.class Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$3;
.super Ljava/lang/Object;
.source "VerifyAccuracyActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->showNextStateAfterCalibrateAutoClose()V
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

    .line 512
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$3;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 521
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$3;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$monCalibrateDialogClosed(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Z)V

    return-void

    .line 523
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$3;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$mshowNextStateAfterCalibrateAutoClose(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    return-void
.end method

.method public synthetic onClose(ZZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener$-CC;->$default$onClose(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;ZZ)V

    return-void
.end method

.method public onConfirm()V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$3;->this$0:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->-$$Nest$monCalibrateDialogClosed(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Z)V

    return-void
.end method
