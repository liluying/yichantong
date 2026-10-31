.class public Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "WaGouWorkActivity.java"


# instance fields
.field private baseX:D

.field private baseY:D

.field private binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

.field private curPositionWgs84:[D

.field private hasCheckBasestation:Z

.field private isCheckBase:Z

.field private isH5Pro:Z

.field private mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private mapController:Lcom/qianhe/yct/view/map/MapController;

.field private pointA:[D

.field private pointB:[D

.field private sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

.field private silentModifyProject:Z

.field private waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

.field private yMap:Lcom/qianhe/yct/view/map/YMap;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurPositionWgs84(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)[D
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->curPositionWgs84:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisH5Pro(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->isH5Pro:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBeepPlayer(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/yct/utils/BeepPlayer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/yct/db/DatabaseManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmapController(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/yct/view/map/MapController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/baselib/bean/WaGouEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetyMap(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/yct/view/map/YMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->hasCheckBasestation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisCheckBase(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->isCheckBase:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBeepPlayer(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;Lcom/qianhe/yct/utils/BeepPlayer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLongitudinalRatio(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)D
    .locals 2

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->getLongitudinalRatio()D

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mhasCadPath(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->hasCadPath()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minitPlayer(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->initPlayer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshToothType(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->refreshToothType(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowFixedCoordinateStartupDialog(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->showFixedCoordinateStartupDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private applyWorkViewProjectData()V
    .locals 12

    .line 945
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    const/4 v7, 0x3

    new-array v8, v7, [D

    const/4 v9, 0x0

    aput-wide v1, v8, v9

    const/4 v1, 0x1

    aput-wide v3, v8, v1

    const/4 v2, 0x2

    aput-wide v5, v8, v2

    .line 946
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    new-array v0, v7, [D

    aput-wide v3, v0, v9

    aput-wide v5, v0, v1

    aput-wide v10, v0, v2

    .line 949
    iget-object v2, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivDirection:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 950
    invoke-direct {p0, v0, v8}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->calculateProjectEndOnCenterline([D[D)[D

    move-result-object v2

    .line 951
    new-instance v3, Landroid/graphics/PointF;

    aget-wide v4, v0, v9

    iget-wide v6, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->baseX:D

    sub-double/2addr v4, v6

    double-to-float v4, v4

    aget-wide v5, v0, v1

    iget-wide v7, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->baseY:D

    sub-double/2addr v5, v7

    double-to-float v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 952
    new-instance v4, Landroid/graphics/PointF;

    aget-wide v5, v2, v9

    iget-wide v7, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->baseX:D

    sub-double/2addr v5, v7

    double-to-float v5, v5

    aget-wide v6, v2, v1

    iget-wide v8, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->baseY:D

    sub-double/2addr v6, v8

    double-to-float v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 953
    invoke-direct {p0, v0, v2}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->initCadView([D[D)V

    goto :goto_0

    .line 955
    :cond_0
    invoke-direct {p0, v8, v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->calculateProjectEndOnCenterline([D[D)[D

    move-result-object v0

    .line 956
    new-instance v3, Landroid/graphics/PointF;

    aget-wide v4, v8, v9

    iget-wide v6, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->baseX:D

    sub-double/2addr v4, v6

    double-to-float v2, v4

    aget-wide v4, v8, v1

    iget-wide v6, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->baseY:D

    sub-double/2addr v4, v6

    double-to-float v4, v4

    invoke-direct {v3, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 957
    new-instance v4, Landroid/graphics/PointF;

    aget-wide v5, v0, v9

    iget-wide v9, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->baseX:D

    sub-double/2addr v5, v9

    double-to-float v2, v5

    aget-wide v5, v0, v1

    iget-wide v9, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->baseY:D

    sub-double/2addr v5, v9

    double-to-float v5, v5

    invoke-direct {v4, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 958
    invoke-direct {p0, v8, v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->initCadView([D[D)V

    .line 960
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    iget-object v2, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->width:D

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/qianhe/yct/view/WorkView;->setProjectData(Landroid/graphics/PointF;Landroid/graphics/PointF;D)V

    .line 961
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/WorkView;->setUseBitmap(Z)V

    .line 962
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivDirection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/view/WorkView;->resfreshDirection(I)V

    return-void
.end method

.method private buildCenterlinePointB([D)[D
    .locals 17

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 832
    iget-object v3, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v4, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    iget-wide v6, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    iget-wide v8, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    const/4 v10, 0x3

    new-array v11, v10, [D

    const/4 v12, 0x0

    aput-wide v4, v11, v12

    const/4 v4, 0x1

    aput-wide v6, v11, v4

    const/4 v5, 0x2

    aput-wide v8, v11, v5

    .line 833
    aget-wide v6, p1, v12

    aget-wide v8, p1, v4

    iget-wide v13, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    new-array v3, v10, [D

    aput-wide v6, v3, v12

    aput-wide v8, v3, v4

    aput-wide v13, v3, v5

    invoke-direct {v0, v3, v11}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->calculateProjectEndOnCenterline([D[D)[D

    move-result-object v3

    .line 837
    iget-object v6, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v7, v6, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    if-ne v7, v4, :cond_0

    .line 838
    iget-wide v1, v6, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    goto/16 :goto_2

    .line 839
    :cond_0
    iget-wide v6, v6, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    cmpl-double v11, v6, v1

    if-lez v11, :cond_3

    invoke-direct {v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->getLongitudinalRatio()D

    move-result-wide v6

    cmpl-double v11, v6, v1

    if-eqz v11, :cond_3

    .line 841
    invoke-direct {v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->getLongitudinalRatio()D

    move-result-wide v1

    div-double/2addr v1, v8

    iget-object v6, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v7, v6, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    mul-double v1, v1, v7

    .line 842
    iget v6, v6, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v7, Lcom/qianhe/baselib/enums/WaGouEnum;->DOWN:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v7}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 843
    aget-wide v6, p1, v5

    sub-double/2addr v6, v1

    :goto_0
    move-wide v1, v6

    goto :goto_2

    .line 844
    :cond_1
    iget-object v6, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v6, v6, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v7, Lcom/qianhe/baselib/enums/WaGouEnum;->UP:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v7}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 845
    aget-wide v6, p1, v5

    :goto_1
    add-double/2addr v6, v1

    goto :goto_0

    .line 847
    :cond_2
    iget-object v1, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v6, v1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    goto :goto_1

    .line 849
    :cond_3
    iget-object v6, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v7, v6, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    if-nez v7, :cond_4

    iget-wide v13, v6, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    cmpl-double v7, v13, v1

    if-eqz v7, :cond_4

    .line 850
    iget-wide v1, v6, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    add-double/2addr v1, v13

    goto :goto_2

    .line 852
    :cond_4
    iget-wide v13, v6, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    move-wide v15, v1

    iget-wide v1, v6, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    new-array v7, v10, [D

    aput-wide v13, v7, v12

    aput-wide v1, v7, v4

    aput-wide v15, v7, v5

    iget-wide v1, v6, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    iget-wide v13, v6, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    new-array v6, v10, [D

    aput-wide v1, v6, v12

    aput-wide v13, v6, v4

    aput-wide v15, v6, v5

    invoke-static {v7, v6}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v1

    .line 855
    invoke-direct {v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->getLongitudinalRatio()D

    move-result-wide v6

    div-double/2addr v6, v8

    mul-double v6, v6, v1

    .line 856
    iget-object v1, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v2, Lcom/qianhe/baselib/enums/WaGouEnum;->DOWN:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 857
    aget-wide v1, p1, v5

    sub-double/2addr v1, v6

    goto :goto_2

    .line 859
    :cond_5
    aget-wide v1, p1, v5

    add-double/2addr v1, v6

    .line 862
    :goto_2
    aget-wide v6, v3, v12

    aget-wide v8, v3, v4

    new-array v3, v10, [D

    aput-wide v6, v3, v12

    aput-wide v8, v3, v4

    aput-wide v1, v3, v5

    return-object v3
.end method

.method private calculateAdvancedFillCut([D[D[D[DD)I
    .locals 23

    move-object/from16 v0, p0

    if-eqz p4, :cond_0

    move-object/from16 v7, p4

    goto :goto_0

    :cond_0
    move-object/from16 v7, p3

    .line 906
    :goto_0
    invoke-direct/range {p0 .. p3}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->resolveCrossSectionDepth([D[D[D)D

    move-result-wide v1

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 907
    invoke-direct {v0, v8, v9, v8}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->resolveCrossSectionDepth([D[D[D)D

    move-result-wide v10

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v3, p5, v3

    .line 910
    invoke-direct {v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->isBottomWidthMode()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 917
    iget-object v5, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v13, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->leftBottomWidth:D

    .line 918
    iget-wide v5, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->rightBottomWidth:D

    move-wide/from16 v21, v13

    move-wide v13, v5

    move-wide/from16 v5, v21

    .line 919
    invoke-static/range {v1 .. v6}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->calcSlopeFromBottomWidth(DDD)D

    move-result-wide v15

    move-wide/from16 v21, v13

    move-wide v13, v5

    move-wide/from16 v5, v21

    .line 920
    invoke-static/range {v1 .. v6}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->calcSlopeFromBottomWidth(DDD)D

    move-result-wide v3

    move-wide/from16 v19, v5

    move-wide/from16 v17, v13

    move-wide v13, v15

    move-object v6, v0

    move-wide v0, v1

    move-wide v15, v3

    goto :goto_1

    :cond_1
    move-wide/from16 v17, v1

    .line 923
    invoke-direct/range {p0 .. p2}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->resolveLowerEndCrossSectionDepth([D[D)D

    move-result-wide v1

    .line 924
    iget-object v5, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v12, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->leftSlopeRatio:D

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    .line 925
    iget-wide v5, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->rightSlopeRatio:D

    div-double v14, v5, v14

    move-wide v5, v12

    .line 926
    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->resolveSlopeBottomWidthFromRatio(DDD)D

    move-result-wide v12

    move-wide v5, v14

    .line 927
    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->resolveSlopeBottomWidthFromRatio(DDD)D

    move-result-wide v14

    move-object v6, v0

    move-wide v2, v3

    move-wide v4, v12

    move-wide/from16 v0, v17

    .line 928
    invoke-static/range {v0 .. v5}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->calcSlopeFromBottomWidth(DDD)D

    move-result-wide v12

    move-wide/from16 v21, v14

    move-wide v14, v4

    move-wide/from16 v4, v21

    .line 929
    invoke-static/range {v0 .. v5}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->calcSlopeFromBottomWidth(DDD)D

    move-result-wide v2

    const/16 v16, 0x1

    move-wide/from16 v19, v4

    move-wide/from16 v17, v14

    move-wide v15, v2

    move-wide v13, v12

    const/4 v12, 0x1

    .line 932
    :goto_1
    iget-object v2, v6, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    move-object/from16 v4, p3

    move-object v5, v7

    move-object v3, v9

    move-wide v6, v0

    move v1, v2

    move-object v2, v8

    move-wide v8, v10

    move-wide/from16 v10, p5

    invoke-static/range {v1 .. v20}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->calculateFlatBottomDitchFillCut(F[D[D[D[DDDDZDDDD)I

    move-result v0

    return v0
.end method

.method private calculateProjectEndOnCenterline([D[D)[D
    .locals 12

    .line 937
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 939
    invoke-static {p1, p2}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v0

    :cond_0
    move-wide v10, v0

    const/4 v0, 0x0

    .line 941
    aget-wide v2, p1, v0

    const/4 v1, 0x1

    aget-wide v4, p1, v1

    aget-wide v6, p2, v0

    aget-wide v8, p2, v1

    invoke-static/range {v2 .. v11}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->calculatePointOnLineDirectionGAUSS(DDDDD)[D

    move-result-object p1

    return-object p1
.end method

.method private computeFillCutCm([D[D[D[DD)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 884
    invoke-direct {v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->hasAdvancedCrossSection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 885
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->calculateAdvancedFillCut([D[D[D[DD)I

    move-result v1

    return v1

    .line 887
    :cond_0
    iget-object v1, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v3, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v3

    if-ne v1, v3, :cond_1

    const/4 v1, 0x2

    .line 888
    aget-wide v3, v2, v1

    aget-wide v1, p3, v1

    invoke-static {v3, v4, v1, v2}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->compareElevation(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    return v2

    .line 891
    :cond_1
    invoke-direct/range {p0 .. p3}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->resolveCrossSectionDepth([D[D[D)D

    move-result-wide v6

    move-object/from16 v3, p2

    .line 892
    invoke-direct {v0, v2, v3, v2}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->resolveCrossSectionDepth([D[D[D)D

    move-result-wide v8

    .line 893
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v10, p5

    invoke-static/range {v1 .. v20}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->calculateFlatBottomDitchFillCut(F[D[D[D[DDDDZDDDD)I

    move-result v1

    return v1
.end method

.method private getLongitudinalRatio()D
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    return-wide v0
.end method

.method private hasAdvancedCrossSection()Z
    .locals 8

    .line 707
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->advancedType:I

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    .line 708
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->leftBottomWidth:D

    cmpl-double v1, v6, v3

    if-nez v1, :cond_1

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->rightBottomWidth:D

    cmpl-double v6, v0, v3

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v5

    :cond_2
    if-nez v1, :cond_5

    .line 711
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->leftSlopeRatio:D

    cmpl-double v1, v6, v3

    if-nez v1, :cond_4

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->rightSlopeRatio:D

    cmpl-double v6, v0, v3

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v5

    .line 713
    :cond_5
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->leftBottomWidth:D

    cmpl-double v1, v6, v3

    if-nez v1, :cond_7

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->rightBottomWidth:D

    cmpl-double v1, v6, v3

    if-nez v1, :cond_7

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->leftSlopeRatio:D

    cmpl-double v1, v6, v3

    if-nez v1, :cond_7

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->rightSlopeRatio:D

    cmpl-double v6, v0, v3

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    return v2

    :cond_7
    :goto_2
    return v5
.end method

.method private hasCadPath()Z
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

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
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 383
    invoke-direct {p0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->hasCadPath()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 386
    :cond_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-object v3, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-object v3, v3, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/qh/xcad/XCadView;->setCadFilePath(Ljava/lang/String;)V

    .line 387
    iget-object v2, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v2, v1}, Lcom/qh/xcad/XCadView;->setFollowVehicle(Z)V

    .line 388
    iget-object v2, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v2, v1}, Lcom/qh/xcad/XCadView;->setCadTouchEnable(Z)V

    .line 389
    iget-object v2, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v2, v1}, Lcom/qh/xcad/XCadView;->setSelectSingleLine(Z)V

    .line 390
    iget-object v2, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v2, v1}, Lcom/qh/xcad/XCadView;->setDrawSelectedLineNumText(Z)V

    .line 391
    iget-object v2, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    new-instance v3, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    aget-wide v4, p1, v1

    aget-wide v6, p1, v0

    sget p1, Lcom/qianhe/yct/R$string;->starting_point:I

    .line 392
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;-><init>(DDLjava/lang/String;)V

    new-instance v4, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    aget-wide v5, p2, v1

    aget-wide v7, p2, v0

    sget p1, Lcom/qianhe/yct/R$string;->ending_point:I

    .line 393
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;-><init>(DDLjava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    aput-object v3, p1, v1

    aput-object v4, p1, v0

    .line 391
    invoke-virtual {v2, p1, v0, v0, v1}, Lcom/qh/xcad/XCadView;->setXCadItemAreaPoint([Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;ZZZ)V

    return-void
.end method

.method private initPlayer()V
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-nez v0, :cond_0

    .line 671
    new-instance v0, Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-direct {v0}, Lcom/qianhe/yct/utils/BeepPlayer;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_0
    return-void
.end method

.method private initWorkView()V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 967
    iget-wide v2, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->baseX:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    .line 968
    iget-object v2, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v3, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    iget-wide v7, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    const/4 v2, 0x3

    new-array v2, v2, [D

    aput-wide v3, v2, v1

    aput-wide v5, v2, v0

    const/4 v3, 0x2

    aput-wide v7, v2, v3

    .line 970
    aget-wide v3, v2, v1

    iput-wide v3, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->baseX:D

    .line 971
    aget-wide v0, v2, v0

    iput-wide v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->baseY:D

    .line 972
    invoke-direct {p0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->applyWorkViewProjectData()V

    :cond_0
    return-void
.end method

.method private isBottomWidthMode()Z
    .locals 8

    .line 720
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->advancedType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    return v3

    .line 727
    :cond_1
    iget-wide v4, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->leftBottomWidth:D

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-gtz v1, :cond_2

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->rightBottomWidth:D

    cmpl-double v1, v4, v6

    if-lez v1, :cond_3

    :cond_2
    iget-wide v4, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->leftSlopeRatio:D

    cmpl-double v1, v4, v6

    if-nez v1, :cond_3

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->rightSlopeRatio:D

    cmpl-double v4, v0, v6

    if-nez v4, :cond_3

    return v2

    :cond_3
    return v3
.end method

.method private persistCurrentProject(Z)V
    .locals 5

    .line 642
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 643
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 644
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    if-eqz p1, :cond_1

    .line 645
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 646
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->silentModifyProject:Z

    .line 647
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshCadView([DD)V
    .locals 8

    .line 1130
    invoke-direct {p0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->hasCadPath()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

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

    .line 1137
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

    .line 1138
    iput-object v1, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->curPositionWgs84:[D

    .line 1139
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/map/YMap;->isInit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1140
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    iget-object v5, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->mapContainer:Lcom/qianhe/yct/view/map/MapContainerView;

    new-instance v10, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v11, v1, v3

    aget-wide v13, v1, v9

    aget-wide v15, v1, v4

    invoke-direct/range {v10 .. v16}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v2, v5, v10}, Lcom/qianhe/yct/view/map/YMap;->init(Landroid/view/ViewGroup;Lcom/qianhe/yct/view/map/GeoPoint;)Z

    return-void

    .line 1142
    :cond_0
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

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

    .line 621
    iget-boolean v3, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->isH5Pro:Z

    if-eqz v3, :cond_5

    if-nez p1, :cond_0

    .line 624
    sget v3, Lcom/qianhe/yct/R$string;->left_tooth:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 626
    sget v3, Lcom/qianhe/yct/R$string;->rigth_tooth:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 628
    :cond_1
    sget v3, Lcom/qianhe/yct/R$string;->center_tooth:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 630
    :goto_0
    iget-object v4, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvDistanceDesH:Landroidx/appcompat/widget/AppCompatTextView;

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

    .line 631
    iget-object v4, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvDistanceDesV:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->isZH(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v9

    goto :goto_2

    :cond_3
    move-object v7, v8

    :goto_2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v7, Lcom/qianhe/yct/R$string;->vertical_distance_to_target:I

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v3, v10, v0

    aput-object v7, v10, v1

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v3, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvDistanceDesM:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->isZH(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v8, v9

    :cond_4
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/qianhe/yct/R$string;->center_tooth:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/qianhe/yct/R$string;->Horizontal_distance_to_centralline:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v0

    aput-object v6, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/view/WorkView;->refreshToothType(I)V

    .line 635
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-eqz p2, :cond_5

    .line 636
    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->persistCurrentProject(Z)V

    :cond_5
    return-void
.end method

.method private resolveConfiguredDepthAtLowerEntityEnd()D
    .locals 11

    .line 796
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    add-double/2addr v1, v3

    .line 797
    iget-wide v5, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    add-double/2addr v5, v7

    const-wide/16 v9, 0x0

    cmpg-double v0, v1, v5

    if-gtz v0, :cond_1

    .line 799
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v2, v0, v9

    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    if-lez v2, :cond_0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0

    .line 801
    :cond_1
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v2, v0, v9

    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    if-lez v2, :cond_2

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0

    :cond_2
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private resolveCrossSectionDepth([D[D[D)D
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 746
    iget-object v6, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v6, v6, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v7, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v7}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v7

    const-wide/16 v8, 0x0

    if-ne v6, v7, :cond_2

    .line 747
    iget-object v1, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v2, v1, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    if-eq v2, v5, :cond_1

    iget-wide v2, v1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    cmpl-double v4, v2, v8

    if-eqz v4, :cond_0

    goto :goto_0

    .line 750
    :cond_0
    iget-wide v1, v1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    return-wide v1

    .line 748
    :cond_1
    :goto_0
    iget-wide v1, v1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    return-wide v1

    :cond_2
    if-eqz p3, :cond_3

    move-object/from16 v6, p3

    goto :goto_1

    :cond_3
    move-object v6, v1

    .line 753
    :goto_1
    invoke-static {v1, v2, v6}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->projectParamOnLine([D[D[D)D

    move-result-wide v6

    .line 754
    invoke-static/range {p1 .. p2}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v10

    .line 755
    iget-object v12, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v13, v12, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    move-wide/from16 v16, v6

    const/4 v15, 0x1

    iget-wide v5, v12, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    new-array v7, v4, [D

    aput-wide v13, v7, v3

    aput-wide v5, v7, v15

    iget-wide v5, v12, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    iget-wide v12, v12, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    new-array v14, v4, [D

    aput-wide v5, v14, v3

    aput-wide v12, v14, v15

    invoke-static {v7, v14}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v5

    cmpg-double v3, v5, v8

    if-gtz v3, :cond_4

    move-wide v5, v10

    :cond_4
    cmpl-double v3, v10, v8

    if-lez v3, :cond_5

    mul-double v10, v10, v16

    div-double/2addr v10, v5

    goto :goto_2

    :cond_5
    move-wide/from16 v10, v16

    :goto_2
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v10, v5

    if-lez v3, :cond_6

    move-wide v8, v5

    goto :goto_3

    :cond_6
    cmpg-double v3, v10, v8

    if-gez v3, :cond_7

    goto :goto_3

    :cond_7
    move-wide v8, v10

    .line 767
    :goto_3
    iget-object v3, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v5, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    iget-wide v10, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    sub-double/2addr v10, v5

    mul-double v10, v10, v8

    add-double/2addr v5, v10

    .line 768
    aget-wide v7, v1, v4

    aget-wide v1, v2, v4

    sub-double/2addr v1, v7

    mul-double v1, v1, v16

    add-double/2addr v7, v1

    sub-double/2addr v5, v7

    .line 769
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private resolveFlatCenterElev()D
    .locals 6

    .line 734
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_0

    goto :goto_1

    .line 737
    :cond_0
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    :goto_0
    add-double/2addr v1, v3

    return-wide v1

    .line 735
    :cond_1
    :goto_1
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    goto :goto_0
.end method

.method private resolveLowerEndCrossSectionDepth([D[D)D
    .locals 9

    .line 774
    invoke-direct {p0, p1, p2, p1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->resolveCrossSectionDepth([D[D[D)D

    move-result-wide v0

    .line 775
    invoke-direct {p0, p1, p2, p2}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->resolveCrossSectionDepth([D[D[D)D

    move-result-wide v2

    const/4 v4, 0x2

    .line 776
    aget-wide v5, p1, v4

    aget-wide p1, p2, v4

    const-wide/16 v7, 0x0

    cmpg-double v4, v5, p1

    if-gtz v4, :cond_1

    cmpl-double p1, v0, v7

    if-lez p1, :cond_0

    goto :goto_1

    :cond_0
    cmpl-double p1, v2, v7

    if-lez p1, :cond_3

    goto :goto_0

    :cond_1
    cmpl-double p1, v2, v7

    if-lez p1, :cond_2

    :goto_0
    return-wide v2

    :cond_2
    cmpl-double p1, v0, v7

    if-lez p1, :cond_3

    :goto_1
    return-wide v0

    .line 791
    :cond_3
    invoke-direct {p0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->resolveConfiguredDepthAtLowerEntityEnd()D

    move-result-wide p1

    return-wide p1
.end method

.method private resolveSectionEndpoints()[[D
    .locals 10

    .line 868
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-ne v0, v1, :cond_0

    .line 869
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    .line 870
    invoke-direct {p0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->resolveFlatCenterElev()D

    move-result-wide v0

    .line 871
    new-array v6, v5, [D

    iget-object v7, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v8, v7, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    aput-wide v8, v6, v4

    iget-wide v8, v7, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    aput-wide v8, v6, v3

    aput-wide v0, v6, v2

    .line 872
    new-array v5, v5, [D

    iget-wide v8, v7, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    aput-wide v8, v5, v4

    iget-wide v7, v7, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    aput-wide v7, v5, v3

    aput-wide v0, v5, v2

    goto :goto_0

    .line 874
    :cond_0
    new-array v6, v5, [D

    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    aput-wide v7, v6, v4

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    aput-wide v7, v6, v3

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    add-double/2addr v7, v0

    aput-wide v7, v6, v2

    .line 875
    invoke-direct {p0, v6}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->buildCenterlinePointB([D)[D

    move-result-object v5

    .line 877
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivDirection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    new-array v0, v2, [[D

    aput-object v5, v0, v4

    aput-object v6, v0, v3

    return-object v0

    .line 880
    :cond_1
    new-array v0, v2, [[D

    aput-object v6, v0, v4

    aput-object v5, v0, v3

    return-object v0
.end method

.method private resolveSlopeBottomWidthFromRatio(DDD)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p5, v0

    if-gtz v2, :cond_0

    return-wide p3

    .line 808
    :cond_0
    invoke-static/range {p1 .. p6}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->calcBottomWidthFromSlope(DDD)D

    move-result-wide p1

    const-wide p3, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p5, p1, p3

    if-gez p5, :cond_1

    return-wide p3

    :cond_1
    return-wide p1
.end method

.method private restoreData(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 399
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivMapState:Landroid/widget/ImageView;

    const-string v1, "ivMapState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 400
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivSound:Landroid/widget/ImageView;

    const-string v1, "ivSound"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 401
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivDirection:Landroid/widget/ImageView;

    const-string v1, "ivDirection"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 402
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    const-string/jumbo v1, "webview"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    const-string v1, "cadView"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    const-string v1, "lltBtn"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    const-string v1, "lltH5"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    const-string v1, "lltH5Pro"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStatusV:Landroid/widget/TextView;

    const-string/jumbo v1, "tvStatusV"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStatusH:Landroid/widget/TextView;

    const-string/jumbo v1, "tvStatusH"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 409
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, p1, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivDirection:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/view/WorkView;->resfreshDirection(I)V

    .line 410
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 411
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz p1, :cond_0

    .line 412
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 p1, 0x0

    .line 413
    iput-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 415
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->initPlayer()V

    :cond_1
    return-void
.end method

.method private showDataUnAvailable()V
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvDiffH:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->data_unavailable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 611
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvDiffV:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->data_unavailable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 612
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvDiffH:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 613
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 614
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStatusH:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 615
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStatusV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 616
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStatusH:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStatusV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showFixedCoordinateStartupDialog()V
    .locals 4

    .line 531
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->isCheckBase:Z

    if-eqz v0, :cond_0

    .line 532
    new-instance v0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;-><init>()V

    .line 533
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "FixedCoordinateStartupDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 534
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 535
    const-string v2, "baseProEntity"

    iget-object v3, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 536
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 537
    new-instance v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$13;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$13;-><init>(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->setOnCloseListener(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;)V

    :cond_0
    return-void
.end method

.method private showStartSetBase()V
    .locals 7

    .line 578
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->isCheckBase:Z

    if-eqz v0, :cond_0

    .line 579
    sget v0, Lcom/qianhe/yct/R$string;->connected_base_whether_start_config:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$14;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$14;-><init>(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)V

    const-string v5, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method

.method private updateFillCut(Lcom/qianhe/baselib/bean/InsNavi;[D[DZ)I
    .locals 7

    .line 899
    invoke-direct {p0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->resolveSectionEndpoints()[[D

    move-result-object p1

    const/4 p4, 0x0

    .line 900
    aget-object v1, p1, p4

    const/4 p4, 0x1

    aget-object v2, p1, p4

    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->width:D

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->computeFillCutCm([D[D[D[DD)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected bluetoothStatus(I)V
    .locals 1

    .line 597
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->bluetoothStatus(I)V

    .line 598
    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 600
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz p1, :cond_0

    .line 601
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 p1, 0x0

    .line 602
    iput-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 605
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->showDataUnAvailable()V

    :cond_1
    return-void
.end method

.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 693
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 682
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->ditch:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 683
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1188
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1191
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 1192
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_1

    .line 1193
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 1194
    iput-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 111
    const-string v2, ","

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-static {v3}, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    move-result-object v3

    iput-object v3, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    .line 112
    invoke-super/range {p0 .. p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->finishPreviousActivity()V

    .line 114
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 116
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v5, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v6, "LOG,REFSTATION,ONTIME,1"

    invoke-direct {v4, v5, v6}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 117
    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v3

    iput-object v3, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 118
    new-instance v3, Lcom/qianhe/baselib/utils/SensorEventHelper;

    invoke-direct {v3, v0}, Lcom/qianhe/baselib/utils/SensorEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

    .line 119
    invoke-virtual {v3}, Lcom/qianhe/baselib/utils/SensorEventHelper;->registerSensorListener()V

    .line 120
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v3}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v3

    iput-boolean v3, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->isH5Pro:Z

    .line 121
    iget-object v3, v0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v4, "current_coords"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    new-instance v4, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v4}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object v4, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 123
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_0

    .line 125
    :try_start_0
    iget-object v4, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v4, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    iput-wide v8, v4, Lcom/qianhe/baselib/bean/InsNavi;->longitudeM:D

    iput-wide v8, v4, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 126
    iget-object v4, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v6

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v4, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    iput-wide v8, v4, Lcom/qianhe/baselib/bean/InsNavi;->latitudeM:D

    iput-wide v8, v4, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 127
    iget-object v4, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v4, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    iput-wide v2, v4, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    iput-wide v2, v4, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 131
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_6

    .line 133
    const-string v8, "id"

    invoke-virtual {v2, v8, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v2, v8, v3

    if-lez v2, :cond_3

    .line 135
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    sget-object v10, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v10}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v10, v8}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;)Ljava/util/List;

    move-result-object v2

    .line 136
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 137
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/WaGouEntity;

    iput-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    .line 138
    iget-object v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v2

    iget-object v8, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v9, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    invoke-virtual {v2, v8, v9}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_1

    .line 142
    :cond_1
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v2

    iget-object v8, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v9, v8, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    iget-wide v10, v8, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-virtual {v2, v9, v10, v11}, Lcom/qh/yctdevice/YctDevice;->updateCurrentProjectInfo(IJ)V

    .line 144
    :goto_1
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v8, v2, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-le v8, v5, :cond_2

    iput v7, v2, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    .line 145
    :cond_2
    iget-object v8, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->toothTipView:Lcom/qianhe/yct/view/ToothTipDropdownView;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-virtual {v8, v2}, Lcom/qianhe/yct/view/ToothTipDropdownView;->setToothType(I)V

    .line 146
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-direct {v0, v2, v7}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->refreshToothType(IZ)V

    goto :goto_2

    .line 149
    :cond_3
    sget v2, Lcom/qianhe/yct/R$string;->data_exception:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 151
    :cond_4
    :goto_2
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    if-nez v2, :cond_5

    .line 152
    sget v1, Lcom/qianhe/yct/R$string;->data_exception:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 155
    :cond_5
    iget-object v8, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvProTitle:Landroid/widget/TextView;

    iget-object v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_6
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    new-instance v8, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$1;

    invoke-direct {v8, v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$1;-><init>(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivResetLocation:Landroid/widget/ImageView;

    new-instance v8, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$2;

    invoke-direct {v8, v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$2;-><init>(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivStartPoint:Landroid/widget/ImageView;

    new-instance v8, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$3;

    invoke-direct {v8, v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$3;-><init>(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivMapState:Landroid/widget/ImageView;

    new-instance v8, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$4;

    invoke-direct {v8, v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$4;-><init>(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivZoom:Landroid/widget/ImageView;

    new-instance v8, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$5;

    invoke-direct {v8, v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$5;-><init>(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 233
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivSound:Landroid/widget/ImageView;

    new-instance v8, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$6;

    invoke-direct {v8, v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$6;-><init>(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivDirection:Landroid/widget/ImageView;

    new-instance v8, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$7;

    invoke-direct {v8, v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$7;-><init>(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v8, Lcom/qianhe/baselib/enums/WaGouEnum;->DOWN:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v9

    if-ne v2, v9, :cond_7

    .line 255
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivSlopeType:Landroid/widget/ImageView;

    sget v9, Lcom/qianhe/yct/R$drawable;->bg_wg_down:I

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 256
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivArm:Lcom/qianhe/yct/view/ArmView;

    sget v9, Lcom/qianhe/yct/R$drawable;->icon_wg_arm:I

    invoke-virtual {v2, v9}, Lcom/qianhe/yct/view/ArmView;->setImageResource(I)V

    goto :goto_3

    .line 257
    :cond_7
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v9, Lcom/qianhe/baselib/enums/WaGouEnum;->UP:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v9}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v9

    if-ne v2, v9, :cond_8

    .line 258
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivSlopeType:Landroid/widget/ImageView;

    sget v9, Lcom/qianhe/yct/R$drawable;->bg_wg_up:I

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 259
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivArm:Lcom/qianhe/yct/view/ArmView;

    sget v9, Lcom/qianhe/yct/R$drawable;->icon_wg_arm_r:I

    invoke-virtual {v2, v9}, Lcom/qianhe/yct/view/ArmView;->setImageResource(I)V

    goto :goto_3

    .line 261
    :cond_8
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivSlopeType:Landroid/widget/ImageView;

    sget v9, Lcom/qianhe/yct/R$drawable;->bg_wg_flat:I

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 262
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivArm:Lcom/qianhe/yct/view/ArmView;

    sget v9, Lcom/qianhe/yct/R$drawable;->icon_wg_arm:I

    invoke-virtual {v2, v9}, Lcom/qianhe/yct/view/ArmView;->setImageResource(I)V

    .line 265
    :goto_3
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v9, v2, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    if-nez v9, :cond_9

    .line 266
    sget-object v9, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v9}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v9

    iput v9, v2, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    .line 268
    :cond_9
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v9, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v9}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v10

    const-wide/16 v11, 0x0

    if-ne v2, v10, :cond_a

    .line 269
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput-wide v11, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    .line 272
    :cond_a
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v13, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    cmpl-double v10, v13, v11

    move-wide v15, v3

    if-eqz v10, :cond_b

    iget-wide v3, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    cmpl-double v10, v13, v3

    if-nez v10, :cond_b

    .line 273
    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    invoke-virtual {v9}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v3

    if-ne v2, v3, :cond_b

    .line 274
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput v6, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    .line 275
    iput-wide v11, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    .line 279
    :cond_b
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v3, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    cmpl-double v10, v3, v11

    if-eqz v10, :cond_c

    iget-wide v13, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    cmpl-double v10, v3, v13

    if-nez v10, :cond_c

    .line 280
    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    invoke-virtual {v9}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v3

    if-ne v2, v3, :cond_c

    .line 281
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput v6, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    .line 282
    iput-wide v11, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    .line 286
    :cond_c
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    cmp-long v10, v3, v15

    if-lez v10, :cond_d

    iget-wide v3, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    cmpl-double v10, v3, v11

    if-nez v10, :cond_d

    .line 287
    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    invoke-virtual {v9}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v3

    if-ne v2, v3, :cond_e

    .line 288
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v3, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    iget-wide v8, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    iget-wide v10, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    new-array v12, v1, [D

    aput-wide v3, v12, v7

    aput-wide v8, v12, v6

    aput-wide v10, v12, v5

    iget-wide v3, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    iget-wide v8, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    iget-wide v10, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    new-array v13, v1, [D

    aput-wide v3, v13, v7

    aput-wide v8, v13, v6

    aput-wide v10, v13, v5

    invoke-static {v12, v13}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 289
    :cond_e
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v3, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->depth:D

    cmpl-double v9, v3, v11

    if-eqz v9, :cond_d

    iget-wide v9, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    cmpl-double v13, v9, v11

    if-eqz v13, :cond_d

    .line 292
    iget-wide v9, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    iget-wide v13, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    cmpl-double v15, v9, v13

    if-nez v15, :cond_f

    sub-double v3, v13, v3

    .line 293
    iget-wide v9, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    sub-double/2addr v3, v9

    move-object/from16 v16, v8

    const/4 v15, 0x0

    goto :goto_4

    :cond_f
    move-object/from16 v16, v8

    const/4 v15, 0x0

    .line 294
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    cmpl-double v17, v9, v7

    if-nez v17, :cond_10

    sub-double/2addr v7, v3

    sub-double v3, v13, v7

    goto :goto_4

    :cond_10
    move-wide v3, v11

    :goto_4
    cmpl-double v7, v3, v11

    if-eqz v7, :cond_11

    .line 297
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget-object v8, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v8, v8, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    div-double/2addr v3, v8

    goto :goto_5

    :cond_11
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    iget-wide v8, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    new-array v10, v1, [D

    aput-wide v3, v10, v15

    aput-wide v8, v10, v6

    aput-wide v13, v10, v5

    iget-wide v3, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    iget-wide v8, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    iget-wide v11, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    new-array v13, v1, [D

    aput-wide v3, v13, v15

    aput-wide v8, v13, v6

    aput-wide v11, v13, v5

    invoke-static {v10, v13}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v3

    :goto_5
    iput-wide v3, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    .line 298
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    if-lez v7, :cond_12

    invoke-virtual/range {v16 .. v16}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v3

    goto :goto_6

    :cond_12
    sget-object v3, Lcom/qianhe/baselib/enums/WaGouEnum;->UP:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v3

    :goto_6
    iput v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    .line 302
    :goto_7
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v3, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    iget-wide v7, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    iget-wide v9, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    new-array v11, v1, [D

    aput-wide v3, v11, v15

    aput-wide v7, v11, v6

    aput-wide v9, v11, v5

    iput-object v11, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->pointA:[D

    .line 303
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    iget-wide v7, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    iget-wide v9, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    new-array v1, v1, [D

    aput-wide v3, v1, v15

    aput-wide v7, v1, v6

    aput-wide v9, v1, v5

    iput-object v1, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->pointB:[D

    .line 304
    iget-object v1, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvProjectDistance:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->project_length:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v3, v3, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    invoke-virtual {v0, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->formatDistance(D)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v15

    aput-object v3, v4, v6

    const-string v2, "%s%s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v1, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    iget-boolean v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->isH5Pro:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_13

    const/16 v2, 0x8

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v1, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    iget-boolean v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->isH5Pro:Z

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    goto :goto_9

    :cond_14
    const/16 v2, 0x8

    :goto_9
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v1, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStartDistance:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->display_distance_starting_point:I

    if-ne v2, v6, :cond_15

    const/4 v7, 0x0

    goto :goto_a

    :cond_15
    const/16 v7, 0x8

    :goto_a
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v1, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->toothTipView:Lcom/qianhe/yct/view/ToothTipDropdownView;

    new-instance v2, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$8;

    invoke-direct {v2, v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$8;-><init>(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)V

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/view/ToothTipDropdownView;->setOnSelectedListener(Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;)V

    .line 327
    invoke-direct {v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->initPlayer()V

    .line 329
    new-instance v1, Lcom/qianhe/yct/view/map/YMap;

    invoke-direct {v1}, Lcom/qianhe/yct/view/map/YMap;-><init>()V

    iput-object v1, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    .line 330
    new-instance v1, Lcom/qianhe/yct/view/map/MapController;

    invoke-direct {v1}, Lcom/qianhe/yct/view/map/MapController;-><init>()V

    iput-object v1, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    .line 331
    iget-object v2, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/view/map/YMap;->setMapController(Lcom/qianhe/yct/view/map/BaseMapController;)Z

    .line 332
    iget-object v1, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/view/map/YMap;->onCreate(Landroid/os/Bundle;)V

    .line 333
    iget-object v1, v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    new-instance v3, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$9;

    invoke-direct {v3, v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$9;-><init>(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)V

    invoke-virtual {v1, v3}, Lcom/qianhe/yct/view/map/YMap;->setOnLoadMapListener(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V

    .line 374
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->restoreData(Landroid/os/Bundle;)V

    .line 375
    invoke-direct {v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->initWorkView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 1200
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 1201
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onDestroy()V

    .line 1202
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/qh/yctdevice/YctDevice;->updateCurrentProjectInfo(IJ)V

    .line 1203
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

    invoke-virtual {v0}, Lcom/qianhe/baselib/utils/SensorEventHelper;->unRegisterSensorListener()V

    .line 1204
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 1205
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_0

    .line 1206
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 1207
    iput-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 1209
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

    .line 437
    iget-boolean v4, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->isCheckBase:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v4, :cond_1

    .line 438
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

    .line 525
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
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->hasCheckBasestation:Z

    return-void

    .line 439
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->isCheckBase:Z

    .line 440
    iget-object v4, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

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

    .line 441
    new-instance p1, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;-><init>()V

    .line 442
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CorsChangesDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 443
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 444
    iget-object v1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 445
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getAuthResult()Lcom/qianhe/ntripclientlib/bean/AuthResult;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    const-string v2, "diffConfig"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 446
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 447
    new-instance v0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$10;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$10;-><init>(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;)V

    return-void

    .line 458
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

    iget-object v4, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-object v4, v4, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    sget v6, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 459
    iget-object v4, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

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

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u57fa\u7ad9\u76f8\u5dee\u8ddd\u79bb\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

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

    .line 461
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->base_mobility_threshold:F

    float-to-double v6, v2

    cmpl-double v2, v0, v6

    if-lez v2, :cond_6

    .line 462
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    const-wide/16 v3, 0x0

    cmpl-double v6, v1, v3

    if-eqz v6, :cond_5

    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    cmpl-double v2, v0, v3

    if-eqz v2, :cond_5

    .line 464
    new-instance v0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;-><init>()V

    .line 465
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "CheckBasestationDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 466
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 467
    sget v2, Lcom/qianhe/yct/R$string;->base_station_have_changed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v2, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 469
    const-string v2, "baseStationEntity"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 470
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 471
    new-instance p1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$11;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$11;-><init>(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)V

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$OnConfirmListener;)V

    return-void

    .line 500
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

    new-instance v6, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$12;

    invoke-direct {v6, p0, p1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$12;-><init>(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;Lcom/qianhe/baselib/bean/BaseStationEntity;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_6
    move-object v1, p0

    .line 518
    iput-boolean v3, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->hasCheckBasestation:Z

    return-void

    :cond_7
    move-object v1, p0

    .line 521
    iput-boolean v3, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->hasCheckBasestation:Z

    :goto_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 559
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V

    .line 560
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 561
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v0, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->showStartSetBase()V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/CreateProjectResponse;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 653
    iget v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->state:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_1

    .line 654
    iget-object v1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    iget-wide v4, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 655
    iget-object v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    .line 656
    iget-wide v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    const/4 v0, 0x1

    .line 657
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->persistCurrentProject(Z)V

    goto :goto_0

    .line 659
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 660
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 663
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_2

    .line 664
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

    .line 548
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 549
    invoke-direct {p0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->showStartSetBase()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 551
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->hasCheckBasestation:Z

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/ModifyProjectResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 569
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->silentModifyProject:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 570
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->silentModifyProject:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 573
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->hasCheckBasestation:Z

    .line 574
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
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    goto/16 :goto_13

    .line 980
    :cond_0
    iget-object v6, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-nez v6, :cond_1

    goto/16 :goto_13

    .line 981
    :cond_1
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_2

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_2

    iput-object v0, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 984
    :cond_2
    :try_start_0
    iget-object v6, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->rollAngleView:Lcom/qianhe/yct/view/RollAngleView;

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    invoke-virtual {v6, v10, v11}, Lcom/qianhe/yct/view/RollAngleView;->setCurrnetAngle(D)V

    .line 985
    sget-object v6, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;->FULL:Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    invoke-virtual {v1, v0, v6}, Lcom/qianhe/yct/base/BaseActivity;->resolveWorkPageAvailable(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;)Z

    .line 986
    iget-boolean v6, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->isH5Pro:Z

    if-nez v6, :cond_4

    .line 987
    iget v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v7, Lcom/qianhe/yct/enums/InsStatusEnum;->VERTICAL:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v7}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v7

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    .line 989
    iget-object v6, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 990
    iget-object v6, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_12

    .line 992
    :cond_3
    iget-object v6, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 993
    iget-object v6, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/view/View;->setClickable(Z)V

    .line 995
    :goto_0
    iget-object v6, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvArmAngle:Landroid/widget/TextView;

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

    .line 997
    :cond_4
    iget-boolean v6, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    iget-boolean v7, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->hasCheckBasestation:Z

    invoke-virtual {v1, v0, v6, v7}, Lcom/qianhe/yct/base/BaseActivity;->handleWorkInsCalibrateTips(Lcom/qianhe/baselib/bean/InsNavi;ZZ)V

    .line 999
    iget-object v6, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    if-eqz v6, :cond_21

    .line 1001
    iget v6, v6, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-nez v6, :cond_5

    .line 1002
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    new-array v14, v2, [D

    aput-wide v6, v14, v4

    aput-wide v10, v14, v5

    aput-wide v12, v14, v3

    goto :goto_1

    :cond_5
    if-ne v6, v3, :cond_6

    .line 1004
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    new-array v14, v2, [D

    aput-wide v6, v14, v4

    aput-wide v10, v14, v5

    aput-wide v12, v14, v3

    goto :goto_1

    .line 1006
    :cond_6
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    new-array v14, v2, [D

    aput-wide v6, v14, v4

    aput-wide v10, v14, v5

    aput-wide v12, v14, v3

    .line 1009
    :goto_1
    iget-object v6, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStartDistance:Landroid/widget/TextView;

    const-string v7, "%s%s"

    sget v10, Lcom/qianhe/yct/R$string;->start_distance:I

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->pointA:[D

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

    .line 1012
    iget-object v6, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivDirection:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1013
    iget-object v6, v1, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v6, v6, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v6, v6, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    iget-object v7, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->pointB:[D

    iget-object v10, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->pointA:[D

    iget-wide v11, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    move-wide v15, v8

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    const/4 v13, 0x2

    const/16 v17, 0x0

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    const/16 v18, 0x2

    new-array v13, v2, [D

    aput-wide v11, v13, v17

    aput-wide v8, v13, v5

    aput-wide v3, v13, v18

    invoke-static {v6, v7, v10, v14, v13}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->calculatePosition(F[D[D[D[D)Lcom/qianhe/baselib/bean/PositionResult;

    move-result-object v3

    goto :goto_2

    :cond_7
    move-wide v15, v8

    const/16 v17, 0x0

    const/16 v18, 0x2

    .line 1015
    iget-object v3, v1, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    iget-object v4, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->pointA:[D

    iget-object v6, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->pointB:[D

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    iget-wide v9, v0, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    iget-wide v11, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    new-array v13, v2, [D

    aput-wide v7, v13, v17

    aput-wide v9, v13, v5

    aput-wide v11, v13, v18

    invoke-static {v3, v4, v6, v14, v13}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->calculatePosition(F[D[D[D[D)Lcom/qianhe/baselib/bean/PositionResult;

    move-result-object v3

    .line 1018
    :goto_2
    iget-wide v6, v3, Lcom/qianhe/baselib/bean/PositionResult;->distance:D

    iget-object v4, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v8, v4, Lcom/qianhe/baselib/bean/WaGouEntity;->width:D

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double v8, v8, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v12

    cmpg-double v4, v6, v8

    if-gtz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    .line 1021
    :goto_3
    iget-object v6, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvBoundTip:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    const/16 v7, 0x8

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1023
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    move-wide/from16 v19, v10

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    move-wide/from16 v21, v12

    new-array v12, v2, [D

    aput-wide v6, v12, v17

    aput-wide v8, v12, v5

    aput-wide v10, v12, v18

    .line 1024
    invoke-direct {v1, v0, v14, v12, v4}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->updateFillCut(Lcom/qianhe/baselib/bean/InsNavi;[D[DZ)I

    move-result v6

    int-to-double v6, v6

    .line 1025
    iget-object v8, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivArm:Lcom/qianhe/yct/view/ArmView;

    div-double v9, v6, v21

    iget-boolean v11, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->isH5Pro:Z

    if-eqz v11, :cond_a

    iget-wide v11, v0, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    move-object/from16 v22, v3

    goto :goto_5

    :cond_a
    iget-wide v11, v0, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iget v13, v1, Lcom/qianhe/yct/base/BaseActivity;->zeroDegrees:F

    move-object/from16 v22, v3

    float-to-double v2, v13

    sub-double/2addr v11, v2

    :goto_5
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/qianhe/yct/view/ArmView;->updateAnimationValue(DD)V

    .line 1026
    invoke-virtual {v1, v6, v7}, Lcom/qianhe/yct/base/BaseActivity;->formatElevationDiffText(D)Ljava/lang/String;

    move-result-object v2

    .line 1027
    iget-object v3, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvUnitV:Landroid/widget/TextView;

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    cmp-long v12, v8, v10

    if-gez v12, :cond_b

    sget v8, Lcom/qianhe/yct/R$string;->unit_cm:I

    goto :goto_6

    :cond_b
    sget v8, Lcom/qianhe/yct/R$string;->unit_m:I

    :goto_6
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1028
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-float v3, v8

    iget-object v8, v1, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v8, v8, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v8, v8, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v8, v8, v9

    cmpg-float v3, v3, v8

    if-gtz v3, :cond_c

    const/4 v3, 0x1

    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_11

    .line 1030
    iget-object v8, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStatusV:Landroid/widget/TextView;

    sget v9, Lcom/qianhe/yct/R$string;->hold:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 1031
    iget-boolean v8, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v8, :cond_d

    iget-object v8, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStatusV:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1032
    :cond_d
    iget-object v8, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    iget-boolean v8, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v8, :cond_e

    iget-object v8, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1034
    :cond_e
    iget-object v8, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivStatusV:Landroid/widget/ImageView;

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    const-wide/16 v23, 0x1

    cmp-long v9, v12, v23

    if-gez v9, :cond_f

    sget v9, Lcom/qianhe/yct/R$drawable;->icon_status_v:I

    goto :goto_8

    :cond_f
    cmpl-double v9, v6, v15

    if-lez v9, :cond_10

    sget v9, Lcom/qianhe/yct/R$drawable;->icon_status_hold_dig:I

    goto :goto_8

    :cond_10
    sget v9, Lcom/qianhe/yct/R$drawable;->icon_status_hold_fill:I

    :goto_8
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_9
    move-object/from16 v8, v22

    goto :goto_a

    :cond_11
    cmpl-double v8, v6, v15

    if-lez v8, :cond_12

    .line 1036
    iget-object v8, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStatusV:Landroid/widget/TextView;

    sget v9, Lcom/qianhe/yct/R$string;->dig:I

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1037
    iget-object v8, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStatusV:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1038
    iget-object v8, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1039
    iget-object v8, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvDiffV:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1040
    iget-object v8, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivStatusV:Landroid/widget/ImageView;

    sget v9, Lcom/qianhe/yct/R$drawable;->icon_status_dig:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 1042
    :cond_12
    iget-object v8, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStatusV:Landroid/widget/TextView;

    sget v9, Lcom/qianhe/yct/R$string;->fill:I

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    iget-object v8, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStatusV:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1044
    iget-object v8, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    iget-object v8, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvDiffV:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1046
    iget-object v8, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivStatusV:Landroid/widget/ImageView;

    sget v9, Lcom/qianhe/yct/R$drawable;->icon_status_fill:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 1049
    :goto_a
    iget-wide v12, v8, Lcom/qianhe/baselib/bean/PositionResult;->distance:D

    invoke-virtual {v1, v12, v13}, Lcom/qianhe/yct/base/BaseActivity;->formatElevationDiffText(D)Ljava/lang/String;

    move-result-object v9

    .line 1050
    iget-object v12, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvDiffH:Landroid/widget/TextView;

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1051
    iget-object v12, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvUnitH:Landroid/widget/TextView;

    move-wide/from16 v22, v10

    iget-wide v10, v8, Lcom/qianhe/baselib/bean/PositionResult;->distance:D

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v13, v10, v22

    if-gez v13, :cond_13

    sget v10, Lcom/qianhe/yct/R$string;->unit_cm:I

    goto :goto_b

    :cond_13
    sget v10, Lcom/qianhe/yct/R$string;->unit_m:I

    :goto_b
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(I)V

    .line 1052
    iget v10, v8, Lcom/qianhe/baselib/bean/PositionResult;->position:I

    if-ne v10, v5, :cond_14

    .line 1053
    iget-object v10, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvDiffH:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1054
    iget-object v10, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStatusH:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1055
    iget-object v10, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStatusH:Landroid/widget/TextView;

    sget v11, Lcom/qianhe/yct/R$string;->left_leaning:I

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    iget-object v10, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivStatusH:Landroid/widget/ImageView;

    sget v11, Lcom/qianhe/yct/R$drawable;->icon_status_l:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    :cond_14
    const/4 v11, -0x1

    if-ne v10, v11, :cond_15

    .line 1058
    iget-object v10, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvDiffH:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1059
    iget-object v10, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStatusH:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1060
    iget-object v10, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStatusH:Landroid/widget/TextView;

    sget v11, Lcom/qianhe/yct/R$string;->right_leaning:I

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    iget-object v10, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivStatusH:Landroid/widget/ImageView;

    sget v11, Lcom/qianhe/yct/R$drawable;->icon_status_r:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 1063
    :cond_15
    iget-boolean v10, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v10, :cond_16

    iget-object v10, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvDiffH:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1064
    :cond_16
    iget-boolean v10, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v10, :cond_17

    iget-object v10, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStatusH:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1065
    :cond_17
    iget-object v10, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStatusH:Landroid/widget/TextView;

    sget v11, Lcom/qianhe/yct/R$string;->center:I

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    iget-object v10, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivStatusH:Landroid/widget/ImageView;

    sget v11, Lcom/qianhe/yct/R$drawable;->icon_status_h:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1068
    :goto_c
    iget-boolean v10, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-nez v10, :cond_18

    .line 1069
    iget-object v2, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivBucket:Lcom/qianhe/yct/view/BucketIndicatorView;

    iget v9, v8, Lcom/qianhe/baselib/bean/PositionResult;->positionM:I

    iget-wide v10, v8, Lcom/qianhe/baselib/bean/PositionResult;->distanceM:D

    double-to-float v8, v10

    float-to-double v10, v8

    const/4 v8, 0x0

    invoke-virtual {v2, v9, v10, v11, v8}, Lcom/qianhe/yct/view/BucketIndicatorView;->setDiffValue(IDZ)V

    .line 1070
    invoke-direct {v1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->showDataUnAvailable()V

    move-wide/from16 v23, v15

    const/16 v22, 0x1

    goto :goto_e

    .line 1072
    :cond_18
    iget-object v10, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvDiffH:Landroid/widget/TextView;

    const/16 v11, 0x50

    invoke-virtual {v1, v9, v11}, Lcom/qianhe/yct/base/BaseActivity;->getElevationDiffTextSize(Ljava/lang/String;I)F

    move-result v9

    invoke-virtual {v10, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1073
    iget-object v9, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v11}, Lcom/qianhe/yct/base/BaseActivity;->getElevationDiffTextSize(Ljava/lang/String;I)F

    move-result v2

    invoke-virtual {v9, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1074
    iget-object v2, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStatusH:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1075
    iget-object v2, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStatusV:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1076
    iget-object v2, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivBucket:Lcom/qianhe/yct/view/BucketIndicatorView;

    iget v9, v8, Lcom/qianhe/baselib/bean/PositionResult;->positionM:I

    iget-wide v10, v8, Lcom/qianhe/baselib/bean/PositionResult;->distanceM:D

    double-to-float v8, v10

    float-to-double v10, v8

    invoke-virtual {v2, v9, v10, v11}, Lcom/qianhe/yct/view/BucketIndicatorView;->setDiffValue(ID)V

    .line 1077
    iget-wide v8, v0, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    const/4 v2, 0x3

    const/16 v22, 0x1

    new-array v5, v2, [D

    const/16 v17, 0x0

    aput-wide v8, v5, v17

    aput-wide v10, v5, v22

    aput-wide v12, v5, v18

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    move-wide/from16 v23, v15

    const/4 v2, 0x3

    new-array v15, v2, [D

    const/16 v17, 0x0

    aput-wide v8, v15, v17

    aput-wide v10, v15, v22

    aput-wide v12, v15, v18

    invoke-static {v5, v15}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v8

    .line 1078
    iget-object v2, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivBucket:Lcom/qianhe/yct/view/BucketIndicatorView;

    cmpl-double v5, v8, v23

    if-nez v5, :cond_19

    move-wide/from16 v8, v19

    goto :goto_d

    :cond_19
    mul-double v8, v8, v19

    :goto_d
    invoke-virtual {v2, v8, v9}, Lcom/qianhe/yct/view/BucketIndicatorView;->setIconWidth(D)V

    .line 1081
    :goto_e
    iget-boolean v2, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v2, :cond_1d

    iget-object v2, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_f

    .line 1083
    :cond_1a
    iget-object v2, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v2, :cond_1e

    .line 1084
    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->resume()V

    div-double v8, v6, v19

    .line 1085
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    .line 1086
    iget-object v2, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v2, v5}, Lcom/qianhe/yct/utils/BeepPlayer;->setUrgency(F)V

    if-eqz v3, :cond_1b

    .line 1089
    iget-object v2, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v3, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DI_LONG:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 1090
    iget-object v2, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_10

    .line 1093
    :cond_1b
    iget-object v2, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    double-to-float v3, v8

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/utils/BeepPlayer;->setUrgencyByDistanceCm(F)V

    cmpl-double v2, v6, v23

    if-lez v2, :cond_1c

    .line 1095
    iget-object v2, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v3, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->BUZZ:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 1096
    iget-object v2, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_10

    .line 1098
    :cond_1c
    iget-object v2, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v3, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->WOOD_FISH:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 1099
    iget-object v2, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_10

    .line 1082
    :cond_1d
    :goto_f
    iget-object v2, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->pause()V

    .line 1103
    :cond_1e
    :goto_10
    iget-wide v2, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->baseX:D

    cmpl-double v5, v2, v23

    if-eqz v5, :cond_20

    iget-wide v2, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->baseY:D

    cmpl-double v5, v2, v23

    if-eqz v5, :cond_20

    .line 1105
    iget-boolean v2, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v2, :cond_1f

    .line 1106
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    const/4 v9, 0x3

    new-array v10, v9, [D

    const/16 v17, 0x0

    aput-wide v2, v10, v17

    aput-wide v5, v10, v22

    aput-wide v7, v10, v18

    .line 1107
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    const/4 v9, 0x3

    new-array v9, v9, [D

    const/16 v17, 0x0

    aput-wide v2, v9, v17

    aput-wide v5, v9, v22

    aput-wide v7, v9, v18

    goto :goto_11

    .line 1110
    :cond_1f
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v2

    iget-object v3, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v5, v3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    iget-wide v7, v3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    iget-wide v9, v3, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    const/4 v3, 0x3

    new-array v3, v3, [D

    const/16 v17, 0x0

    aput-wide v5, v3, v17

    aput-wide v7, v3, v22

    aput-wide v9, v3, v18

    invoke-virtual {v2, v3}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToGAUSSXY([D)[D

    move-result-object v10

    move-object v9, v10

    :goto_11
    if-eqz v10, :cond_20

    if-eqz v9, :cond_20

    .line 1114
    new-instance v2, Landroid/graphics/PointF;

    const/16 v17, 0x0

    aget-wide v5, v10, v17

    iget-wide v7, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->baseX:D

    sub-double/2addr v5, v7

    double-to-float v3, v5

    aget-wide v5, v10, v22

    iget-wide v7, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->baseY:D

    sub-double/2addr v5, v7

    double-to-float v5, v5

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1115
    new-instance v3, Landroid/graphics/PointF;

    const/16 v17, 0x0

    aget-wide v5, v9, v17

    iget-wide v7, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->baseX:D

    sub-double/2addr v5, v7

    double-to-float v5, v5

    aget-wide v6, v9, v22

    iget-wide v11, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->baseY:D

    sub-double/2addr v6, v11

    double-to-float v6, v6

    invoke-direct {v3, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1116
    invoke-static {v10, v9}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v22

    .line 1117
    iget-object v5, v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v24, v4

    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v24}, Lcom/qianhe/yct/view/WorkView;->setLocationPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;DZ)V

    .line 1120
    :cond_20
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    invoke-direct {v1, v14, v2, v3}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->refreshCadView([DD)V

    .line 1122
    :cond_21
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->refreshTianDiMap(Lcom/qianhe/baselib/bean/InsNavi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1124
    :goto_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1214
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onLowMemory()V

    .line 1215
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    if-eqz v0, :cond_0

    .line 1216
    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onLowMemory()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1165
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onPause()V

    .line 1166
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onPause()V

    .line 1167
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_0

    .line 1168
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 1169
    iput-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1155
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 1156
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onResume()V

    .line 1157
    invoke-direct {p0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->initPlayer()V

    .line 1158
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

    .line 1159
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvMachineNumber:Landroid/widget/TextView;

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

    .line 422
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 423
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivMapState:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivMapState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 424
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivSound"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 425
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivDirection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivDirection"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 426
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "webview"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 427
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "cadView"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 428
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltBtn"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 429
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltH5"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 430
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltH5Pro"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 431
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStatusV:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "tvStatusV"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 432
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->tvStatusH:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "tvStatusH"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1175
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onStart()V

    .line 1176
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1181
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 1182
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onStop()V

    return-void
.end method
