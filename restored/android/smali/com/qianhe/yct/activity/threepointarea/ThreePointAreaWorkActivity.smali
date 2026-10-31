.class public Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "ThreePointAreaWorkActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

.field private coordA:[D

.field private coordB:[D

.field private coordC:[D

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

.field private sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

.field private silentModifyProject:Z

.field private threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

.field private yMap:Lcom/qianhe/yct/view/map/YMap;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurPositionWgs84(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)[D
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->curPositionWgs84:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisH5Pro(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->isH5Pro:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBeepPlayer(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)Lcom/qianhe/yct/utils/BeepPlayer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)Lcom/qianhe/yct/db/DatabaseManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmapController(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)Lcom/qianhe/yct/view/map/MapController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetthreePointAreaEntity(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)Lcom/qianhe/baselib/bean/ThreePointAreaEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetyMap(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)Lcom/qianhe/yct/view/map/YMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->hasCheckBasestation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisCheckBase(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->isCheckBase:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBeepPlayer(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;Lcom/qianhe/yct/utils/BeepPlayer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuildThreePointAreaMapPoints(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->buildThreePointAreaMapPoints()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhasCadPath(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->hasCadPath()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minitPlayer(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->initPlayer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshToothType(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->refreshToothType(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowFixedCoordinateStartupDialog(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->showFixedCoordinateStartupDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildThreePointAreaMapPoints()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/view/map/GeoPoint;",
            ">;"
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, p0

    .line 309
    iget-object v2, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget-wide v3, v2, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon1:D

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat1:D

    iget-wide v7, v2, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev1:D

    const/4 v9, 0x3

    new-array v10, v9, [D

    const/4 v11, 0x0

    aput-wide v3, v10, v11

    const/4 v3, 0x1

    aput-wide v5, v10, v3

    const/4 v4, 0x2

    aput-wide v7, v10, v4

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon2:D

    iget-wide v7, v2, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat2:D

    iget-wide v12, v2, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev2:D

    new-array v14, v9, [D

    aput-wide v5, v14, v11

    aput-wide v7, v14, v3

    aput-wide v12, v14, v4

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon3:D

    iget-wide v7, v2, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat3:D

    iget-wide v12, v2, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev3:D

    new-array v2, v9, [D

    aput-wide v5, v2, v11

    aput-wide v7, v2, v3

    aput-wide v12, v2, v4

    new-array v5, v9, [[D

    aput-object v10, v5, v11

    aput-object v14, v5, v3

    aput-object v2, v5, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v9, :cond_0

    .line 314
    aget-object v6, v5, v2

    .line 315
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToWGS84([D)[D

    move-result-object v6

    .line 316
    new-instance v12, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v13, v6, v3

    aget-wide v15, v6, v11

    aget-wide v17, v6, v4

    invoke-direct/range {v12 .. v18}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private hasCadPath()Z
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

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
    .locals 17

    move-object/from16 v0, p0

    const/4 v2, 0x0

    .line 326
    invoke-direct {v0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->hasCadPath()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 329
    :cond_0
    iget-object v3, v0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-object v4, v0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget-object v4, v4, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/qh/xcad/XCadView;->setCadFilePath(Ljava/lang/String;)V

    .line 330
    iget-object v3, v0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v3, v2}, Lcom/qh/xcad/XCadView;->setFollowVehicle(Z)V

    .line 331
    iget-object v3, v0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v3, v2}, Lcom/qh/xcad/XCadView;->setCadTouchEnable(Z)V

    .line 332
    iget-object v3, v0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v3, v2}, Lcom/qh/xcad/XCadView;->setSelectSingleLine(Z)V

    .line 333
    iget-object v3, v0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v3, v2}, Lcom/qh/xcad/XCadView;->setDrawSelectedLineNumText(Z)V

    .line 334
    iget-object v3, v0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-object v4, v0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget-wide v5, v4, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east1:D

    iget-wide v7, v4, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north1:D

    iget-wide v9, v4, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east2:D

    iget-wide v11, v4, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north2:D

    iget-wide v13, v4, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east3:D

    const/4 v15, 0x1

    const/16 v16, 0x0

    iget-wide v1, v4, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north3:D

    const/4 v4, 0x6

    new-array v4, v4, [D

    aput-wide v5, v4, v16

    aput-wide v7, v4, v15

    const/4 v5, 0x2

    aput-wide v9, v4, v5

    const/4 v5, 0x3

    aput-wide v11, v4, v5

    const/4 v5, 0x4

    aput-wide v13, v4, v5

    const/4 v5, 0x5

    aput-wide v1, v4, v5

    invoke-virtual {v3, v4, v15, v15, v15}, Lcom/qh/xcad/XCadView;->setXCadItemAreaPoint([DZZZ)V

    return-void
.end method

.method private initPlayer()V
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-direct {v0}, Lcom/qianhe/yct/utils/BeepPlayer;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_0
    return-void
.end method

.method private persistCurrentProject(Z)V
    .locals 5

    .line 579
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 580
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 581
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    if-eqz p1, :cond_1

    .line 582
    iget-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 583
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->silentModifyProject:Z

    .line 584
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshCadView([DD)V
    .locals 8

    .line 342
    invoke-direct {p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->hasCadPath()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

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

    .line 737
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

    .line 738
    iput-object v1, v0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->curPositionWgs84:[D

    .line 739
    iget-object v2, v0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/map/YMap;->isInit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 740
    iget-object v2, v0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    iget-object v5, v0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->mapContainer:Lcom/qianhe/yct/view/map/MapContainerView;

    new-instance v10, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v11, v1, v3

    aget-wide v13, v1, v9

    aget-wide v15, v1, v4

    invoke-direct/range {v10 .. v16}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v2, v5, v10}, Lcom/qianhe/yct/view/map/YMap;->init(Landroid/view/ViewGroup;Lcom/qianhe/yct/view/map/GeoPoint;)Z

    return-void

    .line 742
    :cond_0
    iget-object v2, v0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

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

    .line 562
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->isH5Pro:Z

    if-eqz v2, :cond_3

    if-nez p1, :cond_0

    .line 565
    sget v2, Lcom/qianhe/yct/R$string;->left_tooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 567
    sget v2, Lcom/qianhe/yct/R$string;->rigth_tooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 569
    :cond_1
    sget v2, Lcom/qianhe/yct/R$string;->center_tooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 571
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvDistanceDes:Landroidx/appcompat/widget/AppCompatTextView;

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

    sget v5, Lcom/qianhe/yct/R$string;->vertical_distance_to_slope:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v1, v6

    aput-object v5, v1, v0

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iput p1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-eqz p2, :cond_3

    .line 573
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->persistCurrentProject(Z)V

    :cond_3
    return-void
.end method

.method private restoreData(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 350
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->ivMapState:Landroid/widget/ImageView;

    const-string v1, "ivMapState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 351
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->ivSound:Landroid/widget/ImageView;

    const-string v1, "ivSound"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 352
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    const-string/jumbo v1, "webview"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    const-string v1, "cadView"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    const-string v1, "lltBtn"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    const-string v1, "lltH5"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    const-string v1, "lltH5Pro"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    const-string/jumbo v1, "tvStatus"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 359
    iget-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz p1, :cond_0

    .line 360
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 p1, 0x0

    .line 361
    iput-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->initPlayer()V

    :cond_1
    return-void
.end method

.method private showDataUnAvailable()V
    .locals 3

    .line 556
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvDiff:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->data_unavailable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 557
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvDiff:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 558
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showFixedCoordinateStartupDialog()V
    .locals 4

    .line 477
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->isCheckBase:Z

    if-eqz v0, :cond_0

    .line 478
    new-instance v0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;-><init>()V

    .line 479
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "FixedCoordinateStartupDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 480
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 481
    const-string v2, "baseProEntity"

    iget-object v3, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 482
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 483
    new-instance v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$11;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$11;-><init>(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->setOnCloseListener(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;)V

    :cond_0
    return-void
.end method

.method private showStartSetBase()V
    .locals 7

    .line 524
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->isCheckBase:Z

    if-eqz v0, :cond_0

    .line 525
    sget v0, Lcom/qianhe/yct/R$string;->connected_base_whether_start_config:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$12;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$12;-><init>(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)V

    const-string v5, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bluetoothStatus(I)V
    .locals 1

    .line 543
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->bluetoothStatus(I)V

    .line 544
    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 546
    iget-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz p1, :cond_0

    .line 547
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 p1, 0x0

    .line 548
    iput-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 551
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->showDataUnAvailable()V

    :cond_1
    return-void
.end method

.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 631
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 619
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->three_point_area:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 620
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 777
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 778
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_1

    .line 779
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 780
    iput-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 v0, 0x3

    .line 134
    const-string v1, ","

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    .line 135
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->finishPreviousActivity()V

    .line 137
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 139
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v4, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v5, "LOG,REFSTATION,ONTIME,1"

    invoke-direct {v3, v4, v5}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 140
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 141
    new-instance v2, Lcom/qianhe/baselib/utils/SensorEventHelper;

    invoke-direct {v2, p0}, Lcom/qianhe/baselib/utils/SensorEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

    .line 142
    invoke-virtual {v2}, Lcom/qianhe/baselib/utils/SensorEventHelper;->registerSensorListener()V

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v2}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v2

    iput-boolean v2, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->isH5Pro:Z

    .line 144
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v3, "current_coords"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    new-instance v3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object v3, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 146
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_0

    .line 148
    :try_start_0
    iget-object v3, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/InsNavi;->longitudeM:D

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 149
    iget-object v3, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/InsNavi;->latitudeM:D

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 150
    iget-object v3, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 154
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 156
    const-string v2, "id"

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v2, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-lez v3, :cond_3

    .line 158
    iget-object v3, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    sget-object v7, Lcom/qianhe/baselib/enums/ProjectEnum;->THREEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v7}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v7, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;)Ljava/util/List;

    move-result-object v1

    .line 159
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 160
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iput-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    .line 161
    iget-object v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v3, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    invoke-virtual {v1, v2, v3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_1

    .line 165
    :cond_1
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    iget-wide v7, v2, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-virtual {v1, v3, v7, v8}, Lcom/qh/yctdevice/YctDevice;->updateCurrentProjectInfo(IJ)V

    .line 167
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-le v2, v4, :cond_2

    .line 168
    iput v6, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    .line 169
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->toothTipView:Lcom/qianhe/yct/view/ToothTipDropdownView;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/view/ToothTipDropdownView;->setToothType(I)V

    .line 170
    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-direct {p0, v1, v6}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->refreshToothType(IZ)V

    goto :goto_2

    .line 173
    :cond_3
    sget v1, Lcom/qianhe/yct/R$string;->data_exception:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 175
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    if-eqz v1, :cond_5

    .line 176
    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvProTitle:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->project_name:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget-object v3, v3, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v2, v7, v6

    aput-object v3, v7, v5

    const-string v2, "%s:%s"

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget-wide v2, v1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon1:D

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat1:D

    iget-wide v9, v1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev1:D

    iget-wide v11, v1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthA:D

    add-double/2addr v9, v11

    new-array v11, v0, [D

    aput-wide v2, v11, v6

    aput-wide v7, v11, v5

    aput-wide v9, v11, v4

    iput-object v11, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->coordA:[D

    .line 178
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon2:D

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat2:D

    iget-wide v9, v1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev2:D

    iget-wide v12, v1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthB:D

    add-double/2addr v9, v12

    new-array v12, v0, [D

    aput-wide v2, v12, v6

    aput-wide v7, v12, v5

    aput-wide v9, v12, v4

    iput-object v12, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->coordB:[D

    .line 179
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon3:D

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat3:D

    iget-wide v9, v1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev3:D

    iget-wide v12, v1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthC:D

    add-double/2addr v9, v12

    new-array v12, v0, [D

    aput-wide v2, v12, v6

    aput-wide v7, v12, v5

    aput-wide v9, v12, v4

    iput-object v12, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->coordC:[D

    .line 180
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east1:D

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north1:D

    aget-wide v9, v11, v4

    new-array v0, v0, [D

    aput-wide v2, v0, v6

    aput-wide v7, v0, v5

    aput-wide v9, v0, v4

    iput-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->pointA:[D

    goto :goto_3

    .line 182
    :cond_5
    sget p1, Lcom/qianhe/yct/R$string;->data_exception:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 187
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->ivResetLocation:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$1;-><init>(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->ivStartPoint:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$2;-><init>(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$3;-><init>(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->ivMapState:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$4;-><init>(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 248
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->ivSound:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$5;-><init>(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 263
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 264
    invoke-direct {p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->initPlayer()V

    .line 265
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->isH5Pro:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->isH5Pro:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_5

    :cond_8
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvStartDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->display_distance_starting_point:I

    if-ne v1, v5, :cond_9

    goto :goto_6

    :cond_9
    const/16 v6, 0x8

    :goto_6
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->toothTipView:Lcom/qianhe/yct/view/ToothTipDropdownView;

    new-instance v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$6;-><init>(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ToothTipDropdownView;->setOnSelectedListener(Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;)V

    .line 276
    new-instance v0, Lcom/qianhe/yct/view/map/YMap;

    invoke-direct {v0}, Lcom/qianhe/yct/view/map/YMap;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    .line 277
    new-instance v0, Lcom/qianhe/yct/view/map/MapController;

    invoke-direct {v0}, Lcom/qianhe/yct/view/map/MapController;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    .line 278
    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/view/map/YMap;->setMapController(Lcom/qianhe/yct/view/map/BaseMapController;)Z

    .line 279
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/view/map/YMap;->onCreate(Landroid/os/Bundle;)V

    .line 280
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    new-instance v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$7;-><init>(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/map/YMap;->setOnLoadMapListener(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V

    .line 303
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->restoreData(Landroid/os/Bundle;)V

    .line 304
    invoke-direct {p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->initCadView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 799
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 800
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onDestroy()V

    .line 801
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/qh/yctdevice/YctDevice;->updateCurrentProjectInfo(IJ)V

    .line 802
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 803
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

    invoke-virtual {v0}, Lcom/qianhe/baselib/utils/SensorEventHelper;->unRegisterSensorListener()V

    .line 804
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 806
    iput-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 808
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

    .line 383
    iget-boolean v4, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->isCheckBase:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v4, :cond_1

    .line 384
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

    .line 471
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
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->hasCheckBasestation:Z

    return-void

    .line 385
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->isCheckBase:Z

    .line 386
    iget-object v4, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

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

    .line 387
    new-instance p1, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;-><init>()V

    .line 388
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CorsChangesDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 389
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 390
    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 391
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getAuthResult()Lcom/qianhe/ntripclientlib/bean/AuthResult;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    const-string v2, "diffConfig"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 392
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 393
    new-instance v0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$8;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$8;-><init>(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;)V

    return-void

    .line 404
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

    iget-object v4, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget-object v4, v4, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    sget v6, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 405
    iget-object v4, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

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

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u57fa\u7ad9\u76f8\u5dee\u8ddd\u79bb\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

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

    .line 407
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->base_mobility_threshold:F

    float-to-double v6, v2

    cmpl-double v2, v0, v6

    if-lez v2, :cond_6

    .line 408
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    const-wide/16 v3, 0x0

    cmpl-double v6, v1, v3

    if-eqz v6, :cond_5

    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    cmpl-double v2, v0, v3

    if-eqz v2, :cond_5

    .line 410
    new-instance v0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;-><init>()V

    .line 411
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "CheckBasestationDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 412
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 413
    sget v2, Lcom/qianhe/yct/R$string;->base_station_have_changed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v2, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 415
    const-string v2, "baseStationEntity"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 416
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 417
    new-instance p1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$9;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$9;-><init>(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)V

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$OnConfirmListener;)V

    return-void

    .line 446
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

    new-instance v6, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$10;

    invoke-direct {v6, p0, p1}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$10;-><init>(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;Lcom/qianhe/baselib/bean/BaseStationEntity;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_6
    move-object v1, p0

    .line 464
    iput-boolean v3, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->hasCheckBasestation:Z

    return-void

    :cond_7
    move-object v1, p0

    .line 467
    iput-boolean v3, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->hasCheckBasestation:Z

    :goto_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 505
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V

    .line 506
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 507
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v0, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->showStartSetBase()V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/CreateProjectResponse;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 590
    iget v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->state:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_1

    .line 591
    iget-object v1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    iget-wide v4, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 592
    iget-object v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    .line 593
    iget-wide v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    const/4 v0, 0x1

    .line 594
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->persistCurrentProject(Z)V

    goto :goto_0

    .line 596
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 597
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 600
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_2

    .line 601
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

    .line 494
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 495
    invoke-direct {p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->showStartSetBase()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 497
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->hasCheckBasestation:Z

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/ModifyProjectResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 515
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->silentModifyProject:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 516
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->silentModifyProject:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 519
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->hasCheckBasestation:Z

    .line 520
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
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    goto/16 :goto_b

    .line 638
    :cond_0
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_1

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_1

    iput-object v0, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 640
    :cond_1
    :try_start_0
    iget-object v6, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->rollAngleView:Lcom/qianhe/yct/view/RollAngleView;

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    invoke-virtual {v6, v10, v11}, Lcom/qianhe/yct/view/RollAngleView;->setCurrnetAngle(D)V

    .line 641
    sget-object v6, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;->FULL:Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    invoke-virtual {v1, v0, v6}, Lcom/qianhe/yct/base/BaseActivity;->resolveWorkPageAvailable(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;)Z

    .line 642
    iget-boolean v6, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->isH5Pro:Z

    if-nez v6, :cond_3

    .line 643
    iget v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v7, Lcom/qianhe/yct/enums/InsStatusEnum;->VERTICAL:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v7}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v7

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    .line 645
    iget-object v6, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 646
    iget-object v6, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_a

    .line 648
    :cond_2
    iget-object v6, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 649
    iget-object v6, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/view/View;->setClickable(Z)V

    .line 651
    :goto_0
    iget-object v6, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvArmAngle:Landroid/widget/TextView;

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

    .line 653
    :cond_3
    iget-boolean v6, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    iget-boolean v7, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->hasCheckBasestation:Z

    invoke-virtual {v1, v0, v6, v7}, Lcom/qianhe/yct/base/BaseActivity;->handleWorkInsCalibrateTips(Lcom/qianhe/baselib/bean/InsNavi;ZZ)V

    .line 654
    iget-object v6, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->threePointAreaEntity:Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    if-eqz v6, :cond_15

    .line 657
    iget v6, v6, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-nez v6, :cond_4

    .line 658
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    new-array v14, v2, [D

    aput-wide v6, v14, v4

    aput-wide v10, v14, v5

    aput-wide v12, v14, v3

    .line 659
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    new-array v2, v2, [D

    aput-wide v6, v2, v4

    aput-wide v10, v2, v5

    aput-wide v12, v2, v3

    goto :goto_1

    :cond_4
    if-ne v6, v3, :cond_5

    .line 661
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    new-array v14, v2, [D

    aput-wide v6, v14, v4

    aput-wide v10, v14, v5

    aput-wide v12, v14, v3

    .line 662
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    new-array v2, v2, [D

    aput-wide v6, v2, v4

    aput-wide v10, v2, v5

    aput-wide v12, v2, v3

    goto :goto_1

    .line 664
    :cond_5
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    new-array v14, v2, [D

    aput-wide v6, v14, v4

    aput-wide v10, v14, v5

    aput-wide v12, v14, v3

    .line 665
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->longitudeM:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->latitudeM:D

    new-array v2, v2, [D

    aput-wide v6, v2, v4

    aput-wide v10, v2, v5

    aput-wide v12, v2, v3

    .line 667
    :goto_1
    iget-object v6, v1, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v6, v6, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v6, v6, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    iget-object v7, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->coordA:[D

    iget-object v10, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->coordB:[D

    iget-object v11, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->coordC:[D

    invoke-static {v6, v2, v7, v10, v11}, Lcom/qianhe/baselib/utils/workchecker/ThreePointAreaChecker;->check(F[D[D[D[D)Lcom/qianhe/baselib/bean/CheckResult;

    move-result-object v2

    .line 668
    iget-wide v6, v2, Lcom/qianhe/baselib/bean/CheckResult;->verticalDistance:D

    .line 669
    invoke-virtual {v1, v6, v7}, Lcom/qianhe/yct/base/BaseActivity;->formatElevationDiffText(D)Ljava/lang/String;

    move-result-object v10

    .line 670
    iget-object v11, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvUnitV:Landroid/widget/TextView;

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

    .line 671
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

    .line 673
    iget-object v12, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    sget v15, Lcom/qianhe/yct/R$string;->hold:I

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(I)V

    .line 674
    iget-object v12, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    iget-boolean v12, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v12, :cond_8

    iget-object v12, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 676
    :cond_8
    iget-boolean v12, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v12, :cond_9

    iget-object v12, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 677
    :cond_9
    iget-object v12, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->ivStatus:Landroid/widget/ImageView;

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v15

    const-wide/16 v17, 0x1

    cmp-long v19, v15, v17

    if-gez v19, :cond_a

    sget v15, Lcom/qianhe/yct/R$drawable;->icon_status_v:I

    goto :goto_4

    :cond_a
    cmpl-double v15, v6, v8

    if-lez v15, :cond_b

    sget v15, Lcom/qianhe/yct/R$drawable;->icon_status_hold_dig:I

    goto :goto_4

    :cond_b
    sget v15, Lcom/qianhe/yct/R$drawable;->icon_status_hold_fill:I

    :goto_4
    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 678
    :cond_c
    iget v12, v2, Lcom/qianhe/baselib/bean/CheckResult;->position:I

    if-lez v12, :cond_d

    .line 679
    iget-object v12, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    sget v15, Lcom/qianhe/yct/R$string;->dig:I

    invoke-virtual {v1, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v12, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    iget-object v12, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 682
    iget-object v12, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->ivStatus:Landroid/widget/ImageView;

    sget v15, Lcom/qianhe/yct/R$drawable;->icon_status_dig:I

    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 683
    iget-object v12, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_5

    .line 685
    :cond_d
    iget-object v12, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    sget v15, Lcom/qianhe/yct/R$string;->fill:I

    invoke-virtual {v1, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    iget-object v12, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    iget-object v12, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 688
    iget-object v12, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->ivStatus:Landroid/widget/ImageView;

    sget v15, Lcom/qianhe/yct/R$drawable;->icon_status_fill:I

    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 689
    iget-object v12, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 691
    :goto_5
    iget-boolean v12, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-nez v12, :cond_e

    .line 692
    invoke-direct {v1}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->showDataUnAvailable()V

    goto :goto_6

    .line 694
    :cond_e
    iget-object v12, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/view/View;->setVisibility(I)V

    .line 695
    iget-object v12, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/view/View;->setVisibility(I)V

    .line 696
    iget-object v12, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvDiff:Landroid/widget/TextView;

    const/16 v15, 0x5a

    invoke-virtual {v1, v10, v15}, Lcom/qianhe/yct/base/BaseActivity;->getElevationDiffTextSize(Ljava/lang/String;I)F

    move-result v10

    invoke-virtual {v12, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 697
    iget-object v10, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 698
    invoke-static {v1, v13}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v12

    iput v12, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 699
    iget-object v12, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 701
    :goto_6
    iget-object v10, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->ivArm:Lcom/qianhe/yct/view/ArmView;

    iget-wide v12, v2, Lcom/qianhe/baselib/bean/CheckResult;->verticalDistance:D

    iget-boolean v2, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->isH5Pro:Z

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    const/4 v15, 0x1

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    move-wide/from16 v17, v8

    const/16 v16, 0x0

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    const/4 v15, 0x1

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    const/16 v16, 0x0

    iget v2, v1, Lcom/qianhe/yct/base/BaseActivity;->zeroDegrees:F

    move-wide/from16 v17, v8

    float-to-double v8, v2

    sub-double/2addr v4, v8

    :goto_7
    invoke-virtual {v10, v12, v13, v4, v5}, Lcom/qianhe/yct/view/ArmView;->updateAnimationValue(DD)V

    .line 702
    iget-object v2, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvStartDistance:Landroid/widget/TextView;

    const-string v4, "%s\uff1a%s"

    sget v5, Lcom/qianhe/yct/R$string;->distance_from_project_starting:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v8, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->pointA:[D

    invoke-static {v14, v8}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/qianhe/yct/base/BaseActivity;->formatDistance(D)Ljava/lang/String;

    move-result-object v8

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v16

    aput-object v8, v3, v15

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iget-boolean v2, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v2, :cond_13

    iget-object v2, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_8

    .line 707
    :cond_10
    iget-object v2, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v2, :cond_14

    .line 708
    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->resume()V

    .line 709
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 710
    iget-object v4, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v4, v5}, Lcom/qianhe/yct/utils/BeepPlayer;->setUrgency(F)V

    if-eqz v11, :cond_11

    .line 713
    iget-object v2, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v3, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DI_LONG:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 714
    iget-object v2, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_9

    .line 717
    :cond_11
    iget-object v4, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    double-to-float v2, v2

    invoke-virtual {v4, v2}, Lcom/qianhe/yct/utils/BeepPlayer;->setUrgencyByDistanceCm(F)V

    cmpl-double v2, v6, v17

    if-lez v2, :cond_12

    .line 719
    iget-object v2, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v3, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->BUZZ:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 720
    iget-object v2, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_9

    .line 722
    :cond_12
    iget-object v2, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v3, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->WOOD_FISH:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 723
    iget-object v2, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_9

    .line 706
    :cond_13
    :goto_8
    iget-object v2, v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->pause()V

    .line 727
    :cond_14
    :goto_9
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    invoke-direct {v1, v14, v2, v3}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->refreshCadView([DD)V

    .line 729
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->refreshTianDiMap(Lcom/qianhe/baselib/bean/InsNavi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 731
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :goto_b
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 813
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onLowMemory()V

    .line 814
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    if-eqz v0, :cond_0

    .line 815
    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onLowMemory()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 764
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onPause()V

    .line 765
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onPause()V

    .line 766
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 768
    iput-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 754
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 755
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onResume()V

    .line 756
    invoke-direct {p0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->initPlayer()V

    .line 757
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

    .line 758
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvMachineNumber:Landroid/widget/TextView;

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

    .line 370
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 371
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->ivMapState:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivMapState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 372
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivSound"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 373
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "webview"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 374
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "cadView"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 375
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltBtn"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 376
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltH5"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 377
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltH5Pro"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 378
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityThreepointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "tvStatus"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 786
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onStart()V

    .line 787
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 792
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 793
    iget-object v0, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onStop()V

    return-void
.end method
