.class public Lcom/qianhe/yct/activity/CADEntityChooseActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "CADEntityChooseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;,
        Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;,
        Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;,
        Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;,
        Lcom/qianhe/yct/activity/CADEntityChooseActivity$CoordKey;,
        Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

.field private final collectedPoints:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;",
            ">;"
        }
    .end annotation
.end field

.field private curCADFilePath:Ljava/lang/String;

.field private curCadUiPoint:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

.field private gx:D

.field private gy:D

.field private hasInsNaviMsg:Z

.field private inVisiblePointIndex:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private initialChoosePoints:[D

.field private phoneHeading:D

.field private second:I

.field private selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

.field private showPointAdapter:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

.field private single:Z

.field private startPositionX:D

.field private startPositionY:D

.field private testHandler:Landroid/os/Handler;

.field private totalGetCount:I

.field private useMaxDistancePosi:Z


# direct methods
.method public static synthetic $r8$lambda$cfIdWPgA2zAmLLpTsDJ9lN6dyDE(Lcom/qianhe/yct/activity/CADEntityChooseActivity;I)V
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    .line 349
    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->rvShowEntityPoints:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcollectedPoints(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Ljava/util/LinkedHashSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurCadUiPoint(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->curCadUiPoint:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinVisiblePointIndex(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Ljava/util/HashSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->inVisiblePointIndex:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetphoneHeading(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->phoneHeading:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetsecond(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->second:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetselectCadEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshowPointAdapter(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->showPointAdapter:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsingle(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->single:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstartPositionX(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->startPositionX:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetstartPositionY(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->startPositionY:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettestHandler(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->testHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettotalGetCount(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->totalGetCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcurCadUiPoint(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->curCadUiPoint:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsecond(Lcom/qianhe/yct/activity/CADEntityChooseActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->second:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectCadEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsingle(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->single:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartPositionX(Lcom/qianhe/yct/activity/CADEntityChooseActivity;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->startPositionX:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartPositionY(Lcom/qianhe/yct/activity/CADEntityChooseActivity;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->startPositionY:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputuseMaxDistancePosi(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->useMaxDistancePosi:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyInitialChoosePoints(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->applyInitialChoosePoints()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuildCollectedResult(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)[D
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->buildCollectedResult()[D

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckMaxDisPointTips(Lcom/qianhe/yct/activity/CADEntityChooseActivity;IILcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->checkMaxDisPointTips(IILcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckPoint(Lcom/qianhe/yct/activity/CADEntityChooseActivity;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->checkPoint(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearRadioButtonClickStatus(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->clearRadioButtonClickStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindCurrentEntityPoint(Lcom/qianhe/yct/activity/CADEntityChooseActivity;II)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->findCurrentEntityPoint(II)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mformatNoString(Lcom/qianhe/yct/activity/CADEntityChooseActivity;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->formatNoString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mformatPointContent(Lcom/qianhe/yct/activity/CADEntityChooseActivity;DDD)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->formatPointContent(DDD)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCheckedPointIndicesForEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;I)Ljava/util/HashSet;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->getCheckedPointIndicesForEntity(I)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misCollected(Lcom/qianhe/yct/activity/CADEntityChooseActivity;II)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->isCollected(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misRadioButton(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->isRadioButton()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyLinePointTotalViewVis(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->notifyLinePointTotalViewVis()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshCollectedVisuals(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->refreshCollectedVisuals()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAllCadShowPointCheck(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->setAllCadShowPointCheck(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAllCadShowPointRever(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->setAllCadShowPointRever()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAllCadShowPointVis(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->setAllCadShowPointVis(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$muncheckPoint(Lcom/qianhe/yct/activity/CADEntityChooseActivity;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->uncheckPoint(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 55
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 80
    iput-wide v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->phoneHeading:D

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->hasInsNaviMsg:Z

    .line 88
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->useMaxDistancePosi:Z

    const/4 v1, -0x1

    .line 92
    iput v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->totalGetCount:I

    .line 104
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    .line 106
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->inVisiblePointIndex:Ljava/util/HashSet;

    const-wide v1, 0x41be183be2000000L    # 5.04904674E8

    .line 163
    iput-wide v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->startPositionX:D

    const-wide v1, 0x41ec613824e33333L    # 3.8090673031E9

    .line 164
    iput-wide v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->startPositionY:D

    .line 165
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->single:Z

    .line 166
    iput v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->second:I

    .line 168
    new-instance v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->testHandler:Landroid/os/Handler;

    return-void
.end method

.method private applyInitialChoosePoints()V
    .locals 23

    move-object/from16 v0, p0

    .line 752
    iget-object v1, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->initialChoosePoints:[D

    if-eqz v1, :cond_d

    array-length v1, v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto/16 :goto_5

    .line 755
    :cond_0
    iget-object v1, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_5

    .line 759
    :cond_1
    iget-object v1, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v1}, Lcom/qh/xcad/XCadView;->getScene()Lcom/qh/xcad/XCadScene;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 760
    iget-object v3, v1, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    if-eqz v3, :cond_d

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_5

    .line 765
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 766
    iget-object v4, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->initialChoosePoints:[D

    array-length v4, v4

    div-int/2addr v4, v2

    .line 767
    iget v2, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->totalGetCount:I

    if-lez v2, :cond_3

    .line 768
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_3
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_b

    .line 771
    iget-object v6, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->initialChoosePoints:[D

    mul-int/lit8 v7, v5, 0x3

    aget-wide v8, v6, v7

    const/4 v10, 0x1

    add-int/2addr v7, v10

    .line 772
    aget-wide v11, v6, v7

    const/4 v6, -0x1

    const-wide/high16 v13, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/4 v7, -0x1

    const/4 v15, 0x0

    .line 776
    :goto_1
    iget-object v2, v1, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-wide v16, 0xffffffffL

    const/16 v18, 0x20

    if-ge v15, v2, :cond_9

    .line 777
    iget-object v2, v1, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qh/xcad/XCadEntity;

    move-object/from16 v19, v1

    if-eqz v2, :cond_8

    .line 778
    invoke-virtual {v2}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v1

    if-ge v1, v10, :cond_4

    goto :goto_4

    .line 781
    :cond_4
    iget v1, v2, Lcom/qh/xcad/XCadEntity;->type:I

    const/4 v10, 0x5

    if-eq v1, v10, :cond_8

    const/4 v10, 0x6

    if-ne v1, v10, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    .line 784
    :goto_2
    invoke-virtual {v2}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v10

    if-ge v1, v10, :cond_8

    move v10, v4

    move/from16 v20, v5

    int-to-long v4, v15

    shl-long v4, v4, v18

    move-wide/from16 v21, v4

    int-to-long v4, v1

    and-long v4, v4, v16

    or-long v4, v21, v4

    .line 786
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    .line 789
    :cond_6
    invoke-virtual {v2, v1}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v4

    sub-double/2addr v4, v8

    .line 790
    invoke-virtual {v2, v1}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v21

    sub-double v21, v21, v11

    mul-double v4, v4, v4

    mul-double v21, v21, v21

    add-double v4, v4, v21

    cmpg-double v21, v4, v13

    if-gez v21, :cond_7

    move v7, v1

    move-wide v13, v4

    move v6, v15

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v4, v10

    move/from16 v5, v20

    goto :goto_2

    :cond_8
    :goto_4
    move v10, v4

    move/from16 v20, v5

    add-int/lit8 v15, v15, 0x1

    move v4, v10

    move-object/from16 v1, v19

    move/from16 v5, v20

    const/4 v10, 0x1

    goto :goto_1

    :cond_9
    move-object/from16 v19, v1

    move v10, v4

    move/from16 v20, v5

    if-ltz v6, :cond_a

    const-wide v1, 0x3f647ae147ae147cL    # 0.0025000000000000005

    cmpg-double v4, v13, v1

    if-gtz v4, :cond_a

    int-to-long v1, v6

    shl-long v1, v1, v18

    int-to-long v4, v7

    and-long v4, v4, v16

    or-long/2addr v1, v4

    .line 801
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 802
    iget-object v1, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    new-instance v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;

    invoke-direct {v2, v6, v7}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v5, v20, 0x1

    move v4, v10

    move-object/from16 v1, v19

    goto/16 :goto_0

    .line 805
    :cond_b
    iget-object v1, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_5

    .line 809
    :cond_c
    invoke-direct {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->refreshCollectedVisuals()V

    :cond_d
    :goto_5
    return-void
.end method

.method private buildCollectedResult()[D
    .locals 17

    move-object/from16 v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 853
    iget-object v5, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v5}, Lcom/qh/xcad/XCadView;->getScene()Lcom/qh/xcad/XCadScene;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    .line 854
    iget-object v7, v5, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    if-eqz v7, :cond_8

    iget-object v7, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    invoke-virtual {v7}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_2

    .line 857
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 858
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 859
    iget-object v9, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;

    .line 860
    iget v11, v10, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->entityIndex:I

    if-ltz v11, :cond_1

    iget-object v12, v5, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lt v11, v12, :cond_2

    goto :goto_0

    .line 863
    :cond_2
    iget-object v11, v5, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    iget v12, v10, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->entityIndex:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/qh/xcad/XCadEntity;

    if-eqz v11, :cond_1

    .line 864
    iget v12, v10, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->pointIndex:I

    if-ltz v12, :cond_1

    invoke-virtual {v11}, Lcom/qh/xcad/XCadEntity;->pointCount()I

    move-result v13

    if-lt v12, v13, :cond_3

    goto :goto_0

    .line 867
    :cond_3
    iget v12, v10, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->pointIndex:I

    invoke-virtual {v11, v12}, Lcom/qh/xcad/XCadEntity;->pointX(I)D

    move-result-wide v12

    .line 868
    iget v14, v10, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->pointIndex:I

    invoke-virtual {v11, v14}, Lcom/qh/xcad/XCadEntity;->pointY(I)D

    move-result-wide v14

    .line 869
    iget v10, v10, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->pointIndex:I

    invoke-virtual {v11, v10}, Lcom/qh/xcad/XCadEntity;->pointZ(I)D

    move-result-wide v10

    const/16 v16, 0x2

    .line 870
    new-instance v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CoordKey;

    invoke-direct {v1, v12, v13, v14, v15}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CoordKey;-><init>(DD)V

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 873
    :cond_4
    new-array v1, v3, [D

    aput-wide v12, v1, v2

    aput-wide v14, v1, v4

    aput-wide v10, v1, v16

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const/16 v16, 0x2

    .line 875
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v6

    .line 878
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [D

    const/4 v5, 0x0

    .line 879
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 880
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    mul-int/lit8 v8, v5, 0x3

    .line 881
    aget-wide v9, v6, v2

    aput-wide v9, v1, v8

    add-int/lit8 v9, v8, 0x1

    .line 882
    aget-wide v10, v6, v4

    aput-wide v10, v1, v9

    add-int/lit8 v8, v8, 0x2

    .line 883
    aget-wide v9, v6, v16

    aput-wide v9, v1, v8

    add-int/2addr v5, v4

    goto :goto_1

    :cond_7
    return-object v1

    :cond_8
    :goto_2
    return-object v6
.end method

.method private checkMaxDisPointTips(IILcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 653
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->useMaxDistancePosi:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->hasInsNaviMsg:Z

    if-eqz v2, :cond_0

    .line 654
    iget-object v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    .line 655
    invoke-virtual {v2, p1, p2}, Lcom/qh/xcad/XCadView;->getScenePoint(II)Lcom/qh/xcad/XCadPoint;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 657
    new-instance p2, Lcom/qh/utils/DistanceUtils$Point2D;

    iget-wide v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->gx:D

    iget-wide v4, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->gy:D

    invoke-direct {p2, v2, v3, v4, v5}, Lcom/qh/utils/DistanceUtils$Point2D;-><init>(DD)V

    new-instance v2, Lcom/qh/utils/DistanceUtils$Point2D;

    iget-wide v3, p1, Lcom/qh/xcad/XCadPoint;->x:D

    iget-wide v5, p1, Lcom/qh/xcad/XCadPoint;->y:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/qh/utils/DistanceUtils$Point2D;-><init>(DD)V

    invoke-static {p2, v2}, Lcom/qh/utils/DistanceUtils;->distance2D(Lcom/qh/utils/DistanceUtils$Point2D;Lcom/qh/utils/DistanceUtils$Point2D;)D

    move-result-wide p1

    const-wide v2, 0x409f400000000000L    # 2000.0

    cmpg-double v4, v2, p1

    if-gez v4, :cond_0

    .line 661
    sget p1, Lcom/qianhe/yct/R$string;->cad_point_max_distance_tips:I

    .line 662
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p2, v2, v0

    invoke-static {p0, p1, v2}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget p1, Lcom/qianhe/yct/R$string;->cad_continue:I

    .line 663
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget p1, Lcom/qianhe/yct/R$string;->cad_current_selection_cancel:I

    .line 664
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    move-object v3, p0

    move-object v8, p3

    .line 661
    invoke-virtual/range {v3 .. v8}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return v1

    :cond_0
    return v0
.end method

.method private checkPoint(II)V
    .locals 2

    .line 702
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;

    invoke-direct {v1, p1, p2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 703
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->findCurrentEntityPoint(II)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 705
    iput-boolean p2, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->check:Z

    .line 707
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->refreshCollectedVisuals()V

    return-void
.end method

.method private clearRadioButtonClickStatus()V
    .locals 4

    .line 1111
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->isRadioButton()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1114
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1115
    iget-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 1116
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;

    .line 1117
    iget v2, v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->entityIndex:I

    iget v3, v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->pointIndex:I

    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->findCurrentEntityPoint(II)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    .line 1119
    iput-boolean v3, v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->check:Z

    .line 1120
    iget-boolean v2, v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->vis:Z

    if-eqz v2, :cond_1

    .line 1121
    iget-object v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget v3, v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->entityIndex:I

    iget v1, v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->pointIndex:I

    invoke-virtual {v2, v3, v1}, Lcom/qh/xcad/XCadView;->addSelectIndicePoint(II)V

    goto :goto_0

    .line 1123
    :cond_1
    iget-object v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget v3, v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->entityIndex:I

    iget v1, v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->pointIndex:I

    invoke-virtual {v2, v3, v1}, Lcom/qh/xcad/XCadView;->removeSelectIndicePoint(II)V

    goto :goto_0

    .line 1126
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget v3, v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->entityIndex:I

    iget v1, v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->pointIndex:I

    invoke-virtual {v2, v3, v1}, Lcom/qh/xcad/XCadView;->removeSelectIndicePoint(II)V

    goto :goto_0

    .line 1129
    :cond_3
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->refreshCollectedVisuals()V

    :cond_4
    :goto_1
    return-void
.end method

.method private findCurrentEntityPoint(II)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;
    .locals 3

    .line 689
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->points:Ljava/util/List;

    if-nez v2, :cond_0

    goto :goto_0

    .line 692
    :cond_0
    iget v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->xCadEntityIndex:I

    if-eq v0, p1, :cond_1

    return-object v1

    :cond_1
    if-ltz p2, :cond_3

    .line 695
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lt p2, p1, :cond_2

    goto :goto_0

    .line 698
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    iget-object p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->points:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    return-object p1

    :cond_3
    :goto_0
    return-object v1
.end method

.method private formatNoString(I)Ljava/lang/String;
    .locals 2

    .line 1102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%03d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatPointContent(DDD)Ljava/lang/String;
    .locals 1

    .line 1106
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p1, p4, p5

    const/4 p1, 0x1

    aput-object p2, p4, p1

    const/4 p1, 0x2

    aput-object p3, p4, p1

    const-string p1, "(%.3f, %.3f, %.3f)"

    invoke-static {v0, p1, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCheckedPointIndicesForEntity(I)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 675
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 676
    iget-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;

    .line 677
    iget v3, v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->entityIndex:I

    if-ne v3, p1, :cond_0

    .line 678
    iget v2, v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->pointIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isCollected(II)Z
    .locals 2

    .line 685
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;

    invoke-direct {v1, p1, p2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isRadioButton()Z
    .locals 2

    .line 160
    iget v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->totalGetCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private notifyLinePointTotalViewVis()V
    .locals 4

    .line 890
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    if-eqz v0, :cond_1

    .line 892
    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->points:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 893
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 895
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->tvTotalCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 897
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->tvTotalCount:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 899
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->showPointAdapter:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private readOnCreateParams()Z
    .locals 3

    .line 231
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    const-string v1, "cad_file_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->curCADFilePath:Ljava/lang/String;

    .line 234
    const-string v1, "cad_choose_max_count"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->totalGetCount:I

    .line 235
    const-string v1, "cad_initial_points"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->initialChoosePoints:[D

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->curCADFilePath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 238
    sget v0, Lcom/qianhe/yct/R$string;->cad_invalid_path:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$2;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private refreshCollectedVisuals()V
    .locals 0

    .line 745
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->restoreCollectedPointMarkers()V

    return-void
.end method

.method private removeCollectedForEntity(I)V
    .locals 4

    .line 727
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 728
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;

    .line 729
    iget v2, v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->entityIndex:I

    if-ne v2, p1, :cond_0

    .line 730
    iget-object v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 731
    iget v2, v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->entityIndex:I

    iget v3, v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->pointIndex:I

    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->findCurrentEntityPoint(II)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 733
    iput-boolean v3, v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->check:Z

    .line 735
    :cond_1
    iget-object v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget v3, v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->entityIndex:I

    iget v1, v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->pointIndex:I

    invoke-virtual {v2, v3, v1}, Lcom/qh/xcad/XCadView;->removeSelectIndicePoint(II)V

    goto :goto_0

    .line 738
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->refreshCollectedVisuals()V

    return-void
.end method

.method private restoreCollectedPointMarkers()V
    .locals 7

    .line 814
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;

    .line 815
    iget v4, v3, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->entityIndex:I

    iget v5, v3, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->pointIndex:I

    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->findCurrentEntityPoint(II)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 817
    iput-boolean v1, v4, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->check:Z

    .line 818
    iget-boolean v4, v4, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->vis:Z

    if-nez v4, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 824
    :cond_0
    iget-object v4, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget v5, v3, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->entityIndex:I

    iget v3, v3, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->pointIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/qh/xcad/XCadView;->addSelectIndicePointCheck(IILjava/lang/Integer;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private restoreCollectedPoints([I)V
    .locals 5

    .line 840
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 844
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 845
    iget-object v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    new-instance v3, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;

    aget v4, p1, v0

    aget v1, p1, v1

    invoke-direct {v3, v4, v1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private serializeCollectedPoints()[I
    .locals 6

    .line 830
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 832
    iget-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;

    add-int/lit8 v4, v2, 0x1

    .line 833
    iget v5, v3, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->entityIndex:I

    aput v5, v0, v2

    add-int/lit8 v2, v2, 0x2

    .line 834
    iget v3, v3, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;->pointIndex:I

    aput v3, v0, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private setAllCadShowPointCheck(Z)V
    .locals 5

    .line 931
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->points:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 932
    iget v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->xCadEntityIndex:I

    if-eqz p1, :cond_3

    .line 935
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->removeCollectedForEntity(I)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 936
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    iget-object v2, v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 937
    iget-object v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    iget-object v2, v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->points:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    .line 938
    iget v3, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->totalGetCount:I

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    iget v4, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->totalGetCount:I

    if-ge v3, v4, :cond_0

    goto :goto_1

    .line 942
    :cond_0
    iput-boolean p1, v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->check:Z

    .line 943
    iget-boolean v3, v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->vis:Z

    if-eqz v3, :cond_2

    .line 944
    iget-object v3, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget v2, v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->xPointIndex:I

    invoke-virtual {v3, v0, v2}, Lcom/qh/xcad/XCadView;->addSelectIndicePoint(II)V

    goto :goto_2

    .line 940
    :cond_1
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->checkPoint(II)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 949
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->showPointAdapter:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method private setAllCadShowPointRever()V
    .locals 4

    .line 954
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->points:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 955
    iget v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->xCadEntityIndex:I

    const/4 v1, 0x0

    .line 956
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    iget-object v2, v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 957
    iget-object v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    iget-object v2, v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->points:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    .line 958
    iget-boolean v2, v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->check:Z

    if-eqz v2, :cond_0

    .line 959
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->uncheckPoint(II)V

    goto :goto_1

    .line 960
    :cond_0
    iget v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->totalGetCount:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    iget v3, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->totalGetCount:I

    if-ge v2, v3, :cond_2

    .line 961
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->checkPoint(II)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 964
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->showPointAdapter:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method private setAllCadShowPointVis(Z)V
    .locals 4

    .line 904
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->points:Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 906
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    iget-object p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->points:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 907
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    iget-object p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->points:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    const/4 v1, 0x1

    .line 908
    iput-boolean v1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->vis:Z

    .line 910
    iget-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->inVisiblePointIndex:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 911
    iget-boolean v1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->check:Z

    if-nez v1, :cond_0

    .line 912
    iget-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-object v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    iget v2, v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->xCadEntityIndex:I

    iget p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->xPointIndex:I

    invoke-virtual {v1, v2, p1}, Lcom/qh/xcad/XCadView;->addSelectIndicePoint(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 916
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    iget-object v1, v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 917
    iget-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    iget-object v1, v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->points:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    .line 918
    iput-boolean v0, v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->vis:Z

    .line 920
    iget-object v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->inVisiblePointIndex:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 921
    iget-object v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-object v3, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    iget v3, v3, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->xCadEntityIndex:I

    iget v1, v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->xPointIndex:I

    invoke-virtual {v2, v3, v1}, Lcom/qh/xcad/XCadView;->removeSelectIndicePoint(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 924
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->refreshCollectedVisuals()V

    .line 925
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->showPointAdapter:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method private setListener()V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    new-instance v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$3;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setOnLoadCadFileListener(Lcom/qh/xcad/XCadView$OnLoadCadFileListener;)V

    .line 427
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    new-instance v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$4;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setOnEntityClickListener(Lcom/qh/xcad/XCadView$OnEntityClickListener;)V

    .line 467
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    new-instance v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$5;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setOnMarkerClickListener(Lcom/qh/xcad/XCadView$OnMarkerClickListener;)V

    .line 532
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    new-instance v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$6;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setOnCarSelectedEntityListener(Lcom/qh/xcad/XCadView$OnCarSelectedEntityListener;)V

    .line 558
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->ivCadViewResetScale:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$7;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->ivMyLocation:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$8;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->btnAllVis:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$9;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->btnAllInvis:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$10;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$10;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->btnAllChoice:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$11;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$11;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->btnRevers:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$12;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$12;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->btnFinishChoose:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$13;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$13;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private uncheckPoint(II)V
    .locals 2

    .line 711
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;

    invoke-direct {v1, p1, p2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CollectedPointRef;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 712
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->findCurrentEntityPoint(II)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 714
    iput-boolean v1, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->check:Z

    .line 715
    iget-boolean v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->vis:Z

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0, p1, p2}, Lcom/qh/xcad/XCadView;->addSelectIndicePoint(II)V

    goto :goto_0

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0, p1, p2}, Lcom/qh/xcad/XCadView;->removeSelectIndicePoint(II)V

    goto :goto_0

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0, p1, p2}, Lcom/qh/xcad/XCadView;->removeSelectIndicePoint(II)V

    .line 723
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->refreshCollectedVisuals()V

    return-void
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 0

    .line 0
    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->cad_import:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 372
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 971
    sget v0, Lcom/qianhe/yct/R$string;->cad_do_you_want_to_close_this_page:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->cad_continue:I

    .line 972
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$15;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$15;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    .line 971
    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 122
    sget v0, Lcom/qianhe/yct/R$style;->Theme_CAD:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    .line 125
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->readOnCreateParams()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-virtual {p1, v0, v1}, Lcom/qh/xcad/XCadView;->setToleranceWorld(D)V

    .line 133
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/qh/xcad/XCadView;->setCadTouchEnable(Z)V

    .line 134
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v0}, Lcom/qh/xcad/XCadView;->setSelectSingleLine(Z)V

    .line 135
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/qh/xcad/XCadView;->setDrawSelectedLineNumText(Z)V

    .line 136
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v0}, Lcom/qh/xcad/XCadView;->setFollowVehicle(Z)V

    .line 138
    new-instance p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Lcom/qianhe/yct/activity/CADEntityChooseActivity-IA;)V

    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->showPointAdapter:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    .line 139
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->rvShowEntityPoints:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 140
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->rvShowEntityPoints:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->showPointAdapter:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 143
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->isRadioButton()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 144
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->btnAllChoice:Lcom/google/android/material/button/MaterialButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->btnRevers:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 150
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->setListener()V

    .line 151
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->curCADFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qh/xcad/XCadView;->setCadFilePath(Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1}, Lcom/qh/xcad/XCadView;->getScene()Lcom/qh/xcad/XCadScene;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->collectedPoints:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 154
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->applyInitialChoosePoints()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 111
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 112
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->testHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 114
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 12

    const/4 v0, 0x1

    .line 384
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->hasInsNaviMsg:Z

    .line 387
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    iput-wide v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->gx:D

    .line 388
    iget-wide v4, p1, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    iput-wide v4, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->gy:D

    .line 392
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-wide v6, p1, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/qh/xcad/XCadView;->setXCadVehiclePosition(DDDZ)V

    .line 393
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    iget-wide v6, p1, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    iget-wide v8, p1, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    iget-wide v10, p1, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    invoke-virtual/range {v1 .. v11}, Lcom/qh/xcad/XCadView;->setXCadExcavatorBucketPosition(DDDDD)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .line 282
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 283
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0}, Lcom/qh/xcad/XCadView;->getScene()Lcom/qh/xcad/XCadScene;

    move-result-object v0

    .line 286
    const-string v1, "cadview_tx"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    .line 287
    invoke-virtual {p1, v1, v3, v4}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v1

    .line 288
    iget-object v5, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v5, v1, v2}, Lcom/qh/xcad/XCadView;->setTxRestoreState(D)V

    .line 290
    :cond_0
    const-string v1, "cadview_ty"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    invoke-virtual {p1, v1, v3, v4}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v1

    .line 292
    iget-object v3, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v3, v1, v2}, Lcom/qh/xcad/XCadView;->setTyRestoreState(D)V

    .line 294
    :cond_1
    const-string v1, "cadview_scale"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 295
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v1

    .line 296
    iget-object v3, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v3, v1, v2}, Lcom/qh/xcad/XCadView;->setScaleRestoreState(D)V

    :cond_2
    if-eqz v0, :cond_9

    .line 300
    const-string v1, "collected_points"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->restoreCollectedPoints([I)V

    .line 302
    const-string v1, "entityIndex"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 304
    const-string/jumbo v2, "show_invis_items"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    if-eqz v2, :cond_3

    .line 307
    iget-object v3, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->inVisiblePointIndex:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_3
    if-ltz v1, :cond_8

    .line 310
    iget-object v3, v0, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 312
    iget-object v3, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v3, v1}, Lcom/qh/xcad/XCadView;->addSelectLine(I)V

    .line 314
    iget-object v0, v0, Lcom/qh/xcad/XCadScene;->entities:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qh/xcad/XCadEntity;

    .line 315
    new-instance v3, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    .line 317
    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->getCheckedPointIndicesForEntity(I)Ljava/util/HashSet;

    move-result-object v4

    invoke-direct {v3, v1, v0, v2, v4}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;-><init>(ILcom/qh/xcad/XCadEntity;Ljava/util/HashSet;Ljava/util/HashSet;)V

    iput-object v3, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    .line 319
    iget-object v0, v3, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->points:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 323
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 325
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    .line 326
    iget-boolean v4, v3, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->vis:Z

    if-eqz v4, :cond_4

    .line 327
    iget-boolean v4, v3, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->check:Z

    if-eqz v4, :cond_5

    .line 328
    iget-object v4, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-object v5, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    iget v5, v5, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->xCadEntityIndex:I

    iget v3, v3, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->xPointIndex:I

    invoke-virtual {v4, v5, v3}, Lcom/qh/xcad/XCadView;->addSelectIndicePointCheck(II)V

    goto :goto_0

    .line 332
    :cond_5
    iget-object v4, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-object v5, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    iget v5, v5, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->xCadEntityIndex:I

    iget v3, v3, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->xPointIndex:I

    invoke-virtual {v4, v5, v3}, Lcom/qh/xcad/XCadView;->addSelectIndicePoint(II)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    .line 339
    :cond_7
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->tvTotalCount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->showPointAdapter:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 346
    const-string v0, "rv_show_pos"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 347
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->points:Ljava/util/List;

    if-eqz v0, :cond_8

    if-ltz p1, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_8

    .line 348
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->rvShowEntityPoints:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 354
    :cond_8
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->refreshCollectedVisuals()V

    :cond_9
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 256
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 258
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0}, Lcom/qh/xcad/XCadView;->getTx()D

    move-result-wide v0

    const-string v2, "cadview_tx"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 259
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0}, Lcom/qh/xcad/XCadView;->getTy()D

    move-result-wide v0

    const-string v2, "cadview_ty"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 260
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0}, Lcom/qh/xcad/XCadView;->getScale()D

    move-result-wide v0

    const-string v2, "cadview_scale"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 262
    const-string v0, "collected_points"

    invoke-direct {p0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->serializeCollectedPoints()[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 264
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->selectCadEntity:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    if-eqz v0, :cond_0

    .line 266
    const-string v1, "entityIndex"

    iget v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->xCadEntityIndex:I

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 268
    const-string/jumbo v0, "show_invis_items"

    iget-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->inVisiblePointIndex:Ljava/util/HashSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 271
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->rvShowEntityPoints:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 274
    const-string v1, "rv_show_pos"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
