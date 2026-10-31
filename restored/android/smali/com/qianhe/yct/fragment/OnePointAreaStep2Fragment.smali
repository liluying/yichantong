.class public Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "OnePointAreaStep2Fragment.java"


# instance fields
.field private baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

.field private binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;

.field private initEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;


# direct methods
.method static bridge synthetic -$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;)Lcom/qianhe/baselib/bean/OnePointAreaEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->initEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonePointAreaEntity(Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;)Lcom/qianhe/baselib/bean/OnePointAreaEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;Lcom/qianhe/baselib/bean/OnePointAreaEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->createEntity(Lcom/qianhe/baselib/bean/OnePointAreaEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnext(Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->next()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method private createEntity(Lcom/qianhe/baselib/bean/OnePointAreaEntity;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;->edtRatioE:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->ratioE:D

    .line 103
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;->edtRatioN:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->ratioN:D

    .line 104
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    if-eqz v0, :cond_0

    .line 106
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/BaseStationEntity;->lon:D

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    .line 107
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/BaseStationEntity;->lat:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    .line 108
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/BaseStationEntity;->elev:D

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment$1;-><init>(Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment$2;-><init>(Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->showData()V

    return-void
.end method

.method private next()V
    .locals 4

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->start_jobs:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    iget-object v1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showData()V
    .locals 7

    .line 113
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;->edtRatioE:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->ratioE:D

    const-string v3, "0"

    const-wide/16 v4, 0x0

    cmpl-double v6, v1, v4

    if-nez v6, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;->edtRatioN:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->ratioN:D

    cmpl-double v6, v1, v4

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public gga(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    return-void
.end method

.method public insNavi(Lcom/qianhe/baselib/bean/InsNavi;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 139
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 41
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;

    .line 42
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 44
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v1, "LOG,REFSTATION,ONTIME,1"

    invoke-direct {p3, v0, v1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 45
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 46
    iget-object p3, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 47
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 49
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 50
    iget-object p3, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 51
    iget-object p3, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p3, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 55
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 57
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->initEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    .line 58
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    .line 60
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->initView()V

    .line 61
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe2Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 4

    .line 144
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    .line 145
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 146
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "UNLOG,REFSTATION"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/BaseStationEntity;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    return-void
.end method
