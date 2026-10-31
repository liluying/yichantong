.class public Lcom/qianhe/yct/fragment/BaseStationInfoFragment;
.super Lcom/qianhe/yct/base/BaseFragment;
.source "BaseStationInfoFragment.java"


# instance fields
.field private antennaHeight:D

.field private appConfig:Lcom/qianhe/yct/bean/AppConfig;

.field private binding:Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

.field private init:Z

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private totalBytes:J


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/BaseStationInfoFragment;)Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmINS(Lcom/qianhe/yct/fragment/BaseStationInfoFragment;Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/fragment/BaseStationInfoFragment;)Landroid/content/SharedPreferences;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private initLiveData()V
    .locals 3

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/LocateInfoActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/LocateInfoActivity;->observeInsNavi()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$2;-><init>(Lcom/qianhe/yct/fragment/BaseStationInfoFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    sget-object v1, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 68
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvCorsConnectType:Landroid/widget/TextView;

    const-string v2, "NTRIP"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;-><init>(Lcom/qianhe/yct/fragment/BaseStationInfoFragment;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->lltCorsAccountExpire:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "corsAccountExpireEpoch"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 92
    sget v0, Lcom/qianhe/yct/R$string;->permanently_valid:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 94
    sget v0, Lcom/qianhe/yct/R$string;->on_trial:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 96
    :cond_3
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x5265c00

    .line 98
    div-long/2addr v0, v3

    long-to-int v1, v0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget v1, Lcom/qianhe/yct/R$string;->days_later:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvCorsAccountExpire:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private restoreRetainedBaseStation()V
    .locals 2

    .line 182
    invoke-static {}, Lcom/qianhe/yct/activity/LocateInfoActivity;->peekRetain()Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 183
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

    if-nez v1, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iget-object v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->ins:Lcom/qianhe/baselib/bean/InsNavi;

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 185
    :cond_1
    iget-boolean v1, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->baseInited:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->init:Z

    .line 186
    :cond_2
    iget-object v0, v0, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->baseStation:Lcom/qianhe/baselib/bean/BaseStationEntity;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->onEventMessage(Lcom/qianhe/baselib/bean/BaseStationEntity;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public formatLength(J)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/32 v2, 0x100000

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    long-to-double p1, p1

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr p1, v2

    .line 131
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "%.3f MB"

    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v2, 0x400

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    long-to-double p1, p1

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v2

    .line 135
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "%.3f KB"

    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    .line 51
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->initView()V

    .line 52
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->initLiveData()V

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    sget-object p2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, p2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p3, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v0, "GET,ANTENNA_HEIGHT"

    invoke-direct {p3, p2, v0}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    return-object p1
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/BaseStationEntity;)V
    .locals 19
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 150
    iget-object v5, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    iget-object v5, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez v5, :cond_0

    goto/16 :goto_1

    .line 151
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/activity/LocateInfoActivity;->retain()Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    move-result-object v5

    .line 152
    iput-object v1, v5, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->baseStation:Lcom/qianhe/baselib/bean/BaseStationEntity;

    .line 154
    iget-object v5, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvBaseStationId:Landroid/widget/TextView;

    iget v6, v1, Lcom/qianhe/baselib/bean/BaseStationEntity;->baseStationId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v5, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvBaseStationLon:Landroid/widget/TextView;

    iget-wide v6, v1, Lcom/qianhe/baselib/bean/BaseStationEntity;->lon:D

    const/16 v8, 0x8

    invoke-virtual {v0, v6, v7, v8}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v5, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvBaseStationLat:Landroid/widget/TextView;

    iget-wide v6, v1, Lcom/qianhe/baselib/bean/BaseStationEntity;->lat:D

    invoke-virtual {v0, v6, v7, v8}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v5, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvBaseStationHigh:Landroid/widget/TextView;

    iget-wide v6, v1, Lcom/qianhe/baselib/bean/BaseStationEntity;->elev:D

    const/4 v8, 0x3

    invoke-virtual {v0, v6, v7, v8}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    new-array v5, v8, [D

    .line 160
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v9

    iget-wide v10, v1, Lcom/qianhe/baselib/bean/BaseStationEntity;->lon:D

    iget-wide v12, v1, Lcom/qianhe/baselib/bean/BaseStationEntity;->lat:D

    iget-wide v14, v1, Lcom/qianhe/baselib/bean/BaseStationEntity;->elev:D

    move-object/from16 v16, v5

    invoke-virtual/range {v9 .. v16}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToProjOnly(DDD[D)Z

    move-result v5

    move-object/from16 v6, v16

    const-wide/16 v9, 0x0

    if-eqz v5, :cond_3

    .line 161
    iget-object v5, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvEast:Landroid/widget/TextView;

    aget-wide v11, v6, v3

    invoke-virtual {v0, v11, v12, v8}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v5, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvNorth:Landroid/widget/TextView;

    aget-wide v11, v6, v4

    invoke-virtual {v0, v11, v12, v8}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v5, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v5, v5, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v5, v5, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    sget-object v7, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v7}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_1

    .line 164
    iget-object v5, v0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    const-string v7, "base_antennaheight_real"

    const v11, 0x3fd4c986    # 1.6624f

    invoke-interface {v5, v7, v11}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    float-to-double v11, v5

    iput-wide v11, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->antennaHeight:D

    .line 166
    :cond_1
    iget-object v5, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvElev:Landroid/widget/TextView;

    aget-wide v11, v6, v2

    iget v7, v1, Lcom/qianhe/baselib/bean/BaseStationEntity;->baseStationId:I

    if-nez v7, :cond_2

    iget-wide v13, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->antennaHeight:D

    goto :goto_0

    :cond_2
    move-wide v13, v9

    :goto_0
    sub-double/2addr v11, v13

    invoke-virtual {v0, v11, v12, v8}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    new-array v5, v8, [D

    .line 168
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v11

    iget-object v7, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v12, v7, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLon:D

    iget-wide v14, v7, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLat:D

    iget-wide v7, v7, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElev:D

    move-object/from16 v18, v5

    move-wide/from16 v16, v7

    invoke-virtual/range {v11 .. v18}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToProjOnly(DDD[D)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 169
    aget-wide v7, v18, v3

    aget-wide v11, v18, v4

    new-array v2, v2, [D

    aput-wide v7, v2, v3

    aput-wide v11, v2, v4

    invoke-static {v2, v6}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v5

    .line 170
    iget-object v2, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvDistance:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%s "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/qianhe/yct/R$string;->meter:I

    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide v11, 0x408f400000000000L    # 1000.0

    mul-double v5, v5, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-double v5, v5

    div-double/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_3
    iget-boolean v2, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->init:Z

    if-nez v2, :cond_4

    iget v2, v1, Lcom/qianhe/baselib/bean/BaseStationEntity;->baseStationId:I

    if-eqz v2, :cond_4

    iget-wide v2, v1, Lcom/qianhe/baselib/bean/BaseStationEntity;->lon:D

    cmpl-double v5, v2, v9

    if-eqz v5, :cond_4

    iget-wide v2, v1, Lcom/qianhe/baselib/bean/BaseStationEntity;->lat:D

    cmpl-double v5, v2, v9

    if-eqz v5, :cond_4

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/BaseStationEntity;->elev:D

    cmpl-double v3, v1, v9

    if-eqz v3, :cond_4

    .line 175
    iput-boolean v4, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->init:Z

    .line 176
    invoke-static {}, Lcom/qianhe/yct/activity/LocateInfoActivity;->retain()Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;

    move-result-object v1

    iput-boolean v4, v1, Lcom/qianhe/yct/activity/LocateInfoActivity$RetainState;->baseInited:Z

    .line 177
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOG,REFSTATION,ONTIME,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v4, v4, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v4, v4, Lcom/qianhe/yct/bean/AppConfig$Details;->refstation_interval:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/OrderBean;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 118
    iget-object p1, p1, Lcom/qianhe/baselib/bean/OrderBean;->array:[B

    if-eqz p1, :cond_0

    .line 119
    iget-wide v0, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->totalBytes:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->totalBytes:J

    .line 120
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvReceptionData:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->formatLength(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/AntennaHeigthEntity;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 144
    iget-wide v0, p1, Lcom/qianhe/rtkclientlib/event/AntennaHeigthEntity;->height:D

    iput-wide v0, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->antennaHeight:D

    .line 145
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-wide v0, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->antennaHeight:D

    double-to-float v0, v0

    const-string v1, "base_antennaheight_real"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 191
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 192
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 61
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 62
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 63
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->restoreRetainedBaseStation()V

    return-void
.end method
