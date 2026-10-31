.class public Lcom/qianhe/yct/activity/ModifyInfoActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "ModifyInfoActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private isChinaLanguage:Z

.field private mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

.field private scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisChinaLanguage(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->isChinaLanguage:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscheduledFuture(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lcom/qianhe/yct/activity/ModifyInfoActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->type:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mstopTimer(Lcom/qianhe/yct/activity/ModifyInfoActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->stopTimer()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    return-void
.end method

.method private isPhoneAccount(Ljava/lang/String;)Z
    .locals 1

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\d+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setChineseEnglishOnly(Landroid/widget/EditText;)V
    .locals 3

    .line 187
    new-instance v0, Lcom/qianhe/yct/utils/ChineseEnglishLengthFilter;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/qianhe/yct/utils/ChineseEnglishLengthFilter;-><init>(I)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 188
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private startTimer()V
    .locals 8

    .line 231
    iget-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 232
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 233
    new-instance v2, Lcom/qianhe/yct/activity/ModifyInfoActivity$4;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/ModifyInfoActivity$4;-><init>(Lcom/qianhe/yct/activity/ModifyInfoActivity;)V

    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private stopTimer()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->tvCaptcha:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->captcha:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->tvSwitchMethod:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/ModifyInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ModifyInfoActivity$1;-><init>(Lcom/qianhe/yct/activity/ModifyInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->tvCaptcha:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/ModifyInfoActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ModifyInfoActivity$2;-><init>(Lcom/qianhe/yct/activity/ModifyInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->tvConfirm:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ModifyInfoActivity$3;-><init>(Lcom/qianhe/yct/activity/ModifyInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->edtName:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->setChineseEnglishOnly(Landroid/widget/EditText;)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget v1, Lcom/qianhe/yct/R$string;->modify_name:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget v1, Lcom/qianhe/yct/R$string;->modify_phone:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/qianhe/yct/R$string;->modify_password:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 272
    iget-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    .line 56
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 59
    invoke-static {p0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->isZH(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->isChinaLanguage:Z

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 62
    const-string v0, "modify_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 64
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltName:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 66
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltPhone:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltCaptcha:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltSend:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltPassword:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 71
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltPassword:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltNewPassword:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/db/UserSession;->getAccount()Ljava/lang/String;

    move-result-object p1

    .line 74
    iget-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->tvSwitchMethod:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->isPhoneAccount(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->edtName:Landroid/widget/EditText;

    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 304
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 305
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 306
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->stopTimer()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/ModifyResponse;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 193
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 194
    iget p1, p1, Lcom/qianhe/yct/event/ModifyResponse;->state:I

    if-nez p1, :cond_2

    .line 195
    sget p1, Lcom/qianhe/yct/R$string;->modify_success:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 196
    iget p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 197
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/db/UserSession;->updateName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 199
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->edtAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/db/UserSession;->updateAccount(Ljava/lang/String;)V

    .line 201
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    .line 204
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/ErrorCodeUtils;->getErrorMsg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 206
    :cond_3
    sget p1, Lcom/qianhe/yct/R$string;->modify_fail:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/SendCaptchaResponse;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 213
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 214
    iget v0, p1, Lcom/qianhe/yct/event/SendCaptchaResponse;->state:I

    if-nez v0, :cond_0

    .line 215
    sget p1, Lcom/qianhe/yct/R$string;->send_success:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 216
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->startTimer()V

    return-void

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->stopTimer()V

    .line 219
    iget-object v0, p1, Lcom/qianhe/yct/event/SendCaptchaResponse;->msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->isUnknownHostError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 222
    :cond_1
    iget p1, p1, Lcom/qianhe/yct/event/SendCaptchaResponse;->state:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    .line 223
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/ErrorCodeUtils;->getErrorMsg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 225
    :cond_2
    sget p1, Lcom/qianhe/yct/R$string;->send_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 0

    .line 0
    return-void
.end method
