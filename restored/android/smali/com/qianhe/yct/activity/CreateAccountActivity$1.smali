.class Lcom/qianhe/yct/activity/CreateAccountActivity$1;
.super Ljava/lang/Object;
.source "CreateAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/CreateAccountActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/CreateAccountActivity;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$1;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 109
    iget-object p1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$1;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CreateAccountActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CreateAccountActivity;)Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;->edtAccount:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object p1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$1;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CreateAccountActivity;->-$$Nest$mgetAccountEmptyTip(Lcom/qianhe/yct/activity/CreateAccountActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$1;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CreateAccountActivity;->-$$Nest$misInChinaMainland(Lcom/qianhe/yct/activity/CreateAccountActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$1;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CreateAccountActivity;->-$$Nest$fgetisChinaLanguage(Lcom/qianhe/yct/activity/CreateAccountActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$1;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/CreateAccountActivity;->-$$Nest$misEmailAccount(Lcom/qianhe/yct/activity/CreateAccountActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    iget-object p1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$1;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    sget v0, Lcom/qianhe/yct/R$string;->please_enter_email:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$1;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CreateAccountActivity;->-$$Nest$fgetscheduledFuture(Lcom/qianhe/yct/activity/CreateAccountActivity;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$1;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CreateAccountActivity;->-$$Nest$fgetscheduledFuture(Lcom/qianhe/yct/activity/CreateAccountActivity;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return-void

    .line 115
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$1;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    sget v1, Lcom/qianhe/yct/R$string;->sending:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->sendCaptcha(Ljava/lang/String;)V

    return-void
.end method
