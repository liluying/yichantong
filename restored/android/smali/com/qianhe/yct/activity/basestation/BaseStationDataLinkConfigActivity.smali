.class public Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "BaseStationDataLinkConfigActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

.field private channelArray:[Ljava/lang/String;

.field private currentDataLinkType:Ljava/lang/String;

.field private deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private failCount:J

.field private final handler:Landroid/os/Handler;

.field private isBaseSupportMobile:Z

.field private isBaseSupportRadio:Z

.field private isBaseSupportWifi:Z

.field private isH5SupportNtrip:Z

.field private isH5SupportRadio:Z

.field private mDefaultHost:Ljava/lang/String;

.field private mMode:I

.field private mSave:Z

.field private networkDatalinkAutoApplied:Z

.field private networkParamsRequested:Z

.field private final onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

.field private peerProtocolArray:[Ljava/lang/String;

.field private pendingNetworkParamsFetch:Z

.field private pendingRadioParamsFetch:Z

.field private powerArray:[Ljava/lang/String;

.field private protocolArray:[Ljava/lang/String;

.field private radioDatalinkAutoApplied:Z

.field private radioInfo:Lcom/qianhe/rtkclientlib/event/GetRadioEvent;

.field private radioParamsRequested:Z

.field private scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchannelArray(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->channelArray:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdeviceType(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)Lcom/qianhe/baselib/enums/DeviceType;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisBaseSupportMobile(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->isBaseSupportMobile:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisBaseSupportRadio(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->isBaseSupportRadio:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMode(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->mMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpowerArray(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->powerArray:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprotocolArray(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->protocolArray:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputfailCount(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->failCount:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSave(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->mSave:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpowerArray(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;[Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->powerArray:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mconnectNtrip(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->connectNtrip()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSelectableProtocolArray(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)[Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->getSelectableProtocolArray()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 77
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    iput-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->handler:Landroid/os/Handler;

    .line 605
    new-instance v0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$15;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$15;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    return-void
.end method

.method private applyNetworkDatalinkIfUnsupportedRadio()Z
    .locals 5

    .line 505
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->isBaseSupportRadio:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->isBaseSupportMobile:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvDataLink:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lcom/qianhe/yct/R$string;->device_internet:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->lltRadioItem:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->lltNetworkItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 509
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->networkDatalinkAutoApplied:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 510
    sget-object v0, Lcom/qianhe/yct/enums/DataLinkEnum;->NETWORK:Lcom/qianhe/yct/enums/DataLinkEnum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->currentDataLinkType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->networkDatalinkAutoApplied:Z

    .line 512
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->requestNetworkParamsIfNeeded()V

    goto :goto_0

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->currentDataLinkType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 514
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->networkDatalinkAutoApplied:Z

    .line 515
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->pendingNetworkParamsFetch:Z

    .line 516
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v3, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v4, "SET,DATALINK,NETWORK"

    invoke-direct {v2, v3, v4}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return v1
.end method

.method private applyRadioDatalinkIfUnsupportedNetwork()Z
    .locals 5

    .line 486
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->isBaseSupportMobile:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->isBaseSupportRadio:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvDataLink:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lcom/qianhe/yct/R$string;->radio_station:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->lltNetworkItem:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->lltRadioItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 490
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->radioDatalinkAutoApplied:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 491
    sget-object v0, Lcom/qianhe/yct/enums/DataLinkEnum;->RADIO:Lcom/qianhe/yct/enums/DataLinkEnum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->currentDataLinkType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->radioDatalinkAutoApplied:Z

    .line 493
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->requestRadioParamsIfNeeded()V

    goto :goto_0

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->currentDataLinkType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 495
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->radioDatalinkAutoApplied:Z

    .line 496
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->pendingRadioParamsFetch:Z

    .line 497
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v3, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v4, "SET,DATALINK,RADIO"

    invoke-direct {v2, v3, v4}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return v1
.end method

.method private connectNtrip()V
    .locals 4

    .line 438
    new-instance v0, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    invoke-direct {v0}, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;-><init>()V

    .line 439
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtHost:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    .line 440
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtPort:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    .line 441
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtMountPoint:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseConfig;->mount_point:Ljava/lang/String;

    .line 442
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtUserName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseConfig;->username:Ljava/lang/String;

    .line 443
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\\*+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 446
    iget-object v1, v0, Lcom/qianhe/baselib/base/BaseConfig;->username:Ljava/lang/String;

    .line 447
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 449
    :cond_0
    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseConfig;->password:Ljava/lang/String;

    .line 450
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private getDataLinkDes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 716
    sget-object v0, Lcom/qianhe/yct/enums/DataLinkEnum;->NETWORK:Lcom/qianhe/yct/enums/DataLinkEnum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    sget p1, Lcom/qianhe/yct/R$string;->device_internet:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 718
    :cond_0
    sget-object v0, Lcom/qianhe/yct/enums/DataLinkEnum;->RADIO:Lcom/qianhe/yct/enums/DataLinkEnum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 719
    sget p1, Lcom/qianhe/yct/R$string;->radio_station:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 721
    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private getSelectableProtocolArray()[Ljava/lang/String;
    .locals 3

    .line 588
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->protocolArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->peerProtocolArray:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->isBothRadioDevicesConnected()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/utils/RadioProtocolUtils;->getSelectableProtocols([Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isBothRadioDevicesConnected()Z
    .locals 2

    .line 583
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    .line 584
    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private readFromAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 940
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 941
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 943
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 944
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 946
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 948
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bfb\u53d6assets\u6587\u4ef6\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 949
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 951
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private requestNetworkParamsIfNeeded()V
    .locals 4

    .line 529
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->networkParamsRequested:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 530
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->networkParamsRequested:Z

    .line 531
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "GET,NETWORK"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private requestRadioParamsIfNeeded()V
    .locals 4

    .line 523
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->radioParamsRequested:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 524
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->radioParamsRequested:Z

    .line 525
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "GET,RADIO_CHANNEL"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private requestRadioProtocolLists()V
    .locals 4

    const/4 v0, 0x0

    .line 574
    iput-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->peerProtocolArray:[Ljava/lang/String;

    .line 576
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "GET,RADIO_PROTOCOL_LIST"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 577
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->isBothRadioDevicesConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-static {v2}, Lcom/qianhe/yct/utils/RadioProtocolUtils;->getPeerDeviceType(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private restoreData(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvDataLink:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "dataLink"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvConnectType:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "connectType"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtHost:Landroid/widget/EditText;

    const-string v1, "host"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtPort:Lcom/qianhe/yct/view/NumericEditText;

    const-string v1, "port"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtMountPoint:Landroid/widget/EditText;

    const-string v1, "mountPoint"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtUserName:Landroid/widget/EditText;

    const-string/jumbo v1, "userName"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtPassword:Landroid/widget/EditText;

    const-string v1, "password"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtAPNname:Landroid/widget/EditText;

    const-string v1, "APNname"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtAPNuser:Landroid/widget/EditText;

    const-string v1, "APNuser"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtAPNPsw:Landroid/widget/EditText;

    const-string v1, "APNPsw"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvChannel:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "channel"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvProtocol:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "protocol"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvSendPower:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "sendPower"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->lltNetworkItem:Landroid/widget/LinearLayout;

    const-string v1, "networkItemVisible"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->lltRadioItem:Landroid/widget/LinearLayout;

    const-string v1, "radioItemVisible"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->lltNtripItem:Landroid/widget/LinearLayout;

    const-string v1, "ntripItemVisible"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private saveCors()V
    .locals 9

    .line 663
    new-instance v0, Lcom/qianhe/baselib/bean/CorsEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/CorsEntity;-><init>()V

    .line 664
    sget v1, Lcom/qianhe/yct/R$string;->customize:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    .line 665
    sget-object v1, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/bean/CorsEntity;->ntripType:I

    .line 666
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtHost:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    .line 667
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtPort:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/text/Editable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/bean/CorsEntity;->port:I

    .line 668
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtUserName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/CorsEntity;->userName:Ljava/lang/String;

    .line 669
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/CorsEntity;->password:Ljava/lang/String;

    .line 670
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtMountPoint:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/CorsEntity;->mount:Ljava/lang/String;

    .line 673
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    .line 674
    iget-object v2, v0, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryCORSByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 675
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    if-eqz v3, :cond_0

    .line 676
    invoke-virtual {v1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->insertCORS(Lcom/qianhe/baselib/bean/CorsEntity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v7, v0, v2

    if-lez v7, :cond_3

    .line 677
    const-string v2, "cors\u6570\u636e\u63d2\u5165\u6210\u529f"

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/CorsEntity;

    .line 680
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    iput-wide v7, v0, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    .line 681
    invoke-virtual {v2, v0}, Lcom/qianhe/baselib/bean/CorsEntity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 683
    invoke-virtual {v1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->updateCORS(Lcom/qianhe/baselib/bean/CorsEntity;)I

    move-result v0

    if-lez v0, :cond_1

    .line 685
    iget-wide v0, v2, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    .line 686
    const-string v2, "cors\u6570\u636e\u66f4\u65b0\u6210\u529f"

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-wide v0, v5

    goto :goto_0

    .line 689
    :cond_2
    iget-wide v0, v2, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    :cond_3
    :goto_0
    cmp-long v2, v0, v5

    if-nez v2, :cond_4

    .line 693
    sget v0, Lcom/qianhe/yct/R$string;->save_failed:I

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 694
    const-string v0, "cors\u6570\u636e\u4fdd\u5b58\u5931\u8d25"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private startTimer()V
    .locals 5

    .line 699
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 700
    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$17;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$17;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private stopTimer()V
    .locals 2

    .line 711
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
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

    .line 455
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 3

    .line 304
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$8;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    const-string v2, "datalink"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 325
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$9;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    const-string v2, "baseconnecttype"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 339
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$10;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$10;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    const-string v2, "appliedtoh5network"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 360
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$11;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$11;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    const-string v2, "appliedtoh5radio"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 398
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$12;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$12;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    const-string v2, "radio_channel"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 410
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->RADIO_PROTOCOL:Ljava/lang/String;

    new-instance v2, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$13;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$13;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    invoke-virtual {v0, v1, p0, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 422
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$14;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$14;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    const-string v2, "radio_power"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->data_link:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    .line 98
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    const-string v2, "mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->mMode:I

    .line 101
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    :goto_0
    iput-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 103
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvDataLink:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$1;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvConnectType:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$2;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvChannel:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$3;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvProtocol:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$4;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvSendPower:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$5;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvSave:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$6;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "current_coords"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Lcom/qianhe/yct/utils/LocationUtils;->isChinaMainland(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    const-string v0, "cors.json"

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->readFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 232
    :cond_1
    const-string v0, "cors_en.json"

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->readFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    :goto_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$7;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$7;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    .line 235
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 234
    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 236
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/CorsEntity;

    .line 237
    iget-object v3, v1, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    const-string v4, "XFIX"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 238
    iget-object v0, v1, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->mDefaultHost:Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtHost:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "base_deviceSn"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtPort:Lcom/qianhe/yct/view/NumericEditText;

    const-string v2, "6060"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtMountPoint:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtUserName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_4

    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-nez p1, :cond_5

    .line 251
    sget p1, Lcom/qianhe/yct/R$string;->loading:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "GET,DATALINK"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_2

    .line 255
    :cond_5
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->restoreData(Landroid/os/Bundle;)V

    .line 258
    :goto_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v1, "GET,FEATURES"

    invoke-direct {v0, v1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 971
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 972
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->stopTimer()V

    .line 973
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 974
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/ntripclientlib/bean/AuthResult;)V
    .locals 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 617
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->mSave:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 618
    :cond_0
    iget v0, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->result:I

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 619
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->startTimer()V

    .line 620
    iget-wide v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->failCount:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_9

    sget p1, Lcom/qianhe/yct/R$string;->connecting:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 622
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->stopTimer()V

    .line 623
    sget p1, Lcom/qianhe/yct/R$string;->authenticating:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v4, :cond_3

    .line 625
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 626
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    iget-object v2, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/manage/AppConfigManager;->setCors(Lcom/qianhe/baselib/base/BaseConfig;)V

    .line 627
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 628
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->mSave:Z

    .line 630
    iget-boolean p1, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->isInit:Z

    if-nez p1, :cond_9

    .line 631
    sget p1, Lcom/qianhe/yct/R$string;->auth_successful:I

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 632
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 635
    iget-wide v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->failCount:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_9

    sget p1, Lcom/qianhe/yct/R$string;->authenticating:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void

    :cond_4
    if-nez v0, :cond_8

    .line 637
    iget-wide v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->failCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->failCount:J

    const-wide/16 v6, 0x3

    cmp-long v0, v2, v6

    if-lez v0, :cond_7

    .line 639
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->mSave:Z

    .line 640
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 641
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "diffClientDisconnect"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 643
    iget-object v0, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->reason:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v1, "Bad Password"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 644
    sget v0, Lcom/qianhe/yct/R$string;->cors_input_error:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->reason:Ljava/lang/String;

    .line 646
    :cond_5
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/qianhe/yct/R$string;->cors_auth_failed:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->reason:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->reason:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 649
    :cond_7
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$16;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$16;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_8
    const/4 p1, 0x7

    if-ne v0, p1, :cond_9

    .line 657
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    :cond_9
    :goto_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 760
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v1, :cond_0

    return-void

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvConnectType:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtHost:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->host:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->host:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->mDefaultHost:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    iget v0, p1, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->port:I

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtPort:Lcom/qianhe/yct/view/NumericEditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtPort:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->host:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->mDefaultHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 765
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtMountPoint:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->host:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->mDefaultHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 766
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtMountPoint:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->mountpoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtUserName:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtPassword:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtAPNname:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->apnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtAPNuser:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->apnUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtAPNPsw:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->apnName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->apnUser:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->apnPassword:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->lltNtripItem:Landroid/widget/LinearLayout;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->type:Ljava/lang/String;

    const-string v1, "NTRIP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    const/16 p1, 0x8

    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/FeaturesEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 778
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "RADIO"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2

    .line 779
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    const-string v1, "NO_NTRIP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    iput-boolean v4, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->isH5SupportNtrip:Z

    goto :goto_0

    .line 782
    :cond_0
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->isH5SupportNtrip:Z

    .line 784
    :goto_0
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 785
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->isH5SupportRadio:Z

    goto :goto_1

    .line 787
    :cond_1
    iput-boolean v4, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->isH5SupportRadio:Z

    .line 791
    :cond_2
    :goto_1
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_6

    .line 792
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 793
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->isBaseSupportWifi:Z

    goto :goto_2

    .line 795
    :cond_3
    iput-boolean v4, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->isBaseSupportWifi:Z

    .line 797
    :goto_2
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    const-string v1, "MOBILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 798
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->isBaseSupportMobile:Z

    goto :goto_3

    .line 800
    :cond_4
    iput-boolean v4, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->isBaseSupportMobile:Z

    .line 802
    :goto_3
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 803
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->isBaseSupportRadio:Z

    goto :goto_4

    .line 805
    :cond_5
    iput-boolean v4, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->isBaseSupportRadio:Z

    .line 807
    :goto_4
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->applyRadioDatalinkIfUnsupportedNetwork()Z

    .line 808
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->applyNetworkDatalinkIfUnsupportedRadio()Z

    :cond_6
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/GetDataLinkResponse;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 467
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetDataLinkResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 469
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetDataLinkResponse;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->currentDataLinkType:Ljava/lang/String;

    .line 470
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->applyRadioDatalinkIfUnsupportedNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 471
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->applyNetworkDatalinkIfUnsupportedRadio()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvDataLink:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/GetDataLinkResponse;->type:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->getDataLinkDes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->lltNetworkItem:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->lltRadioItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetDataLinkResponse;->type:Ljava/lang/String;

    sget-object v1, Lcom/qianhe/yct/enums/DataLinkEnum;->NETWORK:Lcom/qianhe/yct/enums/DataLinkEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 476
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->lltNetworkItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 477
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->requestNetworkParamsIfNeeded()V

    return-void

    .line 478
    :cond_3
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetDataLinkResponse;->type:Ljava/lang/String;

    sget-object v0, Lcom/qianhe/yct/enums/DataLinkEnum;->RADIO:Lcom/qianhe/yct/enums/DataLinkEnum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 479
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->lltRadioItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 480
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->requestRadioParamsIfNeeded()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/GetRadioChannelEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 536
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetRadioChannelEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v1, :cond_0

    return-void

    .line 537
    :cond_0
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetRadioChannelEvent;->channelArray:[Ljava/lang/String;

    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->channelArray:[Ljava/lang/String;

    .line 538
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->requestRadioProtocolLists()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/GetRadioEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 563
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetRadioEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v1, :cond_0

    return-void

    .line 564
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->radioInfo:Lcom/qianhe/rtkclientlib/event/GetRadioEvent;

    .line 565
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvChannel:Landroidx/appcompat/widget/AppCompatTextView;

    iget p1, p1, Lcom/qianhe/rtkclientlib/event/GetRadioEvent;->channelNumber:I

    add-int/lit8 p1, p1, -0x1

    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->channelArray:[Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcom/qianhe/yct/utils/RadioChannelUtils;->getChannelLabel(Landroid/content/Context;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->protocolArray:[Ljava/lang/String;

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->radioInfo:Lcom/qianhe/rtkclientlib/event/GetRadioEvent;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/event/GetRadioEvent;->protocolNumber:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/RadioProtocolUtils;->findProtocolNameByNumber([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 567
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvProtocol:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvSendPower:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->radioInfo:Lcom/qianhe/rtkclientlib/event/GetRadioEvent;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/event/GetRadioEvent;->power:Ljava/lang/String;

    sget-object v1, Lcom/qianhe/yct/enums/RadioPowerEnum;->HIGH:Lcom/qianhe/yct/enums/RadioPowerEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/qianhe/yct/R$string;->high:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->radioInfo:Lcom/qianhe/rtkclientlib/event/GetRadioEvent;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/event/GetRadioEvent;->power:Ljava/lang/String;

    sget-object v1, Lcom/qianhe/yct/enums/RadioPowerEnum;->MIDDLE:Lcom/qianhe/yct/enums/RadioPowerEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/qianhe/yct/R$string;->middle:I

    goto :goto_0

    :cond_3
    sget v0, Lcom/qianhe/yct/R$string;->low:I

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/GetRadioPowerListEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 554
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetRadioPowerListEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v1, :cond_0

    return-void

    .line 555
    :cond_0
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetRadioPowerListEvent;->powerArray:[Ljava/lang/String;

    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->powerArray:[Ljava/lang/String;

    .line 557
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "GET,RADIO"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/GetRadioProtocolListEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 543
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetRadioProtocolListEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    .line 544
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetRadioProtocolListEvent;->protocolArray:[Ljava/lang/String;

    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->protocolArray:[Ljava/lang/String;

    .line 546
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "GET,RADIO_POWER_LIST,"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 547
    :cond_0
    invoke-static {v1}, Lcom/qianhe/yct/utils/RadioProtocolUtils;->getPeerDeviceType(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 548
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetRadioProtocolListEvent;->protocolArray:[Ljava/lang/String;

    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->peerProtocolArray:[Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/SetBaseNetworkResponse;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 815
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetBaseNetworkResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v1, :cond_0

    return-void

    .line 816
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 817
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetBaseNetworkResponse;->line:Ljava/lang/String;

    const-string v0, "OK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 818
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvDataLink:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->device_internet:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvConnectType:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NTRIP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 819
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->isH5SupportNtrip:Z

    if-eqz p1, :cond_1

    .line 821
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvSave:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$18;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$18;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 828
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvSave:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$19;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$19;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 845
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvSave:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$20;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$20;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 862
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->saveCors()V

    return-void

    .line 864
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvSave:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$21;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$21;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/SetBaseRadioResponse;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 876
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetBaseRadioResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "OK"

    if-ne v0, v1, :cond_2

    .line 877
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 878
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetBaseRadioResponse;->line:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 879
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->isH5SupportRadio:Z

    if-eqz p1, :cond_0

    .line 881
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvSave:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$22;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$22;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 888
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvSave:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$23;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$23;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 905
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvSave:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$24;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$24;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 912
    :cond_2
    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_3

    .line 913
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 914
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvSave:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$25;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$25;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;Lcom/qianhe/rtkclientlib/event/SetBaseRadioResponse;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 929
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetBaseRadioResponse;->line:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 931
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "diffClientDisconnect"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 932
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "obtain_difference_type"

    const-string v1, "radio"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/Constant;->NTRIPTYPE:Ljava/lang/String;

    sget-object v1, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NONE:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/SetDataLinkResponse;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 594
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetDataLinkResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 595
    :cond_0
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetDataLinkResponse;->result:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 596
    :cond_1
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->pendingRadioParamsFetch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetDataLinkResponse;->result:Ljava/lang/String;

    const-string v2, "RADIO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->pendingRadioParamsFetch:Z

    .line 598
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->requestRadioParamsIfNeeded()V

    return-void

    .line 599
    :cond_2
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->pendingNetworkParamsFetch:Z

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetDataLinkResponse;->result:Ljava/lang/String;

    const-string v0, "NETWORK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 600
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->pendingNetworkParamsFetch:Z

    .line 601
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->requestNetworkParamsIfNeeded()V

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
    .locals 0

    .line 0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 263
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 264
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvDataLink:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dataLink"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvConnectType:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connectType"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtHost:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "host"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtPort:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "port"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtMountPoint:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mountPoint"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtUserName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "userName"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtAPNname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APNname"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtAPNuser:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APNuser"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtAPNPsw:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APNPsw"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvChannel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "channel"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvProtocol:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "protocol"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvSendPower:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendPower"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->lltNetworkItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "networkItemVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 278
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->lltRadioItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "radioItemVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 279
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->lltNtripItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "ntripItemVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
