.class public Lcom/qianhe/yct/activity/UserManageActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "UserManageActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

.field private savedInstanceState:Landroid/os/Bundle;


# direct methods
.method static bridge synthetic -$$Nest$mperformLogout(Lcom/qianhe/yct/activity/UserManageActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/UserManageActivity;->performLogout(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    return-void
.end method

.method private isPhoneAccount(Ljava/lang/String;)Z
    .locals 1

    .line 122
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

.method private maskAccount(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 179
    :cond_0
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "****"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 182
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    return-object p1

    .line 186
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private performLogout(Ljava/lang/String;)V
    .locals 3

    .line 131
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->setSynDataFlag(Z)V

    .line 132
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/qh/yctdevice/YctDevice;->notifyUserLogged(J)V

    .line 133
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->invalidateEngineeringCache()V

    .line 134
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->clearLocalLoginInfo()V

    .line 135
    sget v0, Lcom/qianhe/yct/R$string;->logout_success:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 138
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->logout(ILjava/lang/String;)V

    return-void
.end method

.method private updateModifyPhoneVisibility()V
    .locals 2

    .line 126
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/qianhe/yct/activity/UserManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->tvModifyPhone:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/UserManageActivity;->isPhoneAccount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

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

    .line 254
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 0

    .line 0
    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->user_management:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 264
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/UserManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

    .line 50
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 52
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->tvGotoLogin:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/UserManageActivity$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/UserManageActivity$1;-><init>(Lcom/qianhe/yct/activity/UserManageActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->tvLogout:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/UserManageActivity$2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/UserManageActivity$2;-><init>(Lcom/qianhe/yct/activity/UserManageActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->tvModifyName:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Lcom/qianhe/yct/activity/UserManageActivity$3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/UserManageActivity$3;-><init>(Lcom/qianhe/yct/activity/UserManageActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->tvModifyPhone:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Lcom/qianhe/yct/activity/UserManageActivity$4;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/UserManageActivity$4;-><init>(Lcom/qianhe/yct/activity/UserManageActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->tvModifyPsw:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Lcom/qianhe/yct/activity/UserManageActivity$5;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/UserManageActivity$5;-><init>(Lcom/qianhe/yct/activity/UserManageActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->tvDeviceManage:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Lcom/qianhe/yct/activity/UserManageActivity$6;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/UserManageActivity$6;-><init>(Lcom/qianhe/yct/activity/UserManageActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->tvUnregisterAccount:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Lcom/qianhe/yct/activity/UserManageActivity$7;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/UserManageActivity$7;-><init>(Lcom/qianhe/yct/activity/UserManageActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-direct {p0}, Lcom/qianhe/yct/activity/UserManageActivity;->updateModifyPhoneVisibility()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 295
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 296
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/LogoutResponse;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 193
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 194
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    iget v0, p1, Lcom/qianhe/yct/event/LogoutResponse;->loggedDeviceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 197
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->setSynDataFlag(Z)V

    .line 198
    iget p1, p1, Lcom/qianhe/yct/event/LogoutResponse;->state:I

    const-class v0, Lcom/qianhe/yct/activity/UserLoginActivity;

    if-nez p1, :cond_0

    .line 199
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/db/UserSession;->clearLoginInfo()V

    .line 200
    sget p1, Lcom/qianhe/yct/R$string;->logout_success:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 201
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 203
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/16 v1, 0x1f40

    if-ne p1, v1, :cond_1

    .line 206
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/db/UserSession;->clearLoginInfo()V

    .line 207
    sget p1, Lcom/qianhe/yct/R$string;->current_login_offline:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 208
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 212
    :cond_1
    const-string/jumbo p1, "\u9000\u51fa\u8bf7\u6c42\u5931\u8d25-> \u5f3a\u5236\u6e05\u7a7a\u8d26\u6237\u4fe1\u606f\u3002"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 213
    sget p1, Lcom/qianhe/yct/R$string;->logout_success:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/db/UserSession;->clearLoginInfo()V

    .line 215
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/UnregisterAccountResponse;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 227
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 228
    iget p1, p1, Lcom/qianhe/yct/event/UnregisterAccountResponse;->state:I

    if-nez p1, :cond_0

    .line 229
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/qh/yctdevice/YctDevice;->notifyUserLogged(J)V

    .line 230
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/db/DatabaseManager;->clearAllUserData()V

    .line 231
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/db/UserSession;->clearAll()V

    .line 232
    sget p1, Lcom/qianhe/yct/R$string;->account_deactivated:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 233
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 235
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 237
    :cond_0
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/ErrorCodeUtils;->getErrorMsg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

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

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/qianhe/yct/activity/UserManageActivity;->savedInstanceState:Landroid/os/Bundle;

    .line 150
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 155
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 156
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserManageActivity;->savedInstanceState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->finishPreviousActivity()V

    .line 157
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->tvGotoLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->lltInfoUser:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->tvGotoLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->lltInfoUser:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->prepareCurrentEngineeringForCoordConvert(Landroid/content/Context;)V

    .line 166
    :goto_0
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/qianhe/yct/activity/UserManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->tvAccount:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/UserManageActivity;->maskAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityUserManageBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserManageBinding;->tvName:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/db/UserSession;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-direct {p0}, Lcom/qianhe/yct/activity/UserManageActivity;->updateModifyPhoneVisibility()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 143
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
