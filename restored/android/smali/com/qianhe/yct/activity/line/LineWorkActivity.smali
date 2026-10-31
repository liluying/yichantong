.class public Lcom/qianhe/yct/activity/line/LineWorkActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "LineWorkActivity.java"


# instance fields
.field private baseX:D

.field private baseY:D

.field private binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

.field private curPositionWgs84:[D

.field private hasCheckBasestation:Z

.field private isCheckBase:Z

.field private isH5Pro:Z

.field private lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

.field private mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private mapController:Lcom/qianhe/yct/view/map/MapController;

.field private pointA:[D

.field private pointB:[D

.field private sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

.field private silentModifyProject:Z

.field private yMap:Lcom/qianhe/yct/view/map/YMap;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/line/LineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurPositionWgs84(Lcom/qianhe/yct/activity/line/LineWorkActivity;)[D
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->curPositionWgs84:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisH5Pro(Lcom/qianhe/yct/activity/line/LineWorkActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->isH5Pro:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlineEntity(Lcom/qianhe/yct/activity/line/LineWorkActivity;)Lcom/qianhe/baselib/bean/LineEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBeepPlayer(Lcom/qianhe/yct/activity/line/LineWorkActivity;)Lcom/qianhe/yct/utils/BeepPlayer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/activity/line/LineWorkActivity;)Lcom/qianhe/yct/db/DatabaseManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/activity/line/LineWorkActivity;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmapController(Lcom/qianhe/yct/activity/line/LineWorkActivity;)Lcom/qianhe/yct/view/map/MapController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetyMap(Lcom/qianhe/yct/activity/line/LineWorkActivity;)Lcom/qianhe/yct/view/map/YMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/line/LineWorkActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->hasCheckBasestation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisCheckBase(Lcom/qianhe/yct/activity/line/LineWorkActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->isCheckBase:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBeepPlayer(Lcom/qianhe/yct/activity/line/LineWorkActivity;Lcom/qianhe/yct/utils/BeepPlayer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhasCadPath(Lcom/qianhe/yct/activity/line/LineWorkActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->hasCadPath()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minitPlayer(Lcom/qianhe/yct/activity/line/LineWorkActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->initPlayer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshToothType(Lcom/qianhe/yct/activity/line/LineWorkActivity;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->refreshToothType(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowFixedCoordinateStartupDialog(Lcom/qianhe/yct/activity/line/LineWorkActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->showFixedCoordinateStartupDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/activity/line/LineWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/activity/line/LineWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/qianhe/yct/activity/line/LineWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildCadItemAreaPoints([D[D)[Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 710
    aget-wide v4, p1, v2

    const/4 v9, 0x1

    .line 711
    aget-wide v6, p1, v9

    .line 712
    aget-wide v11, p2, v2

    .line 713
    aget-wide v13, p2, v9

    .line 714
    iget-object v3, v0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    const/16 v16, 0x0

    iget-wide v2, v3, Lcom/qianhe/baselib/bean/LineEntity;->pileSpacing:D

    sub-double v17, v11, v4

    sub-double v19, v13, v6

    mul-double v21, v17, v17

    mul-double v23, v19, v19

    add-double v21, v21, v23

    .line 717
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmpl-double v8, v21, v23

    if-eqz v8, :cond_7

    cmpg-double v8, v2, v23

    if-gtz v8, :cond_0

    goto/16 :goto_3

    :cond_0
    div-double v17, v17, v21

    div-double v19, v19, v21

    .line 726
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    cmpg-double v10, v23, v21

    if-gtz v10, :cond_1

    mul-double v25, v17, v23

    add-double v25, v4, v25

    .line 728
    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    mul-double v25, v19, v23

    add-double v25, v6, v25

    .line 729
    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-double v23, v23, v2

    goto :goto_0

    .line 731
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 732
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v9

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v2, v11

    .line 733
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v10, v2, v6

    if-gtz v10, :cond_2

    sub-double/2addr v4, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v6

    if-lez v4, :cond_3

    .line 734
    :cond_2
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v2, v1

    .line 738
    new-array v3, v2, [Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_6

    mul-int/lit8 v5, v4, 0x2

    .line 740
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    add-int/2addr v5, v9

    .line 741
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    if-nez v4, :cond_4

    .line 743
    new-instance v10, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    sget v5, Lcom/qianhe/yct/R$string;->starting_point:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {v10 .. v15}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;-><init>(DDLjava/lang/String;)V

    aput-object v10, v3, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v2, -0x1

    if-ne v4, v5, :cond_5

    .line 745
    new-instance v10, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    sget v5, Lcom/qianhe/yct/R$string;->ending_point:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {v10 .. v15}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;-><init>(DDLjava/lang/String;)V

    aput-object v10, v3, v4

    goto :goto_2

    .line 747
    :cond_5
    new-instance v5, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    invoke-direct {v5, v11, v12, v13, v14}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;-><init>(DD)V

    aput-object v5, v3, v4

    :goto_2
    add-int/2addr v4, v9

    goto :goto_1

    :cond_6
    return-object v3

    .line 719
    :cond_7
    :goto_3
    new-instance v3, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    sget v2, Lcom/qianhe/yct/R$string;->starting_point:I

    .line 720
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;-><init>(DDLjava/lang/String;)V

    new-instance v10, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    sget v2, Lcom/qianhe/yct/R$string;->ending_point:I

    .line 721
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {v10 .. v15}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;-><init>(DDLjava/lang/String;)V

    new-array v1, v1, [Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    aput-object v3, v1, v16

    aput-object v10, v1, v9

    return-object v1
.end method

.method private hasCadPath()Z
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/qianhe/yct/activity/cad/CadEntityChooseIntent;->isCadFileAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initCadView([D[D)V
    .locals 2

    .line 697
    invoke-direct {p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->hasCadPath()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-object v1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setCadFilePath(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setFollowVehicle(Z)V

    .line 702
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setCadTouchEnable(Z)V

    .line 703
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setSelectSingleLine(Z)V

    .line 704
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setDrawSelectedLineNumText(Z)V

    .line 705
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->buildCadItemAreaPoints([D[D)[Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2, p2, v1}, Lcom/qh/xcad/XCadView;->setXCadItemAreaPoint([Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;ZZZ)V

    return-void
.end method

.method private initPlayer()V
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-nez v0, :cond_0

    .line 594
    new-instance v0, Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-direct {v0}, Lcom/qianhe/yct/utils/BeepPlayer;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_0
    return-void
.end method

.method private initWorkView([D[D)V
    .locals 8

    const/4 v0, 0x0

    .line 682
    aget-wide v1, p1, v0

    iput-wide v1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->baseX:D

    const/4 v1, 0x1

    .line 683
    aget-wide v2, p1, v1

    iput-wide v2, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->baseY:D

    .line 685
    new-instance v2, Landroid/graphics/PointF;

    aget-wide v3, p1, v0

    iget-wide v5, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->baseX:D

    sub-double/2addr v3, v5

    double-to-float v3, v3

    aget-wide v4, p1, v1

    iget-wide v6, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->baseY:D

    sub-double/2addr v4, v6

    double-to-float p1, v4

    invoke-direct {v2, v3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 686
    new-instance p1, Landroid/graphics/PointF;

    aget-wide v3, p2, v0

    iget-wide v5, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->baseX:D

    sub-double/2addr v3, v5

    double-to-float v0, v3

    aget-wide v3, p2, v1

    iget-wide v5, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->baseY:D

    sub-double/2addr v3, v5

    double-to-float p2, v3

    invoke-direct {p1, v0, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 687
    iget-object p2, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    const-wide/16 v3, 0x0

    invoke-virtual {p2, v2, p1, v3, v4}, Lcom/qianhe/yct/view/WorkView;->setProjectData(Landroid/graphics/PointF;Landroid/graphics/PointF;D)V

    .line 688
    iget-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    iget-object p2, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v2, p2, Lcom/qianhe/baselib/bean/LineEntity;->pileSpacing:D

    invoke-virtual {p1, v2, v3}, Lcom/qianhe/yct/view/WorkView;->setPileSpacing(D)V

    .line 689
    iget-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/view/WorkView;->setUseBitmap(Z)V

    return-void
.end method

.method private persistCurrentProject(Z)V
    .locals 5

    .line 565
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 566
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 567
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    if-eqz p1, :cond_1

    .line 568
    iget-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 569
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->silentModifyProject:Z

    .line 570
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshCadView([DD)V
    .locals 8

    .line 901
    invoke-direct {p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->hasCadPath()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    const/4 v0, 0x0

    aget-wide v2, p1, v0

    const/4 v0, 0x1

    aget-wide v4, p1, v0

    move-wide v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/qh/xcad/XCadView;->setXCadVehiclePosition(DDD)V

    return-void
.end method

.method private refreshTianDiMap(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 908
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v2

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    iget-wide v5, v1, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    const/4 v1, 0x3

    new-array v1, v1, [D

    const/4 v9, 0x0

    aput-wide v3, v1, v9

    const/4 v3, 0x1

    aput-wide v5, v1, v3

    const/4 v4, 0x2

    aput-wide v7, v1, v4

    invoke-virtual {v2, v1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToWGS84([D)[D

    move-result-object v1

    .line 909
    iput-object v1, v0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->curPositionWgs84:[D

    .line 910
    iget-object v2, v0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/map/YMap;->isInit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 911
    iget-object v2, v0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    iget-object v5, v0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->mapContainer:Lcom/qianhe/yct/view/map/MapContainerView;

    new-instance v10, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v11, v1, v3

    aget-wide v13, v1, v9

    aget-wide v15, v1, v4

    invoke-direct/range {v10 .. v16}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v2, v5, v10}, Lcom/qianhe/yct/view/map/YMap;->init(Landroid/view/ViewGroup;Lcom/qianhe/yct/view/map/GeoPoint;)Z

    return-void

    .line 913
    :cond_0
    iget-object v2, v0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    new-instance v10, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v11, v1, v3

    aget-wide v13, v1, v9

    aget-wide v15, v1, v4

    invoke-direct/range {v10 .. v16}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v2, v10, v9}, Lcom/qianhe/yct/view/map/MapController;->updateLocation(Lcom/qianhe/yct/view/map/GeoPoint;Z)V

    return-void
.end method

.method private refreshToothType(IZ)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 546
    iget-boolean v3, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->isH5Pro:Z

    if-eqz v3, :cond_4

    if-nez p1, :cond_0

    .line 549
    sget v3, Lcom/qianhe/yct/R$string;->left_tooth:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 551
    sget v3, Lcom/qianhe/yct/R$string;->rigth_tooth:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 553
    :cond_1
    sget v3, Lcom/qianhe/yct/R$string;->center_tooth:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 555
    :goto_0
    iget-object v4, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvDistanceDesH:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->isZH(Landroid/content/Context;)Z

    move-result v7

    const-string v8, " "

    const-string v9, ""

    if-eqz v7, :cond_2

    move-object v7, v9

    goto :goto_1

    :cond_2
    move-object v7, v8

    :goto_1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v7, Lcom/qianhe/yct/R$string;->Horizontal_distance_to_centralline:I

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v3, v10, v0

    aput-object v7, v10, v1

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v4, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvDistanceDesV:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->isZH(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v8, v9

    :cond_3
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/qianhe/yct/R$string;->vertical_distance_to_target:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v0

    aput-object v6, v2, v1

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/view/WorkView;->refreshToothType(I)V

    .line 558
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iput p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-eqz p2, :cond_4

    .line 559
    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->persistCurrentProject(Z)V

    :cond_4
    return-void
.end method

.method private restoreData(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 324
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivMapState:Landroid/widget/ImageView;

    const-string v1, "ivMapState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 325
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivSound:Landroid/widget/ImageView;

    const-string v1, "ivSound"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 326
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivDirection:Landroid/widget/ImageView;

    const-string v1, "ivDirection"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 327
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    const-string/jumbo v1, "webview"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    const-string v1, "cadView"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    const-string v1, "lltBtn"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    const-string v1, "lltH5"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    const-string v1, "lltH5Pro"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusV:Landroid/widget/TextView;

    const-string/jumbo v1, "tvStatusV"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusH:Landroid/widget/TextView;

    const-string/jumbo v1, "tvStatusH"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, p1, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivDirection:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/view/WorkView;->resfreshDirection(I)V

    .line 335
    iget-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 336
    iget-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz p1, :cond_0

    .line 337
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 p1, 0x0

    .line 338
    iput-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 340
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->initPlayer()V

    :cond_1
    return-void
.end method

.method private showDataUnAvailable()V
    .locals 3

    .line 535
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvDiffH:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->data_unavailable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 536
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvDiffV:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->data_unavailable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 537
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvDiffH:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 538
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 539
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusH:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 540
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 541
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusH:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showFixedCoordinateStartupDialog()V
    .locals 4

    .line 456
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->isCheckBase:Z

    if-eqz v0, :cond_0

    .line 457
    new-instance v0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;-><init>()V

    .line 458
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "FixedCoordinateStartupDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 459
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 460
    const-string v2, "baseProEntity"

    iget-object v3, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 461
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 462
    new-instance v1, Lcom/qianhe/yct/activity/line/LineWorkActivity$12;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity$12;-><init>(Lcom/qianhe/yct/activity/line/LineWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->setOnCloseListener(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;)V

    :cond_0
    return-void
.end method

.method private showStartSetBase()V
    .locals 7

    .line 503
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->isCheckBase:Z

    if-eqz v0, :cond_0

    .line 504
    sget v0, Lcom/qianhe/yct/R$string;->connected_base_whether_start_config:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/qianhe/yct/activity/line/LineWorkActivity$13;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity$13;-><init>(Lcom/qianhe/yct/activity/line/LineWorkActivity;)V

    const-string v5, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method

.method private slopeDitch(Lcom/qianhe/baselib/bean/InsNavi;[D[D)D
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 621
    iget-object v2, v0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v3, :cond_0

    .line 622
    new-array v3, v4, [D

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    aput-wide v8, v3, v7

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    aput-wide v8, v3, v6

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    aput-wide v8, v3, v5

    :goto_0
    move-object v13, v3

    goto :goto_1

    :cond_0
    if-ne v3, v5, :cond_1

    .line 624
    new-array v3, v4, [D

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    aput-wide v8, v3, v7

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    aput-wide v8, v3, v6

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    aput-wide v8, v3, v5

    goto :goto_0

    .line 626
    :cond_1
    new-array v3, v4, [D

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/InsNavi;->longitudeM:D

    aput-wide v8, v3, v7

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/InsNavi;->latitudeM:D

    aput-wide v8, v3, v6

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    aput-wide v8, v3, v5

    goto :goto_0

    .line 629
    :goto_1
    iget-wide v8, v2, Lcom/qianhe/baselib/bean/LineEntity;->ratio:D

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    .line 631
    iget-wide v1, v2, Lcom/qianhe/baselib/bean/LineEntity;->length:D

    mul-double v8, v8, v1

    .line 637
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    .line 641
    aget-wide v1, p2, v5

    iget-object v3, v0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v14, v3, Lcom/qianhe/baselib/bean/LineEntity;->depthA:D

    add-double/2addr v1, v14

    .line 642
    aget-wide v14, p3, v5

    const/4 v10, 0x2

    const/16 v16, 0x1

    iget-wide v5, v3, Lcom/qianhe/baselib/bean/LineEntity;->depthB:D

    add-double/2addr v14, v5

    cmpl-double v17, v1, v14

    if-ltz v17, :cond_2

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    .line 645
    new-array v5, v4, [D

    aget-wide v19, p2, v7

    aput-wide v19, v5, v7

    aget-wide v19, p2, v16

    aput-wide v19, v5, v16

    aput-wide v1, v5, v10

    .line 646
    aget-wide v21, p2, v7

    aget-wide v23, p2, v16

    aget-wide v25, p3, v7

    aget-wide v27, p3, v16

    move-wide/from16 v19, v8

    const/4 v6, 0x0

    iget-wide v7, v3, Lcom/qianhe/baselib/bean/LineEntity;->length:D

    move-wide/from16 v29, v7

    invoke-static/range {v21 .. v30}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->calculatePointOnLineDirectionGAUSS(DDDDD)[D

    move-result-object v3

    .line 647
    new-array v7, v4, [D

    aget-wide v8, v3, v6

    aput-wide v8, v7, v6

    aget-wide v8, v3, v16

    aput-wide v8, v7, v16

    sub-double v8, v1, v19

    aput-wide v8, v7, v10

    .line 648
    aget-wide v8, p3, v6

    aget-wide v19, p3, v16

    new-array v3, v4, [D

    aput-wide v8, v3, v6

    aput-wide v19, v3, v16

    aput-wide v14, v3, v10

    .line 649
    iget-object v8, v0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v8, v8, Lcom/qianhe/baselib/bean/LineEntity;->width:D

    div-double v8, v8, v17

    invoke-static {v5, v3, v8, v9}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->getDitchFence([D[DD)[[D

    move-result-object v3

    .line 651
    iget-object v8, v0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    move-object v9, v7

    const/16 p1, 0x0

    iget-wide v6, v8, Lcom/qianhe/baselib/bean/LineEntity;->targetLon1:D

    move-wide/from16 v21, v11

    const/4 v12, 0x2

    iget-wide v10, v8, Lcom/qianhe/baselib/bean/LineEntity;->targetLat1:D

    move-wide/from16 v23, v14

    new-array v14, v4, [D

    aput-wide v6, v14, p1

    aput-wide v10, v14, v16

    aput-wide v1, v14, v12

    .line 653
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    aget-object v2, v3, p1

    invoke-virtual {v1, v2}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v15

    .line 655
    iget-object v1, v0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v2, v1, Lcom/qianhe/baselib/bean/LineEntity;->targetLon2:D

    iget-wide v6, v1, Lcom/qianhe/baselib/bean/LineEntity;->targetLat2:D

    new-array v1, v4, [D

    aput-wide v2, v1, p1

    aput-wide v6, v1, v16

    aput-wide v23, v1, v12

    .line 656
    iget-object v2, v0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v10, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    move-object/from16 v16, v1

    move-wide/from16 v11, v21

    invoke-static/range {v10 .. v16}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->checkPositionGeodetic(FD[D[D[D[D)Lcom/qianhe/baselib/bean/CheckResult;

    move-result-object v1

    move-object v7, v9

    goto/16 :goto_2

    :cond_2
    move-wide/from16 v19, v8

    move-wide/from16 v21, v11

    move-wide/from16 v23, v14

    const/16 p1, 0x0

    const/4 v12, 0x2

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    .line 658
    new-array v5, v4, [D

    aget-wide v6, p2, p1

    aput-wide v6, v5, p1

    aget-wide v6, p2, v16

    aput-wide v6, v5, v16

    aput-wide v1, v5, v12

    .line 659
    aget-wide v25, p2, p1

    aget-wide v27, p2, v16

    aget-wide v29, p3, p1

    aget-wide v31, p3, v16

    iget-wide v6, v3, Lcom/qianhe/baselib/bean/LineEntity;->length:D

    move-wide/from16 v33, v6

    invoke-static/range {v25 .. v34}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->calculatePointOnLineDirectionGAUSS(DDDDD)[D

    move-result-object v3

    .line 660
    new-array v7, v4, [D

    aget-wide v8, v3, p1

    aput-wide v8, v7, p1

    aget-wide v8, v3, v16

    aput-wide v8, v7, v16

    sub-double v8, v1, v19

    aput-wide v8, v7, v12

    .line 661
    aget-wide v8, p3, p1

    aget-wide v10, p3, v16

    new-array v3, v4, [D

    aput-wide v8, v3, p1

    aput-wide v10, v3, v16

    aput-wide v23, v3, v12

    .line 662
    iget-object v6, v0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v8, v6, Lcom/qianhe/baselib/bean/LineEntity;->width:D

    div-double v8, v8, v17

    invoke-static {v3, v5, v8, v9}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->getDitchFence([D[DD)[[D

    move-result-object v3

    .line 664
    iget-object v6, v0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v8, v6, Lcom/qianhe/baselib/bean/LineEntity;->targetLon2:D

    iget-wide v10, v6, Lcom/qianhe/baselib/bean/LineEntity;->targetLat2:D

    new-array v14, v4, [D

    aput-wide v8, v14, p1

    aput-wide v10, v14, v16

    aput-wide v23, v14, v12

    .line 666
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v6

    aget-object v3, v3, p1

    invoke-virtual {v6, v3}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v15

    .line 668
    iget-object v3, v0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v8, v3, Lcom/qianhe/baselib/bean/LineEntity;->targetLon1:D

    iget-wide v10, v3, Lcom/qianhe/baselib/bean/LineEntity;->targetLat1:D

    new-array v3, v4, [D

    aput-wide v8, v3, p1

    aput-wide v10, v3, v16

    aput-wide v1, v3, v12

    .line 669
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v10, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    move-object/from16 v16, v3

    move-wide/from16 v11, v21

    invoke-static/range {v10 .. v16}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->checkPositionGeodetic(FD[D[D[D[D)Lcom/qianhe/baselib/bean/CheckResult;

    move-result-object v1

    .line 672
    :goto_2
    iget-wide v2, v0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->baseX:D

    const-wide/16 v8, 0x0

    cmpl-double v4, v2, v8

    if-nez v4, :cond_3

    .line 673
    invoke-direct {v0, v5, v7}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->initWorkView([D[D)V

    .line 674
    invoke-direct {v0, v5, v7}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->initCadView([D[D)V

    .line 676
    :cond_3
    iget-wide v1, v1, Lcom/qianhe/baselib/bean/CheckResult;->verticalDistance:D

    return-wide v1
.end method


# virtual methods
.method protected bluetoothStatus(I)V
    .locals 1

    .line 522
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->bluetoothStatus(I)V

    .line 523
    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 525
    iget-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz p1, :cond_0

    .line 526
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 p1, 0x0

    .line 527
    iput-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->showDataUnAvailable()V

    :cond_1
    return-void
.end method

.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 616
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 605
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->line:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 606
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 962
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 963
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_1

    .line 964
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 965
    iput-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 v0, 0x3

    .line 111
    const-string v1, ","

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    .line 112
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->finishPreviousActivity()V

    .line 114
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 116
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v4, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v5, "LOG,REFSTATION,ONTIME,1"

    invoke-direct {v3, v4, v5}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 117
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 118
    new-instance v2, Lcom/qianhe/baselib/utils/SensorEventHelper;

    invoke-direct {v2, p0}, Lcom/qianhe/baselib/utils/SensorEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

    .line 119
    invoke-virtual {v2}, Lcom/qianhe/baselib/utils/SensorEventHelper;->registerSensorListener()V

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v2}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v2

    iput-boolean v2, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->isH5Pro:Z

    .line 121
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v3, "current_coords"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    new-instance v3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object v3, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 123
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_0

    .line 125
    :try_start_0
    iget-object v3, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/InsNavi;->longitudeM:D

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 126
    iget-object v3, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/InsNavi;->latitudeM:D

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 127
    iget-object v3, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v3, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    iput-wide v1, v3, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    iput-wide v1, v3, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 131
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 133
    const-string v2, "id"

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v2, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-lez v3, :cond_3

    .line 135
    iget-object v3, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    sget-object v7, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v7}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v7, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;)Ljava/util/List;

    move-result-object v1

    .line 136
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 137
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/LineEntity;

    iput-object v1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    .line 138
    iget-object v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v3, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    invoke-virtual {v1, v2, v3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_1

    .line 142
    :cond_1
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    iget-wide v7, v2, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-virtual {v1, v3, v7, v8}, Lcom/qh/yctdevice/YctDevice;->updateCurrentProjectInfo(IJ)V

    .line 144
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-le v2, v4, :cond_2

    iput v6, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    .line 145
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->toothTipView:Lcom/qianhe/yct/view/ToothTipDropdownView;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/view/ToothTipDropdownView;->setToothType(I)V

    .line 146
    iget-object v1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-direct {p0, v1, v6}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->refreshToothType(IZ)V

    goto :goto_2

    .line 149
    :cond_3
    sget v1, Lcom/qianhe/yct/R$string;->data_exception:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 151
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    if-nez v1, :cond_5

    .line 152
    sget p1, Lcom/qianhe/yct/R$string;->data_exception:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 155
    :cond_5
    iget-object v1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvProTitle:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->project_name:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-object v3, v3, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v2, v7, v6

    aput-object v3, v7, v5

    const-string v2, "%s:%s"

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v2, v1, Lcom/qianhe/baselib/bean/LineEntity;->east1:D

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/LineEntity;->north1:D

    iget-wide v9, v1, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation1:D

    new-array v11, v0, [D

    aput-wide v2, v11, v6

    aput-wide v7, v11, v5

    aput-wide v9, v11, v4

    iput-object v11, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->pointA:[D

    .line 158
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/LineEntity;->east2:D

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/LineEntity;->north2:D

    iget-wide v9, v1, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation2:D

    new-array v0, v0, [D

    aput-wide v2, v0, v6

    aput-wide v7, v0, v5

    aput-wide v9, v0, v4

    iput-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->pointB:[D

    .line 159
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvProjectDistance:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->project_length:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/LineEntity;->length:D

    invoke-virtual {p0, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->formatDistance(D)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v6

    aput-object v2, v3, v5

    const-string v1, "%s%s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_6
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/line/LineWorkActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity$1;-><init>(Lcom/qianhe/yct/activity/line/LineWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivResetLocation:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/line/LineWorkActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity$2;-><init>(Lcom/qianhe/yct/activity/line/LineWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivStartPoint:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/line/LineWorkActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity$3;-><init>(Lcom/qianhe/yct/activity/line/LineWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivMapState:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/line/LineWorkActivity$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity$4;-><init>(Lcom/qianhe/yct/activity/line/LineWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 227
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivSound:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/line/LineWorkActivity$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity$5;-><init>(Lcom/qianhe/yct/activity/line/LineWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivDirection:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/line/LineWorkActivity$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity$6;-><init>(Lcom/qianhe/yct/activity/line/LineWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->isH5Pro:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->isH5Pro:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStartDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->display_distance_starting_point:I

    if-ne v1, v5, :cond_9

    goto :goto_5

    :cond_9
    const/16 v6, 0x8

    :goto_5
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->toothTipView:Lcom/qianhe/yct/view/ToothTipDropdownView;

    new-instance v1, Lcom/qianhe/yct/activity/line/LineWorkActivity$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity$7;-><init>(Lcom/qianhe/yct/activity/line/LineWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ToothTipDropdownView;->setOnSelectedListener(Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;)V

    .line 272
    invoke-direct {p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->initPlayer()V

    .line 274
    new-instance v0, Lcom/qianhe/yct/view/map/YMap;

    invoke-direct {v0}, Lcom/qianhe/yct/view/map/YMap;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    .line 275
    new-instance v0, Lcom/qianhe/yct/view/map/MapController;

    invoke-direct {v0}, Lcom/qianhe/yct/view/map/MapController;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    .line 276
    iget-object v1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/view/map/YMap;->setMapController(Lcom/qianhe/yct/view/map/BaseMapController;)Z

    .line 277
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/view/map/YMap;->onCreate(Landroid/os/Bundle;)V

    .line 278
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    new-instance v1, Lcom/qianhe/yct/activity/line/LineWorkActivity$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity$8;-><init>(Lcom/qianhe/yct/activity/line/LineWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/map/YMap;->setOnLoadMapListener(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V

    .line 319
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->restoreData(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 971
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 972
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onDestroy()V

    .line 973
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/qh/yctdevice/YctDevice;->updateCurrentProjectInfo(IJ)V

    .line 974
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

    invoke-virtual {v0}, Lcom/qianhe/baselib/utils/SensorEventHelper;->unRegisterSensorListener()V

    .line 975
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 976
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_0

    .line 977
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 978
    iput-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 980
    :cond_0
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
    .locals 12
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 362
    iget-boolean v4, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->isCheckBase:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v4, :cond_1

    .line 363
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qianhe/yct/application/YCTApplication;->getAuthResult()Lcom/qianhe/ntripclientlib/bean/AuthResult;

    move-result-object v4

    iget v4, v4, Lcom/qianhe/ntripclientlib/bean/AuthResult;->result:I

    if-eq v4, v3, :cond_3

    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qianhe/yct/application/YCTApplication;->getAuthResult()Lcom/qianhe/ntripclientlib/bean/AuthResult;

    move-result-object v4

    iget v4, v4, Lcom/qianhe/ntripclientlib/bean/AuthResult;->result:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 450
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->isDemo()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v0, "obtain_difference_type"

    const-string v1, "bluetooth"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "radio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    goto/16 :goto_2

    :cond_2
    :goto_0
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->hasCheckBasestation:Z

    return-void

    .line 364
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->isCheckBase:Z

    .line 365
    iget-object v4, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-object v4, v4, Lcom/qianhe/baselib/base/BaseProEntity;->corsHost:Ljava/lang/String;

    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qianhe/yct/application/YCTApplication;->getAuthResult()Lcom/qianhe/ntripclientlib/bean/AuthResult;

    move-result-object v5

    iget-object v5, v5, Lcom/qianhe/ntripclientlib/bean/AuthResult;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    iget-object v5, v5, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "baseProEntity"

    if-nez v4, :cond_4

    .line 366
    new-instance p1, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;-><init>()V

    .line 367
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CorsChangesDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 368
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 369
    iget-object v1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 370
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getAuthResult()Lcom/qianhe/ntripclientlib/bean/AuthResult;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    const-string v2, "diffConfig"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 371
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 372
    new-instance v0, Lcom/qianhe/yct/activity/line/LineWorkActivity$9;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity$9;-><init>(Lcom/qianhe/yct/activity/line/LineWorkActivity;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;)V

    return-void

    .line 383
    :cond_4
    iget-object v4, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/qianhe/baselib/Constant;->NTRIPTYPE:Ljava/lang/String;

    sget-object v7, Lcom/qianhe/baselib/enums/NtripTypeEnum;->SDK:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v7}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sget-object v6, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v6

    if-ne v4, v6, :cond_7

    iget-object v4, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-object v4, v4, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    sget v6, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 384
    iget-object v4, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v6, v4, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    iget-wide v8, v4, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    iget-wide v10, v4, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    new-array v4, v2, [D

    aput-wide v6, v4, v1

    aput-wide v8, v4, v3

    aput-wide v10, v4, v0

    iget-wide v6, p1, Lcom/qianhe/baselib/bean/BaseStationEntity;->lon:D

    iget-wide v8, p1, Lcom/qianhe/baselib/bean/BaseStationEntity;->lat:D

    iget-wide v10, p1, Lcom/qianhe/baselib/bean/BaseStationEntity;->elev:D

    new-array v2, v2, [D

    aput-wide v6, v2, v1

    aput-wide v8, v2, v3

    aput-wide v10, v2, v0

    invoke-static {v4, v2}, Lcom/qianhe/baselib/utils/GeoCoordsDistanceUtils;->calculateGeodeticDistance3D([D[D)D

    move-result-wide v0

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u57fa\u7ad9\u76f8\u5dee\u8ddd\u79bb\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-object v4, v4, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v6, "0.000"

    invoke-direct {v4, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->base_mobility_threshold:F

    float-to-double v6, v2

    cmpl-double v2, v0, v6

    if-lez v2, :cond_6

    .line 387
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    const-wide/16 v3, 0x0

    cmpl-double v6, v1, v3

    if-eqz v6, :cond_5

    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    cmpl-double v2, v0, v3

    if-eqz v2, :cond_5

    .line 389
    new-instance v0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;-><init>()V

    .line 390
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "CheckBasestationDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 391
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 392
    sget v2, Lcom/qianhe/yct/R$string;->base_station_have_changed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v2, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 394
    const-string v2, "baseStationEntity"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 395
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 396
    new-instance p1, Lcom/qianhe/yct/activity/line/LineWorkActivity$10;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity$10;-><init>(Lcom/qianhe/yct/activity/line/LineWorkActivity;)V

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$OnConfirmListener;)V

    return-void

    .line 425
    :cond_5
    sget v0, Lcom/qianhe/yct/R$string;->lack_base_info:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->save:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->ignore:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/qianhe/yct/R$string;->base_station_inspection_tips:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/qianhe/yct/activity/line/LineWorkActivity$11;

    invoke-direct {v6, p0, p1}, Lcom/qianhe/yct/activity/line/LineWorkActivity$11;-><init>(Lcom/qianhe/yct/activity/line/LineWorkActivity;Lcom/qianhe/baselib/bean/BaseStationEntity;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_6
    move-object v1, p0

    .line 443
    iput-boolean v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->hasCheckBasestation:Z

    return-void

    :cond_7
    move-object v1, p0

    .line 446
    iput-boolean v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->hasCheckBasestation:Z

    :goto_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 484
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V

    .line 485
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 486
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v0, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->showStartSetBase()V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/CreateProjectResponse;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 576
    iget v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->state:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_1

    .line 577
    iget-object v1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    iget-wide v4, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 578
    iget-object v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    .line 579
    iget-wide v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    const/4 v0, 0x1

    .line 580
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->persistCurrentProject(Z)V

    goto :goto_0

    .line 582
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 583
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 586
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_2

    .line 587
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v0

    iget-object p1, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    iget-wide v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/qh/yctdevice/YctDevice;->updateCurrentProjectInfo(IJ)V

    :cond_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/HasCheckBasestation;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 473
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 474
    invoke-direct {p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->showStartSetBase()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 476
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->hasCheckBasestation:Z

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/ModifyProjectResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 494
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->silentModifyProject:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 495
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->silentModifyProject:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 498
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->hasCheckBasestation:Z

    .line 499
    sget v0, Lcom/qianhe/yct/R$string;->saved_successfully:I

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    goto/16 :goto_10

    .line 757
    :cond_0
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_1

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_1

    iput-object v0, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 760
    :cond_1
    :try_start_0
    iget-object v6, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->rollAngleView:Lcom/qianhe/yct/view/RollAngleView;

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    invoke-virtual {v6, v10, v11}, Lcom/qianhe/yct/view/RollAngleView;->setCurrnetAngle(D)V

    .line 761
    sget-object v6, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;->FULL:Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    invoke-virtual {v1, v0, v6}, Lcom/qianhe/yct/base/BaseActivity;->resolveWorkPageAvailable(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;)Z

    .line 762
    iget-boolean v6, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->isH5Pro:Z

    if-nez v6, :cond_3

    .line 763
    iget v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v7, Lcom/qianhe/yct/enums/InsStatusEnum;->VERTICAL:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v7}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v7

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    .line 765
    iget-object v6, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 766
    iget-object v6, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_f

    .line 768
    :cond_2
    iget-object v6, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 769
    iget-object v6, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/view/View;->setClickable(Z)V

    .line 771
    :goto_0
    iget-object v6, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v10, "%.2f\u00b0"

    iget-wide v11, v1, Lcom/qianhe/yct/base/BaseActivity;->pitchAngle:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    new-array v12, v5, [Ljava/lang/Object;

    aput-object v11, v12, v4

    invoke-static {v7, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    :cond_3
    iget-boolean v6, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    iget-boolean v7, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->hasCheckBasestation:Z

    invoke-virtual {v1, v0, v6, v7}, Lcom/qianhe/yct/base/BaseActivity;->handleWorkInsCalibrateTips(Lcom/qianhe/baselib/bean/InsNavi;ZZ)V

    .line 775
    iget-object v6, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    if-eqz v6, :cond_1e

    .line 777
    iget v6, v6, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-nez v6, :cond_4

    .line 778
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    new-array v14, v2, [D

    aput-wide v6, v14, v4

    aput-wide v10, v14, v5

    aput-wide v12, v14, v3

    goto :goto_1

    :cond_4
    if-ne v6, v3, :cond_5

    .line 780
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    new-array v14, v2, [D

    aput-wide v6, v14, v4

    aput-wide v10, v14, v5

    aput-wide v12, v14, v3

    goto :goto_1

    .line 782
    :cond_5
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    new-array v14, v2, [D

    aput-wide v6, v14, v4

    aput-wide v10, v14, v5

    aput-wide v12, v14, v3

    .line 785
    :goto_1
    iget-object v6, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStartDistance:Landroid/widget/TextView;

    const-string v7, "%s%s"

    sget v10, Lcom/qianhe/yct/R$string;->start_distance:I

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->pointA:[D

    invoke-static {v14, v11}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Lcom/qianhe/yct/base/BaseActivity;->formatDistance(D)Ljava/lang/String;

    move-result-object v11

    new-array v12, v3, [Ljava/lang/Object;

    aput-object v10, v12, v4

    aput-object v11, v12, v5

    invoke-static {v7, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    iget-object v6, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->pointA:[D

    iget-object v7, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->pointB:[D

    invoke-direct {v1, v0, v6, v7}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->slopeDitch(Lcom/qianhe/baselib/bean/InsNavi;[D[D)D

    move-result-wide v6

    .line 787
    invoke-virtual {v1, v6, v7}, Lcom/qianhe/yct/base/BaseActivity;->formatElevationDiffText(D)Ljava/lang/String;

    move-result-object v10

    .line 788
    iget-object v11, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvUnitV:Landroid/widget/TextView;

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/16 v15, 0x3e8

    cmp-long v17, v12, v15

    if-gez v17, :cond_6

    sget v12, Lcom/qianhe/yct/R$string;->unit_cm:I

    goto :goto_2

    :cond_6
    sget v12, Lcom/qianhe/yct/R$string;->unit_m:I

    :goto_2
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 789
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-float v11, v11

    iget-object v12, v1, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v12, v12, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v12, v12, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float v12, v12, v13

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_7

    const/4 v11, 0x1

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_c

    .line 791
    iget-object v12, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusV:Landroid/widget/TextView;

    sget v13, Lcom/qianhe/yct/R$string;->hold:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 792
    iget-boolean v12, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v12, :cond_8

    iget-object v12, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusV:Landroid/widget/TextView;

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 793
    :cond_8
    iget-object v12, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    iget-boolean v12, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v12, :cond_9

    iget-object v12, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 795
    :cond_9
    iget-object v12, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivStatusV:Landroid/widget/ImageView;

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v17

    const-wide/16 v19, 0x1

    cmp-long v13, v17, v19

    if-gez v13, :cond_a

    sget v13, Lcom/qianhe/yct/R$drawable;->icon_status_v:I

    goto :goto_4

    :cond_a
    cmpl-double v13, v6, v8

    if-lez v13, :cond_b

    sget v13, Lcom/qianhe/yct/R$drawable;->icon_status_hold_dig:I

    goto :goto_4

    :cond_b
    sget v13, Lcom/qianhe/yct/R$drawable;->icon_status_hold_fill:I

    :goto_4
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_c
    cmpl-double v12, v6, v8

    if-lez v12, :cond_d

    .line 797
    iget-object v12, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusV:Landroid/widget/TextView;

    sget v13, Lcom/qianhe/yct/R$string;->dig:I

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    iget-object v12, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusV:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 799
    iget-object v12, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v12, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 801
    iget-object v12, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivStatusV:Landroid/widget/ImageView;

    sget v13, Lcom/qianhe/yct/R$drawable;->icon_status_dig:I

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 803
    :cond_d
    iget-object v12, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusV:Landroid/widget/TextView;

    sget v13, Lcom/qianhe/yct/R$string;->fill:I

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    iget-object v12, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusV:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 805
    iget-object v12, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    iget-object v12, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 807
    iget-object v12, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivStatusV:Landroid/widget/ImageView;

    sget v13, Lcom/qianhe/yct/R$drawable;->icon_status_fill:I

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 812
    :goto_5
    iget-object v12, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivDirection:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/view/View;->isSelected()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 813
    iget-object v12, v1, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v12, v12, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v12, v12, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    iget-object v13, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->pointB:[D

    const/16 v17, 0x2

    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->pointA:[D

    move-wide/from16 v18, v8

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    const/16 v20, 0x0

    const/16 v21, 0x1

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    move-wide/from16 v22, v4

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    move-wide/from16 v24, v15

    new-array v15, v2, [D

    aput-wide v8, v15, v20

    aput-wide v22, v15, v21

    aput-wide v4, v15, v17

    invoke-static {v12, v13, v3, v14, v15}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->calculatePosition(F[D[D[D[D)Lcom/qianhe/baselib/bean/PositionResult;

    move-result-object v3

    move-wide v15, v6

    goto :goto_6

    :cond_e
    move-wide/from16 v18, v8

    move-wide/from16 v24, v15

    const/16 v17, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x1

    .line 815
    iget-object v3, v1, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    iget-object v4, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->pointA:[D

    iget-object v5, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->pointB:[D

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    move-wide v15, v6

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    move-wide/from16 v22, v6

    new-array v6, v2, [D

    aput-wide v8, v6, v20

    aput-wide v12, v6, v21

    aput-wide v22, v6, v17

    invoke-static {v3, v4, v5, v14, v6}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->calculatePosition(F[D[D[D[D)Lcom/qianhe/baselib/bean/PositionResult;

    move-result-object v3

    .line 818
    :goto_6
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/PositionResult;->distance:D

    iget-object v6, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v6, v6, Lcom/qianhe/baselib/bean/LineEntity;->width:D

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double v6, v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_f

    const/16 v31, 0x1

    goto :goto_7

    :cond_f
    const/16 v31, 0x0

    .line 821
    :goto_7
    iget-object v4, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvBoundTip:Landroid/widget/TextView;

    if-eqz v31, :cond_10

    const/16 v5, 0x8

    goto :goto_8

    :cond_10
    const/4 v5, 0x0

    :goto_8
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 824
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/PositionResult;->distance:D

    invoke-virtual {v1, v4, v5}, Lcom/qianhe/yct/base/BaseActivity;->formatElevationDiffText(D)Ljava/lang/String;

    move-result-object v4

    .line 825
    iget-object v5, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvUnitH:Landroid/widget/TextView;

    iget-wide v6, v3, Lcom/qianhe/baselib/bean/PositionResult;->distance:D

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v8, v6, v24

    if-gez v8, :cond_11

    sget v6, Lcom/qianhe/yct/R$string;->unit_cm:I

    goto :goto_9

    :cond_11
    sget v6, Lcom/qianhe/yct/R$string;->unit_m:I

    :goto_9
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 826
    iget-object v5, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvDiffH:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    iget v3, v3, Lcom/qianhe/baselib/bean/PositionResult;->position:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_12

    .line 828
    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvDiffH:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 829
    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusH:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 830
    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusH:Landroid/widget/TextView;

    sget v5, Lcom/qianhe/yct/R$string;->left_leaning:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivStatusH:Landroid/widget/ImageView;

    sget v5, Lcom/qianhe/yct/R$drawable;->icon_status_l:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a

    :cond_12
    const/4 v5, -0x1

    if-ne v3, v5, :cond_13

    .line 833
    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvDiffH:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 834
    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusH:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 835
    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusH:Landroid/widget/TextView;

    sget v5, Lcom/qianhe/yct/R$string;->right_leaning:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivStatusH:Landroid/widget/ImageView;

    sget v5, Lcom/qianhe/yct/R$drawable;->icon_status_r:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a

    .line 838
    :cond_13
    iget-boolean v3, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v3, :cond_14

    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvDiffH:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 839
    :cond_14
    iget-boolean v3, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v3, :cond_15

    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusH:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 840
    :cond_15
    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusH:Landroid/widget/TextView;

    sget v5, Lcom/qianhe/yct/R$string;->center:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivStatusH:Landroid/widget/ImageView;

    sget v5, Lcom/qianhe/yct/R$drawable;->icon_status_h:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 843
    :goto_a
    iget-boolean v3, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-nez v3, :cond_16

    .line 844
    invoke-direct {v1}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->showDataUnAvailable()V

    goto :goto_b

    .line 846
    :cond_16
    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvDiffH:Landroid/widget/TextView;

    const/16 v5, 0x50

    invoke-virtual {v1, v4, v5}, Lcom/qianhe/yct/base/BaseActivity;->getElevationDiffTextSize(Ljava/lang/String;I)F

    move-result v4

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 847
    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v1, v10, v5}, Lcom/qianhe/yct/base/BaseActivity;->getElevationDiffTextSize(Ljava/lang/String;I)F

    move-result v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 848
    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusH:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 849
    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusV:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 852
    :goto_b
    iget-boolean v3, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v3, :cond_1a

    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_c

    .line 854
    :cond_17
    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v3, :cond_1b

    .line 855
    invoke-virtual {v3}, Lcom/qianhe/yct/utils/BeepPlayer;->resume()V

    .line 856
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    .line 857
    iget-object v5, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v5, v6}, Lcom/qianhe/yct/utils/BeepPlayer;->setUrgency(F)V

    if-eqz v11, :cond_18

    .line 860
    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v4, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DI_LONG:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v3, v4}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 861
    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v3}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_d

    .line 864
    :cond_18
    iget-object v5, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    double-to-float v3, v3

    invoke-virtual {v5, v3}, Lcom/qianhe/yct/utils/BeepPlayer;->setUrgencyByDistanceCm(F)V

    cmpl-double v3, v15, v18

    if-lez v3, :cond_19

    .line 866
    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v4, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->BUZZ:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v3, v4}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 867
    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v3}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_d

    .line 869
    :cond_19
    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v4, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->WOOD_FISH:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v3, v4}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 870
    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v3}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_d

    .line 853
    :cond_1a
    :goto_c
    iget-object v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Lcom/qianhe/yct/utils/BeepPlayer;->pause()V

    .line 874
    :cond_1b
    :goto_d
    iget-wide v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->baseX:D

    cmpl-double v5, v3, v18

    if-eqz v5, :cond_1d

    iget-wide v3, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->baseY:D

    cmpl-double v5, v3, v18

    if-eqz v5, :cond_1d

    .line 876
    iget-boolean v3, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v3, :cond_1c

    .line 877
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    new-array v9, v2, [D

    const/16 v20, 0x0

    aput-wide v3, v9, v20

    const/16 v21, 0x1

    aput-wide v5, v9, v21

    aput-wide v7, v9, v17

    .line 878
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    new-array v2, v2, [D

    const/16 v20, 0x0

    aput-wide v3, v2, v20

    const/16 v21, 0x1

    aput-wide v5, v2, v21

    aput-wide v7, v2, v17

    goto :goto_e

    .line 881
    :cond_1c
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v3

    iget-object v4, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v5, v4, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    iget-wide v7, v4, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    iget-wide v9, v4, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    new-array v2, v2, [D

    const/16 v20, 0x0

    aput-wide v5, v2, v20

    const/16 v21, 0x1

    aput-wide v7, v2, v21

    aput-wide v9, v2, v17

    invoke-virtual {v3, v2}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToGAUSSXY([D)[D

    move-result-object v9

    move-object v2, v9

    :goto_e
    if-eqz v9, :cond_1d

    if-eqz v2, :cond_1d

    .line 885
    new-instance v3, Landroid/graphics/PointF;

    const/16 v20, 0x0

    aget-wide v4, v9, v20

    iget-wide v6, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->baseX:D

    sub-double/2addr v4, v6

    double-to-float v4, v4

    const/16 v21, 0x1

    aget-wide v5, v9, v21

    iget-wide v7, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->baseY:D

    sub-double/2addr v5, v7

    double-to-float v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 886
    new-instance v4, Landroid/graphics/PointF;

    const/16 v20, 0x0

    aget-wide v5, v2, v20

    iget-wide v7, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->baseX:D

    sub-double/2addr v5, v7

    double-to-float v5, v5

    const/16 v21, 0x1

    aget-wide v6, v2, v21

    iget-wide v10, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->baseY:D

    sub-double/2addr v6, v10

    double-to-float v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 887
    invoke-static {v9, v2}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v29

    .line 888
    iget-object v2, v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    invoke-virtual/range {v26 .. v31}, Lcom/qianhe/yct/view/WorkView;->setLocationPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;DZ)V

    .line 891
    :cond_1d
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    invoke-direct {v1, v14, v2, v3}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->refreshCadView([DD)V

    .line 893
    :cond_1e
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->refreshTianDiMap(Lcom/qianhe/baselib/bean/InsNavi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 895
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 896
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :goto_10
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 986
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onLowMemory()V

    .line 987
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    if-eqz v0, :cond_0

    .line 988
    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onLowMemory()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 936
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onPause()V

    .line 937
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onPause()V

    .line 938
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_0

    .line 939
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 940
    iput-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 926
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 927
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onResume()V

    .line 928
    invoke-direct {p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->initPlayer()V

    .line 929
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvMachineNumber:Landroid/widget/TextView;

    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 347
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 348
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivMapState:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivMapState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 349
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivSound"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 350
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivDirection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivDirection"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 351
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "webview"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 352
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "cadView"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 353
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltBtn"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 354
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltH5"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 355
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltH5Pro"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 356
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusV:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "tvStatusV"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 357
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->tvStatusH:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "tvStatusH"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 946
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onStart()V

    .line 947
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 952
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 953
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onStop()V

    return-void
.end method
