.class public Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "OnePointAreaStep1Fragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

.field private cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

.field private initEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

.field private isH5Pro:Z

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;


# direct methods
.method public static synthetic $r8$lambda$3ZdP2dVtgcOBRk2xK0fEuryp7xM(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;Landroid/view/View;)V
    .locals 8

    .line 107
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    .line 107
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    .line 110
    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    iget-object v1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    .line 111
    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    iget-object p0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    .line 112
    invoke-virtual {p0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    .line 109
    invoke-static/range {v2 .. v7}, Lcom/qianhe/yct/activity/cad/CadEntityChooseIntent;->singlePoint(DDD)[D

    move-result-object p0

    const/4 v1, 0x1

    .line 107
    invoke-virtual {p1, v0, v1, p0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(Ljava/lang/String;I[D)V

    return-void
.end method

.method public static synthetic $r8$lambda$OU8LXKUZ6fz0UxaySMkTushOa9o(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;Ljava/lang/String;[D)V
    .locals 7

    .line 49
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    .line 49
    iput-object p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 50
    aget-wide v1, p2, p1

    const/4 p1, 0x1

    aget-wide v3, p2, p1

    const/4 p1, 0x2

    aget-wide v5, p2, p1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->showCoords(DDD)V

    return-void
.end method

.method public static synthetic $r8$lambda$S0g9cn7F5_2GcwbdZZ1rE_-jEcE(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;Landroid/view/View;)V
    .locals 1

    .line 124
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    .line 124
    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->please_select_shovel_tip:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->handleMeasureCollectClick(ILcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hhZODcwdGmujdXjmfwl6ApCaTl8(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;Landroid/view/View;)Z
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    const/4 p1, 0x1

    .line 114
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(I)V

    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)Lcom/qianhe/baselib/bean/OnePointAreaEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->initEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonePointAreaEntity(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)Lcom/qianhe/baselib/bean/OnePointAreaEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->clearCadPath()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;DDD)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->saveInputCoordsToGeodetic(DDD)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;DDD)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->showCoords(DDD)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)I
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;ID)D
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$200(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)I
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method private clearCadPath()V
    .locals 6

    .line 209
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, ""

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;
    .locals 1

    .line 220
    new-instance v0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$7;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$7;-><init>(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)V

    return-object v0
.end method

.method private initObserve()V
    .locals 3

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaCreateActivity;->observeCoords()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$6;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$6;-><init>(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->unitDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 86
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->ivReset:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$1;-><init>(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setupToothViewCollectListeners(Lcom/qianhe/yct/view/ToothView;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    .line 107
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->fillDigType:Lcom/qianhe/yct/view/DitchTypeDropdown;

    new-instance v1, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$2;-><init>(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setOnTypetSelectedListener(Lcom/qianhe/yct/view/DitchTypeDropdown$OnTypeSelectedListener;)V

    .line 123
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->tvMeasure:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->tvPointLib:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$3;-><init>(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$4;-><init>(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$5;-><init>(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->showData()V

    return-void
.end method

.method private saveInputCoordsToGeodetic(DDD)Z
    .locals 9

    .line 182
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->east:D

    .line 183
    iput-wide p3, v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->north:D

    .line 184
    iput-wide p5, v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->elev:D

    const/4 v0, 0x3

    .line 185
    new-array v8, v0, [D

    .line 186
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToGeodeticInverse(DDD[D)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v8}, Lcom/qianhe/yct/base/BaseProjectFragment;->isVaildCoords([D)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    aget-wide p2, v8, p2

    invoke-virtual {p0, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->lon:D

    .line 192
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    const/4 p2, 0x1

    aget-wide p3, v8, p2

    invoke-virtual {p0, p3, p4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->lat:D

    return p2

    .line 187
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    const-wide/16 p3, 0x0

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->lon:D

    .line 188
    iput-wide p3, p1, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->lat:D

    return p2
.end method

.method private showCoords(DDD)V
    .locals 7

    .line 213
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->saveInputCoordsToGeodetic(DDD)Z

    move-wide v0, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 214
    iget-object p6, p1, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object p6, p6, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    const-string v2, ""

    const/4 v3, 0x3

    const-wide/16 v4, 0x0

    cmpl-double v6, p2, v4

    if-eqz v6, :cond_0

    invoke-virtual {p0, p2, p3, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v2

    :goto_0
    invoke-virtual {p6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object p2, p1, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double p3, p4, v4

    if-eqz p3, :cond_1

    invoke-virtual {p0, p4, p5, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v2

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object p2, p1, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double p3, v0, v4

    if-eqz p3, :cond_2

    invoke-virtual {p0, v0, v1, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showData()V
    .locals 8

    .line 165
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ToothView;->setCurrentType(I)V

    .line 166
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->ivReset:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 171
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->edtDepth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->tvCadImport:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 173
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->edtDepth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iget-wide v4, v1, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->depth:D

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-nez v1, :cond_7

    const-string v1, "0"

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v4, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->depth:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->fillDigType:Lcom/qianhe/yct/view/DitchTypeDropdown;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 175
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->fillDigType:Lcom/qianhe/yct/view/DitchTypeDropdown;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iget-wide v4, v1, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->depth:D

    cmpl-double v1, v4, v6

    if-lez v1, :cond_9

    const/4 v3, 0x1

    :cond_9
    invoke-virtual {v0, v3}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setCurrentType(I)V

    .line 176
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->tvContinue:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 177
    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    if-eqz v0, :cond_a

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->east:D

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->north:D

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->elev:D

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->showCoords(DDD)V

    :cond_a
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

    .line 265
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    new-instance p1, Lcom/qianhe/yct/activity/cad/CadPickHelper;

    new-instance v0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;)V

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 56
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    .line 57
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 58
    iget-object p3, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 59
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 61
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 62
    iget-object p3, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 63
    iget-object p3, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 67
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 69
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->initEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    .line 70
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->onePointAreaEntity:Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->initView()V

    .line 73
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->initObserve()V

    .line 74
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentOnepointAreaStpe1Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 79
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 80
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep1Fragment;->isH5Pro:Z

    return-void
.end method
