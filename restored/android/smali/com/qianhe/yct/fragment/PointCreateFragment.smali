.class public Lcom/qianhe/yct/fragment/PointCreateFragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "PointCreateFragment.java"


# instance fields
.field private applyingCoordDisplayCount:I

.field private binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

.field private groupLocalId:J

.field private initEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private mToothType:I

.field private final pointSystems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;


# direct methods
.method public static synthetic $r8$lambda$4AAU8OrgPKbCtIabqfEK-mPSn7I(Lcom/qianhe/yct/fragment/PointCreateFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    const-string v0, "defaultname"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->applyDefaultPointName()V

    return-void

    .line 164
    :cond_1
    const-string p1, "manual_cancel"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 165
    iget-object p0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtPointName:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$ELy4DdBXfE3_sPVqEEsmb5t08zM(Lcom/qianhe/yct/fragment/PointCreateFragment;Landroid/view/View;)V
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    .line 137
    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->mToothType:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->please_select_shovel_tip:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 141
    :cond_0
    iget p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->mToothType:I

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->handleMeasureCollectClick(ILcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HurBjBw5zIzpTzDWD7DQohzcd9g(Lcom/qianhe/yct/fragment/PointCreateFragment;[D)V
    .locals 8

    if-eqz p1, :cond_1

    .line 426
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 427
    aget-wide v2, p1, v0

    const/4 v0, 0x1

    aget-wide v4, p1, v0

    const/4 v0, 0x2

    aget-wide v6, p1, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/fragment/PointCreateFragment;->showCoords(DDD)V

    :cond_0
    return-void

    :cond_1
    move-object v1, p0

    .line 0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic $r8$lambda$L4Qtwv6jUB1PqxVTFjzyXDpNjNo(Lcom/qianhe/yct/fragment/PointCreateFragment;Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity$CollectGnssQuality;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 421
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget v2, p1, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity$CollectGnssQuality;->quality:I

    iget-wide v3, p1, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity$CollectGnssQuality;->hdop:D

    iget-wide v5, p1, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity$CollectGnssQuality;->vdop:D

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/fragment/PointCreateFragment;->applyCollectedGnssQuality(IDD)V

    :cond_0
    return-void

    :cond_1
    move-object v1, p0

    .line 0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic $r8$lambda$YMk0ai1yZYyUXRY22tT7cEFWAd8(Lcom/qianhe/yct/fragment/PointCreateFragment;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    new-instance p1, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;-><init>()V

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ChooseListDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    sget v1, Lcom/qianhe/yct/R$string;->select_coordinates_system:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "list"

    iget-object v2, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointSystems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 98
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 99
    new-instance v0, Lcom/qianhe/yct/fragment/PointCreateFragment$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/PointCreateFragment$1;-><init>(Lcom/qianhe/yct/fragment/PointCreateFragment;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/ChooseListDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_oXein7pGBL6Sh84o1E042t2WBU(Landroid/view/View;)V
    .locals 1

    .line 143
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    const-string v0, "previous"

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ecnSMXpkUlYTO7P-0ienl8vswp0(Lcom/qianhe/yct/fragment/PointCreateFragment;Landroid/view/View;)V
    .locals 3

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 119
    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->reset_data:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/PointCreateFragment$2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/PointCreateFragment$2;-><init>(Lcom/qianhe/yct/fragment/PointCreateFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lPbA_eSw5K7V3bsu5zL9LDRY5Eo(Lcom/qianhe/yct/fragment/PointCreateFragment;[D)V
    .locals 1

    if-eqz p1, :cond_1

    .line 431
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->applyGeodetic([D)V

    :cond_0
    return-void

    .line 0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic $r8$lambda$oM4mulY_7vvmt-IzYTNWZIedJ10(Lcom/qianhe/yct/fragment/PointCreateFragment;Landroid/view/View;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->savePoint()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/PointCreateFragment;)Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/PointCreateFragment;)Lcom/qianhe/baselib/bean/PointlibEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->initEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpointSystems(Lcom/qianhe/yct/fragment/PointCreateFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointSystems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpointlibEntity(Lcom/qianhe/yct/fragment/PointCreateFragment;)Lcom/qianhe/baselib/bean/PointlibEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmToothType(Lcom/qianhe/yct/fragment/PointCreateFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->mToothType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyCollectedGnssQuality(Lcom/qianhe/yct/fragment/PointCreateFragment;IDD)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/qianhe/yct/fragment/PointCreateFragment;->applyCollectedGnssQuality(IDD)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyGeodetic(Lcom/qianhe/yct/fragment/PointCreateFragment;[D)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->applyGeodetic([D)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearCoordDisplay(Lcom/qianhe/yct/fragment/PointCreateFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->clearCoordDisplay()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcommitInputFromMode(Lcom/qianhe/yct/fragment/PointCreateFragment;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->commitInputFromMode(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetCoordModeIndex(Lcom/qianhe/yct/fragment/PointCreateFragment;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->getCoordModeIndex()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhasStoredCoords(Lcom/qianhe/yct/fragment/PointCreateFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->hasStoredCoords()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misEcefMode(Lcom/qianhe/yct/fragment/PointCreateFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isEcefMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmarkManualCoordEdit(Lcom/qianhe/yct/fragment/PointCreateFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->markManualCoordEdit()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshCoordDisplayForCurrentMode(Lcom/qianhe/yct/fragment/PointCreateFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->refreshCoordDisplayForCurrentMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshEcefDisplay(Lcom/qianhe/yct/fragment/PointCreateFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->refreshEcefDisplay()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestoreInitGeodeticCoords(Lcom/qianhe/yct/fragment/PointCreateFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->restoreInitGeodeticCoords()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/PointCreateFragment;DDD)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/PointCreateFragment;->showCoords(DDD)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCoordTypeUi(Lcom/qianhe/yct/fragment/PointCreateFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->updateCoordTypeUi(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointSystems:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/fragment/PointCreateFragment;[D)Z
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->isVaildCoords([D)Z

    move-result p0

    return p0
.end method

.method private applyCollectedGnssQuality(IDD)V
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    if-nez v0, :cond_0

    return-void

    .line 866
    :cond_0
    iput p1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->quality:I

    .line 867
    invoke-static {p2, p3}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundDop(D)D

    move-result-wide p1

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->hdop:D

    .line 868
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-static {p4, p5}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundDop(D)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->vdop:D

    return-void
.end method

.method private applyDefaultPointName()V
    .locals 5

    .line 172
    iget-wide v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->groupLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->getGroupLocalId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->groupLocalId:J

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->groupLocalId:J

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->generateDefaultPointName(J)Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtPointName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    return-void
.end method

.method private applyGeodetic([D)V
    .locals 4

    .line 438
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->isVaildCoords([D)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    const/16 v3, 0x8

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    .line 442
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    const/4 v1, 0x1

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    .line 443
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    const/4 v1, 0x2

    aget-wide v1, p1, v1

    const/4 p1, 0x3

    invoke-virtual {p0, v1, v2, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    .line 444
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->hasCollectedCoords()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 445
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->fillGeodeticFromPlaneCoords(Lcom/qianhe/baselib/bean/PointlibEntity;)V

    .line 446
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->refreshDerivedGeodeticDisplay()V

    :cond_1
    :goto_0
    return-void
.end method

.method private beginApplyingCoordDisplay()V
    .locals 1

    .line 879
    iget v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->applyingCoordDisplayCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->applyingCoordDisplayCount:I

    return-void
.end method

.method private clearCoordDisplay()V
    .locals 2

    .line 713
    const-string v0, ""

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->beginApplyingCoordDisplay()V

    .line 715
    :try_start_0
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtLon:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtLat:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefX:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefY:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefZ:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->endApplyingCoordDisplay()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->endApplyingCoordDisplay()V

    .line 725
    throw v0
.end method

.method private commitInputFromMode(I)Z
    .locals 15

    move/from16 v1, p1

    const/4 v2, 0x2

    const/4 v7, 0x1

    const-wide/16 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 512
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefX:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    .line 513
    iget-object v5, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefY:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v5}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    .line 514
    iget-object v8, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefZ:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v8}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v8

    cmpl-double v10, v1, v3

    if-nez v10, :cond_0

    cmpl-double v10, v5, v3

    if-nez v10, :cond_0

    cmpl-double v10, v8, v3

    if-nez v10, :cond_0

    return v7

    .line 516
    :cond_0
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-virtual {v3}, Lcom/qianhe/baselib/bean/PointlibEntity;->hasGeodeticCoords()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, p0

    move-wide v3, v5

    move-wide v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isEcefInputEdited(DDD)Z

    move-result v1

    if-nez v1, :cond_1

    .line 517
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-direct {p0, v1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->fillGeodeticFromPlaneCoords(Lcom/qianhe/baselib/bean/PointlibEntity;)V

    return v7

    .line 520
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-direct {p0, v1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->prepareEcefEntityFromInput(Lcom/qianhe/baselib/bean/PointlibEntity;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    return v1

    .line 521
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->markManualCoordEdit()V

    .line 522
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-direct {p0, v1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->fillPlaneFromGeodetic(Lcom/qianhe/baselib/bean/PointlibEntity;)Z

    move-result v1

    return v1

    :cond_3
    const/4 v6, 0x3

    if-ne v1, v7, :cond_8

    .line 525
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtLon:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    .line 526
    iget-object v5, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtLat:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v5}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v8

    .line 527
    iget-object v5, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v5}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v10

    cmpl-double v5, v1, v3

    if-nez v5, :cond_4

    cmpl-double v5, v8, v3

    if-nez v5, :cond_4

    cmpl-double v5, v10, v3

    if-nez v5, :cond_4

    return v7

    .line 529
    :cond_4
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-virtual {v3}, Lcom/qianhe/baselib/bean/PointlibEntity;->hasGeodeticCoords()Z

    move-result v3

    const/16 v12, 0x8

    if-eqz v3, :cond_7

    .line 530
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-direct {p0, v3}, Lcom/qianhe/yct/fragment/PointCreateFragment;->fillGeodeticFromPlaneCoords(Lcom/qianhe/baselib/bean/PointlibEntity;)V

    .line 531
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v3, v3, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    const/16 v5, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isSameDisplayCoord(DDI)Z

    move-result v3

    move-wide v13, v1

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    const/16 v5, 0x8

    move-object v0, p0

    move-wide v1, v8

    .line 532
    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isSameDisplayCoord(DDI)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    const/4 v5, 0x3

    move-object v0, p0

    move-wide v1, v10

    .line 533
    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isSameDisplayCoord(DDI)Z

    move-result v3

    if-eqz v3, :cond_6

    return v7

    :cond_5
    move-wide v1, v10

    .line 538
    :cond_6
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->markManualCoordEdit()V

    .line 539
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-virtual {p0, v13, v14, v12}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    .line 540
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-virtual {p0, v8, v9, v12}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    .line 541
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-virtual {p0, v1, v2, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v3, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    .line 542
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    .line 543
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    .line 544
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    .line 545
    invoke-direct {p0, v1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->fillPlaneFromGeodetic(Lcom/qianhe/baselib/bean/PointlibEntity;)Z

    move-result v1

    return v1

    :cond_7
    move-wide v13, v1

    move-wide v1, v10

    .line 547
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->markManualCoordEdit()V

    .line 548
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-virtual {p0, v13, v14, v12}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    .line 549
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-virtual {p0, v8, v9, v12}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    .line 550
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-virtual {p0, v1, v2, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v3, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    .line 551
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    .line 552
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    .line 553
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    .line 554
    invoke-direct {p0, v1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->fillPlaneFromGeodetic(Lcom/qianhe/baselib/bean/PointlibEntity;)Z

    move-result v1

    return v1

    .line 556
    :cond_8
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    .line 557
    iget-object v5, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v5}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v8

    .line 558
    iget-object v5, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v5}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v10

    cmpl-double v5, v1, v3

    if-nez v5, :cond_9

    cmpl-double v5, v8, v3

    if-nez v5, :cond_9

    cmpl-double v5, v10, v3

    if-nez v5, :cond_9

    return v7

    .line 560
    :cond_9
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-virtual {v3}, Lcom/qianhe/baselib/bean/PointlibEntity;->hasGeodeticCoords()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 561
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v3, v3, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    const/4 v5, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isSameDisplayCoord(DDI)Z

    move-result v3

    move-wide v12, v1

    if-eqz v3, :cond_a

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    const/4 v5, 0x3

    move-object v0, p0

    move-wide v1, v8

    .line 562
    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isSameDisplayCoord(DDI)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    const/4 v5, 0x3

    move-object v0, p0

    move-wide v1, v10

    .line 563
    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isSameDisplayCoord(DDI)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 564
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-direct {p0, v1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->fillGeodeticFromPlaneCoords(Lcom/qianhe/baselib/bean/PointlibEntity;)V

    return v7

    :cond_a
    move-wide v1, v10

    .line 568
    :cond_b
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->markManualCoordEdit()V

    .line 569
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-virtual {p0, v12, v13, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    .line 570
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-virtual {p0, v8, v9, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    .line 571
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-virtual {p0, v1, v2, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v3, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    .line 572
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-direct {p0, v1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->fillGeodeticFromPlaneInverse(Lcom/qianhe/baselib/bean/PointlibEntity;)Z

    move-result v1

    return v1

    :cond_c
    move-wide v12, v1

    move-wide v1, v10

    .line 574
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-virtual {p0, v12, v13, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    .line 575
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-virtual {p0, v8, v9, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    .line 576
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-virtual {p0, v1, v2, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v3, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    .line 578
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->markManualCoordEdit()V

    .line 579
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-direct {p0, v1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->fillGeodeticFromPlaneInverse(Lcom/qianhe/baselib/bean/PointlibEntity;)Z

    move-result v1

    return v1
.end method

.method private createEntity(Lcom/qianhe/baselib/bean/PointlibEntity;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 265
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isEcefMode()Z

    move-result v1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    .line 266
    iget-object v1, v0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefX:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    .line 267
    iget-object v3, v0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefY:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    .line 268
    iget-object v5, v0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefZ:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v5}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    .line 269
    invoke-virtual {v7}, Lcom/qianhe/baselib/bean/PointlibEntity;->hasGeodeticCoords()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isEcefInputEdited(DDD)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->fillDerivedCoordsFromGeodetic(Lcom/qianhe/baselib/bean/PointlibEntity;)V

    goto :goto_0

    .line 273
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->prepareEcefEntityFromInput(Lcom/qianhe/baselib/bean/PointlibEntity;)Z

    move-result v1

    if-nez v1, :cond_1

    return v9

    .line 274
    :cond_1
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->markManualCoordEdit()V

    .line 275
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->fillDerivedCoordsFromGeodetic(Lcom/qianhe/baselib/bean/PointlibEntity;)V

    .line 277
    :goto_0
    sget-object v1, Lcom/qianhe/baselib/enums/CoordTypeEnum;->ECEF:Lcom/qianhe/baselib/enums/CoordTypeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/CoordTypeEnum;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->systemType:Ljava/lang/String;

    return v8

    .line 280
    :cond_2
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isGeodeticMode()Z

    move-result v1

    const/4 v6, 0x3

    const/16 v10, 0x8

    if-eqz v1, :cond_8

    .line 281
    sget-object v1, Lcom/qianhe/baselib/enums/CoordTypeEnum;->GEODETIC:Lcom/qianhe/baselib/enums/CoordTypeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/CoordTypeEnum;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->systemType:Ljava/lang/String;

    .line 282
    iget-object v1, v0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtLon:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v10}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 283
    iget-object v3, v0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtLat:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v10}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    .line 284
    iget-object v3, v0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 285
    invoke-virtual {v7}, Lcom/qianhe/baselib/bean/PointlibEntity;->hasGeodeticCoords()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 286
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->fillGeodeticFromPlaneCoords(Lcom/qianhe/baselib/bean/PointlibEntity;)V

    .line 287
    iget-wide v3, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    const/16 v5, 0x8

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isSameDisplayCoord(DDI)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-wide v3, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    const/16 v5, 0x8

    move-wide/from16 v18, v11

    move-wide v11, v1

    move-wide/from16 v1, v18

    move-object/from16 v0, p0

    .line 288
    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isSameDisplayCoord(DDI)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v3, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    const/4 v5, 0x3

    move-wide/from16 v18, v13

    move-wide v13, v1

    move-wide/from16 v1, v18

    move-object/from16 v0, p0

    .line 289
    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isSameDisplayCoord(DDI)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 300
    :cond_3
    iget-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    invoke-virtual {v0, v1, v2, v10}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    .line 301
    iget-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    invoke-virtual {v0, v1, v2, v10}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    .line 302
    iget-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    invoke-virtual {v0, v1, v2, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    goto :goto_3

    :cond_4
    move-wide/from16 v18, v13

    move-wide v13, v1

    move-wide/from16 v1, v18

    :goto_1
    move-object/from16 v0, p0

    goto :goto_2

    :cond_5
    move-wide/from16 v18, v11

    move-wide v11, v1

    move-wide v1, v13

    move-wide/from16 v13, v18

    goto :goto_1

    .line 292
    :goto_2
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->markManualCoordEdit()V

    .line 293
    iput-wide v11, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    .line 294
    iput-wide v13, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    .line 295
    iput-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    .line 296
    iput-wide v11, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    .line 297
    iput-wide v13, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    .line 298
    iput-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    goto :goto_3

    :cond_6
    move-wide/from16 v18, v11

    move-wide v11, v1

    move-wide v1, v13

    move-wide/from16 v13, v18

    .line 305
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->markManualCoordEdit()V

    .line 306
    iput-wide v11, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    .line 307
    iput-wide v13, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    .line 308
    iput-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    .line 309
    iput-wide v11, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    .line 310
    iput-wide v13, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    .line 311
    iput-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    .line 313
    :goto_3
    new-array v1, v6, [D

    .line 314
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v10

    iget-wide v11, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    iget-wide v13, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    iget-wide v2, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    move-object/from16 v17, v1

    move-wide v15, v2

    invoke-virtual/range {v10 .. v17}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToAlignedProj(DDD[D)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 315
    aget-wide v1, v17, v9

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    .line 316
    aget-wide v1, v17, v8

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    const/4 v1, 0x2

    .line 317
    aget-wide v1, v17, v1

    invoke-virtual {v0, v1, v2, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    :cond_7
    return v8

    .line 321
    :cond_8
    sget-object v1, Lcom/qianhe/baselib/enums/CoordTypeEnum;->GAUSS:Lcom/qianhe/baselib/enums/CoordTypeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/CoordTypeEnum;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->systemType:Ljava/lang/String;

    .line 322
    iget-object v1, v0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    .line 323
    iget-object v3, v0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v11

    .line 324
    iget-object v3, v0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 325
    iget-wide v3, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isSameDisplayCoord(DDI)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-wide v3, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    const/4 v5, 0x3

    move-wide/from16 v18, v11

    move-wide v11, v1

    move-wide/from16 v1, v18

    move-object/from16 v0, p0

    .line 326
    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isSameDisplayCoord(DDI)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-wide v3, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    const/4 v5, 0x3

    move-wide/from16 v18, v13

    move-wide v13, v1

    move-wide/from16 v1, v18

    move-object/from16 v0, p0

    .line 327
    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isSameDisplayCoord(DDI)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    goto :goto_6

    :cond_a
    move-wide/from16 v18, v13

    move-wide v13, v1

    move-wide/from16 v1, v18

    :goto_4
    move-object/from16 v0, p0

    goto :goto_5

    :cond_b
    move-wide/from16 v18, v11

    move-wide v11, v1

    move-wide v1, v13

    move-wide/from16 v13, v18

    goto :goto_4

    :goto_5
    const/4 v3, 0x1

    .line 328
    :goto_6
    iput-wide v11, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    .line 329
    iput-wide v13, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    .line 330
    iput-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    .line 331
    invoke-virtual {v7}, Lcom/qianhe/baselib/bean/PointlibEntity;->hasGeodeticCoords()Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz v3, :cond_c

    .line 333
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->markManualCoordEdit()V

    .line 334
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->fillGeodeticFromPlaneInverse(Lcom/qianhe/baselib/bean/PointlibEntity;)Z

    move-result v1

    if-nez v1, :cond_d

    return v9

    .line 336
    :cond_c
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->fillGeodeticFromPlaneCoords(Lcom/qianhe/baselib/bean/PointlibEntity;)V

    .line 338
    :cond_d
    iget-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    invoke-virtual {v0, v1, v2, v10}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    .line 339
    iget-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    invoke-virtual {v0, v1, v2, v10}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    .line 340
    iget-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    invoke-virtual {v0, v1, v2, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    goto :goto_7

    .line 341
    :cond_e
    iget-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_f

    iget-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_f

    iget-wide v1, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_10

    .line 343
    :cond_f
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->markManualCoordEdit()V

    .line 344
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->fillGeodeticFromPlaneInverse(Lcom/qianhe/baselib/bean/PointlibEntity;)Z

    move-result v1

    if-nez v1, :cond_10

    return v9

    :cond_10
    :goto_7
    return v8
.end method

.method private createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;
    .locals 1

    .line 803
    new-instance v0, Lcom/qianhe/yct/fragment/PointCreateFragment$4;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/PointCreateFragment$4;-><init>(Lcom/qianhe/yct/fragment/PointCreateFragment;)V

    return-object v0
.end method

.method private endApplyingCoordDisplay()V
    .locals 1

    .line 883
    iget v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->applyingCoordDisplayCount:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->applyingCoordDisplayCount:I

    :cond_0
    return-void
.end method

.method private fillDerivedCoordsFromGeodetic(Lcom/qianhe/baselib/bean/PointlibEntity;)V
    .locals 13

    .line 373
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    .line 374
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    .line 375
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    .line 376
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    iput-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    .line 377
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    iput-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    .line 378
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    .line 379
    new-array v12, v2, [D

    .line 380
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v5

    iget-wide v6, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    iget-wide v8, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    iget-wide v10, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    invoke-virtual/range {v5 .. v12}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToAlignedProj(DDD[D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 381
    aget-wide v0, v12, v0

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    const/4 v0, 0x1

    .line 382
    aget-wide v0, v12, v0

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    const/4 v0, 0x2

    .line 383
    aget-wide v0, v12, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    :cond_0
    return-void
.end method

.method private fillGeodeticFromPlaneCoords(Lcom/qianhe/baselib/bean/PointlibEntity;)V
    .locals 9

    .line 787
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/PointlibEntity;->hasGeodeticCoords()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 790
    :cond_0
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureCurrentEngineering()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 793
    new-array v8, v0, [D

    .line 794
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    iget-wide v6, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    invoke-virtual/range {v1 .. v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToAlignedGeodetic(DDD[D)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v8}, Lcom/qianhe/yct/base/BaseProjectFragment;->isVaildCoords([D)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 797
    aget-wide v1, v8, v1

    const/16 v3, 0x8

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    const/4 v1, 0x1

    .line 798
    aget-wide v1, v8, v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    const/4 v1, 0x2

    .line 799
    aget-wide v1, v8, v1

    invoke-virtual {p0, v1, v2, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    :cond_3
    :goto_0
    return-void
.end method

.method private fillGeodeticFromPlaneInverse(Lcom/qianhe/baselib/bean/PointlibEntity;)Z
    .locals 10

    .line 623
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureCurrentEngineering()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 624
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->no_engineering_applied:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x3

    .line 627
    new-array v9, v0, [D

    .line 628
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v2

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    iget-wide v7, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    invoke-virtual/range {v2 .. v9}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->projToGeodeticInverse(DDD[D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 629
    invoke-virtual {p0, v9}, Lcom/qianhe/yct/base/BaseProjectFragment;->isVaildCoords([D)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 633
    :cond_1
    aget-wide v1, v9, v1

    const/16 v3, 0x8

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    const/4 v1, 0x1

    .line 634
    aget-wide v4, v9, v1

    invoke-virtual {p0, v4, v5, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    const/4 v2, 0x2

    .line 635
    aget-wide v2, v9, v2

    invoke-virtual {p0, v2, v3, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    .line 636
    iget-wide v4, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    iput-wide v4, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    .line 637
    iget-wide v4, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    iput-wide v4, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    .line 638
    iput-wide v2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    return v1

    .line 630
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->coord_convert_failed:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return v1
.end method

.method private fillPlaneFromGeodetic(Lcom/qianhe/baselib/bean/PointlibEntity;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 603
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureCurrentEngineering()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 604
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->no_engineering_applied:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return v3

    .line 607
    :cond_0
    iget-wide v4, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-nez v2, :cond_2

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    cmpl-double v2, v8, v6

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v8, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    move-wide v11, v8

    goto :goto_1

    :cond_2
    :goto_0
    move-wide v11, v4

    :goto_1
    cmpl-double v2, v4, v6

    if-nez v2, :cond_4

    .line 608
    iget-wide v4, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    cmpl-double v2, v4, v6

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    iget-wide v4, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    :goto_2
    move-wide v13, v4

    goto :goto_4

    :cond_4
    :goto_3
    iget-wide v4, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    goto :goto_2

    .line 609
    :goto_4
    iget-wide v4, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    cmpl-double v2, v4, v6

    if-eqz v2, :cond_5

    :goto_5
    move-wide v15, v4

    goto :goto_6

    :cond_5
    iget-wide v4, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    cmpl-double v2, v4, v6

    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    iget-wide v4, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    goto :goto_5

    :goto_6
    const/4 v2, 0x3

    .line 610
    new-array v4, v2, [D

    .line 611
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v10

    move-object/from16 v17, v4

    invoke-virtual/range {v10 .. v17}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToAlignedProj(DDD[D)Z

    move-result v4

    move-object/from16 v5, v17

    if-eqz v4, :cond_8

    invoke-virtual {v0, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->isVaildCoords([D)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_7

    .line 615
    :cond_7
    aget-wide v3, v5, v3

    invoke-virtual {v0, v3, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    const/4 v3, 0x1

    .line 616
    aget-wide v6, v5, v3

    invoke-virtual {v0, v6, v7}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    const/4 v4, 0x2

    .line 617
    aget-wide v4, v5, v4

    invoke-virtual {v0, v4, v5, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    return v3

    .line 612
    :cond_8
    :goto_7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->coord_convert_failed:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return v3
.end method

.method private getCoordModeIndex()I
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->tvPointSystem:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 242
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointSystems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 243
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointSystems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getStoredGeodeticElev()D
    .locals 6

    .line 670
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_3

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_0

    goto :goto_0

    .line 673
    :cond_0
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/PointlibEntity;->hasGeodeticCoords()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 674
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    return-wide v0

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_2

    return-wide v1

    :cond_2
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    return-wide v0

    .line 671
    :cond_3
    :goto_0
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_4

    return-wide v1

    :cond_4
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    return-wide v0
.end method

.method private getStoredLat()D
    .locals 6

    .line 663
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_2

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_0

    goto :goto_0

    .line 666
    :cond_0
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/PointlibEntity;->hasGeodeticCoords()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    return-wide v0

    .line 664
    :cond_2
    :goto_0
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    return-wide v0
.end method

.method private getStoredLon()D
    .locals 8

    .line 656
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_2

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    cmpl-double v7, v5, v3

    if-eqz v7, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/PointlibEntity;->hasGeodeticCoords()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    return-wide v0

    :cond_2
    :goto_0
    return-wide v1
.end method

.method private hasCollectedCoords()Z
    .locals 6

    .line 469
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    cmpl-double v2, v0, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private hasLonLatAlt()Z
    .locals 6

    .line 500
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    .line 501
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/PointlibEntity;->hasGeodeticCoords()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private hasStoredCoords()Z
    .locals 6

    .line 465
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/PointlibEntity;->hasGeodeticCoords()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private initObserve()V
    .locals 4

    .line 419
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    .line 420
    invoke-virtual {v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->observeGnssQualityLive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/fragment/PointCreateFragment$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/fragment/PointCreateFragment$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/fragment/PointCreateFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 425
    invoke-virtual {v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->observeCoordsLive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/fragment/PointCreateFragment$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/fragment/PointCreateFragment$$ExternalSyntheticLambda7;-><init>(Lcom/qianhe/yct/fragment/PointCreateFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 430
    invoke-virtual {v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->observeGeodeticLive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/PointCreateFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/PointCreateFragment$$ExternalSyntheticLambda8;-><init>(Lcom/qianhe/yct/fragment/PointCreateFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->tvPointSystem:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/PointCreateFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/PointCreateFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/PointCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->ivResetH:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/PointCreateFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/PointCreateFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/PointCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setupToothViewCollectListeners(Lcom/qianhe/yct/view/ToothView;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    .line 135
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->setupCoordManualEditWatchers()V

    .line 136
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->tvMeasure:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/PointCreateFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/PointCreateFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/PointCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/PointCreateFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/qianhe/yct/fragment/PointCreateFragment$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/PointCreateFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/PointCreateFragment$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/fragment/PointCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtPointName:Landroid/widget/EditText;

    new-instance v1, Lcom/qianhe/yct/fragment/PointCreateFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/PointCreateFragment$3;-><init>(Lcom/qianhe/yct/fragment/PointCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtPointName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/PointCreateFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/PointCreateFragment$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/fragment/PointCreateFragment;)V

    const-string v3, "defaultname"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 168
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->showData(Lcom/qianhe/baselib/bean/PointlibEntity;)V

    return-void
.end method

.method private isApplyingCoordDisplay()Z
    .locals 1

    .line 887
    iget v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->applyingCoordDisplayCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isEcefInputEdited(DDD)Z
    .locals 15

    .line 589
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->getStoredLon()D

    move-result-wide v1

    .line 590
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->getStoredLat()D

    move-result-wide v3

    .line 591
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->getStoredGeodeticElev()D

    move-result-wide v5

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    cmpl-double v0, v1, v9

    if-nez v0, :cond_0

    cmpl-double v0, v3, v9

    if-nez v0, :cond_0

    cmpl-double v0, v5, v9

    if-nez v0, :cond_0

    return v8

    .line 593
    :cond_0
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureCurrentEngineering()Z

    move-result v0

    if-nez v0, :cond_1

    return v8

    :cond_1
    const/4 v0, 0x3

    .line 594
    new-array v7, v0, [D

    .line 595
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    invoke-virtual/range {v0 .. v7}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geodeticToXyzOnly(DDD[D)Z

    move-result v0

    if-nez v0, :cond_2

    return v8

    :cond_2
    const/4 v0, 0x0

    .line 596
    aget-wide v4, v7, v0

    const/4 v6, 0x4

    move-object v1, p0

    move-wide/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isSameDisplayCoord(DDI)Z

    move-result v2

    if-eqz v2, :cond_4

    aget-wide v12, v7, v8

    const/4 v14, 0x4

    move-object v9, p0

    move-wide/from16 v10, p3

    .line 597
    invoke-direct/range {v9 .. v14}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isSameDisplayCoord(DDI)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    aget-wide v12, v7, v1

    const/4 v14, 0x4

    move-object v9, p0

    move-wide/from16 v10, p5

    .line 598
    invoke-direct/range {v9 .. v14}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isSameDisplayCoord(DDI)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v8
.end method

.method private isEcefMode()Z
    .locals 2

    .line 253
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->getCoordModeIndex()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isGeodeticMode()Z
    .locals 2

    .line 249
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->getCoordModeIndex()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSameDisplayCoord(DDI)Z
    .locals 0

    .line 584
    invoke-virtual {p0, p1, p2, p5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    .line 585
    invoke-virtual {p0, p3, p4, p5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3

    cmpl-double p5, p1, p3

    if-nez p5, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private markManualCoordEdit()V
    .locals 3

    .line 872
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isApplyingCoordDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 873
    iput v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->quality:I

    const-wide/16 v1, 0x0

    .line 874
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->hdop:D

    .line 875
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->vdop:D

    :cond_1
    :goto_0
    return-void
.end method

.method private prepareEcefEntityFromInput(Lcom/qianhe/baselib/bean/PointlibEntity;)Z
    .locals 10

    .line 351
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureCurrentEngineering()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->no_engineering_applied:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return v1

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefX:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    .line 356
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefY:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    .line 357
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefZ:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v7

    const/4 v0, 0x3

    .line 358
    new-array v9, v0, [D

    .line 359
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v2

    invoke-virtual/range {v2 .. v9}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->xyzToGeodeticOnly(DDD[D)Z

    move-result v2

    if-nez v2, :cond_1

    .line 360
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->coord_convert_failed:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return v1

    .line 363
    :cond_1
    aget-wide v1, v9, v1

    const/16 v3, 0x8

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    const/4 v1, 0x1

    .line 364
    aget-wide v4, v9, v1

    invoke-virtual {p0, v4, v5, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    const/4 v2, 0x2

    .line 365
    aget-wide v2, v9, v2

    invoke-virtual {p0, v2, v3, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    .line 366
    iget-wide v4, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    iput-wide v4, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    .line 367
    iget-wide v4, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    iput-wide v4, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    .line 368
    iput-wide v2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    return v1
.end method

.method private refreshCoordDisplayForCurrentMode()V
    .locals 15

    .line 473
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isEcefMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->hasCollectedCoords()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->hasLonLatAlt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->fillPlaneFromGeodetic(Lcom/qianhe/baselib/bean/PointlibEntity;)Z

    .line 477
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->refreshEcefDisplay()V

    return-void

    .line 478
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isGeodeticMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 479
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->hasCollectedCoords()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/fragment/PointCreateFragment;->showCoords(DDD)V

    return-void

    :cond_2
    move-object v1, p0

    .line 482
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->refreshGeodeticDisplay()V

    return-void

    :cond_3
    move-object v1, p0

    .line 485
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->hasCollectedCoords()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->hasLonLatAlt()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 486
    iget-object v0, v1, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->fillPlaneFromGeodetic(Lcom/qianhe/baselib/bean/PointlibEntity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 487
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->clearCoordDisplay()V

    return-void

    .line 491
    :cond_4
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->hasCollectedCoords()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 492
    iget-object v0, v1, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v9, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    iget-wide v11, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    iget-wide v13, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lcom/qianhe/yct/fragment/PointCreateFragment;->showCoords(DDD)V

    return-void

    .line 494
    :cond_5
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->clearCoordDisplay()V

    return-void
.end method

.method private refreshDerivedGeodeticDisplay()V
    .locals 8

    .line 451
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->beginApplyingCoordDisplay()V

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtLon:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    const/16 v4, 0x8

    const-wide/16 v5, 0x0

    cmpl-double v7, v1, v5

    if-eqz v7, :cond_0

    :try_start_1
    invoke-virtual {p0, v1, v2, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtLat:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    cmpl-double v7, v1, v5

    if-eqz v7, :cond_1

    invoke-virtual {p0, v1, v2, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->updateElevFieldDisplay(D)V

    .line 456
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isEcefMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->refreshEcefDisplay()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->endApplyingCoordDisplay()V

    return-void

    :goto_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->endApplyingCoordDisplay()V

    .line 461
    throw v0
.end method

.method private refreshEcefDisplay()V
    .locals 10

    .line 680
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->beginApplyingCoordDisplay()V

    .line 682
    :try_start_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->getStoredLon()D

    move-result-wide v1

    .line 683
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->getStoredLat()D

    move-result-wide v3

    .line 684
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->getStoredGeodeticElev()D

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v7, 0x0

    .line 685
    const-string v9, ""

    cmpl-double v0, v1, v7

    if-nez v0, :cond_0

    cmpl-double v0, v3, v7

    if-nez v0, :cond_0

    cmpl-double v0, v5, v7

    if-nez v0, :cond_0

    .line 686
    :try_start_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefX:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefY:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefZ:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->endApplyingCoordDisplay()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 691
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureCurrentEngineering()Z

    move-result v0

    if-nez v0, :cond_1

    .line 692
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefX:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefY:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefZ:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 708
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->endApplyingCoordDisplay()V

    return-void

    :cond_1
    const/4 v0, 0x3

    .line 697
    :try_start_3
    new-array v7, v0, [D

    .line 698
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    invoke-virtual/range {v0 .. v7}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geodeticToXyzOnly(DDD[D)Z

    move-result v0

    if-nez v0, :cond_2

    .line 699
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefX:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefY:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefZ:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 708
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->endApplyingCoordDisplay()V

    return-void

    .line 704
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefX:Lcom/qianhe/yct/view/NumericEditText;

    const/4 v1, 0x0

    aget-wide v1, v7, v1

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefY:Lcom/qianhe/yct/view/NumericEditText;

    const/4 v1, 0x1

    aget-wide v1, v7, v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefZ:Lcom/qianhe/yct/view/NumericEditText;

    const/4 v1, 0x2

    aget-wide v1, v7, v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 708
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->endApplyingCoordDisplay()V

    return-void

    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->endApplyingCoordDisplay()V

    .line 709
    throw v0
.end method

.method private refreshGeodeticDisplay()V
    .locals 8

    .line 751
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->beginApplyingCoordDisplay()V

    .line 753
    :try_start_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtLon:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x8

    const-string v4, ""

    const-wide/16 v5, 0x0

    cmpl-double v7, v1, v5

    if-eqz v7, :cond_0

    :try_start_1
    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    move-object v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtLat:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    cmpl-double v7, v1, v5

    if-eqz v7, :cond_1

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    cmpl-double v3, v1, v5

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 757
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->endApplyingCoordDisplay()V

    return-void

    :goto_2
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->endApplyingCoordDisplay()V

    .line 758
    throw v0
.end method

.method private restoreInitGeodeticCoords()V
    .locals 10

    .line 643
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->initEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    .line 644
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    .line 645
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    .line 646
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    .line 647
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    .line 648
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    .line 649
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    .line 650
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    .line 651
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    .line 652
    iget v5, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->quality:I

    iget-wide v6, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->hdop:D

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->vdop:D

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/qianhe/yct/fragment/PointCreateFragment;->applyCollectedGnssQuality(IDD)V

    return-void
.end method

.method private saveCoords(DDD)V
    .locals 3

    .line 775
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    .line 776
    iput-wide p3, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    const/4 v1, 0x3

    .line 777
    invoke-virtual {p0, p5, p6, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    cmpl-double p1, p3, v0

    if-nez p1, :cond_0

    cmpl-double p1, p5, v0

    if-nez p1, :cond_0

    return-void

    .line 782
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->fillGeodeticFromPlaneCoords(Lcom/qianhe/baselib/bean/PointlibEntity;)V

    return-void
.end method

.method private savePoint()V
    .locals 10

    .line 181
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtPointName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->name_empty:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/qianhe/yct/R$string;->use_default_values:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "defaultname"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_0
    iget-wide v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->groupLocalId:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    if-eqz v1, :cond_2

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    .line 188
    invoke-virtual {v1}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->isCreateNewGroup()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    invoke-virtual {v1}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->ensurePendingGroupCreated()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->groupLocalId:J

    cmp-long v7, v3, v5

    if-gtz v7, :cond_2

    .line 191
    invoke-virtual {v1}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->getPendingGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->point_group_name_empty:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 197
    :cond_1
    invoke-virtual {v1}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->getGroupLocalId()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->groupLocalId:J

    .line 200
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    .line 201
    iget-wide v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->groupLocalId:J

    invoke-virtual {v1, v3, v4, v0}, Lcom/qianhe/yct/db/DatabaseManager;->isPointNameExistsInGroup(JLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v3, v3, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->initEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-object v3, v3, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 202
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->point_name_already_exists:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 205
    :cond_4
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->getCoordModeIndex()I

    move-result v3

    const-wide/16 v7, 0x0

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    cmpl-double v9, v3, v7

    if-nez v9, :cond_5

    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    cmpl-double v9, v3, v7

    if-nez v9, :cond_5

    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    cmpl-double v9, v3, v7

    if-nez v9, :cond_5

    .line 206
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->please_collect_coordinates:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 209
    :cond_5
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->getCoordModeIndex()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtLon:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    cmpl-double v9, v3, v7

    if-nez v9, :cond_6

    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtLat:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    cmpl-double v9, v3, v7

    if-nez v9, :cond_6

    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    cmpl-double v9, v3, v7

    if-nez v9, :cond_6

    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->please_collect_coordinates:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 213
    :cond_6
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->getCoordModeIndex()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefX:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    cmpl-double v9, v3, v7

    if-nez v9, :cond_7

    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefY:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    cmpl-double v9, v3, v7

    if-nez v9, :cond_7

    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefZ:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    cmpl-double v9, v3, v7

    if-nez v9, :cond_7

    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->please_collect_coordinates:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 217
    :cond_7
    iget-object v2, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-direct {p0, v2}, Lcom/qianhe/yct/fragment/PointCreateFragment;->createEntity(Lcom/qianhe/baselib/bean/PointlibEntity;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    return-void

    .line 220
    :cond_9
    iget-object v2, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iput-object v0, v2, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    .line 221
    iget-wide v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->groupLocalId:J

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/PointlibEntity;->groupLocalId:J

    .line 222
    invoke-virtual {v1, v3, v4}, Lcom/qianhe/yct/db/DatabaseManager;->queryPointGroupByLocalId(J)Lcom/qianhe/baselib/bean/PointGroupEntity;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 223
    iget-object v2, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/PointlibEntity;->groupId:J

    .line 224
    :cond_a
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    cmp-long v4, v2, v5

    if-nez v4, :cond_b

    .line 225
    invoke-virtual {v1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->insertPoint(Lcom/qianhe/baselib/bean/PointlibEntity;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    goto :goto_0

    .line 226
    :cond_b
    iget-object v2, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->initEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-virtual {v2, v0}, Lcom/qianhe/baselib/bean/PointlibEntity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 227
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->updatePoint(Lcom/qianhe/baselib/bean/PointlibEntity;)I

    .line 228
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->uploadModifiedPoint(Lcom/qianhe/baselib/bean/PointlibEntity;)V

    .line 230
    :cond_c
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->saved_successfully:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 231
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "pointSaved"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private setupCoordManualEditWatchers()V
    .locals 2

    .line 840
    new-instance v0, Lcom/qianhe/yct/fragment/PointCreateFragment$5;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/PointCreateFragment$5;-><init>(Lcom/qianhe/yct/fragment/PointCreateFragment;)V

    .line 854
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 855
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 856
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 857
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtLon:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 858
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtLat:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 859
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefX:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 860
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefY:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 861
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEcefZ:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private shouldPreferGeodeticDisplay(Lcom/qianhe/baselib/bean/PointlibEntity;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 413
    :cond_0
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmpl-double v6, v1, v4

    if-nez v6, :cond_2

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    cmpl-double v6, v1, v4

    if-nez v6, :cond_2

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    cmpl-double v6, v1, v4

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 414
    :goto_1
    iget-wide v6, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    cmpl-double v2, v6, v4

    if-nez v2, :cond_4

    iget-wide v6, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    cmpl-double v2, v6, v4

    if-nez v2, :cond_4

    iget-wide v6, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    cmpl-double v2, v6, v4

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/PointlibEntity;->hasGeodeticCoords()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-nez v1, :cond_5

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v0
.end method

.method private showCoords(DDD)V
    .locals 5

    .line 729
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->beginApplyingCoordDisplay()V

    .line 731
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/PointCreateFragment;->saveCoords(DDD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 732
    :try_start_1
    iget-object p6, p1, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object p6, p6, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    const-string v3, ""

    cmpl-double v4, p2, v1

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {p0, p2, p3, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_0
    move-object p2, v0

    goto :goto_4

    :cond_0
    move-object p2, v3

    :goto_1
    invoke-virtual {p6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    iget-object p2, p1, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double p3, p4, v1

    if-eqz p3, :cond_1

    invoke-virtual {p0, p4, p5, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_1
    move-object p3, v3

    :goto_2
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->hasCollectedCoords()Z

    move-result p2

    if-nez p2, :cond_3

    .line 735
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isGeodeticMode()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 736
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->refreshGeodeticDisplay()V

    goto :goto_3

    .line 738
    :cond_2
    iget-object p2, p1, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtLon:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    iget-object p2, p1, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtLat:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    iget-object p2, p1, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 746
    :goto_3
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->endApplyingCoordDisplay()V

    return-void

    .line 744
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->refreshDerivedGeodeticDisplay()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 746
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->endApplyingCoordDisplay()V

    return-void

    :catchall_1
    move-exception v0

    move-object p1, p0

    goto :goto_0

    :goto_4
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->endApplyingCoordDisplay()V

    .line 747
    throw p2
.end method

.method private showData(Lcom/qianhe/baselib/bean/PointlibEntity;)V
    .locals 11

    .line 388
    iget-object v2, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->mToothType:I

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/view/ToothView;->setCurrentType(I)V

    .line 389
    iget-object v2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->systemType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->systemType:Ljava/lang/String;

    sget-object v3, Lcom/qianhe/baselib/enums/CoordTypeEnum;->ECEF:Lcom/qianhe/baselib/enums/CoordTypeEnum;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/CoordTypeEnum;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->tvPointSystem:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointSystems:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    invoke-direct {p0, v3}, Lcom/qianhe/yct/fragment/PointCreateFragment;->updateCoordTypeUi(I)V

    .line 392
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->refreshEcefDisplay()V

    return-void

    .line 393
    :cond_0
    iget-object v2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->systemType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->systemType:Ljava/lang/String;

    sget-object v3, Lcom/qianhe/baselib/enums/CoordTypeEnum;->GEODETIC:Lcom/qianhe/baselib/enums/CoordTypeEnum;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/CoordTypeEnum;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 394
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->shouldPreferGeodeticDisplay(Lcom/qianhe/baselib/bean/PointlibEntity;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 396
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->tvPointSystem:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointSystems:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    invoke-direct {p0, v4}, Lcom/qianhe/yct/fragment/PointCreateFragment;->updateCoordTypeUi(I)V

    .line 398
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_3

    iget-wide v6, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    cmpl-double v8, v6, v4

    if-nez v8, :cond_3

    iget-wide v6, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    cmpl-double v8, v6, v4

    if-eqz v8, :cond_4

    :cond_3
    move-wide v5, v2

    goto :goto_0

    .line 401
    :cond_4
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->refreshGeodeticDisplay()V

    return-void

    .line 399
    :goto_0
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    move-wide v7, v5

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    move-object v0, p0

    move-wide v1, v7

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/fragment/PointCreateFragment;->showCoords(DDD)V

    return-void

    .line 404
    :cond_5
    iget-object v2, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->tvPointSystem:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointSystems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    invoke-direct {p0, v4}, Lcom/qianhe/yct/fragment/PointCreateFragment;->updateCoordTypeUi(I)V

    .line 406
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    move-wide v5, v2

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    move-wide v9, v5

    move-wide v5, v1

    move-wide v1, v9

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/fragment/PointCreateFragment;->showCoords(DDD)V

    return-void
.end method

.method private updateCoordTypeUi(I)V
    .locals 5

    .line 257
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->lltPlane:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->lltEarth:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->lltEcef:Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->llElev:Landroid/widget/LinearLayout;

    if-ne p1, v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateElevFieldDisplay(D)V
    .locals 7

    .line 762
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->beginApplyingCoordDisplay()V

    .line 764
    :try_start_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->isGeodeticMode()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ""

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1

    .line 765
    :try_start_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    iget-object p2, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v5, p2, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    cmpl-double p2, v5, v3

    if-eqz p2, :cond_0

    invoke-virtual {p0, v5, v6, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double v5, p1, v3

    if-eqz v5, :cond_2

    invoke-virtual {p0, p1, p2, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 770
    :goto_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->endApplyingCoordDisplay()V

    return-void

    :goto_2
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->endApplyingCoordDisplay()V

    .line 771
    throw p1
.end method

.method private uploadModifiedPoint(Lcom/qianhe/baselib/bean/PointlibEntity;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 235
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->pointId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 237
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyPoint(Lcom/qianhe/baselib/bean/PointlibEntity;)V

    :cond_2
    :goto_0
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

    if-eqz p1, :cond_0

    .line 896
    iput-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    .line 66
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointSystems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 67
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointSystems:Ljava/util/ArrayList;

    sget p2, Lcom/qianhe/yct/R$string;->gauss_coordinate:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointSystems:Ljava/util/ArrayList;

    sget p2, Lcom/qianhe/yct/R$string;->geodetic_coordinates:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointSystems:Ljava/util/ArrayList;

    sget p2, Lcom/qianhe/yct/R$string;->ecef_coordinates:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-wide/16 p2, 0x0

    if-eqz p1, :cond_0

    .line 72
    const-string v0, "initEntity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/PointlibEntity;

    iput-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->initEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 73
    const-string v0, "pointlibEntity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/PointlibEntity;

    iput-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 74
    const-string v0, "groupLocalId"

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->groupLocalId:J

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->groupLocalId:J

    cmp-long p1, v0, p2

    if-gtz p1, :cond_1

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    invoke-virtual {p1}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->getGroupLocalId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->groupLocalId:J

    .line 79
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    if-eqz p1, :cond_3

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    .line 81
    invoke-virtual {p1}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->getPointlibEntity()Lcom/qianhe/baselib/bean/PointlibEntity;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 82
    iput-object p2, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 83
    :cond_2
    invoke-virtual {p1}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->getInitEntity()Lcom/qianhe/baselib/bean/PointlibEntity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 84
    iput-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->initEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 86
    :cond_3
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->initView()V

    .line 87
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->initObserve()V

    .line 88
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method
