.class public Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "ShuaPoStep3Fragment.java"


# instance fields
.field private abcCalculatedRatio:D

.field private baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

.field private binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

.field private cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

.field private initEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

.field private isH5Pro:Z

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private final pointCTextWatcher:Landroid/text/TextWatcher;

.field private shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

.field private final slopeUpdateRunnable:Ljava/lang/Runnable;

.field private updatingSlopeParams:Z


# direct methods
.method public static synthetic $r8$lambda$1Qt8rtRlu2PaTxw0StwEJktXjIM(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;Landroid/view/View;)Z
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    const/4 p1, 0x1

    .line 189
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$TbiaD4wD--ZufQTYamNFIeJKNkY(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;Landroid/view/View;)V
    .locals 1

    .line 193
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    .line 193
    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->please_select_shovel_tip:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->handleMeasureCollectClick(ILcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hOoD2l_PTV4XE0PjskU47AsH3c4(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    .line 412
    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->lltRadio:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v0, :cond_0

    .line 414
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->nsv:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(II)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$lCOeK0hm0yCmx7shvzpw3nHQXd8(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;Ljava/lang/String;[D)V
    .locals 7

    .line 63
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    .line 63
    iput-object p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 64
    aget-wide v1, p2, p1

    const/4 p1, 0x1

    aget-wide v3, p2, p1

    const/4 p1, 0x2

    aget-wide v5, p2, p1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->onPointCCollected(DDD)V

    return-void
.end method

.method public static synthetic $r8$lambda$sv1Vc4BpZtl93N3-rAzthZYu6Ek(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;Landroid/view/View;)V
    .locals 7

    .line 185
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    .line 185
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-object v0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east3:D

    iget-wide v3, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north3:D

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation3:D

    .line 187
    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/activity/cad/CadEntityChooseIntent;->singlePoint(DDD)[D

    move-result-object p0

    const/4 v1, 0x1

    .line 185
    invoke-virtual {p1, v0, v1, p0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(Ljava/lang/String;I[D)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetupdatingSlopeParams(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->updatingSlopeParams:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->clearCadPath()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->createEntity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misPointCComplete(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->isPointCComplete()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnext(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->next()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPointCCollected(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;DDD)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->onPointCCollected(DDD)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPointCCoordsInputFinished(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->onPointCCoordsInputFinished()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monRatioInputFinished(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->onRatioInputFinished()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecalcFlatDistanceFromHeight(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->recalcFlatDistanceFromHeight()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecalcHeightFromFlatDistance(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->recalcHeightFromFlatDistance()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;DDD)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->saveInputCoordsToGeodetic(DDD)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mscheduleSlopeUpdateFromABC(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->scheduleSlopeUpdateFromABC()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;DDD)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->showCoords(DDD)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncPointCEntityFromView(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->syncPointCEntityFromView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncSlopeParamsFromView(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->syncSlopeParamsFromView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSlopeParamsFromABC(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->updateSlopeParamsFromABC()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    .line 106
    new-instance v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$1;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->slopeUpdateRunnable:Ljava/lang/Runnable;

    .line 116
    new-instance v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$2;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->pointCTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method private clearCadPath()V
    .locals 6

    .line 373
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, ""

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private createEntity()V
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    .line 345
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtWidth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    .line 346
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->syncSlopeParamsFromView()V

    .line 347
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->ivSelNoWidth:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->width:D

    goto :goto_0

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v3

    invoke-virtual {p0, v3, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v0

    iput-wide v0, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->width:D

    .line 352
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    if-eqz v0, :cond_1

    .line 354
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/BaseStationEntity;->lon:D

    const/16 v0, 0x8

    invoke-virtual {p0, v2, v3, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    .line 355
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/BaseStationEntity;->lat:D

    invoke-virtual {p0, v2, v3, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    .line 356
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/BaseStationEntity;->elev:D

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    :cond_1
    return-void
.end method

.method private createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;
    .locals 1

    .line 420
    new-instance v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$15;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$15;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    return-object v0
.end method

.method private hasPointAB()Z
    .locals 6

    .line 464
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east1:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north1:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_1

    :cond_0
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east2:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_2

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north2:D

    cmpl-double v2, v0, v3

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private initObserve()V
    .locals 3

    .line 361
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoCreateActivity;->observeCoordsStep3()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$14;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$14;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 136
    new-instance v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$3;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    .line 147
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->ivStep3Collect:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->ivReset:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->pointCTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->pointCTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 172
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->pointCTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    new-instance v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$5;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$5;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    .line 181
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/view/NumericEditText;->setOnFocusListener(Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;)V

    .line 182
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/view/NumericEditText;->setOnFocusListener(Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;)V

    .line 183
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/view/NumericEditText;->setOnFocusListener(Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;)V

    .line 184
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setupToothViewCollectListeners(Lcom/qianhe/yct/view/ToothView;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    .line 185
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->tvMeasure:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->tvPointLib:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$6;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->lltNoWidth:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$7;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$8;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 222
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtHeight:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$9;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 230
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtDis:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$10;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$10;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 239
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtWidth:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$11;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$11;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 255
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$12;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$12;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$13;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->showData()V

    return-void
.end method

.method private isPointCComplete()Z
    .locals 6

    .line 453
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "."

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "-"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private next()V
    .locals 4

    .line 618
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->start_jobs:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 619
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 620
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 621
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 622
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private onPointCCollected(DDD)V
    .locals 1

    const/4 v0, 0x1

    .line 407
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->updatingSlopeParams:Z

    .line 408
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->showCoords(DDD)V

    move-object p1, p0

    const/4 p2, 0x0

    .line 409
    iput-boolean p2, p1, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->updatingSlopeParams:Z

    .line 410
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->onPointCCoordsInputFinished()V

    .line 411
    iget-object p2, p1, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->nsv:Landroidx/core/widget/NestedScrollView;

    new-instance p3, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onPointCCoordsInputFinished()V
    .locals 8

    .line 396
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->slopeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 397
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->isPointCComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->hasPointAB()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->syncPointCEntityFromView()V

    .line 401
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east3:D

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north3:D

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation3:D

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->saveInputCoordsToGeodetic(DDD)Z

    .line 402
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->updateSlopeParamsFromABC()V

    :cond_1
    :goto_0
    return-void
.end method

.method private onRatioInputFinished()V
    .locals 7

    .line 534
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 538
    :cond_0
    iget-object v4, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iput-wide v0, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->ratio:D

    .line 539
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->isPointCComplete()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->hasPointAB()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->abcCalculatedRatio:D

    cmpg-double v6, v4, v2

    if-gtz v6, :cond_1

    goto :goto_1

    :cond_1
    sub-double/2addr v0, v4

    .line 543
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_2

    .line 544
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->recalcFlatDistanceFromHeight()V

    :cond_2
    :goto_0
    return-void

    .line 540
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->recalcFlatDistanceFromHeight()V

    return-void
.end method

.method private recalcFlatDistanceFromHeight()V
    .locals 7

    .line 555
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->updatingSlopeParams:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    .line 559
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtHeight:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v6, v0, v4

    if-gtz v6, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x1

    .line 563
    iput-boolean v6, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->updatingSlopeParams:Z

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_2

    .line 565
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtDis:Lcom/qianhe/yct/view/NumericEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iput-wide v4, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->flatDistance:D

    .line 567
    iput-wide v4, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->heigth:D

    goto :goto_1

    :cond_2
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v4

    div-double v0, v2, v0

    mul-double v0, v0, v4

    .line 569
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v4

    .line 570
    iget-object v4, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtDis:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v4, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v5

    invoke-virtual {p0, v5, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v2

    iput-wide v2, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->heigth:D

    .line 572
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v3

    invoke-virtual {p0, v3, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v0

    iput-wide v0, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->flatDistance:D

    :goto_1
    const/4 v0, 0x0

    .line 574
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->updatingSlopeParams:Z

    return-void
.end method

.method private recalcHeightFromFlatDistance()V
    .locals 7

    .line 579
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->updatingSlopeParams:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    .line 583
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtDis:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v6, v0, v4

    if-gtz v6, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x1

    .line 587
    iput-boolean v6, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->updatingSlopeParams:Z

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_2

    .line 589
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtHeight:Lcom/qianhe/yct/view/NumericEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iput-wide v4, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->heigth:D

    .line 591
    iput-wide v4, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->flatDistance:D

    goto :goto_1

    :cond_2
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v4

    mul-double v0, v0, v2

    mul-double v0, v0, v4

    .line 593
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v4

    .line 594
    iget-object v4, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtHeight:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v4, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v5

    invoke-virtual {p0, v5, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v0

    iput-wide v0, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->heigth:D

    .line 596
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->flatDistance:D

    :goto_1
    const/4 v0, 0x0

    .line 598
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->updatingSlopeParams:Z

    return-void
.end method

.method private refreshAbcCalculatedRatio()V
    .locals 2

    .line 528
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->syncPointCEntityFromView()V

    .line 529
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    invoke-static {v0}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->calculateAbcRatioFromEntity(Lcom/qianhe/baselib/bean/ShuaPoEntity;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->abcCalculatedRatio:D

    return-void
.end method

.method private saveInputCoordsToGeodetic(DDD)Z
    .locals 9

    .line 603
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east3:D

    .line 604
    iput-wide p3, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north3:D

    .line 605
    iput-wide p5, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation3:D

    const/4 v0, 0x3

    .line 606
    new-array v8, v0, [D

    .line 607
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

    .line 612
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    aget-wide p2, v8, p2

    invoke-virtual {p0, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLon3:D

    .line 613
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    const/4 p2, 0x1

    aget-wide p3, v8, p2

    invoke-virtual {p0, p3, p4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLat3:D

    return p2

    .line 608
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    const-wide/16 p3, 0x0

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLon3:D

    .line 609
    iput-wide p3, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLat3:D

    return p2
.end method

.method private scheduleSlopeUpdateFromABC()V
    .locals 4

    .line 384
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->slopeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 385
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->slopeUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setRatioText(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    .line 549
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 550
    :goto_0
    iget-object p2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showCoords(DDD)V
    .locals 7

    .line 377
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->saveInputCoordsToGeodetic(DDD)Z

    move-wide v0, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 378
    iget-object p6, p1, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object p6, p6, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

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

    .line 379
    iget-object p2, p1, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double p3, p4, v4

    if-eqz p3, :cond_1

    invoke-virtual {p0, p4, p5, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v2

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object p2, p1, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double p3, v0, v4

    if-eqz p3, :cond_2

    invoke-virtual {p0, v0, v1, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showData()V
    .locals 12

    .line 312
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/4 v4, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 314
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtHeight:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 315
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtDis:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 316
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->ivStep3Collect:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 317
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->tvCadImport:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 318
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtWidth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 319
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->heightDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 320
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->lltSel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ShuaPoEnum;->DOWN:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ShuaPoEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 322
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->ivStep3Collect:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->sel_sp_down3_collect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 323
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->tvCdes:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->is_pointC_bottom_of_slope:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_7

    .line 324
    :cond_7
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ShuaPoEnum;->UP:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ShuaPoEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 325
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->ivStep3Collect:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->sel_sp_up3_collect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 326
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->tvCdes:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->is_pointC_top_of_slope:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 328
    :cond_8
    :goto_7
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ToothView;->setCurrentType(I)V

    .line 329
    iput-boolean v4, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->updatingSlopeParams:Z

    .line 330
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east3:D

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north3:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation3:D

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->showCoords(DDD)V

    .line 331
    iput-boolean v3, v5, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->updatingSlopeParams:Z

    .line 332
    iget-object v0, v5, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtWidth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, v5, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v6, v1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->width:D

    const-wide/16 v8, 0x0

    cmpl-double v1, v6, v8

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v6, v5, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v6, v6, Lcom/qianhe/baselib/bean/ShuaPoEntity;->width:D

    invoke-virtual {p0, v1, v6, v7}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x3

    invoke-virtual {p0, v1, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_9
    const-string v1, ""

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->showSlopeParams()V

    .line 334
    iget-object v0, v5, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->ivSelNoWidth:Landroid/widget/ImageView;

    iget-object v1, v5, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v6, v1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->width:D

    cmpl-double v1, v6, v8

    if-nez v1, :cond_a

    goto :goto_9

    :cond_a
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 335
    iget-object v0, v5, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->lltWidth:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->ivSelNoWidth:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_a

    :cond_b
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showSlopeParams()V
    .locals 9

    .line 479
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->heigth:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_2

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->flatDistance:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_2

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->ratio:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_0

    goto :goto_0

    .line 490
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->isPointCComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->hasPointAB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->updateSlopeParamsFromABC()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 480
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->updatingSlopeParams:Z

    .line 481
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtDis:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->flatDistance:D

    const-string v0, ""

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    cmpl-double v2, v5, v3

    if-eqz v2, :cond_3

    .line 482
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/ShuaPoEntity;->flatDistance:D

    invoke-virtual {p0, v2, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v5

    mul-double v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-double v5, v5

    div-double/2addr v5, v7

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v0

    .line 481
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtHeight:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->heigth:D

    cmpl-double v2, v5, v3

    if-eqz v2, :cond_4

    .line 485
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v0

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->heigth:D

    invoke-virtual {p0, v0, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v2

    mul-double v2, v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v7

    invoke-virtual {p0, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v0

    .line 484
    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->ratio:D

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->setRatioText(D)V

    const/4 v0, 0x0

    .line 488
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->updatingSlopeParams:Z

    .line 489
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->refreshAbcCalculatedRatio()V

    return-void
.end method

.method private syncPointCEntityFromView()V
    .locals 3

    .line 389
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east3:D

    .line 390
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north3:D

    .line 391
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation3:D

    return-void
.end method

.method private syncSlopeParamsFromView()V
    .locals 7

    .line 470
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtDis:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    .line 471
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtHeight:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    .line 472
    iget-object v4, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v5}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    iput-wide v5, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->ratio:D

    .line 473
    iget-object v4, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v5

    invoke-virtual {p0, v5, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v2

    iput-wide v2, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->heigth:D

    .line 474
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v3

    invoke-virtual {p0, v3, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v0

    iput-wide v0, v2, Lcom/qianhe/baselib/bean/ShuaPoEntity;->flatDistance:D

    return-void
.end method

.method private updateSlopeParamsFromABC()V
    .locals 12

    .line 497
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    .line 498
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    .line 499
    iget-object v4, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v4}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    .line 500
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->isPointCComplete()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 503
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->hasPointAB()Z

    move-result v6

    if-nez v6, :cond_1

    :goto_0
    return-void

    .line 507
    :cond_1
    iget-object v6, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iput-wide v0, v6, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east3:D

    .line 508
    iput-wide v2, v6, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north3:D

    .line 509
    iput-wide v4, v6, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation3:D

    .line 511
    invoke-static {v6}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->applySlopeParamsFromAC(Lcom/qianhe/baselib/bean/ShuaPoEntity;)V

    .line 512
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->ratio:D

    iput-wide v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->abcCalculatedRatio:D

    .line 513
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->heigth:D

    const/4 v3, 0x1

    .line 515
    iput-boolean v3, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->updatingSlopeParams:Z

    .line 516
    iget-object v3, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtDis:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->flatDistance:D

    const-string v0, ""

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    cmpl-double v10, v4, v6

    if-eqz v10, :cond_2

    .line 517
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v4

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v10, v5, Lcom/qianhe/baselib/bean/ShuaPoEntity;->flatDistance:D

    invoke-virtual {p0, v4, v10, v11}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v4

    mul-double v4, v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v8

    invoke-virtual {p0, v4, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v0

    .line 516
    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v3, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtHeight:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double v4, v1, v6

    if-eqz v4, :cond_3

    .line 520
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v0

    mul-double v0, v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v8

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v0

    .line 519
    :cond_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->ratio:D

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->setRatioText(D)V

    const/4 v0, 0x0

    .line 523
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->updatingSlopeParams:Z

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

    .line 640
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    new-instance p1, Lcom/qianhe/yct/activity/cad/CadPickHelper;

    new-instance v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 70
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 75
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 76
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 77
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 79
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 80
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 81
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 85
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 87
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    .line 88
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    .line 90
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->initView()V

    .line 91
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->initObserve()V

    .line 92
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 4

    .line 645
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->slopeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 646
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    .line 647
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 648
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

    .line 340
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 97
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 98
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->isH5Pro:Z

    .line 99
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->heightDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    return-void
.end method
