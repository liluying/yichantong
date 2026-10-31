.class public Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "ShuaPoWorkActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

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

.field private pointB:[D

.field private pointCOnSlope:Z

.field private sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

.field private shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

.field private silentModifyProject:Z

.field private slopeThirdPointGeodetic:[D

.field private yMap:Lcom/qianhe/yct/view/map/YMap;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurPositionWgs84(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)[D
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->curPositionWgs84:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisH5Pro(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->isH5Pro:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBeepPlayer(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)Lcom/qianhe/yct/utils/BeepPlayer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)Lcom/qianhe/yct/db/DatabaseManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmapController(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)Lcom/qianhe/yct/view/map/MapController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)Lcom/qianhe/baselib/bean/ShuaPoEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetyMap(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)Lcom/qianhe/yct/view/map/YMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->hasCheckBasestation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisCheckBase(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->isCheckBase:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBeepPlayer(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;Lcom/qianhe/yct/utils/BeepPlayer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuildSlopeSurfaceMapPoints(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->buildSlopeSurfaceMapPoints()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhasCadPath(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->hasCadPath()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minitPlayer(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->initPlayer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshToothType(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->refreshToothType(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowFixedCoordinateStartupDialog(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->showFixedCoordinateStartupDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildSlopeSurfaceMapPoints()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/view/map/GeoPoint;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 369
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 370
    iget-boolean v6, v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->pointCOnSlope:Z

    if-nez v6, :cond_0

    iget-object v6, v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->slopeThirdPointGeodetic:[D

    if-nez v6, :cond_1

    :cond_0
    iget-object v6, v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->coordC:[D

    .line 371
    :cond_1
    iget-object v7, v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->coordA:[D

    iget-object v8, v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->coordB:[D

    new-array v9, v3, [[D

    aput-object v7, v9, v2

    aput-object v8, v9, v4

    aput-object v6, v9, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_2

    aget-object v7, v9, v6

    .line 372
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToWGS84([D)[D

    move-result-object v7

    .line 373
    new-instance v10, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v11, v7, v4

    aget-wide v13, v7, v2

    aget-wide v15, v7, v1

    invoke-direct/range {v10 .. v16}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v4

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method private hasCadPath()Z
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

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

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 402
    invoke-direct {v0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->hasCadPath()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 405
    :cond_0
    iget-object v3, v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-object v4, v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-object v4, v4, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/qh/xcad/XCadView;->setCadFilePath(Ljava/lang/String;)V

    .line 406
    iget-object v3, v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v3, v2}, Lcom/qh/xcad/XCadView;->setFollowVehicle(Z)V

    .line 407
    iget-object v3, v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v3, v2}, Lcom/qh/xcad/XCadView;->setCadTouchEnable(Z)V

    .line 408
    iget-object v3, v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v3, v2}, Lcom/qh/xcad/XCadView;->setSelectSingleLine(Z)V

    .line 409
    iget-object v3, v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v3, v2}, Lcom/qh/xcad/XCadView;->setDrawSelectedLineNumText(Z)V

    .line 410
    iget-object v3, v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v4, v3, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east3:D

    .line 411
    iget-wide v6, v3, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north3:D

    .line 412
    iget-boolean v8, v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->pointCOnSlope:Z

    if-nez v8, :cond_1

    .line 413
    invoke-static {v3}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->calculateSlopeThirdPointEngineering(Lcom/qianhe/baselib/bean/ShuaPoEntity;)[D

    move-result-object v3

    .line 414
    aget-wide v4, v3, v2

    .line 415
    aget-wide v6, v3, v1

    .line 417
    :cond_1
    iget-object v3, v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-object v8, v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v9, v8, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east1:D

    iget-wide v11, v8, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north1:D

    iget-wide v13, v8, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east2:D

    const/4 v15, 0x1

    const/16 v16, 0x0

    iget-wide v1, v8, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north2:D

    const/4 v8, 0x6

    new-array v8, v8, [D

    aput-wide v9, v8, v16

    aput-wide v11, v8, v15

    const/4 v9, 0x2

    aput-wide v13, v8, v9

    const/4 v9, 0x3

    aput-wide v1, v8, v9

    const/4 v1, 0x4

    aput-wide v4, v8, v1

    const/4 v1, 0x5

    aput-wide v6, v8, v1

    invoke-virtual {v3, v8, v15, v15, v15}, Lcom/qh/xcad/XCadView;->setXCadItemAreaPoint([DZZZ)V

    return-void
.end method

.method private initPlayer()V
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-nez v0, :cond_0

    .line 689
    new-instance v0, Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-direct {v0}, Lcom/qianhe/yct/utils/BeepPlayer;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_0
    return-void
.end method

.method private initSlopeThirdPoint()V
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 380
    iget-object v4, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    if-nez v4, :cond_0

    return-void

    .line 384
    :cond_0
    iget v5, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->tickA:I

    const-wide/16 v6, 0x0

    if-ne v5, v3, :cond_1

    .line 385
    iget-wide v8, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation1:D

    goto :goto_0

    .line 386
    :cond_1
    iget v5, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->tickB:I

    if-ne v5, v3, :cond_2

    .line 387
    iget-wide v8, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation2:D

    goto :goto_0

    :cond_2
    move-wide v8, v6

    .line 390
    :goto_0
    iget-wide v10, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLon1:D

    iget-wide v12, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLat1:D

    cmpl-double v5, v8, v6

    if-nez v5, :cond_3

    .line 391
    iget-wide v6, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation1:D

    goto :goto_1

    :cond_3
    move-wide v6, v8

    :goto_1
    new-array v14, v1, [D

    aput-wide v10, v14, v0

    aput-wide v12, v14, v3

    aput-wide v6, v14, v2

    iput-object v14, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->coordA:[D

    .line 392
    iget-wide v6, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLon2:D

    iget-wide v10, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLat2:D

    if-nez v5, :cond_4

    .line 393
    iget-wide v8, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation2:D

    :cond_4
    new-array v5, v1, [D

    aput-wide v6, v5, v0

    aput-wide v10, v5, v3

    aput-wide v8, v5, v2

    iput-object v5, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->coordB:[D

    .line 394
    iget-wide v5, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLon3:D

    iget-wide v7, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLat3:D

    iget-wide v9, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation3:D

    new-array v11, v1, [D

    aput-wide v5, v11, v0

    aput-wide v7, v11, v3

    aput-wide v9, v11, v2

    iput-object v11, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->coordC:[D

    .line 395
    invoke-static {v4}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->isPointCOnSlope(Lcom/qianhe/baselib/bean/ShuaPoEntity;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->pointCOnSlope:Z

    .line 396
    iget-object v4, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->coordA:[D

    iget-object v5, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->coordB:[D

    iget-object v6, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->coordC:[D

    iget-object v7, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    invoke-static {v4, v5, v6, v7}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->resolveSlopeThirdPointGeodetic([D[D[DLcom/qianhe/baselib/bean/ShuaPoEntity;)[D

    move-result-object v4

    iput-object v4, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->slopeThirdPointGeodetic:[D

    .line 397
    iget-object v4, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v5, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east1:D

    iget-wide v7, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north1:D

    iget-object v9, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->coordA:[D

    aget-wide v10, v9, v2

    new-array v9, v1, [D

    aput-wide v5, v9, v0

    aput-wide v7, v9, v3

    aput-wide v10, v9, v2

    iput-object v9, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->pointA:[D

    .line 398
    iget-wide v5, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east2:D

    iget-wide v7, v4, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north2:D

    iget-object v4, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->coordB:[D

    aget-wide v9, v4, v2

    new-array v1, v1, [D

    aput-wide v5, v1, v0

    aput-wide v7, v1, v3

    aput-wide v9, v1, v2

    iput-object v1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->pointB:[D

    return-void
.end method

.method private persistCurrentProject(Z)V
    .locals 5

    .line 661
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 662
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 663
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    if-eqz p1, :cond_1

    .line 664
    iget-object p1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 665
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->silentModifyProject:Z

    .line 666
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshCadView([DD)V
    .locals 8

    .line 870
    invoke-direct {p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->hasCadPath()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

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

    .line 877
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

    .line 878
    iput-object v1, v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->curPositionWgs84:[D

    .line 879
    iget-object v2, v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/map/YMap;->isInit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 880
    iget-object v2, v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    iget-object v5, v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->mapContainer:Lcom/qianhe/yct/view/map/MapContainerView;

    new-instance v10, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v11, v1, v3

    aget-wide v13, v1, v9

    aget-wide v15, v1, v4

    invoke-direct/range {v10 .. v16}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v2, v5, v10}, Lcom/qianhe/yct/view/map/YMap;->init(Landroid/view/ViewGroup;Lcom/qianhe/yct/view/map/GeoPoint;)Z

    return-void

    .line 882
    :cond_0
    iget-object v2, v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

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

    .line 641
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->isH5Pro:Z

    if-eqz v2, :cond_3

    if-nez p1, :cond_0

    .line 644
    sget v2, Lcom/qianhe/yct/R$string;->left_tooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 646
    sget v2, Lcom/qianhe/yct/R$string;->rigth_tooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 648
    :cond_1
    sget v2, Lcom/qianhe/yct/R$string;->center_tooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 650
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDistanceDes:Landroidx/appcompat/widget/AppCompatTextView;

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

    .line 652
    iget-object v1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvTopDes:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lcom/qianhe/yct/R$string;->distance_to_top_of_slope:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvBottomDes:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lcom/qianhe/yct/R$string;->distance_to_bottom_of_slope:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iput p1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-eqz p2, :cond_3

    .line 655
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->persistCurrentProject(Z)V

    :cond_3
    return-void
.end method

.method private restoreData(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 422
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivMapState:Landroid/widget/ImageView;

    const-string v1, "ivMapState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 423
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivSound:Landroid/widget/ImageView;

    const-string v1, "ivSound"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 424
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    const-string/jumbo v1, "webview"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    const-string v1, "cadView"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    const-string v1, "lltBtn"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    const-string v1, "lltH5"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    const-string v1, "lltH5Pro"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvStatus:Landroid/widget/TextView;

    const-string/jumbo v1, "tvStatus"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object p1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 431
    iget-object p1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz p1, :cond_0

    .line 432
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 p1, 0x0

    .line 433
    iput-object p1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 435
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->initPlayer()V

    :cond_1
    return-void
.end method

.method private showDataUnAvailable()V
    .locals 5

    .line 628
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiff:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->data_unavailable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 629
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiff:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->data_unavailable:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiff:Landroid/widget/TextView;

    const/high16 v1, 0x41c00000    # 24.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 631
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiffTop:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->data_unavailable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 632
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiffTop:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 633
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiffTop:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 634
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiffBottom:Landroid/widget/TextView;

    sget v4, Lcom/qianhe/yct/R$string;->data_unavailable:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 635
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiffBottom:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 636
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiffBottom:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 637
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvStatus:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showFixedCoordinateStartupDialog()V
    .locals 4

    .line 549
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->isCheckBase:Z

    if-eqz v0, :cond_0

    .line 550
    new-instance v0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;-><init>()V

    .line 551
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "FixedCoordinateStartupDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 552
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 553
    const-string v2, "baseProEntity"

    iget-object v3, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 554
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 555
    new-instance v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$11;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$11;-><init>(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->setOnCloseListener(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;)V

    :cond_0
    return-void
.end method

.method private showStartSetBase()V
    .locals 7

    .line 596
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->isCheckBase:Z

    if-eqz v0, :cond_0

    .line 597
    sget v0, Lcom/qianhe/yct/R$string;->connected_base_whether_start_config:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$12;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$12;-><init>(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)V

    const-string v5, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bluetoothStatus(I)V
    .locals 1

    .line 615
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->bluetoothStatus(I)V

    .line 616
    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 618
    iget-object p1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz p1, :cond_0

    .line 619
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 p1, 0x0

    .line 620
    iput-object p1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 623
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->showDataUnAvailable()V

    :cond_1
    return-void
.end method

.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 712
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 700
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->slope:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 701
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 931
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 932
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_1

    .line 933
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 934
    iput-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

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

    .line 141
    const-string v0, ","

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    .line 142
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->finishPreviousActivity()V

    .line 144
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 146
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v3, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v4, "LOG,REFSTATION,ONTIME,1"

    invoke-direct {v2, v3, v4}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 147
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 148
    new-instance v1, Lcom/qianhe/baselib/utils/SensorEventHelper;

    invoke-direct {v1, p0}, Lcom/qianhe/baselib/utils/SensorEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

    .line 149
    invoke-virtual {v1}, Lcom/qianhe/baselib/utils/SensorEventHelper;->registerSensorListener()V

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v1

    iput-boolean v1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->isH5Pro:Z

    .line 151
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "current_coords"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    new-instance v2, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v2}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object v2, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 153
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    .line 155
    :try_start_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/InsNavi;->longitudeM:D

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 156
    iget-object v2, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/InsNavi;->latitudeM:D

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 157
    iget-object v2, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, v2, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    iput-wide v0, v2, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    iput-wide v0, v2, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 161
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x8

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_9

    .line 163
    const-string v2, "id"

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v2, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v0, v10, v8

    if-lez v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v2, v8}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 167
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iput-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    .line 168
    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object v2, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v8, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    invoke-virtual {v0, v2, v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_1

    .line 172
    :cond_1
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v0

    iget-object v2, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v8, v2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    iget-wide v9, v2, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-virtual {v0, v8, v9, v10}, Lcom/qh/yctdevice/YctDevice;->updateCurrentProjectInfo(IJ)V

    .line 174
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-le v2, v3, :cond_2

    iput v5, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    .line 175
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->toothTipView:Lcom/qianhe/yct/view/ToothTipDropdownView;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-virtual {v2, v0}, Lcom/qianhe/yct/view/ToothTipDropdownView;->setToothType(I)V

    .line 176
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-direct {p0, v0, v5}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->refreshToothType(IZ)V

    goto :goto_2

    .line 179
    :cond_3
    sget v0, Lcom/qianhe/yct/R$string;->data_exception:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 181
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    if-eqz v0, :cond_8

    .line 182
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvProTitle:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->project_name:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-object v8, v8, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v5

    aput-object v8, v3, v4

    const-string v2, "%s:%s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->heigth:D

    cmpl-double v8, v2, v6

    if-nez v8, :cond_6

    .line 184
    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ShuaPoEnum;->DOWN:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ShuaPoEnum;->getType()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 185
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->lltBottomDistance:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 187
    :cond_5
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->lltTopDistance:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :goto_3
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->placeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->heigth:D

    .line 192
    :cond_6
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->flatDistance:D

    cmpl-double v8, v2, v6

    if-nez v8, :cond_7

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->ratio:D

    cmpl-double v8, v2, v6

    if-lez v8, :cond_7

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->heigth:D

    cmpl-double v10, v8, v6

    if-lez v10, :cond_7

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v10

    div-double/2addr v8, v2

    .line 193
    iput-wide v8, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->flatDistance:D

    .line 195
    :cond_7
    invoke-direct {p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->initSlopeThirdPoint()V

    goto :goto_4

    .line 197
    :cond_8
    sget p1, Lcom/qianhe/yct/R$string;->data_exception:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 202
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivResetLocation:Landroid/widget/ImageView;

    new-instance v2, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$1;-><init>(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivStartPoint:Landroid/widget/ImageView;

    new-instance v2, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$2;-><init>(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$3;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$3;-><init>(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivMapState:Landroid/widget/ImageView;

    new-instance v2, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$4;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$4;-><init>(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    invoke-direct {p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->initCadView()V

    .line 263
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 264
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivSound:Landroid/widget/ImageView;

    new-instance v2, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$5;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$5;-><init>(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 279
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 280
    invoke-direct {p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->initPlayer()V

    .line 283
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevationBenchmark:D

    cmpl-double v8, v2, v6

    if-eqz v8, :cond_a

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation1:D

    cmpl-double v10, v2, v8

    if-nez v10, :cond_a

    .line 284
    iput v4, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->tickA:I

    :cond_a
    cmpl-double v8, v2, v6

    if-eqz v8, :cond_b

    .line 287
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation2:D

    cmpl-double v8, v2, v6

    if-nez v8, :cond_b

    .line 288
    iput v4, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->tickB:I

    .line 291
    :cond_b
    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ShuaPoEnum;->DOWN:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ShuaPoEnum;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v0, v2, :cond_c

    .line 292
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivSlopeType:Landroid/widget/ImageView;

    sget v2, Lcom/qianhe/yct/R$drawable;->bg_sp_down_work:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 293
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivArm:Lcom/qianhe/yct/view/ArmView;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_sp_arm:I

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/view/ArmView;->setImageResource(I)V

    .line 294
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->isPad()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 295
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 296
    iget-object v2, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 297
    sget v2, Lcom/qianhe/yct/R$id;->ivArm:I

    const/4 v6, 0x6

    sget v7, Lcom/qianhe/yct/R$id;->lineH:I

    invoke-virtual {v0, v2, v6, v7, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 298
    iget-object v2, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_5

    .line 300
    :cond_c
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ShuaPoEnum;->UP:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ShuaPoEnum;->getType()I

    move-result v2

    if-ne v0, v2, :cond_d

    .line 301
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivSlopeType:Landroid/widget/ImageView;

    sget v2, Lcom/qianhe/yct/R$drawable;->bg_sp_up_work:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 302
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivArm:Lcom/qianhe/yct/view/ArmView;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_sp_arm_r:I

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/view/ArmView;->setImageResource(I)V

    .line 303
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->isPad()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 304
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 305
    iget-object v2, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 306
    sget v2, Lcom/qianhe/yct/R$id;->ivArm:I

    sget v6, Lcom/qianhe/yct/R$id;->lineH:I

    invoke-virtual {v0, v2, v3, v6, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 307
    iget-object v2, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 310
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->isH5Pro:Z

    if-eqz v2, :cond_e

    const/16 v2, 0x8

    goto :goto_6

    :cond_e
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->isH5Pro:Z

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    goto :goto_7

    :cond_f
    const/16 v2, 0x8

    :goto_7
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvStartDistance:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->display_distance_starting_point:I

    if-ne v2, v4, :cond_10

    goto :goto_8

    :cond_10
    const/16 v5, 0x8

    :goto_8
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->toothTipView:Lcom/qianhe/yct/view/ToothTipDropdownView;

    new-instance v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$6;-><init>(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ToothTipDropdownView;->setOnSelectedListener(Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;)V

    .line 333
    new-instance v0, Lcom/qianhe/yct/view/map/YMap;

    invoke-direct {v0}, Lcom/qianhe/yct/view/map/YMap;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    .line 334
    new-instance v0, Lcom/qianhe/yct/view/map/MapController;

    invoke-direct {v0}, Lcom/qianhe/yct/view/map/MapController;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    .line 335
    iget-object v1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/view/map/YMap;->setMapController(Lcom/qianhe/yct/view/map/BaseMapController;)Z

    .line 336
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/view/map/YMap;->onCreate(Landroid/os/Bundle;)V

    .line 337
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    new-instance v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$7;-><init>(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/map/YMap;->setOnLoadMapListener(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V

    .line 360
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->restoreData(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 940
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 941
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onDestroy()V

    .line 942
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/qh/yctdevice/YctDevice;->updateCurrentProjectInfo(IJ)V

    .line 943
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 944
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

    invoke-virtual {v0}, Lcom/qianhe/baselib/utils/SensorEventHelper;->unRegisterSensorListener()V

    .line 945
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_0

    .line 946
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 947
    iput-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 949
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

    .line 455
    iget-boolean v4, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->isCheckBase:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v4, :cond_1

    .line 456
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

    .line 543
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
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->hasCheckBasestation:Z

    return-void

    .line 457
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->isCheckBase:Z

    .line 458
    iget-object v4, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

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

    .line 459
    new-instance p1, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;-><init>()V

    .line 460
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CorsChangesDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 461
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 462
    iget-object v1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 463
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getAuthResult()Lcom/qianhe/ntripclientlib/bean/AuthResult;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    const-string v2, "diffConfig"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 464
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 465
    new-instance v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$8;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$8;-><init>(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;)V

    return-void

    .line 476
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

    iget-object v4, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-object v4, v4, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    sget v6, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 477
    iget-object v4, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

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

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u57fa\u7ad9\u76f8\u5dee\u8ddd\u79bb\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

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

    .line 479
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->base_mobility_threshold:F

    float-to-double v6, v2

    cmpl-double v2, v0, v6

    if-lez v2, :cond_6

    .line 480
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    const-wide/16 v3, 0x0

    cmpl-double v6, v1, v3

    if-eqz v6, :cond_5

    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    cmpl-double v2, v0, v3

    if-eqz v2, :cond_5

    .line 482
    new-instance v0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;-><init>()V

    .line 483
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "CheckBasestationDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 484
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 485
    sget v2, Lcom/qianhe/yct/R$string;->base_station_have_changed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v2, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 487
    const-string v2, "baseStationEntity"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 488
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 489
    new-instance p1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$9;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$9;-><init>(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)V

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$OnConfirmListener;)V

    return-void

    .line 518
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

    new-instance v6, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$10;

    invoke-direct {v6, p0, p1}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$10;-><init>(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;Lcom/qianhe/baselib/bean/BaseStationEntity;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_6
    move-object v1, p0

    .line 536
    iput-boolean v3, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->hasCheckBasestation:Z

    return-void

    :cond_7
    move-object v1, p0

    .line 539
    iput-boolean v3, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->hasCheckBasestation:Z

    :goto_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 577
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V

    .line 578
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 579
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v0, :cond_0

    .line 580
    invoke-direct {p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->showStartSetBase()V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/CreateProjectResponse;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 672
    iget v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->state:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_1

    .line 673
    iget-object v1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    iget-wide v4, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 674
    iget-object v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    .line 675
    iget-wide v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    const/4 v0, 0x1

    .line 676
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->persistCurrentProject(Z)V

    goto :goto_0

    .line 678
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 679
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 682
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_2

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

    .line 566
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 567
    invoke-direct {p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->showStartSetBase()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 569
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->hasCheckBasestation:Z

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/ModifyProjectResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 587
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->silentModifyProject:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 588
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->silentModifyProject:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 591
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->hasCheckBasestation:Z

    .line 592
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
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_10

    .line 719
    :cond_0
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_1

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_1

    iput-object v0, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 722
    :cond_1
    :try_start_0
    iget-object v6, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->rollAngleView:Lcom/qianhe/yct/view/RollAngleView;

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    invoke-virtual {v6, v10, v11}, Lcom/qianhe/yct/view/RollAngleView;->setCurrnetAngle(D)V

    .line 723
    sget-object v6, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;->FULL:Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    invoke-virtual {v1, v0, v6}, Lcom/qianhe/yct/base/BaseActivity;->resolveWorkPageAvailable(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;)Z

    .line 724
    iget-boolean v6, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->isH5Pro:Z

    if-nez v6, :cond_3

    .line 725
    iget v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v7, Lcom/qianhe/yct/enums/InsStatusEnum;->VERTICAL:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v7}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v7

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    .line 727
    iget-object v6, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 728
    iget-object v6, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_f

    .line 730
    :cond_2
    iget-object v6, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 731
    iget-object v6, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/view/View;->setClickable(Z)V

    .line 733
    :goto_0
    iget-object v6, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v10, "%.2f\u00b0"

    iget-wide v11, v1, Lcom/qianhe/yct/base/BaseActivity;->pitchAngle:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v11, v12, v5

    invoke-static {v7, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    :cond_3
    iget-boolean v6, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    iget-boolean v7, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->hasCheckBasestation:Z

    invoke-virtual {v1, v0, v6, v7}, Lcom/qianhe/yct/base/BaseActivity;->handleWorkInsCalibrateTips(Lcom/qianhe/baselib/bean/InsNavi;ZZ)V

    .line 736
    iget-object v6, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    if-eqz v6, :cond_22

    .line 737
    iget-boolean v7, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->pointCOnSlope:Z

    if-nez v7, :cond_4

    iget-object v10, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->slopeThirdPointGeodetic:[D

    if-nez v10, :cond_5

    .line 738
    :cond_4
    iget-object v10, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->coordC:[D

    .line 742
    :cond_5
    iget v6, v6, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-nez v6, :cond_6

    .line 743
    iget-wide v11, v0, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    iget-wide v13, v0, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    move-wide v15, v8

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    new-array v6, v2, [D

    aput-wide v11, v6, v5

    aput-wide v13, v6, v4

    aput-wide v8, v6, v3

    .line 744
    iget-wide v11, v0, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    iget-wide v13, v0, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    new-array v2, v2, [D

    aput-wide v11, v2, v5

    aput-wide v13, v2, v4

    aput-wide v8, v2, v3

    goto :goto_1

    :cond_6
    move-wide v15, v8

    if-ne v6, v3, :cond_7

    .line 746
    iget-wide v8, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    iget-wide v11, v0, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    iget-wide v13, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    new-array v6, v2, [D

    aput-wide v8, v6, v5

    aput-wide v11, v6, v4

    aput-wide v13, v6, v3

    .line 747
    iget-wide v8, v0, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    iget-wide v11, v0, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    new-array v2, v2, [D

    aput-wide v8, v2, v5

    aput-wide v11, v2, v4

    aput-wide v13, v2, v3

    goto :goto_1

    .line 749
    :cond_7
    iget-wide v8, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    iget-wide v11, v0, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    iget-wide v13, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    new-array v6, v2, [D

    aput-wide v8, v6, v5

    aput-wide v11, v6, v4

    aput-wide v13, v6, v3

    .line 750
    iget-wide v8, v0, Lcom/qianhe/baselib/bean/InsNavi;->longitudeM:D

    iget-wide v11, v0, Lcom/qianhe/baselib/bean/InsNavi;->latitudeM:D

    new-array v2, v2, [D

    aput-wide v8, v2, v5

    aput-wide v11, v2, v4

    aput-wide v13, v2, v3

    :goto_1
    if-eqz v7, :cond_8

    .line 755
    iget-object v7, v1, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v7, v7, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v7, v7, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    iget-object v8, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->coordA:[D

    iget-object v9, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->coordB:[D

    iget-object v10, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->coordC:[D

    invoke-static {v7, v2, v8, v9, v10}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->checkPositionGeodetic(F[D[D[D[D)Lcom/qianhe/baselib/bean/CheckResult;

    move-result-object v2

    goto :goto_2

    .line 757
    :cond_8
    iget-object v7, v1, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v7, v7, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v7, v7, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    iget-object v8, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->coordA:[D

    iget-object v9, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->coordB:[D

    invoke-static {v7, v2, v8, v9, v10}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->checkPositionGeodetic(F[D[D[D[D)Lcom/qianhe/baselib/bean/CheckResult;

    move-result-object v2

    .line 759
    :goto_2
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/CheckResult;->verticalDistance:D

    .line 760
    invoke-virtual {v1, v7, v8}, Lcom/qianhe/yct/base/BaseActivity;->formatElevationDiffText(D)Ljava/lang/String;

    move-result-object v9

    .line 761
    iget-object v10, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvUnit:Landroid/widget/TextView;

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    cmp-long v17, v11, v13

    if-gez v17, :cond_9

    sget v11, Lcom/qianhe/yct/R$string;->unit_cm:I

    goto :goto_3

    :cond_9
    sget v11, Lcom/qianhe/yct/R$string;->unit_m:I

    :goto_3
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 762
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-float v10, v10

    iget-object v11, v1, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v11, v11, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v11, v11, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v11, v11, v12

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_a

    const/4 v10, 0x1

    goto :goto_4

    :cond_a
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_f

    .line 764
    iget-object v11, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvStatus:Landroid/widget/TextView;

    sget v13, Lcom/qianhe/yct/R$string;->hold:I

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(I)V

    .line 765
    iget-object v11, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    iget-boolean v11, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v11, :cond_b

    iget-object v11, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 767
    :cond_b
    iget-boolean v11, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v11, :cond_c

    iget-object v11, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 768
    :cond_c
    iget-object v11, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivStatus:Landroid/widget/ImageView;

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    const-wide/16 v17, 0x1

    cmp-long v19, v13, v17

    if-gez v19, :cond_d

    sget v13, Lcom/qianhe/yct/R$drawable;->icon_status_v:I

    goto :goto_5

    :cond_d
    iget-wide v13, v2, Lcom/qianhe/baselib/bean/CheckResult;->verticalDistance:D

    cmpl-double v17, v13, v15

    if-lez v17, :cond_e

    sget v13, Lcom/qianhe/yct/R$drawable;->icon_status_hold_dig:I

    goto :goto_5

    :cond_e
    sget v13, Lcom/qianhe/yct/R$drawable;->icon_status_hold_fill:I

    :goto_5
    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :cond_f
    cmpl-double v11, v7, v15

    if-lez v11, :cond_10

    .line 771
    iget-object v11, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvStatus:Landroid/widget/TextView;

    sget v13, Lcom/qianhe/yct/R$string;->dig:I

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    iget-object v11, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    iget-object v11, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 774
    iget-object v11, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivStatus:Landroid/widget/ImageView;

    sget v13, Lcom/qianhe/yct/R$drawable;->icon_status_dig:I

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 775
    iget-object v11, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_6

    .line 777
    :cond_10
    iget-object v11, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvStatus:Landroid/widget/TextView;

    sget v13, Lcom/qianhe/yct/R$string;->fill:I

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    iget-object v11, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    iget-object v11, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 780
    iget-object v11, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivStatus:Landroid/widget/ImageView;

    sget v13, Lcom/qianhe/yct/R$drawable;->icon_status_fill:I

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 781
    iget-object v11, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 784
    :goto_6
    iget-boolean v11, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-nez v11, :cond_11

    .line 785
    invoke-direct {v1}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->showDataUnAvailable()V

    goto :goto_7

    .line 787
    :cond_11
    iget-object v11, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/view/View;->setVisibility(I)V

    .line 788
    iget-object v11, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiff:Landroid/widget/TextView;

    const/16 v13, 0x5a

    invoke-virtual {v1, v9, v13}, Lcom/qianhe/yct/base/BaseActivity;->getElevationDiffTextSize(Ljava/lang/String;I)F

    move-result v9

    invoke-virtual {v11, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 789
    iget-object v9, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 790
    invoke-static {v1, v12}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 791
    iget-object v11, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    :goto_7
    iget-object v9, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v9, v9, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v11, Lcom/qianhe/baselib/enums/ShuaPoEnum;->DOWN:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    invoke-virtual {v11}, Lcom/qianhe/baselib/enums/ShuaPoEnum;->getType()I

    move-result v11

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    if-ne v9, v11, :cond_14

    .line 796
    aget-wide v17, v6, v3

    iget-object v9, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->pointA:[D

    aget-wide v19, v9, v3

    sub-double v17, v17, v19

    .line 797
    iget-object v9, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiffTop:Landroid/widget/TextView;

    mul-double v19, v17, v12

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    move-wide/from16 v21, v12

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v11, v12

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    iget-boolean v9, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v9, :cond_12

    iget-object v9, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiffTop:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 800
    :cond_12
    aget-wide v11, v6, v3

    iget-object v9, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->pointA:[D

    aget-wide v13, v9, v3

    iget-object v9, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-object/from16 v20, v6

    iget-wide v5, v9, Lcom/qianhe/baselib/bean/ShuaPoEntity;->heigth:D

    sub-double/2addr v13, v5

    sub-double/2addr v11, v13

    .line 801
    iget-object v5, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiffBottom:Landroid/widget/TextView;

    mul-double v13, v11, v21

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v6, v13

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    iget-boolean v5, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v5, :cond_13

    iget-object v5, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiffBottom:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 803
    :cond_13
    iget-object v5, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivStatusTop:Landroid/widget/ImageView;

    sget v6, Lcom/qianhe/yct/R$drawable;->icon_sp_work_green_down:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 804
    iget-object v5, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivStatusBottom:Landroid/widget/ImageView;

    sget v6, Lcom/qianhe/yct/R$drawable;->icon_sp_work_green_up:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    :cond_14
    move-object/from16 v20, v6

    move-wide/from16 v21, v12

    .line 807
    aget-wide v5, v20, v3

    iget-object v9, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->pointA:[D

    aget-wide v11, v9, v3

    iget-object v9, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v13, v9, Lcom/qianhe/baselib/bean/ShuaPoEntity;->heigth:D

    add-double/2addr v11, v13

    sub-double v17, v5, v11

    .line 808
    iget-object v5, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiffTop:Landroid/widget/TextView;

    mul-double v12, v17, v21

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v6, v11

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    iget-boolean v5, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v5, :cond_15

    iget-object v5, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiffTop:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 811
    :cond_15
    aget-wide v5, v20, v3

    iget-object v9, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->pointA:[D

    aget-wide v11, v9, v3

    sub-double v11, v5, v11

    .line 812
    iget-object v5, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiffBottom:Landroid/widget/TextView;

    mul-double v13, v11, v21

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v6, v13

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    iget-boolean v5, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v5, :cond_16

    iget-object v5, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiffBottom:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 814
    :cond_16
    iget-object v5, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivStatusTop:Landroid/widget/ImageView;

    sget v6, Lcom/qianhe/yct/R$drawable;->icon_sp_work_green_up:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 815
    iget-object v5, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivStatusBottom:Landroid/widget/ImageView;

    sget v6, Lcom/qianhe/yct/R$drawable;->icon_sp_work_green_down:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_8
    cmpl-double v5, v17, v15

    if-lez v5, :cond_17

    .line 818
    iget-object v5, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivStatusTop:Landroid/widget/ImageView;

    sget v6, Lcom/qianhe/yct/R$drawable;->icon_sp_work_red_up:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 819
    iget-object v5, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivStatusBottom:Landroid/widget/ImageView;

    sget v6, Lcom/qianhe/yct/R$drawable;->icon_sp_work_red_up:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 820
    iget-object v5, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiffTop:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 821
    iget-object v5, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiffBottom:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_9

    :cond_17
    cmpg-double v5, v11, v15

    if-gez v5, :cond_18

    .line 823
    iget-object v5, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivStatusTop:Landroid/widget/ImageView;

    sget v6, Lcom/qianhe/yct/R$drawable;->icon_sp_work_red_down:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 824
    iget-object v5, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivStatusBottom:Landroid/widget/ImageView;

    sget v6, Lcom/qianhe/yct/R$drawable;->icon_sp_work_red_down:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 825
    iget-object v5, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiffTop:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 826
    iget-object v5, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiffBottom:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 828
    :cond_18
    :goto_9
    iget-boolean v5, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-nez v5, :cond_19

    .line 829
    invoke-direct {v1}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->showDataUnAvailable()V

    goto :goto_b

    .line 831
    :cond_19
    iget-object v5, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiffTop:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/qianhe/yct/base/BaseActivity;->isPad()Z

    move-result v6

    const/high16 v9, 0x41e00000    # 28.0f

    const/high16 v11, 0x42200000    # 40.0f

    if-eqz v6, :cond_1a

    const/high16 v6, 0x42200000    # 40.0f

    goto :goto_a

    :cond_1a
    const/high16 v6, 0x41e00000    # 28.0f

    :goto_a
    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 832
    iget-object v5, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvDiffBottom:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/qianhe/yct/base/BaseActivity;->isPad()Z

    move-result v6

    if-eqz v6, :cond_1b

    const/high16 v9, 0x42200000    # 40.0f

    :cond_1b
    invoke-virtual {v5, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 834
    :goto_b
    iget-object v5, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivArm:Lcom/qianhe/yct/view/ArmView;

    iget-wide v11, v2, Lcom/qianhe/baselib/bean/CheckResult;->verticalDistance:D

    iget-boolean v2, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->isH5Pro:Z

    if-eqz v2, :cond_1c

    iget-wide v13, v0, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    const/4 v9, 0x1

    goto :goto_c

    :cond_1c
    iget-wide v13, v0, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iget v2, v1, Lcom/qianhe/yct/base/BaseActivity;->zeroDegrees:F

    const/4 v9, 0x1

    float-to-double v3, v2

    sub-double/2addr v13, v3

    :goto_c
    invoke-virtual {v5, v11, v12, v13, v14}, Lcom/qianhe/yct/view/ArmView;->updateAnimationValue(DD)V

    .line 836
    iget-object v2, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvStartDistance:Landroid/widget/TextView;

    const-string v3, "%s\uff1a%s"

    sget v4, Lcom/qianhe/yct/R$string;->distance_from_project_starting:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->pointA:[D

    move-object/from16 v11, v20

    invoke-static {v11, v5}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Lcom/qianhe/yct/base/BaseActivity;->formatDistance(D)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v4, v6, v19

    aput-object v5, v6, v9

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    iget-boolean v2, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v2, :cond_20

    iget-object v2, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_d

    .line 840
    :cond_1d
    iget-object v2, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v2, :cond_21

    .line 841
    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->resume()V

    .line 842
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 843
    iget-object v4, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v4, v5}, Lcom/qianhe/yct/utils/BeepPlayer;->setUrgency(F)V

    if-eqz v10, :cond_1e

    .line 846
    iget-object v2, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v3, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DI_LONG:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 847
    iget-object v2, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_e

    .line 850
    :cond_1e
    iget-object v4, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    double-to-float v2, v2

    invoke-virtual {v4, v2}, Lcom/qianhe/yct/utils/BeepPlayer;->setUrgencyByDistanceCm(F)V

    cmpl-double v2, v7, v15

    if-lez v2, :cond_1f

    .line 852
    iget-object v2, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v3, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->BUZZ:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 853
    iget-object v2, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_e

    .line 855
    :cond_1f
    iget-object v2, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v3, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->WOOD_FISH:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 856
    iget-object v2, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_e

    .line 839
    :cond_20
    :goto_d
    iget-object v2, v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->pause()V

    .line 860
    :cond_21
    :goto_e
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    invoke-direct {v1, v11, v2, v3}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->refreshCadView([DD)V

    .line 862
    :cond_22
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->refreshTianDiMap(Lcom/qianhe/baselib/bean/InsNavi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 864
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 865
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

    .line 954
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onLowMemory()V

    .line 955
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onLowMemory()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 905
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onPause()V

    .line 906
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onPause()V

    .line 907
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 909
    iput-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 895
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 896
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onResume()V

    .line 897
    invoke-direct {p0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->initPlayer()V

    .line 898
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

    .line 899
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvMachineNumber:Landroid/widget/TextView;

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

    .line 442
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 443
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivMapState:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivMapState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 444
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivSound"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 445
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "webview"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 446
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "cadView"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 447
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltBtn"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 448
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltH5"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 449
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltH5Pro"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 450
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySpWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "tvStatus"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 915
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onStart()V

    .line 916
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 921
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 922
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onStop()V

    return-void
.end method
