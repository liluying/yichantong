.class public Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "SiteLevelingStep1Fragment.java"


# instance fields
.field private baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

.field private binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

.field private cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

.field private initEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

.field private isH5Pro:Z

.field private launcher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

.field private final pointFromCad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private pointsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;


# direct methods
.method public static synthetic $r8$lambda$2fGw1DJZn9Ft3eMdtIgzwqFcc44(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;Ljava/lang/String;[D)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    .line 76
    iput-object p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 77
    invoke-direct {p0, p2}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->replaceCadPickPoints([D)V

    return-void
.end method

.method public static synthetic $r8$lambda$4BBnVNeuMoiGdyKlDaphWzhUwaU(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;Landroidx/activity/result/ActivityResult;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 232
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 234
    const-string v0, "coordsListJson"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 236
    iget-object v1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->coordsListJson:Ljava/lang/String;

    .line 237
    const-string v0, "cors"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 239
    array-length v2, v0

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->coordinateSystem:Ljava/lang/String;

    .line 240
    :cond_0
    array-length v2, v0

    if-le v2, v1, :cond_1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    aget-object v3, v0, v1

    iput-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    .line 241
    :cond_1
    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->corsHost:Ljava/lang/String;

    .line 242
    :cond_2
    array-length v2, v0

    const/4 v3, 0x3

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->corsPort:I

    .line 243
    :cond_3
    array-length v2, v0

    const/4 v3, 0x4

    if-le v2, v3, :cond_4

    iget-object v2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->corsUserName:Ljava/lang/String;

    .line 244
    :cond_4
    array-length v2, v0

    const/4 v3, 0x5

    if-le v2, v3, :cond_5

    iget-object v2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->corsPassword:Ljava/lang/String;

    .line 245
    :cond_5
    array-length v2, v0

    const/4 v3, 0x6

    if-le v2, v3, :cond_6

    iget-object v2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    aget-object v0, v0, v3

    iput-object v0, v2, Lcom/qianhe/baselib/base/BaseProEntity;->corsMount:Ljava/lang/String;

    .line 247
    :cond_6
    const-string v0, "cadPath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 249
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iput-object p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 251
    :cond_7
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->coordsListJson:Ljava/lang/String;

    new-instance v2, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$6;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$6;-><init>(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V

    .line 252
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 251
    invoke-virtual {p1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_8

    .line 253
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 254
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->clear()V

    .line 255
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/PolyLinePreView;->clearPoints()V

    .line 256
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->pointFromCad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 257
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 258
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->addPoint([DZ)V

    goto :goto_0

    :cond_8
    return-void
.end method

.method public static synthetic $r8$lambda$B4elSyxkg278_JkkAL1MbvxfxdY(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;Landroid/view/View;)Z
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    const/4 p1, -0x1

    .line 119
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$_Va95JSiRydn-919SMffEVRabug(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    .line 280
    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {p0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qOET5d8lW3M66ov28JaFxesMF4k(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;Landroid/view/View;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->confirmClearAllCoords()V

    return-void
.end method

.method public static synthetic $r8$lambda$vFdkH65vdxOSqCcgnM-Jbni0wC0(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;Landroid/view/View;)V
    .locals 1

    .line 124
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    .line 124
    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

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
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->handleMeasureCollectClick(ILcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zpeITqzTICoKZl2TQDalwVlh3OQ(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;Landroid/view/View;)V
    .locals 2

    .line 115
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    .line 115
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    iget-object p0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->pointsList:Ljava/util/List;

    .line 117
    invoke-static {p0}, Lcom/qianhe/yct/activity/cad/CadEntityChooseIntent;->flattenPoints(Ljava/util/List;)[D

    move-result-object p0

    const/4 v1, -0x1

    .line 115
    invoke-virtual {p1, v0, v1, p0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(Ljava/lang/String;I[D)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbaseStationInfo(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Lcom/qianhe/baselib/bean/BaseStationEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlauncher(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpointFromCad(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->pointFromCad:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpointsList(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->pointsList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsiteLevelingEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddPoint(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;[DZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->addPoint([DZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearAllCoords(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->clearAllCoords()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->clearCadPath()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhasCadPickedPoints(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->hasCadPickedPoints()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSlopeLeveling(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->isSlopeLeveling()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misStartEndCoincide(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->isStartEndCoincide()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrefreshContinueEnabled(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->refreshContinueEnabled()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveProjectAndStartWork(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->saveProjectAndStartWork()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->pointFromCad:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;[D)Z
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->isVaildCoords([D)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;DI)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;DI)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;DI)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private addCadPickPoints([D)V
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 358
    array-length v4, p1

    if-lt v4, v2, :cond_2

    array-length v4, p1

    rem-int/2addr v4, v2

    if-eqz v4, :cond_0

    goto :goto_2

    .line 361
    :cond_0
    array-length v4, p1

    div-int/2addr v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    mul-int/lit8 v6, v5, 0x3

    .line 363
    aget-wide v7, p1, v6

    add-int/lit8 v9, v6, 0x1

    aget-wide v9, p1, v9

    add-int/2addr v6, v0

    aget-wide v11, p1, v6

    new-array v6, v2, [D

    aput-wide v7, v6, v1

    aput-wide v9, v6, v3

    aput-wide v11, v6, v0

    add-int/lit8 v7, v4, -0x1

    if-ne v5, v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 368
    :goto_1
    invoke-direct {p0, v6, v7, v3}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->addPoint([DZZ)V

    add-int/2addr v5, v3

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private addPoint([DZ)V
    .locals 1

    const/4 v0, 0x0

    .line 268
    invoke-direct {p0, p1, p2, v0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->addPoint([DZZ)V

    return-void
.end method

.method private addPoint([DZZ)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->addCoords([D)V

    .line 273
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->pointFromCad:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object p3, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object p3, p3, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {p3, p1}, Lcom/qianhe/yct/view/PolyLinePreView;->addPoint([D)V

    .line 275
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->refreshContinueEnabled()V

    .line 276
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->pointsList:Ljava/util/List;

    invoke-virtual {p3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->coordsListJson:Ljava/lang/String;

    .line 277
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->pointsList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->tvMeasure:Landroid/widget/TextView;

    sget p3, Lcom/qianhe/yct/R$string;->continue_collect:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 278
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {p1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 279
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private clearAllCoords()V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->pointsList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->clear()V

    .line 331
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/PolyLinePreView;->clearPoints()V

    .line 332
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->pointFromCad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 333
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    const-string v1, ""

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 334
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->pointsList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->coordsListJson:Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->tvMeasure:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->start_collection:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 336
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->refreshContinueEnabled()V

    :cond_1
    :goto_0
    return-void
.end method

.method private clearCadPath()V
    .locals 6

    .line 383
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, ""

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private confirmClearAllCoords()V
    .locals 7

    .line 305
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->pointsList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->clear_list_confirm:I

    .line 309
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    .line 310
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    .line 311
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$7;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$7;-><init>(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V

    .line 308
    const-string v5, ""

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;
    .locals 1

    .line 398
    new-instance v0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$9;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$9;-><init>(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V

    return-object v0
.end method

.method private hasCadPickedPoints()Z
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->pointFromCad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 374
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private initActivityResultLauncher()V
    .locals 2

    .line 230
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private initObserve()V
    .locals 3

    .line 387
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingCreateActivity;->observeCoordsStep()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$8;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$8;-><init>(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/PolyLinePreView;->setWorkMode(Z)V

    .line 111
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->tvCadImport:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->tvClearCoords:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->setupToothViewCollectListeners(Lcom/qianhe/yct/view/ToothView;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    .line 115
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->tvClearCoords:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->tvMeasure:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->tvPointLib:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$1;-><init>(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$2;-><init>(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;-><init>(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->pointsList:Ljava/util/List;

    .line 183
    new-instance v0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->pointsList:Ljava/util/List;

    iget-object v4, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget v4, v4, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    invoke-direct {v0, v2, v3, v4}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    .line 184
    iget-object v2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 185
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    new-instance v2, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$4;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$4;-><init>(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;)V

    .line 213
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget-object v2, v2, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->coordsListJson:Ljava/lang/String;

    new-instance v3, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$5;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$5;-><init>(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V

    .line 214
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 213
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 215
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 216
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 217
    invoke-direct {p0, v2, v1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->addPoint([DZ)V

    goto :goto_3

    .line 220
    :cond_3
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->refreshContinueEnabled()V

    return-void
.end method

.method private isSlopeLeveling()Z
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isStartEndCoincide()Z
    .locals 7

    .line 297
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->pointsList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->pointsList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->pointsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    invoke-static {v0, v2}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v2

    const-wide v5, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v2, v5

    if-gez v0, :cond_1

    return v4

    :cond_1
    :goto_0
    return v1
.end method

.method private refreshContinueEnabled()V
    .locals 4

    .line 287
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->isSlopeLeveling()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 288
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->tvContinue:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->pointsList:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private replaceCadPickPoints([D)V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->clear()V

    .line 344
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/PolyLinePreView;->clearPoints()V

    .line 345
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->pointFromCad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    .line 346
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->addCadPickPoints([D)V

    return-void

    .line 347
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    const-string v0, ""

    iput-object v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 348
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->pointsList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->coordsListJson:Ljava/lang/String;

    .line 349
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->tvMeasure:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->start_collection:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 350
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->refreshContinueEnabled()V

    return-void
.end method

.method private saveProjectAndStartWork()V
    .locals 6

    .line 427
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->ratio:D

    .line 428
    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 429
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->insert(Lcom/qianhe/baselib/base/BaseProEntity;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    .line 430
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->startWork()V

    return-void

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->initEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    invoke-virtual {v1, v0}, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 435
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 436
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 438
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->startWork()V

    return-void
.end method

.method private startWork()V
    .locals 4

    .line 443
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->start_jobs:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 444
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 445
    iget-object v1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 447
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

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

    .line 472
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    new-instance p1, Lcom/qianhe/yct/activity/cad/CadPickHelper;

    new-instance v0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 83
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    .line 84
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 86
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v1, "LOG,REFSTATION,ONTIME,1"

    invoke-direct {p3, v0, v1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 87
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 88
    iget-object p3, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 89
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 91
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 92
    iget-object p3, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 93
    iget-object p3, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 97
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 99
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->initEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    .line 100
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->initView()V

    .line 103
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->initObserve()V

    .line 104
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->initActivityResultLauncher()V

    .line 105
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 4

    .line 477
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    .line 478
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

    .line 452
    iput-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 225
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 226
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->isH5Pro:Z

    return-void
.end method
