.class public Lcom/qianhe/yct/activity/CorsRenewActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "CorsRenewActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

.field private mMchid:Ljava/lang/String;

.field private mOrderNo:Ljava/lang/String;

.field private mPriceBean:Lcom/qianhe/yct/bean/RenewPriceBean;

.field private mWxCode:Ljava/lang/String;

.field private qrPayDialogFragment:Lcom/qianhe/yct/dialog/QRPayDialogFragment;

.field private wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPriceBean(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/bean/RenewPriceBean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->mPriceBean:Lcom/qianhe/yct/bean/RenewPriceBean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetqrPayDialogFragment(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/dialog/QRPayDialogFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->qrPayDialogFragment:Lcom/qianhe/yct/dialog/QRPayDialogFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmMchid(Lcom/qianhe/yct/activity/CorsRenewActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->mMchid:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOrderNo(Lcom/qianhe/yct/activity/CorsRenewActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->mOrderNo:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPriceBean(Lcom/qianhe/yct/activity/CorsRenewActivity;Lcom/qianhe/yct/bean/RenewPriceBean;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->mPriceBean:Lcom/qianhe/yct/bean/RenewPriceBean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWxCode(Lcom/qianhe/yct/activity/CorsRenewActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->mWxCode:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputqrPayDialogFragment(Lcom/qianhe/yct/activity/CorsRenewActivity;Lcom/qianhe/yct/dialog/QRPayDialogFragment;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->qrPayDialogFragment:Lcom/qianhe/yct/dialog/QRPayDialogFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/activity/CorsRenewActivity;)Z
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->isWeChatInstalled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/activity/CorsRenewActivity;)Z
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->isWeChatInstalled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/qianhe/yct/activity/CorsRenewActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$300(Lcom/qianhe/yct/activity/CorsRenewActivity;JJ)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qianhe/yct/base/BaseActivity;->getExpireDate(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private startWechatPay(Lcom/qianhe/yct/event/RenewCorsResponse;)V
    .locals 3

    .line 297
    new-instance v0, Lcom/tencent/mm/opensdk/modelpay/PayReq;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelpay/PayReq;-><init>()V

    .line 298
    iget-object v1, p1, Lcom/qianhe/yct/event/RenewCorsResponse;->appId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 299
    iget-object v1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->mMchid:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 300
    iget-object v1, p1, Lcom/qianhe/yct/event/RenewCorsResponse;->prepayId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    .line 301
    const-string v1, "Sign=WXPay"

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    .line 302
    iget-object v1, p1, Lcom/qianhe/yct/event/RenewCorsResponse;->nonceStr:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 303
    iget-object v1, p1, Lcom/qianhe/yct/event/RenewCorsResponse;->timeStamp:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    .line 304
    iget-object p1, p1, Lcom/qianhe/yct/event/RenewCorsResponse;->paySign:Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/mm/opensdk/modelpay/PayReq;->sign:Ljava/lang/String;

    .line 305
    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-eqz p1, :cond_0

    .line 306
    invoke-interface {p1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 308
    sget p1, Lcom/qianhe/yct/R$string;->payment_exception:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 309
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->mOrderNo:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->mWxCode:Ljava/lang/String;

    const-string/jumbo v2, "\u8c03\u8d77\u652f\u4ed8\u5931\u8d25"

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->closeOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
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

    .line 335
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 5

    .line 120
    sget v0, Lcom/qianhe/yct/R$string;->loading:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getPriceList()V

    .line 123
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 124
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "corsAccountExpireEpoch"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 125
    iget-object v2, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->tvAccountExpire:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->getExpireDate(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/CorsRenewActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/CorsRenewActivity$3;-><init>(Lcom/qianhe/yct/activity/CorsRenewActivity;)V

    const-string v2, "payment_complete"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/CorsRenewActivity$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/CorsRenewActivity$4;-><init>(Lcom/qianhe/yct/activity/CorsRenewActivity;)V

    const-string/jumbo v2, "wechat_not_installed"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->cors_renew:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    .line 73
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 75
    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->tvPayment:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 76
    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->tvHostNum:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "deviceSn"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->tvPayment:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Lcom/qianhe/yct/activity/CorsRenewActivity$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/CorsRenewActivity$1;-><init>(Lcom/qianhe/yct/activity/CorsRenewActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->lltScanPay:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/qianhe/yct/activity/CorsRenewActivity$2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/CorsRenewActivity$2;-><init>(Lcom/qianhe/yct/activity/CorsRenewActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 361
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 362
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/CorsExpireEpochEvent;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 154
    iget v0, p1, Lcom/qianhe/yct/event/CorsExpireEpochEvent;->state:I

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p1, Lcom/qianhe/yct/event/CorsExpireEpochEvent;->expireEpoch:J

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    const-string v5, "corsAccountExpireEpoch"

    invoke-interface {v0, v5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->tvAccountExpire:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v5, p1, Lcom/qianhe/yct/event/CorsExpireEpochEvent;->expireEpoch:J

    mul-long v5, v5, v3

    invoke-virtual {p0, v1, v2, v5, v6}, Lcom/qianhe/yct/base/BaseActivity;->getExpireDate(JJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/PriceListResponse;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 163
    iget v0, p1, Lcom/qianhe/yct/event/PriceListResponse;->state:I

    if-nez v0, :cond_3

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    iget-boolean v1, p1, Lcom/qianhe/yct/event/PriceListResponse;->hasExclusivePrice:Z

    if-eqz v1, :cond_2

    .line 166
    iget-object p1, p1, Lcom/qianhe/yct/event/PriceListResponse;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 168
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/bean/RenewPriceBean;

    .line 169
    iget v2, p1, Lcom/qianhe/yct/bean/RenewPriceBean;->price_group_id:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 170
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 174
    :cond_2
    iget-object p1, p1, Lcom/qianhe/yct/event/PriceListResponse;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    :goto_0
    new-instance p1, Lcom/qianhe/yct/adapter/CorsPriceListAdapter;

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/adapter/CorsPriceListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 177
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 178
    new-instance v0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/CorsRenewActivity$5;-><init>(Lcom/qianhe/yct/activity/CorsRenewActivity;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/adapter/CorsPriceListAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/CorsPriceListAdapter$OnActionListener;)V

    return-void

    .line 220
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/qianhe/yct/event/PriceListResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/qianhe/yct/event/PriceListResponse;->state:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/RenewCorsResponse;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 286
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 287
    iget v0, p1, Lcom/qianhe/yct/event/RenewCorsResponse;->state:I

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p1, Lcom/qianhe/yct/event/RenewCorsResponse;->tradeNo:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->mOrderNo:Ljava/lang/String;

    .line 290
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/CorsRenewActivity;->startWechatPay(Lcom/qianhe/yct/event/RenewCorsResponse;)V

    return-void

    .line 292
    :cond_0
    iget-object p1, p1, Lcom/qianhe/yct/event/RenewCorsResponse;->errorMsg:Ljava/lang/String;

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/WxAppIdResponse;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 226
    iget v0, p1, Lcom/qianhe/yct/event/WxAppIdResponse;->state:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 227
    iget v0, p1, Lcom/qianhe/yct/event/WxAppIdResponse;->wechatpayEnable:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 228
    iget-object v0, p1, Lcom/qianhe/yct/event/WxAppIdResponse;->mchid:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->mMchid:Ljava/lang/String;

    .line 229
    iget-object v0, p1, Lcom/qianhe/yct/event/WxAppIdResponse;->appid:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 230
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/Constant;->WX_PLAY_APPID:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/yct/event/WxAppIdResponse;->appid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 231
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    iget-object p1, p1, Lcom/qianhe/yct/event/WxAppIdResponse;->appid:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    move-result p1

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5fae\u4fe1API\u6ce8\u518capp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string/jumbo v1, "\u6210\u529f"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "\u5931\u8d25\u3002"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 234
    new-instance p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;

    invoke-direct {p1}, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;-><init>()V

    .line 235
    const-string/jumbo v0, "snsapi_userinfo"

    iput-object v0, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    return-void

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 240
    const-string/jumbo p1, "\u672a\u5b89\u88c5\u5fae\u4fe1 -> \u5f39\u51fa\u4e8c\u7ef4\u7801"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 243
    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->lltScanPay:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void

    .line 246
    :cond_2
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 247
    sget p1, Lcom/qianhe/yct/R$string;->not_support_wechatpay:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 250
    :cond_3
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 251
    iget-object p1, p1, Lcom/qianhe/yct/event/WxAppIdResponse;->errorMsg:Ljava/lang/String;

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/WxAuthCodeResponse;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 257
    iget-object v0, p1, Lcom/qianhe/yct/event/WxAuthCodeResponse;->wxCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p1, Lcom/qianhe/yct/event/WxAuthCodeResponse;->wxCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->mWxCode:Ljava/lang/String;

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5fae\u4fe1code\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/qianhe/yct/event/WxAuthCodeResponse;->wxCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object p1, p1, Lcom/qianhe/yct/event/WxAuthCodeResponse;->wxCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getWxOpenId(Ljava/lang/String;)V

    return-void

    .line 262
    :cond_0
    iget v0, p1, Lcom/qianhe/yct/event/WxAuthCodeResponse;->errCode:I

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 264
    sget p1, Lcom/qianhe/yct/R$string;->cancel_payment:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 265
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->mOrderNo:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->mWxCode:Ljava/lang/String;

    const-string/jumbo v2, "\u7528\u6237\u53d6\u6d88\u652f\u4ed8"

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->closeOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/qianhe/yct/R$string;->data_anomaly:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/qianhe/yct/event/WxAuthCodeResponse;->errCode:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/WxOpenIdResponse;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 274
    iget v0, p1, Lcom/qianhe/yct/event/WxOpenIdResponse;->state:I

    if-nez v0, :cond_0

    .line 277
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    iget-object v2, p1, Lcom/qianhe/yct/event/WxOpenIdResponse;->wxOpenId:Ljava/lang/String;

    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->mPriceBean:Lcom/qianhe/yct/bean/RenewPriceBean;

    iget-wide v3, p1, Lcom/qianhe/yct/bean/RenewPriceBean;->id:J

    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->tvHostNum:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/qianhe/baselib/Constant;->WX_PLAY_APPID:Ljava/lang/String;

    const-string v6, ""

    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->renewCorsAccount(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 280
    iget-object p1, p1, Lcom/qianhe/yct/event/WxOpenIdResponse;->errorMsg:Ljava/lang/String;

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/WxPayResponse;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 317
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 318
    iget p1, p1, Lcom/qianhe/yct/event/WxPayResponse;->code:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 319
    sget p1, Lcom/qianhe/yct/R$string;->payment_complete:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/qianhe/yct/R$string;->order_record:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "payment_complete"

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    .line 320
    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->tvPayment:Landroidx/appcompat/widget/AppCompatTextView;

    sget v0, Lcom/qianhe/yct/R$string;->payment_successful:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 321
    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->lltScanPay:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->tvPayment:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 323
    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->tvPayment:Landroidx/appcompat/widget/AppCompatTextView;

    sget v0, Lcom/qianhe/yct/R$drawable;->bg_ripple_round_theme:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    return-void

    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 325
    sget p1, Lcom/qianhe/yct/R$string;->payment_error:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 326
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->mOrderNo:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->mWxCode:Ljava/lang/String;

    const-string/jumbo v2, "\u652f\u4ed8\u9519\u8bef"

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->closeOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, -0x2

    if-ne p1, v1, :cond_2

    .line 328
    sget p1, Lcom/qianhe/yct/R$string;->cancel_payment:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 329
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->mOrderNo:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->mWxCode:Ljava/lang/String;

    const-string/jumbo v2, "\u7528\u6237\u53d6\u6d88\u652f\u4ed8"

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->closeOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
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

.method protected onResume()V
    .locals 3

    .line 112
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 113
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 115
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/CorsRenewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->tvHostNum:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getCorsExpirationTime(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
