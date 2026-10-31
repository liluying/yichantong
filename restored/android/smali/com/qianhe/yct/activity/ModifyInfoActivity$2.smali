.class Lcom/qianhe/yct/activity/ModifyInfoActivity$2;
.super Ljava/lang/Object;
.source "ModifyInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ModifyInfoActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ModifyInfoActivity;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$2;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 101
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$2;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->edtAccount:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$2;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetisChinaLanguage(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$2;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    sget v0, Lcom/qianhe/yct/R$string;->please_enter_phone_or_email:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 104
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$2;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    sget v0, Lcom/qianhe/yct/R$string;->please_enter_email:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$2;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetscheduledFuture(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$2;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetscheduledFuture(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 108
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$2;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    sget v1, Lcom/qianhe/yct/R$string;->sending:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->sendCaptcha(Ljava/lang/String;)V

    return-void
.end method
