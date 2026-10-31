.class public Lcom/qianhe/yct/activity/CreateAccountActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "CreateAccountActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private isChinaLanguage:Z

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CreateAccountActivity;)Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisChinaLanguage(Lcom/qianhe/yct/activity/CreateAccountActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->isChinaLanguage:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/activity/CreateAccountActivity;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscheduledFuture(Lcom/qianhe/yct/activity/CreateAccountActivity;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAccountEmptyTip(Lcom/qianhe/yct/activity/CreateAccountActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CreateAccountActivity;->getAccountEmptyTip()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misEmailAccount(Lcom/qianhe/yct/activity/CreateAccountActivity;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/CreateAccountActivity;->isEmailAccount(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misInChinaMainland(Lcom/qianhe/yct/activity/CreateAccountActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CreateAccountActivity;->isInChinaMainland()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstopTimer(Lcom/qianhe/yct/activity/CreateAccountActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CreateAccountActivity;->stopTimer()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/activity/CreateAccountActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private getAccountEmptyTip()Ljava/lang/String;
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CreateAccountActivity;->isInChinaMainland()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->isChinaLanguage:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/qianhe/yct/R$string;->please_enter_phone_or_email:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/qianhe/yct/R$string;->please_enter_email:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isEmailAccount(Ljava/lang/String;)Z
    .locals 1

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\d+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isInChinaMainland()Z
    .locals 8

    .line 74
    const-string v0, ","

    iget-object v1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_0

    iget-wide v6, v1, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    cmpl-double v1, v6, v4

    if-eqz v1, :cond_0

    .line 75
    invoke-static {v2, v3, v6, v7}, Lcom/qianhe/yct/utils/LocationUtils;->isChinaMainland(DD)Z

    move-result v0

    return v0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "current_coords"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 80
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 82
    invoke-static {v0, v1, v4, v5}, Lcom/qianhe/yct/utils/LocationUtils;->isChinaMainland(DD)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v3
.end method

.method private setChineseEnglishOnly(Landroid/widget/EditText;)V
    .locals 3

    .line 100
    new-instance v0, Lcom/qianhe/yct/utils/ChineseEnglishLengthFilter;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/qianhe/yct/utils/ChineseEnglishLengthFilter;-><init>(I)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 101
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private startTimer()V
    .locals 8

    .line 205
    iget-object v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 206
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 207
    new-instance v2, Lcom/qianhe/yct/activity/CreateAccountActivity$3;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/CreateAccountActivity$3;-><init>(Lcom/qianhe/yct/activity/CreateAccountActivity;)V

    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private stopTimer()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;->tvCaptcha:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->captcha:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void
.end method

.method private updateAccountHint()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;->edtAccount:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-direct {p0}, Lcom/qianhe/yct/activity/CreateAccountActivity;->isInChinaMainland()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->isChinaLanguage:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/qianhe/yct/R$string;->please_enter_phone_or_email:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/qianhe/yct/R$string;->please_enter_email:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    return-void
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;->tvCaptcha:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/CreateAccountActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/CreateAccountActivity$1;-><init>(Lcom/qianhe/yct/activity/CreateAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;->tvCreate:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/CreateAccountActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/CreateAccountActivity$2;-><init>(Lcom/qianhe/yct/activity/CreateAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->create_account:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 250
    iget-object v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 49
    const-string v0, ","

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;

    .line 50
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 53
    invoke-static {p0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->isZH(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->isChinaLanguage:Z

    .line 54
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "current_coords"

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    iget-object v1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v1}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 58
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 59
    iget-object v1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 60
    iget-object v1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;->edtName:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/CreateAccountActivity;->setChineseEnglishOnly(Landroid/widget/EditText;)V

    .line 66
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CreateAccountActivity;->updateAccountHint()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 285
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 286
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 287
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CreateAccountActivity;->stopTimer()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/CreateAccountResponse;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 174
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 175
    iget v0, p1, Lcom/qianhe/yct/event/CreateAccountResponse;->state:I

    if-nez v0, :cond_0

    .line 176
    const-string/jumbo p1, "\u8d26\u53f7\u521b\u5efa\u6210\u529f"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 178
    sget p1, Lcom/qianhe/yct/R$string;->logging_in:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;->edtAccount:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/baselib/bean/InsNavi;)V

    return-void

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 183
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/ErrorCodeUtils;->getErrorMsg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    goto :goto_0

    .line 185
    :cond_1
    sget v0, Lcom/qianhe/yct/R$string;->create_failed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 187
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u521b\u5efa\u8d26\u53f7\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qianhe/yct/event/CreateAccountResponse;->msg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/LoginResponse;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 193
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 194
    iget v0, p1, Lcom/qianhe/yct/event/LoginResponse;->state:I

    if-nez v0, :cond_0

    .line 195
    sget p1, Lcom/qianhe/yct/R$string;->login_success:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 196
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 198
    iget-object p1, p1, Lcom/qianhe/yct/event/LoginResponse;->msg:Ljava/lang/String;

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 200
    :cond_1
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/ErrorCodeUtils;->getErrorMsg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/SendCaptchaResponse;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 156
    iget v0, p1, Lcom/qianhe/yct/event/SendCaptchaResponse;->state:I

    if-nez v0, :cond_0

    .line 157
    sget p1, Lcom/qianhe/yct/R$string;->send_success:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CreateAccountActivity;->startTimer()V

    return-void

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CreateAccountActivity;->stopTimer()V

    .line 161
    iget-object v0, p1, Lcom/qianhe/yct/event/SendCaptchaResponse;->msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->isUnknownHostError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 164
    :cond_1
    iget p1, p1, Lcom/qianhe/yct/event/SendCaptchaResponse;->state:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    .line 165
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/ErrorCodeUtils;->getErrorMsg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 167
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
    .locals 2

    .line 268
    iget-object v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    .line 269
    iput-object p1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 270
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CreateAccountActivity;->updateAccountHint()V

    :cond_0
    return-void
.end method
