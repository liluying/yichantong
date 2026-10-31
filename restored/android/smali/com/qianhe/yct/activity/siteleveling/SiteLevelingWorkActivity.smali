.class public Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "SiteLevelingWorkActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

.field private curPositionWgs84:[D

.field private hasCheckBasestation:Z

.field private isCheckBase:Z

.field private isH5Pro:Z

.field private mAverageEast:D

.field private mAverageHeight:D

.field private mAverageNorth:D

.field private mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private mOnePointPlaneChecker:Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;

.field private mPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

.field private mapController:Lcom/qianhe/yct/view/map/MapController;

.field private pointA:[D

.field private sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

.field private silentModifyProject:Z

.field private yMap:Lcom/qianhe/yct/view/map/YMap;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurPositionWgs84(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)[D
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->curPositionWgs84:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisH5Pro(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->isH5Pro:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBeepPlayer(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/utils/BeepPlayer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/db/DatabaseManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPointList(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mPointList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSiteLevelingEntity(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmapController(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/view/map/MapController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetyMap(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/view/map/YMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->hasCheckBasestation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisCheckBase(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->isCheckBase:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBeepPlayer(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;Lcom/qianhe/yct/utils/BeepPlayer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhasCadPath(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->hasCadPath()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minitPlayer(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->initPlayer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshToothType(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->refreshToothType(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowFixedCoordinateStartupDialog(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->showFixedCoordinateStartupDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildCadItemAreaPoints()[D
    .locals 7

    .line 377
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 378
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mPointList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x2

    .line 379
    iget-object v4, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mPointList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    aget-wide v5, v4, v1

    aput-wide v5, v0, v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 380
    iget-object v5, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mPointList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    aget-wide v4, v5, v4

    aput-wide v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private hasCadPath()Z
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

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

.method private initCadView()V
    .locals 3

    .line 365
    invoke-direct {p0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->hasCadPath()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mPointList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-object v1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setCadFilePath(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setFollowVehicle(Z)V

    .line 370
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setCadTouchEnable(Z)V

    .line 371
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setSelectSingleLine(Z)V

    .line 372
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setDrawSelectedLineNumText(Z)V

    .line 373
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-direct {p0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->buildCadItemAreaPoints()[D

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/qh/xcad/XCadView;->setXCadItemAreaPoint([DZZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initPlayer()V
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-nez v0, :cond_0

    .line 654
    new-instance v0, Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-direct {v0}, Lcom/qianhe/yct/utils/BeepPlayer;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_0
    return-void
.end method

.method private persistCurrentProject(Z)V
    .locals 5

    .line 625
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 626
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 627
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    if-eqz p1, :cond_1

    .line 628
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 629
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->silentModifyProject:Z

    .line 630
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshCadView([DD)V
    .locals 8

    .line 386
    invoke-direct {p0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->hasCadPath()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

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

    .line 792
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

    .line 793
    iput-object v1, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->curPositionWgs84:[D

    .line 794
    iget-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/map/YMap;->isInit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 795
    iget-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    iget-object v5, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->mapContainer:Lcom/qianhe/yct/view/map/MapContainerView;

    new-instance v10, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v11, v1, v3

    aget-wide v13, v1, v9

    aget-wide v15, v1, v4

    invoke-direct/range {v10 .. v16}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v2, v5, v10}, Lcom/qianhe/yct/view/map/YMap;->init(Landroid/view/ViewGroup;Lcom/qianhe/yct/view/map/GeoPoint;)Z

    return-void

    .line 797
    :cond_0
    iget-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    new-instance v10, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v11, v1, v3

    aget-wide v13, v1, v9

    aget-wide v15, v1, v4

    invoke-direct/range {v10 .. v16}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v2, v10, v9}, Lcom/qianhe/yct/view/map/MapController;->updateLocation(Lcom/qianhe/yct/view/map/GeoPoint;Z)V

    return-void
.end method

.method private refreshToothType(IZ)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 608
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->isH5Pro:Z

    if-eqz v2, :cond_3

    if-nez p1, :cond_0

    .line 611
    sget v2, Lcom/qianhe/yct/R$string;->left_tooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 613
    sget v2, Lcom/qianhe/yct/R$string;->rigth_tooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 615
    :cond_1
    sget v2, Lcom/qianhe/yct/R$string;->center_tooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 617
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvDistanceDes:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->isZH(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, ""

    goto :goto_1

    :cond_2
    const-string v6, " "

    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/qianhe/yct/R$string;->vertical_distance_to_target:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v1, v6

    aput-object v5, v1, v0

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iput p1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-eqz p2, :cond_3

    .line 619
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->persistCurrentProject(Z)V

    :cond_3
    return-void
.end method

.method private restoreData(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 394
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->ivMapState:Landroid/widget/ImageView;

    const-string v1, "ivMapState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 395
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->ivSound:Landroid/widget/ImageView;

    const-string v1, "ivSound"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 396
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    const-string/jumbo v1, "webview"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    const-string v1, "cadView"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    const-string v1, "lltBtn"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    const-string v1, "lltH5"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    const-string v1, "lltH5Pro"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvStatus:Landroid/widget/TextView;

    const-string/jumbo v1, "tvStatus"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 403
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz p1, :cond_0

    .line 404
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 p1, 0x0

    .line 405
    iput-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 407
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->initPlayer()V

    :cond_1
    return-void
.end method

.method private showDataUnAvailable()V
    .locals 3

    .line 600
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvDiff:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->data_unavailable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 601
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvDiff:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 602
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvDiff:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 603
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvStatus:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showFixedCoordinateStartupDialog()V
    .locals 4

    .line 521
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->isCheckBase:Z

    if-eqz v0, :cond_0

    .line 522
    new-instance v0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;-><init>()V

    .line 523
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "FixedCoordinateStartupDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 524
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 525
    const-string v2, "baseProEntity"

    iget-object v3, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 526
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 527
    new-instance v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$12;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$12;-><init>(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->setOnCloseListener(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;)V

    :cond_0
    return-void
.end method

.method private showStartSetBase()V
    .locals 7

    .line 568
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->isCheckBase:Z

    if-eqz v0, :cond_0

    .line 569
    sget v0, Lcom/qianhe/yct/R$string;->connected_base_whether_start_config:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$13;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$13;-><init>(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)V

    const-string v5, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bluetoothStatus(I)V
    .locals 1

    .line 587
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->bluetoothStatus(I)V

    .line 588
    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 590
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz p1, :cond_0

    .line 591
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 p1, 0x0

    .line 592
    iput-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 595
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->showDataUnAvailable()V

    :cond_1
    return-void
.end method

.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 676
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 665
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->site_leveling:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 666
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 846
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 847
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_1

    .line 848
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 849
    iput-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 25
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 145
    const-string v2, ","

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-static {v3}, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    move-result-object v3

    iput-object v3, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    .line 146
    invoke-super/range {p0 .. p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->finishPreviousActivity()V

    .line 148
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 150
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v5, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v6, "LOG,REFSTATION,ONTIME,1"

    invoke-direct {v4, v5, v6}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 151
    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v3

    iput-object v3, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 152
    new-instance v3, Lcom/qianhe/baselib/utils/SensorEventHelper;

    invoke-direct {v3, v0}, Lcom/qianhe/baselib/utils/SensorEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

    .line 153
    invoke-virtual {v3}, Lcom/qianhe/baselib/utils/SensorEventHelper;->registerSensorListener()V

    .line 154
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v3}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v3

    iput-boolean v3, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->isH5Pro:Z

    .line 155
    iget-object v3, v0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v4, "current_coords"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    new-instance v4, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v4}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object v4, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 157
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_0

    .line 159
    :try_start_0
    iget-object v4, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v4, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    iput-wide v8, v4, Lcom/qianhe/baselib/bean/InsNavi;->longitudeM:D

    iput-wide v8, v4, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 160
    iget-object v4, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v6

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v4, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    iput-wide v8, v4, Lcom/qianhe/baselib/bean/InsNavi;->latitudeM:D

    iput-wide v8, v4, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 161
    iget-object v4, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 165
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 167
    const-string v3, "id"

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v4, v2, v8

    if-lez v4, :cond_3

    .line 169
    iget-object v4, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    sget-object v8, Lcom/qianhe/baselib/enums/ProjectEnum;->SITELEVELING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v8, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;)Ljava/util/List;

    move-result-object v2

    .line 170
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 171
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iput-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    .line 172
    iget-object v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v4, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    invoke-virtual {v2, v3, v4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_1

    .line 176
    :cond_1
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget v4, v3, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    iget-wide v8, v3, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-virtual {v2, v4, v8, v9}, Lcom/qh/yctdevice/YctDevice;->updateCurrentProjectInfo(IJ)V

    .line 178
    :goto_1
    iget-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-le v3, v5, :cond_2

    .line 179
    iput v7, v2, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    .line 180
    :cond_2
    iget-object v3, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->toothTipView:Lcom/qianhe/yct/view/ToothTipDropdownView;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-virtual {v3, v2}, Lcom/qianhe/yct/view/ToothTipDropdownView;->setToothType(I)V

    .line 181
    iget-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-direct {v0, v2, v7}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->refreshToothType(IZ)V

    goto :goto_2

    .line 184
    :cond_3
    sget v2, Lcom/qianhe/yct/R$string;->data_exception:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 189
    :cond_4
    :goto_2
    iget-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->ivResetLocation:Landroid/widget/ImageView;

    new-instance v3, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$1;

    invoke-direct {v3, v0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$1;-><init>(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->ivStartPoint:Landroid/widget/ImageView;

    new-instance v3, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$2;

    invoke-direct {v3, v0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$2;-><init>(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    new-instance v3, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$3;

    invoke-direct {v3, v0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$3;-><init>(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->ivMapState:Landroid/widget/ImageView;

    new-instance v3, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$4;

    invoke-direct {v3, v0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$4;-><init>(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 252
    iget-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->ivSound:Landroid/widget/ImageView;

    new-instance v3, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$5;

    invoke-direct {v3, v0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$5;-><init>(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 267
    iget-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 268
    invoke-direct {v0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->initPlayer()V

    .line 269
    iget-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    iget-boolean v3, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->isH5Pro:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_5

    const/16 v3, 0x8

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    iget-boolean v3, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->isH5Pro:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    const/16 v3, 0x8

    :goto_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvStartDistance:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->display_distance_starting_point:I

    if-ne v3, v6, :cond_7

    const/4 v4, 0x0

    :cond_7
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->toothTipView:Lcom/qianhe/yct/view/ToothTipDropdownView;

    new-instance v3, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$6;

    invoke-direct {v3, v0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$6;-><init>(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)V

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/view/ToothTipDropdownView;->setOnSelectedListener(Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;)V

    .line 279
    new-instance v2, Lcom/qianhe/yct/view/map/YMap;

    invoke-direct {v2}, Lcom/qianhe/yct/view/map/YMap;-><init>()V

    iput-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    .line 280
    new-instance v2, Lcom/qianhe/yct/view/map/MapController;

    invoke-direct {v2}, Lcom/qianhe/yct/view/map/MapController;-><init>()V

    iput-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    .line 281
    iget-object v3, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v3, v2}, Lcom/qianhe/yct/view/map/YMap;->setMapController(Lcom/qianhe/yct/view/map/BaseMapController;)Z

    .line 282
    iget-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/view/map/YMap;->onCreate(Landroid/os/Bundle;)V

    .line 283
    iget-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    new-instance v4, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$7;

    invoke-direct {v4, v0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$7;-><init>(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)V

    invoke-virtual {v2, v4}, Lcom/qianhe/yct/view/map/YMap;->setOnLoadMapListener(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V

    .line 311
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->restoreData(Landroid/os/Bundle;)V

    .line 312
    iget-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    if-eqz v2, :cond_c

    .line 313
    iget-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvProTitle:Landroid/widget/TextView;

    sget v3, Lcom/qianhe/yct/R$string;->project_name:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget-object v4, v4, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v3, v8, v7

    aput-object v4, v8, v6

    const-string v3, "%s:%s"

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget-object v3, v3, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->coordsListJson:Ljava/lang/String;

    new-instance v4, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$8;

    invoke-direct {v4, v0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$8;-><init>(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mPointList:Ljava/util/List;

    if-eqz v2, :cond_b

    const-wide/16 v2, 0x0

    move-wide v8, v2

    move-wide v10, v8

    move-wide v12, v10

    const/4 v4, 0x0

    .line 318
    :goto_5
    iget-object v14, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mPointList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v4, v14, :cond_8

    .line 319
    iget-object v14, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mPointList:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [D

    .line 320
    aget-wide v15, v14, v7

    add-double/2addr v8, v15

    .line 321
    aget-wide v15, v14, v6

    add-double/2addr v10, v15

    .line 322
    aget-wide v15, v14, v5

    add-double/2addr v12, v15

    add-int/2addr v4, v6

    goto :goto_5

    .line 324
    :cond_8
    iget-object v4, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mPointList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-double v14, v4

    div-double/2addr v8, v14

    const-wide v14, 0x408f400000000000L    # 1000.0

    mul-double v8, v8, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v8, v14

    iput-wide v8, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mAverageEast:D

    .line 325
    iget-object v4, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mPointList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-double v8, v4

    div-double/2addr v10, v8

    mul-double v10, v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v8, v14

    iput-wide v8, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mAverageNorth:D

    .line 326
    iget-object v4, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mPointList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-double v8, v4

    div-double/2addr v12, v8

    mul-double v12, v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v8, v14

    iput-wide v8, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mAverageHeight:D

    .line 327
    new-instance v4, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;

    invoke-direct {v4}, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;-><init>()V

    iput-object v4, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mOnePointPlaneChecker:Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;

    .line 328
    iget-object v4, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget v4, v4, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    if-ne v4, v6, :cond_a

    .line 329
    iget-object v4, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mPointList:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    iget-object v8, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mPointList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    invoke-static {v4, v8}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v8

    .line 330
    iget-object v4, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget-wide v10, v4, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->ratio:D

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    mul-double v8, v8, v10

    .line 332
    iget-object v4, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget-wide v10, v4, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->ratio:D

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    cmpl-double v4, v10, v2

    if-lez v4, :cond_9

    .line 333
    iget-wide v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mAverageHeight:D

    div-double/2addr v8, v14

    sub-double v10, v2, v8

    add-double/2addr v2, v8

    goto :goto_6

    .line 336
    :cond_9
    iget-wide v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mAverageHeight:D

    div-double/2addr v8, v14

    add-double v10, v2, v8

    sub-double/2addr v2, v8

    .line 340
    :goto_6
    iget-object v4, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mPointList:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    aput-wide v10, v4, v5

    .line 341
    iget-object v4, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mPointList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    aput-wide v2, v4, v5

    .line 342
    iget-object v2, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mOnePointPlaneChecker:Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;

    iget-object v3, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mPointList:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    iget-object v4, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mPointList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    invoke-virtual {v2, v3, v4}, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->calculateSlopes([D[D)[D

    move-result-object v2

    .line 344
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v3

    iget-wide v8, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mAverageEast:D

    iget-wide v10, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mAverageNorth:D

    iget-wide v14, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mAverageHeight:D

    new-array v1, v1, [D

    aput-wide v8, v1, v7

    aput-wide v10, v1, v6

    aput-wide v14, v1, v5

    invoke-virtual {v3, v1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v1

    .line 345
    iget-object v14, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mOnePointPlaneChecker:Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;

    aget-wide v15, v1, v7

    aget-wide v17, v1, v6

    aget-wide v19, v1, v5

    aget-wide v3, v2, v7

    div-double v21, v3, v12

    aget-wide v1, v2, v6

    div-double v23, v1, v12

    invoke-virtual/range {v14 .. v24}, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->calculatePlane(DDDDD)V

    goto :goto_7

    .line 348
    :cond_a
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v2

    iget-wide v3, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mAverageEast:D

    iget-wide v8, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mAverageNorth:D

    iget-wide v10, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mAverageHeight:D

    new-array v1, v1, [D

    aput-wide v3, v1, v7

    aput-wide v8, v1, v6

    aput-wide v10, v1, v5

    invoke-virtual {v2, v1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v1

    .line 349
    iget-object v8, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mOnePointPlaneChecker:Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;

    aget-wide v9, v1, v7

    aget-wide v11, v1, v6

    aget-wide v13, v1, v5

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    invoke-virtual/range {v8 .. v18}, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->calculatePlane(DDDDD)V

    .line 351
    :goto_7
    iget-object v1, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mPointList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->pointA:[D

    .line 352
    invoke-direct {v0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->initCadView()V

    :cond_b
    return-void

    .line 355
    :cond_c
    sget v1, Lcom/qianhe/yct/R$string;->data_exception:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 855
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 856
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onDestroy()V

    .line 857
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/qh/yctdevice/YctDevice;->updateCurrentProjectInfo(IJ)V

    .line 858
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

    invoke-virtual {v0}, Lcom/qianhe/baselib/utils/SensorEventHelper;->unRegisterSensorListener()V

    .line 859
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 860
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 862
    iput-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 864
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

    .line 427
    iget-boolean v4, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->isCheckBase:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v4, :cond_1

    .line 428
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

    .line 515
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
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->hasCheckBasestation:Z

    return-void

    .line 429
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->isCheckBase:Z

    .line 430
    iget-object v4, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

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

    .line 431
    new-instance p1, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;-><init>()V

    .line 432
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CorsChangesDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 433
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 434
    iget-object v1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 435
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getAuthResult()Lcom/qianhe/ntripclientlib/bean/AuthResult;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    const-string v2, "diffConfig"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 436
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 437
    new-instance v0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$9;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$9;-><init>(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;)V

    return-void

    .line 448
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

    iget-object v4, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget-object v4, v4, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    sget v6, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 449
    iget-object v4, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

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

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u57fa\u7ad9\u76f8\u5dee\u8ddd\u79bb\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

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

    .line 451
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->base_mobility_threshold:F

    float-to-double v6, v2

    cmpl-double v2, v0, v6

    if-lez v2, :cond_6

    .line 452
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    const-wide/16 v3, 0x0

    cmpl-double v6, v1, v3

    if-eqz v6, :cond_5

    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    cmpl-double v2, v0, v3

    if-eqz v2, :cond_5

    .line 454
    new-instance v0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;-><init>()V

    .line 455
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "CheckBasestationDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 456
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 457
    sget v2, Lcom/qianhe/yct/R$string;->base_station_have_changed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v2, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 459
    const-string v2, "baseStationEntity"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 460
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 461
    new-instance p1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$10;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$10;-><init>(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)V

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$OnConfirmListener;)V

    return-void

    .line 490
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

    new-instance v6, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$11;

    invoke-direct {v6, p0, p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$11;-><init>(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;Lcom/qianhe/baselib/bean/BaseStationEntity;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_6
    move-object v1, p0

    .line 508
    iput-boolean v3, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->hasCheckBasestation:Z

    return-void

    :cond_7
    move-object v1, p0

    .line 511
    iput-boolean v3, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->hasCheckBasestation:Z

    :goto_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 549
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V

    .line 550
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 551
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v0, :cond_0

    .line 552
    invoke-direct {p0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->showStartSetBase()V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/CreateProjectResponse;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 636
    iget v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->state:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_1

    .line 637
    iget-object v1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    iget-wide v4, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 638
    iget-object v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    .line 639
    iget-wide v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    const/4 v0, 0x1

    .line 640
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->persistCurrentProject(Z)V

    goto :goto_0

    .line 642
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 643
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 646
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_2

    .line 647
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

    .line 538
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->showStartSetBase()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 541
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->hasCheckBasestation:Z

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/ModifyProjectResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 559
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->silentModifyProject:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 560
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->silentModifyProject:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 563
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->hasCheckBasestation:Z

    .line 564
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
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_b

    .line 683
    :cond_0
    iget-wide v5, v0, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-eqz v9, :cond_1

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    cmpl-double v9, v5, v7

    if-eqz v9, :cond_1

    iput-object v0, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 686
    :cond_1
    :try_start_0
    iget-object v5, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->rollAngleView:Lcom/qianhe/yct/view/RollAngleView;

    iget-wide v9, v0, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    invoke-virtual {v5, v9, v10}, Lcom/qianhe/yct/view/RollAngleView;->setCurrnetAngle(D)V

    .line 687
    sget-object v5, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;->FULL:Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    invoke-virtual {v1, v0, v5}, Lcom/qianhe/yct/base/BaseActivity;->resolveWorkPageAvailable(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;)Z

    .line 688
    iget-boolean v5, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->isH5Pro:Z

    if-nez v5, :cond_3

    .line 689
    iget v5, v0, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v6, Lcom/qianhe/yct/enums/InsStatusEnum;->VERTICAL:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v6}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    .line 691
    iget-object v5, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 692
    iget-object v5, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_a

    .line 694
    :cond_2
    iget-object v5, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 695
    iget-object v5, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/view/View;->setClickable(Z)V

    .line 697
    :goto_0
    iget-object v5, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v9, "%.2f\u00b0"

    iget-wide v10, v1, Lcom/qianhe/yct/base/BaseActivity;->pitchAngle:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v10, v11, v4

    invoke-static {v6, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    :cond_3
    iget-boolean v5, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    iget-boolean v6, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->hasCheckBasestation:Z

    invoke-virtual {v1, v0, v5, v6}, Lcom/qianhe/yct/base/BaseActivity;->handleWorkInsCalibrateTips(Lcom/qianhe/baselib/bean/InsNavi;ZZ)V

    .line 700
    iget-object v5, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mSiteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    if-eqz v5, :cond_15

    const/4 v6, 0x3

    .line 701
    new-array v9, v6, [D

    .line 702
    new-array v6, v6, [D

    .line 703
    iget v5, v5, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-nez v5, :cond_4

    .line 704
    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    aput-wide v10, v9, v4

    .line 705
    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    aput-wide v10, v9, v3

    .line 706
    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    aput-wide v10, v9, v2

    .line 707
    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    aput-wide v12, v6, v4

    .line 708
    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    aput-wide v12, v6, v3

    .line 709
    aput-wide v10, v6, v2

    goto :goto_1

    :cond_4
    if-ne v5, v2, :cond_5

    .line 711
    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    aput-wide v10, v9, v4

    .line 712
    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    aput-wide v10, v9, v3

    .line 713
    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    aput-wide v10, v9, v2

    .line 714
    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    aput-wide v12, v6, v4

    .line 715
    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    aput-wide v12, v6, v3

    .line 716
    aput-wide v10, v6, v2

    goto :goto_1

    .line 718
    :cond_5
    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->longitudeM:D

    aput-wide v10, v9, v4

    .line 719
    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->latitudeM:D

    aput-wide v10, v9, v3

    .line 720
    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    aput-wide v10, v9, v2

    .line 721
    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    aput-wide v12, v6, v4

    .line 722
    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    aput-wide v12, v6, v3

    .line 723
    aput-wide v10, v6, v2

    .line 725
    :goto_1
    iget-object v5, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mOnePointPlaneChecker:Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;

    invoke-virtual {v5, v9}, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->calculateSignedDistance([D)D

    move-result-wide v9

    .line 726
    invoke-virtual {v1, v9, v10}, Lcom/qianhe/yct/base/BaseActivity;->formatElevationDiffText(D)Ljava/lang/String;

    move-result-object v5

    .line 727
    iget-object v11, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v11, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvUnitV:Landroid/widget/TextView;

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    cmp-long v16, v12, v14

    if-gez v16, :cond_6

    sget v12, Lcom/qianhe/yct/R$string;->unit_cm:I

    goto :goto_2

    :cond_6
    sget v12, Lcom/qianhe/yct/R$string;->unit_m:I

    :goto_2
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 729
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

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

    .line 731
    iget-boolean v12, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v12, :cond_8

    iget-object v12, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 732
    :cond_8
    iget-boolean v12, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v12, :cond_9

    iget-object v12, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 733
    :cond_9
    iget-object v12, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvStatus:Landroid/widget/TextView;

    sget v14, Lcom/qianhe/yct/R$string;->hold:I

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    iget-object v12, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->ivStatus:Landroid/widget/ImageView;

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    const-wide/16 v16, 0x1

    cmp-long v18, v14, v16

    if-gez v18, :cond_a

    sget v14, Lcom/qianhe/yct/R$drawable;->icon_status_v:I

    goto :goto_4

    :cond_a
    cmpl-double v14, v9, v7

    if-lez v14, :cond_b

    sget v14, Lcom/qianhe/yct/R$drawable;->icon_status_hold_dig:I

    goto :goto_4

    :cond_b
    sget v14, Lcom/qianhe/yct/R$drawable;->icon_status_hold_fill:I

    :goto_4
    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 736
    :cond_c
    iget-object v12, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 737
    iget-object v12, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setSelected(Z)V

    cmpl-double v12, v9, v7

    if-lez v12, :cond_d

    .line 739
    iget-object v12, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvStatus:Landroid/widget/TextView;

    sget v14, Lcom/qianhe/yct/R$string;->dig:I

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    iget-object v12, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->ivStatus:Landroid/widget/ImageView;

    sget v14, Lcom/qianhe/yct/R$drawable;->icon_status_dig:I

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 742
    :cond_d
    iget-object v12, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvStatus:Landroid/widget/TextView;

    sget v14, Lcom/qianhe/yct/R$string;->fill:I

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    iget-object v12, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->ivStatus:Landroid/widget/ImageView;

    sget v14, Lcom/qianhe/yct/R$drawable;->icon_status_fill:I

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 746
    :goto_5
    iget-boolean v12, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-nez v12, :cond_e

    .line 747
    invoke-direct {v1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->showDataUnAvailable()V

    goto :goto_6

    .line 749
    :cond_e
    iget-object v12, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/view/View;->setVisibility(I)V

    .line 750
    iget-object v12, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvDiff:Landroid/widget/TextView;

    const/16 v14, 0x5a

    invoke-virtual {v1, v5, v14}, Lcom/qianhe/yct/base/BaseActivity;->getElevationDiffTextSize(Ljava/lang/String;I)F

    move-result v5

    invoke-virtual {v12, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 751
    iget-object v5, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 752
    invoke-static {v1, v13}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v12

    iput v12, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 753
    iget-object v12, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v12, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 755
    :goto_6
    iget-object v5, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->ivArm:Lcom/qianhe/yct/view/ArmView;

    iget-boolean v12, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->isH5Pro:Z

    if-eqz v12, :cond_f

    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    goto :goto_7

    :cond_f
    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iget v14, v1, Lcom/qianhe/yct/base/BaseActivity;->zeroDegrees:F

    float-to-double v14, v14

    sub-double/2addr v12, v14

    :goto_7
    invoke-virtual {v5, v9, v10, v12, v13}, Lcom/qianhe/yct/view/ArmView;->updateAnimationValue(DD)V

    .line 757
    iget-object v5, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvStartDistance:Landroid/widget/TextView;

    const-string v12, "%s\uff1a%s"

    sget v13, Lcom/qianhe/yct/R$string;->distance_from_project_starting:I

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->pointA:[D

    invoke-static {v6, v14}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v14

    invoke-virtual {v1, v14, v15}, Lcom/qianhe/yct/base/BaseActivity;->formatDistance(D)Ljava/lang/String;

    move-result-object v14

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v13, v2, v4

    aput-object v14, v2, v3

    invoke-static {v12, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 760
    iget-boolean v2, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v2, :cond_13

    iget-object v2, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_8

    .line 762
    :cond_10
    iget-object v2, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v2, :cond_14

    .line 763
    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->resume()V

    .line 764
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 765
    iget-object v4, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v4, v5}, Lcom/qianhe/yct/utils/BeepPlayer;->setUrgency(F)V

    if-eqz v11, :cond_11

    .line 768
    iget-object v2, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v3, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DI_LONG:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 769
    iget-object v2, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_9

    .line 772
    :cond_11
    iget-object v4, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    double-to-float v2, v2

    invoke-virtual {v4, v2}, Lcom/qianhe/yct/utils/BeepPlayer;->setUrgencyByDistanceCm(F)V

    cmpl-double v2, v9, v7

    if-lez v2, :cond_12

    .line 774
    iget-object v2, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v3, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->BUZZ:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 775
    iget-object v2, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_9

    .line 777
    :cond_12
    iget-object v2, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v3, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->WOOD_FISH:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 778
    iget-object v2, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_9

    .line 761
    :cond_13
    :goto_8
    iget-object v2, v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->pause()V

    .line 782
    :cond_14
    :goto_9
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    invoke-direct {v1, v6, v2, v3}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->refreshCadView([DD)V

    .line 784
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->refreshTianDiMap(Lcom/qianhe/baselib/bean/InsNavi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 786
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onINsNavi\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :goto_b
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 869
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onLowMemory()V

    .line 870
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onLowMemory()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 820
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onPause()V

    .line 821
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onPause()V

    .line 822
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_0

    .line 823
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 824
    iput-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 810
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 811
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onResume()V

    .line 812
    invoke-direct {p0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->initPlayer()V

    .line 813
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

    .line 814
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvMachineNumber:Landroid/widget/TextView;

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

    .line 414
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 415
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->ivMapState:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivMapState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 416
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivSound"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 417
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "webview"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 418
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "cadView"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 419
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltBtn"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 420
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltH5"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 421
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltH5Pro"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 422
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "tvStatus"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 830
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onStart()V

    .line 831
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 836
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 837
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onStop()V

    return-void
.end method
