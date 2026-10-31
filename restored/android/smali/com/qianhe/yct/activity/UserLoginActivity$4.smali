.class Lcom/qianhe/yct/activity/UserLoginActivity$4;
.super Ljava/lang/Object;
.source "UserLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/UserLoginActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/UserLoginActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/UserLoginActivity;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity$4;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 200
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity$4;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/UserLoginActivity;->-$$Nest$mvalidateAccountInput(Lcom/qianhe/yct/activity/UserLoginActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity$4;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/UserLoginActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/UserLoginActivity;)Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->edtAccount:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 202
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity$4;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/UserLoginActivity;->-$$Nest$fgetscheduledFuture(Lcom/qianhe/yct/activity/UserLoginActivity;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity$4;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/UserLoginActivity;->-$$Nest$fgetscheduledFuture(Lcom/qianhe/yct/activity/UserLoginActivity;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 203
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity$4;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/UserLoginActivity;->-$$Nest$fputsendMsg(Lcom/qianhe/yct/activity/UserLoginActivity;Z)V

    .line 204
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity$4;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    sget v1, Lcom/qianhe/yct/R$string;->sending:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->sendCaptcha(Ljava/lang/String;)V

    return-void
.end method
