.class Lcom/qianhe/yct/activity/RTKInfoActivity$15;
.super Ljava/lang/Object;
.source "RTKInfoActivity.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/RTKInfoActivity;->createUploadLogCallback(I)Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

.field final synthetic val$session:I


# direct methods
.method public static synthetic $r8$lambda$EQrC8kYIIKcdReSfcoYUOXwtzk0(Lcom/qianhe/yct/activity/RTKInfoActivity$15;I)V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$15;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    .line 451
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$15;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$fgetlogUploadSession(Lcom/qianhe/yct/activity/RTKInfoActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$15;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$fgetlogUploadLoadingDismissed(Lcom/qianhe/yct/activity/RTKInfoActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$15;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$fputlogUploadFinished(Lcom/qianhe/yct/activity/RTKInfoActivity;Z)V

    .line 453
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$15;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-virtual {p1}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 454
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$15;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    sget v0, Lcom/qianhe/yct/R$string;->log_upload_successful:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$15;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$qLt7jj5dY4J6Wc7sVY3xdRllR9c(Lcom/qianhe/yct/activity/RTKInfoActivity$15;ILjava/lang/String;)V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$15;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    .line 441
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$15;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$fgetlogUploadSession(Lcom/qianhe/yct/activity/RTKInfoActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$15;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$fgetlogUploadLoadingDismissed(Lcom/qianhe/yct/activity/RTKInfoActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 442
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$15;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$fputlogUploadFinished(Lcom/qianhe/yct/activity/RTKInfoActivity;Z)V

    .line 443
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$15;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-virtual {p1}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 444
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$15;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$15;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    sget v2, Lcom/qianhe/yct/R$string;->log_upload_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$15;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method constructor <init>(Lcom/qianhe/yct/activity/RTKInfoActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 437
    iput-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$15;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    iput p2, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$15;->val$session:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 2

    .line 440
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$15;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    iget v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$15;->val$session:I

    new-instance v1, Lcom/qianhe/yct/activity/RTKInfoActivity$15$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p2}, Lcom/qianhe/yct/activity/RTKInfoActivity$15$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity$15;ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2

    .line 450
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$15;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    iget v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$15;->val$session:I

    new-instance v1, Lcom/qianhe/yct/activity/RTKInfoActivity$15$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/qianhe/yct/activity/RTKInfoActivity$15$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity$15;I)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
