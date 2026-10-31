.class public Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "PolyLineStep2Fragment.java"


# instance fields
.field private applyingRatioChange:Z

.field private baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

.field private binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

.field private cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

.field private initEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

.field private launcher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

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

.field private polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

.field private ratiosInitializedFromCoords:Z


# direct methods
.method public static synthetic $r8$lambda$125GV0a3D6StclPKXMMb6qMmdy0(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;Landroid/view/View;)V
    .locals 2

    .line 117
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    .line 117
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    iget-object p0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    .line 118
    invoke-static {p0}, Lcom/qianhe/yct/activity/cad/CadEntityChooseIntent;->flattenPoints(Ljava/util/List;)[D

    move-result-object p0

    const/4 v1, -0x1

    .line 117
    invoke-virtual {p1, v0, v1, p0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(Ljava/lang/String;I[D)V

    return-void
.end method

.method public static synthetic $r8$lambda$CSd70o6mlv9lOVK_6Il0hBRAnU8(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;I)V
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    .line 599
    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 600
    iget-object p0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$EWqyMFWUe7d_CFz5Nsig6PO9dx8(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;Ljava/lang/String;[D)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    .line 77
    iput-object p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 78
    invoke-direct {p0, p2}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->replaceCadPickPoints([D)V

    return-void
.end method

.method public static synthetic $r8$lambda$g689wLyHgLCXNjz1NyRDmB6S2gw(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;Landroid/view/View;)Z
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    const/4 p1, -0x1

    .line 121
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$m85qemb1Z0glq9WcsuNtl6J6JSE(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;Landroidx/activity/result/ActivityResult;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 477
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 479
    const-string v0, "coordsListJson"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 481
    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iput-object v0, v2, Lcom/qianhe/baselib/bean/PolyLineEntity;->coordsListJson:Ljava/lang/String;

    .line 482
    const-string v0, "cors"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 484
    array-length v4, v0

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    aget-object v5, v0, v3

    iput-object v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->coordinateSystem:Ljava/lang/String;

    .line 485
    :cond_0
    array-length v4, v0

    if-le v4, v2, :cond_1

    iget-object v4, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    aget-object v5, v0, v2

    iput-object v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    .line 486
    :cond_1
    array-length v4, v0

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    aget-object v5, v0, v5

    iput-object v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->corsHost:Ljava/lang/String;

    .line 487
    :cond_2
    array-length v4, v0

    const/4 v5, 0x3

    if-le v4, v5, :cond_3

    iget-object v4, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->corsPort:I

    .line 488
    :cond_3
    array-length v4, v0

    const/4 v5, 0x4

    if-le v4, v5, :cond_4

    iget-object v4, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    aget-object v5, v0, v5

    iput-object v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->corsUserName:Ljava/lang/String;

    .line 489
    :cond_4
    array-length v4, v0

    const/4 v5, 0x5

    if-le v4, v5, :cond_5

    iget-object v4, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    aget-object v5, v0, v5

    iput-object v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->corsPassword:Ljava/lang/String;

    .line 490
    :cond_5
    array-length v4, v0

    const/4 v5, 0x6

    if-le v4, v5, :cond_6

    iget-object v4, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    aget-object v0, v0, v5

    iput-object v0, v4, Lcom/qianhe/baselib/base/BaseProEntity;->corsMount:Ljava/lang/String;

    .line 492
    :cond_6
    const-string v0, "cadPath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 494
    iget-object v4, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iput-object v0, v4, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 496
    :cond_7
    const-string v0, "position"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 497
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isSegmentMode()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->getSegmentRatios()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    .line 498
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->syncPointsList()V

    .line 499
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->pointsList:Ljava/util/List;

    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 500
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->clear()V

    .line 501
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/PolyLinePreView;->clearPoints()V

    .line 502
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->pointFromCad:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 503
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->pointsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    .line 504
    invoke-direct {p0, v4, v2}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->addPoint([DZ)V

    goto :goto_1

    .line 506
    :cond_9
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isSegmentMode()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 507
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isEditProject()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 508
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->recalculateAllRatiosFromCoords()V

    return-void

    .line 510
    :cond_a
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->syncSegmentRatioSize()V

    .line 511
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->getSegmentRatios()Ljava/util/List;

    move-result-object v1

    .line 513
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_c

    if-eqz v0, :cond_b

    .line 514
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_b

    .line 515
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-interface {v1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 518
    :cond_c
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->setSegmentRatios(Ljava/util/List;)V

    if-ltz p1, :cond_e

    .line 520
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->recalculateRatiosAroundPoint(I)V

    return-void

    .line 523
    :cond_d
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isOverallMode()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 524
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->applyOverallSlopeElevations()V

    :cond_e
    return-void
.end method

.method public static synthetic $r8$lambda$otN3JITi81oYlURjfWBSpCjqRsE(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    .line 561
    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {p0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ucBG1NrVSfNpbzqHnygLqt-Qd4E(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;Landroid/view/View;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->confirmClearAllCoords()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetapplyingRatioChange(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->applyingRatioChange:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlauncher(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmList(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpointFromCad(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->pointFromCad:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpointsList(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->pointsList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpolyLineEntity(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Lcom/qianhe/baselib/bean/PolyLineEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddPoint(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;[DZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->addPoint([DZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyManualSegmentRatio(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;ILjava/lang/Double;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->applyManualSegmentRatio(ILjava/lang/Double;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyOverallSlopeElevations(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->applyOverallSlopeElevations()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplySlopeBeforeSave(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->applySlopeBeforeSave()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mclearAllCoords(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->clearAllCoords()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->clearCadPath()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhasCadPickedPoints(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->hasCadPickedPoints()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minsertPoint(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->insertPoint(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misEditProject(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isEditProject()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misOverallMode(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isOverallMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSegmentMode(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isSegmentMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrecalculateAllRatiosFromCoords(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->recalculateAllRatiosFromCoords()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveProjectAndStartWork(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->saveProjectAndStartWork()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncPointsList(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->syncPointsList()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->pointFromCad:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;[D)Z
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->isVaildCoords([D)Z

    move-result p0

    return p0
.end method

.method private addCadPickPoints([D)V
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 669
    array-length v4, p1

    if-lt v4, v2, :cond_2

    array-length v4, p1

    rem-int/2addr v4, v2

    if-eqz v4, :cond_0

    goto :goto_2

    .line 672
    :cond_0
    array-length v4, p1

    div-int/2addr v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    mul-int/lit8 v6, v5, 0x3

    .line 674
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

    .line 675
    :goto_1
    invoke-direct {p0, v6, v7, v3, v3}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->addPoint([DZZZ)V

    add-int/2addr v5, v3

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private addPoint([DZ)V
    .locals 1

    const/4 v0, 0x0

    .line 534
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->addPoint([DZZZ)V

    return-void
.end method

.method private addPoint([DZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 538
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->addPoint([DZZZ)V

    return-void
.end method

.method private addPoint([DZZZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 546
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isSegmentMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->applyElevationFromPreviousRatio([DI)V

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->addCoords([D)V

    .line 550
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->pointFromCad:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object p4, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object p4, p4, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {p4, p1}, Lcom/qianhe/yct/view/PolyLinePreView;->addPoint([D)V

    .line 552
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->tvContinue:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    const/4 v0, 0x1

    if-le p4, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 553
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    new-instance p4, Lcom/google/gson/Gson;

    invoke-direct {p4}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-virtual {p4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p1, Lcom/qianhe/baselib/bean/PolyLineEntity;->coordsListJson:Ljava/lang/String;

    .line 554
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->syncPointsList()V

    if-eqz p3, :cond_2

    .line 555
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isOverallMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 557
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->applyOverallSlopeElevations()V

    :cond_2
    if-eqz p2, :cond_3

    .line 559
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {p1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_3

    .line 560
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private applyElevationFromPreviousRatio([DI)V
    .locals 10

    .line 610
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isSegmentMode()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-gtz p2, :cond_0

    goto :goto_0

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_1

    goto :goto_0

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->syncSegmentRatioSize()V

    .line 618
    invoke-direct {p0, p2}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->findLastSetSegmentRatioBefore(I)Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 622
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    .line 623
    invoke-static {p2, p1}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    .line 628
    aget-wide v4, p2, v3

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    mul-double v6, v6, v1

    add-double/2addr v4, v6

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v0

    aput-wide v4, p1, v3

    :cond_4
    :goto_0
    return-void
.end method

.method private applyManualSegmentRatio(ILjava/lang/Double;)V
    .locals 13

    .line 323
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 329
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->findLastSetSegmentRatioBefore(I)Ljava/lang/Double;

    move-result-object p2

    if-nez p2, :cond_1

    goto/16 :goto_1

    .line 335
    :cond_1
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->applyingRatioChange:Z

    .line 336
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 337
    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 338
    invoke-static {v0, v2}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_3

    const/4 v6, 0x2

    .line 340
    aget-wide v7, v0, v6

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double/2addr v9, v11

    mul-double v9, v9, v4

    add-double/2addr v7, v9

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v7, v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-double v7, v7

    div-double/2addr v7, v4

    aput-wide v7, v2, v6

    .line 341
    iget-object p2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/qianhe/baselib/bean/PolyLineEntity;->coordsListJson:Ljava/lang/String;

    .line 342
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->syncPointsList()V

    .line 344
    iget-object p2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {p2}, Lcom/qianhe/yct/view/PolyLinePreView;->clearPoints()V

    .line 345
    iget-object p2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 346
    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v2, v0}, Lcom/qianhe/yct/view/PolyLinePreView;->addPoint([D)V

    goto :goto_0

    .line 349
    :cond_2
    iget-object p2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    if-ge v3, p2, :cond_3

    .line 350
    iget-object p2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    add-int/2addr p1, v6

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    invoke-direct {p0, p2, p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->calcSegmentRatio([D[D)Ljava/lang/Double;

    move-result-object p1

    .line 351
    iget-object p2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {p2, v3, p1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->setSegmentRatio(ILjava/lang/Double;)V

    :cond_3
    const/4 p1, 0x0

    .line 354
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->applyingRatioChange:Z

    :cond_4
    :goto_1
    return-void
.end method

.method private applyOverallSlopeElevations()V
    .locals 20

    move-object/from16 v0, p0

    .line 444
    iget-object v1, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int/lit8 v3, v1, -0x1

    .line 447
    new-array v4, v3, [D

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-wide v9, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_1

    .line 449
    iget-object v11, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [D

    iget-object v12, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    add-int/lit8 v13, v8, 0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [D

    invoke-static {v11, v12}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v11

    aput-wide v11, v4, v8

    add-double/2addr v9, v11

    move v8, v13

    goto :goto_0

    :cond_1
    cmpl-double v3, v9, v6

    if-nez v3, :cond_2

    goto :goto_3

    .line 453
    :cond_2
    iget-object v3, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget-wide v11, v3, Lcom/qianhe/baselib/bean/PolyLineEntity;->ratio:D

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    div-double/2addr v11, v13

    mul-double v11, v11, v9

    .line 454
    iget-object v3, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    aget-wide v13, v3, v2

    const/4 v3, 0x1

    :goto_1
    if-ge v3, v1, :cond_3

    add-int/lit8 v5, v3, -0x1

    .line 457
    aget-wide v15, v4, v5

    add-double/2addr v6, v15

    div-double v15, v6, v9

    .line 459
    iget-object v5, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    mul-double v15, v15, v11

    add-double/2addr v15, v13

    const-wide v17, 0x408f400000000000L    # 1000.0

    mul-double v15, v15, v17

    move/from16 v19, v3

    const/4 v8, 0x2

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double v2, v2, v17

    aput-wide v2, v5, v8

    add-int/lit8 v3, v19, 0x1

    const/4 v2, 0x2

    goto :goto_1

    .line 461
    :cond_3
    iget-object v1, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/bean/PolyLineEntity;->coordsListJson:Ljava/lang/String;

    .line 462
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->syncPointsList()V

    .line 463
    iget-object v1, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/PolyLinePreView;->clearPoints()V

    .line 464
    iget-object v1, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 465
    iget-object v3, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v3, v2}, Lcom/qianhe/yct/view/PolyLinePreView;->addPoint([D)V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method private applySlopeBeforeSave()Z
    .locals 20

    move-object/from16 v0, p0

    .line 387
    iget-object v1, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    goto/16 :goto_6

    .line 390
    :cond_0
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isNoSlopeMode()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 393
    :cond_1
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isOverallMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->applyOverallSlopeElevations()V

    return v2

    .line 397
    :cond_2
    iget-object v1, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->syncSegmentRatioSize()V

    .line 398
    iget-object v1, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->getSegmentRatios()Ljava/util/List;

    move-result-object v1

    .line 399
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_b

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    goto/16 :goto_5

    .line 404
    :cond_3
    iput-boolean v2, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->applyingRatioChange:Z

    move-object v7, v5

    const/4 v4, 0x0

    .line 405
    :goto_0
    iget-object v8, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v2

    if-ge v4, v8, :cond_9

    .line 406
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    goto :goto_1

    :cond_4
    move-object v8, v5

    :goto_1
    if-eqz v8, :cond_5

    move-object v7, v8

    goto :goto_2

    :cond_5
    if-eqz v7, :cond_6

    move-object v8, v7

    goto :goto_2

    :cond_6
    move-object/from16 v19, v8

    move-object v8, v7

    move-object/from16 v7, v19

    :goto_2
    if-nez v7, :cond_7

    goto :goto_3

    .line 418
    :cond_7
    iget-object v9, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [D

    .line 419
    iget-object v10, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    add-int/lit8 v11, v4, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [D

    .line 420
    invoke-static {v9, v10}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v15, v11, v13

    if-eqz v15, :cond_8

    .line 422
    aget-wide v13, v9, v3

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    div-double v15, v15, v17

    mul-double v15, v15, v11

    add-double/2addr v13, v15

    const-wide v11, 0x408f400000000000L    # 1000.0

    mul-double v13, v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-double v13, v13

    div-double/2addr v13, v11

    aput-wide v13, v10, v3

    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move-object v7, v8

    goto :goto_0

    .line 425
    :cond_9
    iget-object v1, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/qianhe/baselib/bean/PolyLineEntity;->coordsListJson:Ljava/lang/String;

    .line 426
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->syncPointsList()V

    .line 427
    iget-object v1, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/PolyLinePreView;->clearPoints()V

    .line 428
    iget-object v1, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    .line 429
    iget-object v4, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v4, v3}, Lcom/qianhe/yct/view/PolyLinePreView;->addPoint([D)V

    goto :goto_4

    .line 432
    :cond_a
    iget-object v1, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->syncSegmentRatioSize()V

    .line 433
    iget-object v1, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 434
    iput-boolean v6, v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->applyingRatioChange:Z

    return v2

    .line 400
    :cond_b
    :goto_5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->please_set_slope_ratio:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return v6

    :cond_c
    :goto_6
    return v2
.end method

.method private calcSegmentRatio([D[D)Ljava/lang/Double;
    .locals 7

    .line 309
    invoke-static {p1, p2}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 311
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v2, 0x2

    .line 313
    aget-wide v3, p2, v2

    aget-wide v5, p1, v2

    sub-double/2addr v3, v5

    div-double/2addr v3, v0

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    mul-double v3, v3, p1

    .line 314
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method private calculateAllSegmentRatios(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[D>;)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 298
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 301
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 302
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->calcSegmentRatio([D[D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private clearAllCoords()V
    .locals 3

    .line 703
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->clear()V

    .line 707
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/PolyLinePreView;->clearPoints()V

    .line 708
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->pointFromCad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 709
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    const-string v1, ""

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 710
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/PolyLineEntity;->coordsListJson:Ljava/lang/String;

    .line 711
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->syncPointsList()V

    .line 712
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->tvContinue:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 713
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isSegmentMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->syncSegmentRatioSize()V

    :cond_1
    :goto_0
    return-void
.end method

.method private clearCadPath()V
    .locals 6

    .line 729
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

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

    .line 681
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 684
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->clear_list_confirm:I

    .line 685
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    .line 686
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    .line 687
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$5;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$5;-><init>(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V

    .line 684
    const-string v5, ""

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private createEntity(Lcom/qianhe/baselib/bean/PolyLineEntity;)V
    .locals 10

    const-wide/16 v0, 0x0

    .line 790
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/PolyLineEntity;->depthA:D

    .line 791
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/PolyLineEntity;->depthB:D

    .line 792
    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->pointsList:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 794
    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->pointsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    aget-wide v6, v2, v3

    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->pointsList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    aget-wide v8, v2, v3

    sub-double/2addr v6, v8

    iput-wide v6, p1, Lcom/qianhe/baselib/bean/PolyLineEntity;->heightDiff:D

    .line 796
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isSegmentMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 797
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/PolyLineEntity;->ratio:D

    .line 798
    iput v3, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    goto :goto_0

    .line 799
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isOverallMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 800
    iput v5, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    goto :goto_0

    .line 802
    :cond_1
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/PolyLineEntity;->ratio:D

    .line 803
    iput v4, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    .line 806
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    if-eqz v0, :cond_3

    .line 807
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/BaseStationEntity;->lon:D

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    .line 808
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/BaseStationEntity;->lat:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    .line 809
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/BaseStationEntity;->elev:D

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    :cond_3
    return-void
.end method

.method private createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;
    .locals 1

    .line 744
    new-instance v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$7;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$7;-><init>(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V

    return-object v0
.end method

.method private findLastSetSegmentRatioBefore(I)Ljava/lang/Double;
    .locals 3

    .line 636
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->getSegmentRatios()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 637
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    if-gtz p1, :cond_0

    goto :goto_1

    .line 640
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 642
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private hasCadPickedPoints()Z
    .locals 3

    .line 719
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->pointFromCad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 720
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

    .line 475
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private initObserve()V
    .locals 3

    .line 733
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity;->observeCoordsStep()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$6;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$6;-><init>(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initSegmentRatiosOnEnter()V
    .locals 2

    .line 286
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->ratiosInitializedFromCoords:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->ratiosInitializedFromCoords:Z

    .line 288
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isSegmentMode()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 289
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isEditProject()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->calculateAllSegmentRatios(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->setSegmentRatios(Ljava/util/List;)V

    return-void

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->syncSegmentRatioSize()V

    return-void
.end method

.method private initView()V
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/PolyLinePreView;->setWorkMode(Z)V

    .line 111
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->tvCadImport:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

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
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->tvClearCoords:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->setupToothViewCollectListeners(Lcom/qianhe/yct/view/ToothView;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    .line 115
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->tvClearCoords:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$1;-><init>(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$2;-><init>(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    .line 166
    new-instance v0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    iget-object v4, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget v4, v4, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    invoke-direct {v0, v2, v3, v4}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    .line 167
    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 168
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    new-instance v2, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;-><init>(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;)V

    .line 215
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->syncPointsList()V

    .line 216
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->pointsList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->pointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 218
    invoke-direct {p0, v2, v1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->addPoint([DZ)V

    goto :goto_3

    .line 220
    :cond_3
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->initSegmentRatiosOnEnter()V

    .line 222
    :cond_4
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->refreshSegmentRatioVisibility()V

    .line 223
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->refreshExplanationTip()V

    return-void
.end method

.method private insertPoint(IZ)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 572
    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    if-eqz v2, :cond_6

    if-ltz p1, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p2, :cond_1

    move v2, p1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, p1, 0x1

    .line 576
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    const/4 v3, 0x3

    .line 578
    new-array v3, v3, [D

    aget-wide v4, p1, v0

    aput-wide v4, v3, v0

    aget-wide v4, p1, v1

    aput-wide v4, v3, v1

    const/4 v4, 0x2

    aget-wide v5, p1, v4

    aput-wide v5, v3, v4

    .line 579
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isSegmentMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 581
    aget-wide v5, p1, v4

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-double v5, v5

    div-double/2addr v5, v7

    aput-wide v5, v3, v4

    .line 583
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {p1, v2, v3, p2}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->insertCoords(I[DZ)V

    .line 584
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->pointFromCad:Ljava/util/List;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 585
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isOverallMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 587
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->applyOverallSlopeElevations()V

    goto :goto_2

    .line 589
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/PolyLinePreView;->clearPoints()V

    .line 590
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    .line 591
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v3, p2}, Lcom/qianhe/yct/view/PolyLinePreView;->addPoint([D)V

    goto :goto_1

    .line 593
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-virtual {p2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/qianhe/baselib/bean/PolyLineEntity;->coordsListJson:Ljava/lang/String;

    .line 594
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->syncPointsList()V

    .line 596
    :goto_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->tvContinue:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v1, :cond_5

    const/4 p2, 0x1

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 597
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/qianhe/yct/R$string;->inserted_point:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 598
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->rcvCoords:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, v2}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_4
    return-void
.end method

.method private isEditProject()Z
    .locals 5

    .line 263
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->initEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/PolyLineEntity;->coordsListJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isNoSlopeMode()Z
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/PolyLineEntity;->isNoSlopeMode()Z

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

.method private isOverallMode()Z
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/PolyLineEntity;->isOverallSlopeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSegmentMode()Z
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/PolyLineEntity;->isSegmentSlopeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private recalculateAllRatiosFromCoords()V
    .locals 2

    .line 359
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isSegmentMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->calculateAllSegmentRatios(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->setSegmentRatios(Ljava/util/List;)V

    return-void
.end method

.method private recalculateRatiosAroundPoint(I)V
    .locals 4

    .line 367
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isSegmentMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->syncSegmentRatioSize()V

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->getSegmentRatios()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    add-int/lit8 v1, p1, -0x1

    if-ltz v1, :cond_1

    .line 370
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    iget-object v3, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->calcSegmentRatio([D[D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-ltz p1, :cond_2

    .line 373
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 374
    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    iget-object v3, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    invoke-direct {p0, v2, v1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->calcSegmentRatio([D[D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->setSegmentRatios(Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private refreshExplanationTip()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    if-nez v0, :cond_0

    return-void

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isOverallMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->tvExplanation:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->polyline_attention_des_slope:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 277
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isSegmentMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->tvExplanation:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->polyline_attention_des_segment:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->tvExplanation:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->polyline_attention_des:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private refreshSegmentRatioVisibility()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    if-eqz v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isSegmentMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->setShowSegmentRatio(Z)V

    :cond_0
    return-void
.end method

.method private replaceCadPickPoints([D)V
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->clear()V

    .line 655
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/PolyLinePreView;->clearPoints()V

    .line 656
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->pointFromCad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    .line 657
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 664
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->addCadPickPoints([D)V

    return-void

    .line 658
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    const-string v0, ""

    iput-object v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 659
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/qianhe/baselib/bean/PolyLineEntity;->coordsListJson:Ljava/lang/String;

    .line 660
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->syncPointsList()V

    .line 661
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->tvContinue:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private saveProjectAndStartWork()V
    .locals 6

    .line 774
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->createEntity(Lcom/qianhe/baselib/bean/PolyLineEntity;)V

    .line 775
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 776
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->insert(Lcom/qianhe/baselib/base/BaseProEntity;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    .line 777
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->startWork()V

    return-void

    .line 779
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->initEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    invoke-virtual {v1, v0}, Lcom/qianhe/baselib/bean/PolyLineEntity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 782
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 783
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 785
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->startWork()V

    return-void
.end method

.method private startWork()V
    .locals 4

    .line 814
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->start_jobs:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 815
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 816
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 817
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 818
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private syncPointsList()V
    .locals 3

    .line 470
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/PolyLineEntity;->coordsListJson:Ljava/lang/String;

    new-instance v2, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$4;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$4;-><init>(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V

    .line 471
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 470
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->pointsList:Ljava/util/List;

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

    .line 843
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    new-instance p1, Lcom/qianhe/yct/activity/cad/CadPickHelper;

    new-instance v0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 84
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    .line 85
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
    iget-object p3, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 89
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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
    iget-object p3, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 93
    iget-object p3, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    check-cast p2, Lcom/qianhe/baselib/bean/PolyLineEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->initEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    .line 100
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/PolyLineEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->initView()V

    .line 103
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->initObserve()V

    .line 104
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->initActivityResultLauncher()V

    .line 105
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 4

    .line 848
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    .line 849
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 850
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

    .line 823
    iput-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 228
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 229
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->syncPointsList()V

    .line 230
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->refreshSegmentRatioVisibility()V

    .line 231
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->refreshExplanationTip()V

    .line 232
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isOverallMode()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->applyOverallSlopeElevations()V

    return-void

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isSegmentMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->isEditProject()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->mList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_3

    .line 238
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->multipleCoordsAdapter:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->getSegmentRatios()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    if-eqz v1, :cond_1

    return-void

    .line 245
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->recalculateAllRatiosFromCoords()V

    :cond_3
    return-void
.end method
