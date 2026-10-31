.class public Lcom/qianhe/yct/activity/UserLoginActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "UserLoginActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private isChinaLanguage:Z

.field private loginType:I

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private sendMsg:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/UserLoginActivity;)Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetloginType(Lcom/qianhe/yct/activity/UserLoginActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->loginType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/activity/UserLoginActivity;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscheduledFuture(Lcom/qianhe/yct/activity/UserLoginActivity;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmINS(Lcom/qianhe/yct/activity/UserLoginActivity;Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsendMsg(Lcom/qianhe/yct/activity/UserLoginActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->sendMsg:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopTimer(Lcom/qianhe/yct/activity/UserLoginActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/UserLoginActivity;->stopTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchToCaptchaLogin(Lcom/qianhe/yct/activity/UserLoginActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/UserLoginActivity;->switchToCaptchaLogin()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchToPasswordLogin(Lcom/qianhe/yct/activity/UserLoginActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/UserLoginActivity;->switchToPasswordLogin(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLoginUi(Lcom/qianhe/yct/activity/UserLoginActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/UserLoginActivity;->updateLoginUi()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvalidateAccountInput(Lcom/qianhe/yct/activity/UserLoginActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/UserLoginActivity;->validateAccountInput()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->loginType:I

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/activity/UserLoginActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private isInChinaMainland()Z
    .locals 8

    .line 85
    const-string v0, ","

    iget-object v1, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_0

    iget-wide v6, v1, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    cmpl-double v1, v6, v4

    if-eqz v1, :cond_0

    .line 86
    invoke-static {v2, v3, v6, v7}, Lcom/qianhe/yct/utils/LocationUtils;->isChinaMainland(DD)Z

    move-result v0

    return v0

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "current_coords"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 91
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 93
    invoke-static {v0, v1, v4, v5}, Lcom/qianhe/yct/utils/LocationUtils;->isChinaMainland(DD)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v3
.end method

.method private isPhoneAccount(Ljava/lang/String;)Z
    .locals 1

    .line 102
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

.method private startTimer()V
    .locals 8

    .line 314
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 315
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 316
    new-instance v2, Lcom/qianhe/yct/activity/UserLoginActivity$6;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/UserLoginActivity$6;-><init>(Lcom/qianhe/yct/activity/UserLoginActivity;)V

    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private stopTimer()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->tvCaptcha:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->captcha:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void
.end method

.method private switchToCaptchaLogin()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->edtAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/UserLoginActivity;->isPhoneAccount(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    sget v0, Lcom/qianhe/yct/R$string;->email_login_password_only:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 138
    iput v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->loginType:I

    .line 139
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->tvSwitchMethod:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->switch_password_login:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->edtPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->lltSend:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->lltCaptcha:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->lltPassword:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->edtAccount:Landroid/widget/EditText;

    sget v1, Lcom/qianhe/yct/R$string;->please_enter_phone:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    return-void
.end method

.method private switchToPasswordLogin(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->loginType:I

    .line 121
    iget-object v1, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->tvSwitchMethod:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->switch_verification_code_login:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->edtCaptcha:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->lltSend:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->lltCaptcha:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->lltPassword:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-direct {p0}, Lcom/qianhe/yct/activity/UserLoginActivity;->stopTimer()V

    .line 127
    invoke-direct {p0}, Lcom/qianhe/yct/activity/UserLoginActivity;->isInChinaMainland()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->isChinaLanguage:Z

    if-eqz p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->edtAccount:Landroid/widget/EditText;

    sget v0, Lcom/qianhe/yct/R$string;->please_enter_phone_or_email:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(I)V

    :cond_1
    return-void
.end method

.method private updateLoginUi()V
    .locals 5

    .line 106
    invoke-direct {p0}, Lcom/qianhe/yct/activity/UserLoginActivity;->isInChinaMainland()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->isChinaLanguage:Z

    if-nez v0, :cond_0

    goto :goto_3

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->edtAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/UserLoginActivity;->isPhoneAccount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 112
    :goto_1
    iget-object v2, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->tvSwitchMethod:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez v0, :cond_4

    .line 113
    iget v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->loginType:I

    if-ne v0, v4, :cond_4

    .line 114
    invoke-direct {p0, v4}, Lcom/qianhe/yct/activity/UserLoginActivity;->switchToPasswordLogin(Z)V

    .line 116
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->edtAccount:Landroid/widget/EditText;

    iget v1, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->loginType:I

    if-ne v1, v4, :cond_5

    sget v1, Lcom/qianhe/yct/R$string;->please_enter_phone:I

    goto :goto_2

    :cond_5
    sget v1, Lcom/qianhe/yct/R$string;->please_enter_phone_or_email:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    return-void

    .line 107
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->tvSwitchMethod:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private validateAccountInput()Z
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->edtAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 150
    invoke-direct {p0}, Lcom/qianhe/yct/activity/UserLoginActivity;->isInChinaMainland()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->isChinaLanguage:Z

    if-eqz v0, :cond_1

    .line 151
    iget v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->loginType:I

    if-ne v0, v3, :cond_0

    sget v0, Lcom/qianhe/yct/R$string;->please_enter_phone:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/qianhe/yct/R$string;->please_enter_phone_or_email:I

    .line 152
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    goto :goto_1

    .line 154
    :cond_1
    sget v0, Lcom/qianhe/yct/R$string;->please_enter_email:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    :goto_1
    return v2

    .line 158
    :cond_2
    iget v1, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->loginType:I

    if-ne v1, v3, :cond_3

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/UserLoginActivity;->isPhoneAccount(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 159
    sget v0, Lcom/qianhe/yct/R$string;->captcha_login_requires_phone:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return v2

    :cond_3
    return v3
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->tvCreate:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/UserLoginActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/UserLoginActivity$1;-><init>(Lcom/qianhe/yct/activity/UserLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->tvSwitchMethod:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/UserLoginActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/UserLoginActivity$2;-><init>(Lcom/qianhe/yct/activity/UserLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->edtAccount:Landroid/widget/EditText;

    new-instance v1, Lcom/qianhe/yct/activity/UserLoginActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/UserLoginActivity$3;-><init>(Lcom/qianhe/yct/activity/UserLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 197
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->tvCaptcha:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/UserLoginActivity$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/UserLoginActivity$4;-><init>(Lcom/qianhe/yct/activity/UserLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->tvLogin:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/UserLoginActivity$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/UserLoginActivity$5;-><init>(Lcom/qianhe/yct/activity/UserLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->login:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 355
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 309
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 310
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->clearPendingClipShareCode()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 59
    const-string v0, ","

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    .line 60
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 63
    invoke-static {p0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->isZH(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->isChinaLanguage:Z

    .line 64
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "current_coords"

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    iget-object v1, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v1}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 68
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 69
    iget-object v1, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 70
    iget-object v1, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    :cond_0
    :goto_0
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->tvLogin:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/qianhe/yct/R$string;->logout:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/qianhe/yct/R$string;->login:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->edtAccount:Landroid/widget/EditText;

    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/db/UserSession;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->edtAccount:Landroid/widget/EditText;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->lltPassword:Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 v2, 0x8

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->edtAccount:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/qianhe/yct/activity/UserLoginActivity;->isInChinaMainland()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->isChinaLanguage:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/qianhe/yct/R$string;->please_enter_phone_or_email:I

    goto :goto_2

    :cond_3
    sget v0, Lcom/qianhe/yct/R$string;->please_enter_email:I

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(I)V

    .line 81
    invoke-direct {p0}, Lcom/qianhe/yct/activity/UserLoginActivity;->updateLoginUi()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 389
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 390
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 391
    invoke-direct {p0}, Lcom/qianhe/yct/activity/UserLoginActivity;->stopTimer()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/LoginResponse;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 265
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 266
    iget v0, p1, Lcom/qianhe/yct/event/LoginResponse;->state:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 267
    sget p1, Lcom/qianhe/yct/R$string;->login_success:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 268
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->getRtkInfo()Lcom/qianhe/rtkclientlib/event/RtkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 269
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/RtkInfo;->firmwareVersion:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->notifyUsedDevice(Ljava/lang/String;)V

    .line 270
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/application/YCTApplication;->setSynDataFlag(Z)V

    .line 271
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->prepareCurrentEngineeringForCoordConvert(Landroid/content/Context;)V

    .line 272
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/qianhe/yct/activity/UserManageActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 274
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    .line 276
    iget-object v0, p1, Lcom/qianhe/yct/event/LoginResponse;->msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->isUnknownHostError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p1, Lcom/qianhe/yct/event/LoginResponse;->msg:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "ConnectException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 280
    sget p1, Lcom/qianhe/yct/R$string;->connect_server_failed_retry:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 282
    :cond_3
    iget-object p1, p1, Lcom/qianhe/yct/event/LoginResponse;->msg:Ljava/lang/String;

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_4
    const/4 v2, -0x2

    if-ne v0, v2, :cond_7

    .line 285
    iget-object v0, p1, Lcom/qianhe/yct/event/LoginResponse;->msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->isUnknownHostError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_0
    return-void

    .line 288
    :cond_5
    iget-object v0, p1, Lcom/qianhe/yct/event/LoginResponse;->msg:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string/jumbo v1, "timeout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 289
    sget p1, Lcom/qianhe/yct/R$string;->login_timeout:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 291
    :cond_6
    iget-object p1, p1, Lcom/qianhe/yct/event/LoginResponse;->msg:Ljava/lang/String;

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 294
    :cond_7
    iget v2, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->loginType:I

    if-ne v2, v1, :cond_9

    .line 295
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->edtCaptcha:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 297
    sget p1, Lcom/qianhe/yct/R$string;->phone_or_captcha_error:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 299
    :cond_8
    iget p1, p1, Lcom/qianhe/yct/event/LoginResponse;->state:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/ErrorCodeUtils;->getErrorMsg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 302
    :cond_9
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/ErrorCodeUtils;->getErrorMsg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/SendCaptchaResponse;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 243
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->sendMsg:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->sendMsg:Z

    .line 245
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 246
    iget v0, p1, Lcom/qianhe/yct/event/SendCaptchaResponse;->state:I

    if-nez v0, :cond_0

    .line 247
    sget p1, Lcom/qianhe/yct/R$string;->send_success:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/qianhe/yct/activity/UserLoginActivity;->startTimer()V

    return-void

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/UserLoginActivity;->stopTimer()V

    .line 251
    iget-object v0, p1, Lcom/qianhe/yct/event/SendCaptchaResponse;->msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->isUnknownHostError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 254
    :cond_1
    iget p1, p1, Lcom/qianhe/yct/event/SendCaptchaResponse;->state:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    .line 255
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/ErrorCodeUtils;->getErrorMsg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 257
    :cond_2
    sget p1, Lcom/qianhe/yct/R$string;->send_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 2

    .line 372
    iget-object v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    .line 373
    iput-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 374
    invoke-direct {p0}, Lcom/qianhe/yct/activity/UserLoginActivity;->updateLoginUi()V

    :cond_0
    return-void
.end method
