.class public Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "ZhaoPingCreateFragment.java"


# instance fields
.field private baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

.field private binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

.field private cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

.field private initEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

.field private isH5Pro:Z

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;


# direct methods
.method public static synthetic $r8$lambda$PS9QHR1Vfy-TRrrFbRxFSoiSAxU(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;Landroid/view/View;)V
    .locals 7

    .line 173
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    .line 173
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget-object v0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->east:D

    iget-wide v3, p0, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->north:D

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->targetElevation:D

    .line 175
    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/activity/cad/CadEntityChooseIntent;->singlePoint(DDD)[D

    move-result-object p0

    const/4 v1, 0x1

    .line 173
    invoke-virtual {p1, v0, v1, p0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(Ljava/lang/String;I[D)V

    return-void
.end method

.method public static synthetic $r8$lambda$QXo3oFlD4ZBbqnMZB1h0c2j4ihI(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;Ljava/lang/String;[D)V
    .locals 7

    .line 62
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    .line 62
    iput-object p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 63
    aget-wide v1, p2, p1

    const/4 p1, 0x1

    aget-wide v3, p2, p1

    const/4 p1, 0x2

    aget-wide v5, p2, p1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->showCoords(DDD)V

    return-void
.end method

.method public static synthetic $r8$lambda$chheotPl-lGdhl6D4uYnL5Ehwsw(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;Landroid/view/View;)Z
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    const/4 p1, 0x1

    .line 177
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(I)V

    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->initEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->clearCadPath()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;Lcom/qianhe/baselib/bean/ZhaoPingEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->createEntity(Lcom/qianhe/baselib/bean/ZhaoPingEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnext(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->next()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;DDD)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->saveInputCoordsToGeodetic(DDD)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;DDD)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->showCoords(DDD)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method private clearCadPath()V
    .locals 6

    .line 292
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, ""

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private createEntity(Lcom/qianhe/baselib/bean/ZhaoPingEntity;)V
    .locals 5

    .line 229
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    .line 230
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    iput v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    .line 231
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    iget v3, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v4, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->FILL:Lcom/qianhe/baselib/enums/ZhaoPingEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->getType()I

    move-result v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    neg-double v0, v0

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->depth:D

    .line 232
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    if-eqz v0, :cond_1

    .line 234
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/BaseStationEntity;->lon:D

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    .line 235
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/BaseStationEntity;->lat:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    .line 236
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/BaseStationEntity;->elev:D

    const/4 v2, 0x3

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

    .line 319
    new-instance v0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$8;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$8;-><init>(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)V

    return-object v0
.end method

.method private initObserve()V
    .locals 3

    .line 280
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;->observeCoords()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$7;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$7;-><init>(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->ivReset:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$1;-><init>(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$2;-><init>(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 140
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$3;-><init>(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$4;-><init>(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 172
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setupToothViewCollectListeners(Lcom/qianhe/yct/view/ToothView;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    .line 173
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$5;-><init>(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;-><init>(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->showData()V

    return-void
.end method

.method private modifyLayout()V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->LEVEING:Lcom/qianhe/baselib/enums/ZhaoPingEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->lltValue:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->ivType:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_create_leveling:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->tvType:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->leveling:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->FILL:Lcom/qianhe/baselib/enums/ZhaoPingEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->getType()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 267
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->ivType:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_create_fill:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->tvType:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->fill:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 269
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->lltValue:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->tvTypeDes:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->fill:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->DIG:Lcom/qianhe/baselib/enums/ZhaoPingEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 272
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->ivType:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_create_dig:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->tvType:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->dig:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 274
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->lltValue:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->tvTypeDes:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->dig:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    return-void
.end method

.method private next()V
    .locals 4

    .line 220
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->start_jobs:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 221
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private saveInputCoordsToGeodetic(DDD)Z
    .locals 9

    .line 304
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->east:D

    .line 305
    iput-wide p3, v0, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->north:D

    .line 306
    iput-wide p5, v0, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->targetElevation:D

    const/4 v0, 0x3

    .line 307
    new-array v8, v0, [D

    .line 308
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

    .line 313
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    aget-wide p2, v8, p2

    invoke-virtual {p0, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->targetLon:D

    .line 314
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    const/4 p2, 0x1

    aget-wide p3, v8, p2

    invoke-virtual {p0, p3, p4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->targetLat:D

    return p2

    .line 309
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    const-wide/16 p3, 0x0

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->targetLon:D

    .line 310
    iput-wide p3, p1, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->targetLat:D

    return p2
.end method

.method private showCoords(DDD)V
    .locals 7

    .line 296
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->saveInputCoordsToGeodetic(DDD)Z

    move-wide v0, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 297
    iget-object p6, p1, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object p6, p6, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

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

    .line 298
    iget-object p2, p1, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double p3, p4, v4

    if-eqz p3, :cond_1

    invoke-virtual {p0, p4, p5, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v2

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object p2, p1, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

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

    .line 241
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ToothView;->setCurrentType(I)V

    .line 242
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->ivReset:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

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

    .line 243
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 245
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 246
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 247
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 248
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->tvCadImport:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_6

    const/4 v3, 0x1

    :cond_6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 249
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->customDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 251
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->height:D

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    if-eqz v1, :cond_7

    .line 252
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    .line 253
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->height:D

    iput-wide v3, v0, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->depth:D

    .line 255
    :cond_7
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->tvContinue:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 256
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->depth:D

    cmpl-double v3, v1, v5

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->depth:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const/4 v4, 0x3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_8
    const-string v1, ""

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->modifyLayout()V

    .line 258
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    if-eqz v0, :cond_9

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->east:D

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->north:D

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->targetElevation:D

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->showCoords(DDD)V

    :cond_9
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

    .line 369
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance p1, Lcom/qianhe/yct/activity/cad/CadPickHelper;

    new-instance v0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)V

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 69
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 71
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 73
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v1, "LOG,REFSTATION,ONTIME,1"

    invoke-direct {p3, v0, v1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 74
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 75
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 76
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 78
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 79
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 80
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 84
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 86
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->initEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    .line 87
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->initView()V

    .line 90
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->initObserve()V

    .line 91
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 4

    .line 374
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    .line 375
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 376
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

    .line 358
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 96
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 97
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->isH5Pro:Z

    .line 98
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->customDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 99
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->modifyLayout()V

    return-void
.end method
