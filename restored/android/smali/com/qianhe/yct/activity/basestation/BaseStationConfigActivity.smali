.class public Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "BaseStationConfigActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

.field private currentDiffFormat:Ljava/lang/String;

.field private diffFormats:[Ljava/lang/String;

.field private getMobile:Z

.field private getMobileStatus:Z

.field private isBaseSupportMobile:Z

.field private isBaseSupportRadio:Z

.field private isReset:Z

.field private mDataLinkType:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mobileNetEntity:Lcom/qianhe/rtkclientlib/event/MobileNetEntity;

.field private mobileStateResponse:Lcom/qianhe/rtkclientlib/event/MobileStateResponse;

.field private timeExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private timeFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisBaseSupportMobile(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->isBaseSupportMobile:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisBaseSupportRadio(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->isBaseSupportRadio:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputgetMobile(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->getMobile:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetToNetworkDataLink(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->resetToNetworkDataLink()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetToRadioDataLink(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->resetToRadioDataLink()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowResetDataLinkDialog(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->showResetDataLinkDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->mHandler:Landroid/os/Handler;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->mDataLinkType:Ljava/lang/String;

    return-void
.end method

.method private performCommonBaseReset()V
    .locals 6

    .line 309
    sget v0, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "base_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v3, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SET,ZXVPN,DISABLE,vpn.rtkiot.cn,8222,TEST,zxvpn,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "zxvpn"

    invoke-static {v5}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->stringToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 314
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v4, "SET,MODE,BASE"

    invoke-direct {v2, v3, v4}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 316
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v4, "SET,ANTENNA_HEIGHT,PHASE,0"

    invoke-direct {v2, v3, v4}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 318
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->diffFormats:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 319
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->currentDiffFormat:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->diffFormats:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 328
    :cond_1
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SET,BASE,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v5, v5, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v5, v5, Lcom/qianhe/yct/bean/AppConfig$Details;->base_height_cutoff_angle:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->base_pdop_limit:F

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",0|0|0,ENCA,AUTO"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private resetBasestationConfig()V
    .locals 8

    .line 354
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "base_deviceSn"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 357
    :goto_0
    invoke-static {p0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->isZH(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->base_host:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->base_host_xfix:Ljava/lang/String;

    .line 359
    :goto_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v5, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SET,NETWORK,NTRIP,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v7, v7, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v7, v7, Lcom/qianhe/yct/bean/AppConfig$Details;->base_port:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->mobileNetEntity:Lcom/qianhe/rtkclientlib/event/MobileNetEntity;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/event/MobileNetEntity;->apnName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->mobileNetEntity:Lcom/qianhe/rtkclientlib/event/MobileNetEntity;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/event/MobileNetEntity;->apnUser:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->mobileNetEntity:Lcom/qianhe/rtkclientlib/event/MobileNetEntity;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/event/MobileNetEntity;->apnPsw:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",2.0"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private resetToNetworkDataLink()V
    .locals 4

    .line 332
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->performCommonBaseReset()V

    .line 333
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "SET,DATALINK,NETWORK"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 335
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v3, "SET,WLAN0,AP"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->mobileNetEntity:Lcom/qianhe/rtkclientlib/event/MobileNetEntity;

    if-eqz v0, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->resetBasestationConfig()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 339
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->isReset:Z

    .line 341
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v3, "GET,MOBILE"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private resetToRadioDataLink()V
    .locals 4

    .line 346
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->performCommonBaseReset()V

    .line 347
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "SET,DATALINK,RADIO"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 349
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v3, "SET,RADIO,1,205,HIGH"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private showResetDataLinkDialog()V
    .locals 5

    .line 296
    new-instance v0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;-><init>()V

    .line 297
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "BaseResetDataLinkDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 298
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 299
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->isBaseSupportMobile:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/qianhe/yct/R$string;->reset_to_network_datalink:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_0
    sget v2, Lcom/qianhe/yct/R$string;->reset_to_radio_datalink:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 302
    sget v3, Lcom/qianhe/yct/R$string;->please_select_reset_datalink:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v3, "list"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 304
    const-string v1, "requestKey"

    const-string v3, "baseresetdatalink"

    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method private startTimer()V
    .locals 7

    .line 157
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->timeExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 158
    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$7;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)V

    const-wide/16 v4, 0x1388

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->timeFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static stringToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-char v5, p0, v4

    .line 248
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v5, v6, v3

    const-string v5, "%02x"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v4, v0

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 4

    .line 255
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "GET,SERIAL"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 257
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v3, "GET,BASE"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 258
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$8;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)V

    const-string v2, "basereset"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 277
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$9;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)V

    const-string v2, "baseresetdatalink"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->base_station_config:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    .line 75
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->rltVPN:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$1;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->rltWorkMode:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$2;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->rltDataLink:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$3;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->rltNetwork:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$4;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$4;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->rltReset:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$5;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$5;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$6;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$6;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 456
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 457
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/ntripclientlib/bean/AuthResult;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/FeaturesEvent;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 134
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v1, :cond_0

    return-void

    .line 136
    :cond_0
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    const-string v2, "ZXVPN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->rltVPN:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 139
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v4, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v5, "GET,ZXVPN"

    invoke-direct {v4, v1, v5}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 140
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->startTimer()V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->rltVPN:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :goto_0
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    const-string v1, "MOBILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->isBaseSupportMobile:Z

    .line 145
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    const-string v4, "RADIO"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->isBaseSupportRadio:Z

    .line 146
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->rltNetwork:Landroid/widget/RelativeLayout;

    iget-object v4, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    const-string v5, "WIFI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v2, 0x0

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 376
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->diffFormat:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->currentDiffFormat:Ljava/lang/String;

    .line 377
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->dataformatList:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 378
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->diffFormats:[Ljava/lang/String;

    return-void

    .line 380
    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->diffFormats:[Ljava/lang/String;

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/GetDataLinkResponse;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 152
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetDataLinkResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v1, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetDataLinkResponse;->type:Ljava/lang/String;

    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->mDataLinkType:Ljava/lang/String;

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/GetVPNResponse;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 386
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 387
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->ivVPN:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 389
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetVPNResponse;->line:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetVPNResponse;->line:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 391
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetVPNResponse;->line:Ljava/lang/String;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    .line 392
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->ivVPN:Landroid/widget/ImageView;

    const-string v1, "ENABLE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/MobileNetEntity;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 190
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/MobileNetEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->getMobile:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 191
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->mobileNetEntity:Lcom/qianhe/rtkclientlib/event/MobileNetEntity;

    .line 192
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/MobileNetEntity;->state:Ljava/lang/String;

    const-string v2, "ENABLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->getMobileStatus:Z

    .line 195
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v3, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v4, "GET,MOBILE_STATUS"

    invoke-direct {v3, v1, v4}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/MobileNetEntity;->state:Ljava/lang/String;

    const-string v3, "DISABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    iput-boolean v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->getMobileStatus:Z

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->mobileStateResponse:Lcom/qianhe/rtkclientlib/event/MobileStateResponse;

    .line 203
    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/MobileNetEntity;->state:Ljava/lang/String;

    const-string v0, "ONLINE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v3, "GET,WLAN0_STATUS"

    invoke-direct {v0, v1, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 204
    :cond_3
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->isReset:Z

    if-eqz p1, :cond_4

    .line 205
    iput-boolean v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->isReset:Z

    .line 207
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->resetBasestationConfig()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/MobileStateResponse;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 213
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->getMobileStatus:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 214
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->mobileStateResponse:Lcom/qianhe/rtkclientlib/event/MobileStateResponse;

    .line 216
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->state:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "ONLINE"

    if-eqz v0, :cond_1

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->state:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->tvSimStaus:Landroid/widget/TextView;

    sget v3, Lcom/qianhe/yct/R$string;->online:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "(%s)"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->state:Ljava/lang/String;

    const-string v3, "OFFLINE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    :goto_0
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->state:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v2, "GET,WLAN0_STATUS"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/SetBaseNetworkResponse;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 232
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetBaseNetworkResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v1, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 234
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetBaseNetworkResponse;->line:Ljava/lang/String;

    const-string v0, "OK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/qianhe/yct/R$string;->already_reset:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget p1, Lcom/qianhe/yct/R$string;->reset_failed:I

    goto :goto_0

    :goto_1
    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/SetBaseRadioResponse;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 240
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetBaseRadioResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v1, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 242
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetBaseRadioResponse;->line:Ljava/lang/String;

    const-string v0, "OK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/qianhe/yct/R$string;->already_reset:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget p1, Lcom/qianhe/yct/R$string;->reset_failed:I

    goto :goto_0

    :goto_1
    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/SetVPNResponse;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 399
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    if-eqz p1, :cond_1

    .line 401
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetVPNResponse;->line:Ljava/lang/String;

    const-string v1, "ENABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "OK"

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetVPNResponse;->line:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->ivVPN:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    .line 403
    :cond_0
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetVPNResponse;->line:Ljava/lang/String;

    const-string v2, "DISABLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetVPNResponse;->line:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 404
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->ivVPN:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 405
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->tvVpn:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->remote_technical_support:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/VpnStatusResponse;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 412
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    if-eqz p1, :cond_3

    .line 415
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->tvSimStaus:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->online:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ")"

    const-string v2, " ("

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->ivVPN:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/qianhe/yct/R$string;->remote_technical_support:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/qianhe/yct/R$string;->online:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 417
    :cond_0
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/VpnStatusResponse;->line:Ljava/lang/String;

    const-string v3, "OFFLINE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/VpnStatusResponse;->line:Ljava/lang/String;

    const-string v0, "ONLINE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->tvSimStaus:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->offline:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 420
    :cond_1
    sget p1, Lcom/qianhe/yct/R$string;->remote_technical_support:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 418
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/qianhe/yct/R$string;->remote_technical_support:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/qianhe/yct/R$string;->offline:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 422
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->tvVpn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/WifiStateResponse;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/WifiStateResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v3, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v2, v3, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/WifiStateResponse;->mode:Ljava/lang/String;

    const-string v3, "AP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "(%s)"

    if-nez v2, :cond_1

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/WifiStateResponse;->state:Ljava/lang/String;

    const-string v2, "UP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 174
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->tvSimStaus:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->online:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->getMobile:Z

    return-void

    .line 177
    :cond_1
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->isReset:Z

    .line 178
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->mobileStateResponse:Lcom/qianhe/rtkclientlib/event/MobileStateResponse;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->state:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 179
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->tvSimStaus:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->sim_card_not_detected:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 180
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->mobileStateResponse:Lcom/qianhe/rtkclientlib/event/MobileStateResponse;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->state:Ljava/lang/String;

    const-string v2, "ONLINE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 181
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->tvSimStaus:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->online:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 183
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->tvSimStaus:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->offline:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

.method protected onPause()V
    .locals 2

    .line 448
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onPause()V

    .line 449
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 450
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->timeFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->timeExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 124
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 125
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 127
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "GET,FEATURES"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 129
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v3, "GET,DATALINK"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
