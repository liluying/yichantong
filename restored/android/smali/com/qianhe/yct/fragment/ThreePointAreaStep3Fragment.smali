.class public Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "ThreePointAreaStep3Fragment.java"


# instance fields
.field private baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

.field private binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

.field private cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

.field private initEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

.field private isH5Pro:Z

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;


# direct methods
.method public static synthetic $r8$lambda$3u-jN2EM2dDtcPMImVMPpUy5OyI(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;Landroid/view/View;)V
    .locals 1

    .line 159
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    .line 159
    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->please_select_shovel_tip:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->handleMeasureCollectClick(ILcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CYPlO_YAXb63FY0hBNIR8zd508I(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;Landroid/view/View;)V
    .locals 8

    .line 148
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    .line 148
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    .line 151
    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    .line 152
    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    iget-object p0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    .line 153
    invoke-virtual {p0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    .line 150
    invoke-static/range {v2 .. v7}, Lcom/qianhe/yct/activity/cad/CadEntityChooseIntent;->singlePoint(DDD)[D

    move-result-object p0

    const/4 v1, 0x1

    .line 148
    invoke-virtual {p1, v0, v1, p0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(Ljava/lang/String;I[D)V

    return-void
.end method

.method public static synthetic $r8$lambda$__Xp9j3IDvOB9BUyLZj9geTvbW0(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;Landroid/view/View;)Z
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    const/4 p1, 0x1

    .line 155
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$xjtHQZWjhIDk6TsOrn2TscEwKo0(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;Ljava/lang/String;[D)V
    .locals 7

    .line 57
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    .line 57
    iput-object p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 58
    aget-wide v1, p2, p1

    const/4 p1, 0x1

    aget-wide v3, p2, p1

    const/4 p1, 0x2

    aget-wide v5, p2, p1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->showCoords(DDD)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)Lcom/qianhe/baselib/bean/ThreePointAreaEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetthreePointAreaEntity(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)Lcom/qianhe/baselib/bean/ThreePointAreaEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckPointsNotCoincide(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->checkPointsNotCoincide()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->clearCadPath()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->createEntity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnext(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->next()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;DDD)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->saveInputCoordsToGeodetic(DDD)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;DDD)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->showCoords(DDD)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method private checkPointsNotCoincide()Z
    .locals 8

    .line 314
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east1:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v6, v0, v4

    if-gez v6, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north1:D

    iget-object v6, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    .line 315
    invoke-virtual {v6}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    sub-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_0

    .line 317
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->ac_cannot_coincide:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return v2

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east2:D

    iget-object v6, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v6}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    sub-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north2:D

    iget-object v6, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    .line 321
    invoke-virtual {v6}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    sub-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_1

    .line 323
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->bc_cannot_coincide:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return v2

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east1:D

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east2:D

    sub-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north1:D

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north2:D

    sub-double/2addr v6, v0

    .line 327
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_2

    .line 329
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->ab_cannot_coincide:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private clearCadPath()V
    .locals 6

    .line 257
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

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
    .locals 5

    .line 218
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->edtDepth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v0

    .line 219
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->fillDigType:Lcom/qianhe/yct/view/DitchTypeDropdown;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/DitchTypeDropdown;->getCurrentType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    neg-double v0, v0

    :goto_0
    iput-wide v0, v2, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthC:D

    .line 220
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    .line 221
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    if-eqz v0, :cond_1

    .line 223
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/BaseStationEntity;->lon:D

    const/16 v0, 0x8

    invoke-virtual {p0, v2, v3, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    .line 224
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/BaseStationEntity;->lat:D

    invoke-virtual {p0, v2, v3, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    .line 225
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

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

    .line 284
    new-instance v0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$9;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$9;-><init>(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)V

    return-object v0
.end method

.method private initObserve()V
    .locals 3

    .line 245
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->observeCoordsStep3()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$8;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$8;-><init>(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->unitDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 96
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->ivReset:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

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

    .line 97
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->tvCadImport:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_5

    const/4 v3, 0x1

    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->ivReset:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$1;-><init>(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$2;-><init>(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 131
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$3;-><init>(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 139
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$4;-><init>(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 147
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setupToothViewCollectListeners(Lcom/qianhe/yct/view/ToothView;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    .line 148
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->tvMeasure:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->tvPointLib:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$5;-><init>(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$6;-><init>(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;-><init>(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->showData(Lcom/qianhe/baselib/bean/ThreePointAreaEntity;)V

    return-void
.end method

.method private next()V
    .locals 4

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->start_jobs:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 231
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 234
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private saveInputCoordsToGeodetic(DDD)Z
    .locals 9

    .line 269
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east3:D

    .line 270
    iput-wide p3, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north3:D

    .line 271
    iput-wide p5, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev3:D

    const/4 v0, 0x3

    .line 272
    new-array v8, v0, [D

    .line 273
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

    .line 278
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    aget-wide p2, v8, p2

    invoke-virtual {p0, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon3:D

    .line 279
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    const/4 p2, 0x1

    aget-wide p3, v8, p2

    invoke-virtual {p0, p3, p4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat3:D

    return p2

    .line 274
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    const-wide/16 p3, 0x0

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon3:D

    .line 275
    iput-wide p3, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat3:D

    return p2
.end method

.method private showCoords(DDD)V
    .locals 7

    .line 261
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->saveInputCoordsToGeodetic(DDD)Z

    move-wide v0, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 262
    iget-object p6, p1, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object p6, p6, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

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

    .line 263
    iget-object p2, p1, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double p3, p4, v4

    if-eqz p3, :cond_1

    invoke-virtual {p0, p4, p5, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v2

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object p2, p1, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double p3, v0, v4

    if-eqz p3, :cond_2

    invoke-virtual {p0, v0, v1, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showData(Lcom/qianhe/baselib/bean/ThreePointAreaEntity;)V
    .locals 9

    .line 238
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->fillDigType:Lcom/qianhe/yct/view/DitchTypeDropdown;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthC:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setCurrentType(I)V

    .line 239
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->edtDepth:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthC:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    const-string v1, "0"

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthC:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ToothView;->setCurrentType(I)V

    .line 241
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east3:D

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north3:D

    iget-wide v7, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev3:D

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->showCoords(DDD)V

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

    .line 350
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    new-instance p1, Lcom/qianhe/yct/activity/cad/CadPickHelper;

    new-instance v0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)V

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 64
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    .line 65
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 67
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v1, "LOG,REFSTATION,ONTIME,1"

    invoke-direct {p3, v0, v1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 68
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 69
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 70
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 72
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 73
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 74
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 78
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 80
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    .line 81
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->initView()V

    .line 84
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->initObserve()V

    .line 85
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 4

    .line 355
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    .line 356
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 357
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

    .line 214
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 90
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 91
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->isH5Pro:Z

    return-void
.end method
