.class public Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "ArbitrarylineCreateFragment.java"


# instance fields
.field private baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

.field private binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

.field private cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

.field private initEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

.field private isH5Pro:Z

.field private mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;


# direct methods
.method public static synthetic $r8$lambda$8e6BCUIy7lyRz9KW6J6p1iCaaxA(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;Landroid/view/View;)V
    .locals 8

    .line 120
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    .line 120
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    .line 123
    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    .line 124
    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    iget-object p0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    .line 125
    invoke-virtual {p0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    .line 122
    invoke-static/range {v2 .. v7}, Lcom/qianhe/yct/activity/cad/CadEntityChooseIntent;->singlePoint(DDD)[D

    move-result-object p0

    const/4 v1, 0x1

    .line 120
    invoke-virtual {p1, v0, v1, p0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(Ljava/lang/String;I[D)V

    return-void
.end method

.method public static synthetic $r8$lambda$pDwd_9wG_VFD8BH9tCjcIIvIuHk(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;Landroid/view/View;)Z
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    const/4 p1, 0x1

    .line 127
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$vl5JB5Rf-0Bptk-zBqOlUgQJdxo(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;Ljava/lang/String;[D)V
    .locals 7

    .line 59
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    .line 59
    iput-object p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 60
    aget-wide v1, p2, p1

    const/4 p1, 0x1

    aget-wide v3, p2, p1

    const/4 p1, 0x2

    aget-wide v5, p2, p1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->showCoords(DDD)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->initEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmArbitraryLineEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->clearCadPath()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;Lcom/qianhe/baselib/bean/ArbitraryLineEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->createEntity(Lcom/qianhe/baselib/bean/ArbitraryLineEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnext(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->next()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;DDD)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->saveInputCoordsToGeodetic(DDD)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;DDD)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->showCoords(DDD)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method private clearCadPath()V
    .locals 6

    .line 227
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, ""

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private createEntity(Lcom/qianhe/baselib/bean/ArbitraryLineEntity;)V
    .locals 4

    .line 184
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->edtDepth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v0

    .line 185
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->fillDigType:Lcom/qianhe/yct/view/DitchTypeDropdown;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/DitchTypeDropdown;->getCurrentType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    neg-double v0, v0

    :goto_0
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->depth:D

    .line 186
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->ratio:D

    .line 187
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v0

    iput v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    .line 188
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    if-eqz v0, :cond_1

    .line 190
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/BaseStationEntity;->lon:D

    const/16 v3, 0x8

    invoke-virtual {p0, v0, v1, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    .line 191
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/BaseStationEntity;->lat:D

    invoke-virtual {p0, v0, v1, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    .line 192
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/BaseStationEntity;->elev:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    :cond_1
    return-void
.end method

.method private createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;
    .locals 1

    .line 254
    new-instance v0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$6;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$6;-><init>(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)V

    return-object v0
.end method

.method private initObserve()V
    .locals 3

    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineCreateActivity;->observeCoords()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$5;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$5;-><init>(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->unitDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 99
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->ivReset:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;-><init>(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setupToothViewCollectListeners(Lcom/qianhe/yct/view/ToothView;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    .line 120
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->fillDigType:Lcom/qianhe/yct/view/DitchTypeDropdown;

    new-instance v1, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$2;-><init>(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setOnTypetSelectedListener(Lcom/qianhe/yct/view/DitchTypeDropdown$OnTypeSelectedListener;)V

    .line 136
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$3;-><init>(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;-><init>(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->showData()V

    return-void
.end method

.method private next()V
    .locals 4

    .line 176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->start_jobs:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 177
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private saveInputCoordsToGeodetic(DDD)Z
    .locals 9

    .line 239
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->east:D

    .line 240
    iput-wide p3, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->north:D

    .line 241
    iput-wide p5, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->elev:D

    const/4 v0, 0x3

    .line 242
    new-array v8, v0, [D

    .line 243
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

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    aget-wide p2, v8, p2

    invoke-virtual {p0, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->lon:D

    .line 249
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    const/4 p2, 0x1

    aget-wide p3, v8, p2

    invoke-virtual {p0, p3, p4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->lat:D

    return p2

    .line 244
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    const-wide/16 p3, 0x0

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->lon:D

    .line 245
    iput-wide p3, p1, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->lat:D

    return p2
.end method

.method private showCoords(DDD)V
    .locals 7

    .line 231
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->saveInputCoordsToGeodetic(DDD)Z

    move-wide v0, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 232
    iget-object p6, p1, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object p6, p6, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

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

    .line 233
    iget-object p2, p1, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double p3, p4, v4

    if-eqz p3, :cond_1

    invoke-virtual {p0, p4, p5, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v2

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object p2, p1, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

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

    .line 197
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ToothView;->setCurrentType(I)V

    .line 198
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->ivReset:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

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

    .line 199
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->edtDepth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->edtDepth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget-wide v4, v1, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->depth:D

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-nez v1, :cond_6

    const-string v1, "0"

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v4, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->depth:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget-wide v4, v1, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->ratio:D

    const/4 v1, 0x3

    invoke-virtual {p0, v4, v5, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->tvCadImport:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->fillDigType:Lcom/qianhe/yct/view/DitchTypeDropdown;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 208
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->fillDigType:Lcom/qianhe/yct/view/DitchTypeDropdown;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget-wide v4, v1, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->depth:D

    cmpl-double v1, v4, v6

    if-lez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_8

    :cond_9
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setCurrentType(I)V

    .line 209
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->tvContinue:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->lltCollect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    if-eqz v0, :cond_a

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->east:D

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->north:D

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->elev:D

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->showCoords(DDD)V

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

    .line 304
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    new-instance p1, Lcom/qianhe/yct/activity/cad/CadPickHelper;

    new-instance v0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)V

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 66
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    .line 67
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 69
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v1, "LOG,REFSTATION,ONTIME,1"

    invoke-direct {p3, v0, v1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 70
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 71
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 72
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 74
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 75
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 76
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 80
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 82
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->initEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    .line 83
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->mArbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->initView()V

    .line 86
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->initObserve()V

    .line 87
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 4

    .line 309
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    .line 310
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 311
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

    .line 293
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 92
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 93
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->isH5Pro:Z

    return-void
.end method
