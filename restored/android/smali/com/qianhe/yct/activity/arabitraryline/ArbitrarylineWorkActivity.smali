.class public Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "ArbitrarylineWorkActivity.java"


# instance fields
.field private arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

.field private binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

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

.field private yMap:Lcom/qianhe/yct/view/map/YMap;


# direct methods
.method static bridge synthetic -$$Nest$fgetarbitraryLineEntity(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurPositionWgs84(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)[D
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->curPositionWgs84:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisH5Pro(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->isH5Pro:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBeepPlayer(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/yct/utils/BeepPlayer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/yct/db/DatabaseManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmapController(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/yct/view/map/MapController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetyMap(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Lcom/qianhe/yct/view/map/YMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->hasCheckBasestation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisCheckBase(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->isCheckBase:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBeepPlayer(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;Lcom/qianhe/yct/utils/BeepPlayer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhasCadPath(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->hasCadPath()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minitPlayer(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->initPlayer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshToothType(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->refreshToothType(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowFixedCoordinateStartupDialog(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->showFixedCoordinateStartupDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 105
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 105
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 105
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hasCadPath()Z
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

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
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 310
    invoke-direct {p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->hasCadPath()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-object v3, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget-object v3, v3, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/qh/xcad/XCadView;->setCadFilePath(Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v2, v1}, Lcom/qh/xcad/XCadView;->setFollowVehicle(Z)V

    .line 315
    iget-object v2, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v2, v1}, Lcom/qh/xcad/XCadView;->setCadTouchEnable(Z)V

    .line 316
    iget-object v2, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v2, v1}, Lcom/qh/xcad/XCadView;->setSelectSingleLine(Z)V

    .line 317
    iget-object v2, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v2, v1}, Lcom/qh/xcad/XCadView;->setDrawSelectedLineNumText(Z)V

    .line 318
    iget-object v2, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-object v3, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget-wide v4, v3, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->east:D

    iget-wide v6, v3, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->north:D

    const/4 v3, 0x2

    new-array v3, v3, [D

    aput-wide v4, v3, v1

    aput-wide v6, v3, v0

    invoke-virtual {v2, v3, v0}, Lcom/qh/xcad/XCadView;->setXCadItemAreaPoint([DZ)V

    return-void
.end method

.method private initPlayer()V
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-nez v0, :cond_0

    .line 589
    new-instance v0, Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-direct {v0}, Lcom/qianhe/yct/utils/BeepPlayer;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_0
    return-void
.end method

.method private persistCurrentProject(Z)V
    .locals 5

    .line 560
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 561
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 562
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    if-eqz p1, :cond_1

    .line 563
    iget-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 564
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->silentModifyProject:Z

    .line 565
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshCadView([DD)V
    .locals 8

    .line 322
    invoke-direct {p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->hasCadPath()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

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

    .line 746
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

    .line 747
    iput-object v1, v0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->curPositionWgs84:[D

    .line 748
    iget-object v2, v0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/map/YMap;->isInit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 749
    iget-object v2, v0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    iget-object v5, v0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->mapContainer:Lcom/qianhe/yct/view/map/MapContainerView;

    new-instance v10, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v11, v1, v3

    aget-wide v13, v1, v9

    aget-wide v15, v1, v4

    invoke-direct/range {v10 .. v16}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v2, v5, v10}, Lcom/qianhe/yct/view/map/YMap;->init(Landroid/view/ViewGroup;Lcom/qianhe/yct/view/map/GeoPoint;)Z

    return-void

    .line 751
    :cond_0
    iget-object v2, v0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

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

    .line 543
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->isH5Pro:Z

    if-eqz v2, :cond_3

    if-nez p1, :cond_0

    .line 546
    sget v2, Lcom/qianhe/yct/R$string;->left_tooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 548
    sget v2, Lcom/qianhe/yct/R$string;->rigth_tooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 550
    :cond_1
    sget v2, Lcom/qianhe/yct/R$string;->center_tooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 552
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvDistanceDes:Landroidx/appcompat/widget/AppCompatTextView;

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

    .line 553
    iget-object v1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iput p1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-eqz p2, :cond_3

    .line 554
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->persistCurrentProject(Z)V

    :cond_3
    return-void
.end method

.method private restoreData(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 330
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->ivMapState:Landroid/widget/ImageView;

    const-string v1, "ivMapState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 331
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->ivSound:Landroid/widget/ImageView;

    const-string v1, "ivSound"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 332
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    const-string/jumbo v1, "webview"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    const-string v1, "cadView"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    const-string v1, "lltBtn"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    const-string v1, "lltH5"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    const-string v1, "lltH5Pro"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvStatus:Landroid/widget/TextView;

    const-string/jumbo v1, "tvStatus"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 339
    iget-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz p1, :cond_0

    .line 340
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 p1, 0x0

    .line 341
    iput-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 343
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->initPlayer()V

    :cond_1
    return-void
.end method

.method private showDataUnAvailable()V
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvDiff:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->data_unavailable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 537
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvDiff:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 538
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvDiff:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 539
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvStatus:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showFixedCoordinateStartupDialog()V
    .locals 4

    .line 457
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->isCheckBase:Z

    if-eqz v0, :cond_0

    .line 458
    new-instance v0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;-><init>()V

    .line 459
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "FixedCoordinateStartupDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 460
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 461
    const-string v2, "baseProEntity"

    iget-object v3, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 462
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 463
    new-instance v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$11;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$11;-><init>(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->setOnCloseListener(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;)V

    :cond_0
    return-void
.end method

.method private showStartSetBase()V
    .locals 7

    .line 504
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->isCheckBase:Z

    if-eqz v0, :cond_0

    .line 505
    sget v0, Lcom/qianhe/yct/R$string;->connected_base_whether_start_config:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$12;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$12;-><init>(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)V

    const-string v5, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bluetoothStatus(I)V
    .locals 1

    .line 523
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->bluetoothStatus(I)V

    .line 524
    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 526
    iget-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz p1, :cond_0

    .line 527
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 p1, 0x0

    .line 528
    iput-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 531
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->showDataUnAvailable()V

    :cond_1
    return-void
.end method

.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 611
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 600
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->arbitrary_line:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 601
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 800
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 801
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_1

    .line 802
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 803
    iput-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

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

    .line 128
    const-string v0, ","

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    .line 129
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->finishPreviousActivity()V

    .line 131
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 133
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v3, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v4, "LOG,REFSTATION,ONTIME,1"

    invoke-direct {v2, v3, v4}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 134
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 135
    new-instance v1, Lcom/qianhe/baselib/utils/SensorEventHelper;

    invoke-direct {v1, p0}, Lcom/qianhe/baselib/utils/SensorEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

    .line 136
    invoke-virtual {v1}, Lcom/qianhe/baselib/utils/SensorEventHelper;->registerSensorListener()V

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v1

    iput-boolean v1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->isH5Pro:Z

    .line 138
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "current_coords"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    new-instance v2, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v2}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object v2, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 140
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    .line 142
    :try_start_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/InsNavi;->longitudeM:D

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 143
    iget-object v2, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/InsNavi;->latitudeM:D

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 144
    iget-object v2, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 149
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 151
    const-string v1, "id"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-lez v2, :cond_3

    .line 153
    iget-object v2, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->ARBITRARYLINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 155
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iput-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    .line 156
    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v2, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_1

    .line 160
    :cond_1
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    iget-wide v6, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-virtual {v0, v2, v6, v7}, Lcom/qh/yctdevice/YctDevice;->updateCurrentProjectInfo(IJ)V

    .line 162
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-le v1, v3, :cond_2

    .line 163
    iput v5, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->toothTipView:Lcom/qianhe/yct/view/ToothTipDropdownView;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/view/ToothTipDropdownView;->setToothType(I)V

    .line 165
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-direct {p0, v0, v5}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->refreshToothType(IZ)V

    goto :goto_2

    .line 168
    :cond_3
    sget v0, Lcom/qianhe/yct/R$string;->data_exception:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 170
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    if-eqz v0, :cond_5

    .line 171
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvProTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->project_name:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget-object v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v5

    aput-object v2, v6, v4

    const-string v1, "%s:%s"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->east:D

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->north:D

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->elev:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->depth:D

    add-double/2addr v8, v10

    const/4 v0, 0x3

    new-array v0, v0, [D

    aput-wide v1, v0, v5

    aput-wide v6, v0, v4

    aput-wide v8, v0, v3

    iput-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->pointA:[D

    goto :goto_3

    .line 174
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

    .line 180
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->ivResetLocation:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$1;-><init>(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->ivStartPoint:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$2;-><init>(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$3;-><init>(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->ivMapState:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$4;-><init>(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 242
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->ivSound:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$5;-><init>(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 257
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 258
    invoke-direct {p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->initPlayer()V

    .line 259
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->isH5Pro:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->isH5Pro:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_5

    :cond_8
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvStartDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->display_distance_starting_point:I

    if-ne v1, v4, :cond_9

    goto :goto_6

    :cond_9
    const/16 v5, 0x8

    :goto_6
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->toothTipView:Lcom/qianhe/yct/view/ToothTipDropdownView;

    new-instance v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$6;-><init>(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ToothTipDropdownView;->setOnSelectedListener(Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;)V

    .line 269
    new-instance v0, Lcom/qianhe/yct/view/map/YMap;

    invoke-direct {v0}, Lcom/qianhe/yct/view/map/YMap;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    .line 270
    new-instance v0, Lcom/qianhe/yct/view/map/MapController;

    invoke-direct {v0}, Lcom/qianhe/yct/view/map/MapController;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    .line 271
    iget-object v1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/view/map/YMap;->setMapController(Lcom/qianhe/yct/view/map/BaseMapController;)Z

    .line 272
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/view/map/YMap;->onCreate(Landroid/os/Bundle;)V

    .line 273
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    new-instance v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$7;-><init>(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/map/YMap;->setOnLoadMapListener(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V

    .line 301
    invoke-direct {p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->initCadView()V

    .line 302
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->restoreData(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 809
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 810
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onDestroy()V

    .line 811
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/qh/yctdevice/YctDevice;->updateCurrentProjectInfo(IJ)V

    .line 812
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

    invoke-virtual {v0}, Lcom/qianhe/baselib/utils/SensorEventHelper;->unRegisterSensorListener()V

    .line 813
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 814
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_0

    .line 815
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 816
    iput-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 818
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

    .line 363
    iget-boolean v4, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->isCheckBase:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v4, :cond_1

    .line 364
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

    .line 451
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
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->hasCheckBasestation:Z

    return-void

    .line 365
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->isCheckBase:Z

    .line 366
    iget-object v4, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

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

    .line 367
    new-instance p1, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;-><init>()V

    .line 368
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CorsChangesDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 369
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 370
    iget-object v1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 371
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getAuthResult()Lcom/qianhe/ntripclientlib/bean/AuthResult;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    const-string v2, "diffConfig"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 372
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 373
    new-instance v0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$8;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$8;-><init>(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;)V

    return-void

    .line 384
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

    iget-object v4, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget-object v4, v4, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    sget v6, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 385
    iget-object v4, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

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

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u57fa\u7ad9\u76f8\u5dee\u8ddd\u79bb\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

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

    .line 387
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->base_mobility_threshold:F

    float-to-double v6, v2

    cmpl-double v2, v0, v6

    if-lez v2, :cond_6

    .line 388
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    const-wide/16 v3, 0x0

    cmpl-double v6, v1, v3

    if-eqz v6, :cond_5

    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    cmpl-double v2, v0, v3

    if-eqz v2, :cond_5

    .line 390
    new-instance v0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;-><init>()V

    .line 391
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "CheckBasestationDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 392
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 393
    sget v2, Lcom/qianhe/yct/R$string;->base_station_have_changed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 395
    const-string v2, "baseStationEntity"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 396
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 397
    new-instance p1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$9;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$9;-><init>(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)V

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$OnConfirmListener;)V

    return-void

    .line 426
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

    new-instance v6, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$10;

    invoke-direct {v6, p0, p1}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$10;-><init>(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;Lcom/qianhe/baselib/bean/BaseStationEntity;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_6
    move-object v1, p0

    .line 444
    iput-boolean v3, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->hasCheckBasestation:Z

    return-void

    :cond_7
    move-object v1, p0

    .line 447
    iput-boolean v3, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->hasCheckBasestation:Z

    :goto_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 485
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V

    .line 486
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 487
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v0, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->showStartSetBase()V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/CreateProjectResponse;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 571
    iget v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->state:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_1

    .line 572
    iget-object v1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    iget-wide v4, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 573
    iget-object v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    .line 574
    iget-wide v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    const/4 v0, 0x1

    .line 575
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->persistCurrentProject(Z)V

    goto :goto_0

    .line 577
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 578
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 581
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_2

    .line 582
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

    .line 474
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->showStartSetBase()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 477
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->hasCheckBasestation:Z

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/ModifyProjectResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 495
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->silentModifyProject:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 496
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->silentModifyProject:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 499
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->hasCheckBasestation:Z

    .line 500
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
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_f

    .line 618
    :cond_0
    iget-wide v5, v0, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-eqz v9, :cond_1

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    cmpl-double v9, v5, v7

    if-eqz v9, :cond_1

    iput-object v0, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 621
    :cond_1
    :try_start_0
    iget-object v5, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->rollAngleView:Lcom/qianhe/yct/view/RollAngleView;

    iget-wide v9, v0, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    invoke-virtual {v5, v9, v10}, Lcom/qianhe/yct/view/RollAngleView;->setCurrnetAngle(D)V

    .line 622
    sget-object v5, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;->FULL:Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    invoke-virtual {v1, v0, v5}, Lcom/qianhe/yct/base/BaseActivity;->resolveWorkPageAvailable(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;)Z

    .line 623
    iget-boolean v5, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->isH5Pro:Z

    if-nez v5, :cond_3

    .line 624
    iget v5, v0, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v6, Lcom/qianhe/yct/enums/InsStatusEnum;->VERTICAL:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v6}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    .line 626
    iget-object v5, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 627
    iget-object v5, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_e

    .line 629
    :cond_2
    iget-object v5, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 630
    iget-object v5, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/view/View;->setClickable(Z)V

    .line 632
    :goto_0
    iget-object v5, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

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

    .line 634
    :cond_3
    iget-boolean v5, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    iget-boolean v6, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->hasCheckBasestation:Z

    invoke-virtual {v1, v0, v5, v6}, Lcom/qianhe/yct/base/BaseActivity;->handleWorkInsCalibrateTips(Lcom/qianhe/baselib/bean/InsNavi;ZZ)V

    .line 636
    iget-object v5, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    if-eqz v5, :cond_1b

    const/4 v6, 0x3

    .line 637
    new-array v6, v6, [D

    .line 638
    iget v5, v5, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-nez v5, :cond_4

    .line 639
    iget-wide v9, v0, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    aput-wide v9, v6, v4

    .line 640
    iget-wide v9, v0, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    aput-wide v9, v6, v3

    .line 641
    iget-wide v9, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    aput-wide v9, v6, v2

    goto :goto_1

    :cond_4
    if-ne v5, v2, :cond_5

    .line 643
    iget-wide v9, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    aput-wide v9, v6, v4

    .line 644
    iget-wide v9, v0, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    aput-wide v9, v6, v3

    .line 645
    iget-wide v9, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    aput-wide v9, v6, v2

    goto :goto_1

    .line 647
    :cond_5
    iget-wide v9, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    aput-wide v9, v6, v4

    .line 648
    iget-wide v9, v0, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    aput-wide v9, v6, v3

    .line 649
    iget-wide v9, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    aput-wide v9, v6, v2

    .line 651
    :goto_1
    aget-wide v9, v6, v2

    iget-object v5, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->pointA:[D

    aget-wide v11, v5, v2

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    .line 653
    iget-object v5, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    iget-wide v11, v5, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->ratio:D

    cmpl-double v5, v11, v7

    if-lez v5, :cond_6

    .line 654
    aget-wide v13, v6, v2

    iget-object v5, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->pointA:[D

    aget-wide v15, v5, v2

    cmpg-double v5, v13, v15

    if-gez v5, :cond_7

    :goto_2
    move-wide v9, v7

    goto :goto_3

    .line 658
    :cond_6
    aget-wide v13, v6, v2

    iget-object v5, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->pointA:[D

    aget-wide v15, v5, v2

    cmpl-double v5, v13, v15

    if-lez v5, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    div-double/2addr v11, v13

    .line 662
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    .line 663
    iget-object v5, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->pointA:[D

    invoke-static {v5, v6}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v11

    .line 665
    iget-object v5, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-wide v15, v7

    iget-wide v7, v5, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->ratio:D

    div-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    sub-double v17, v11, v9

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    mul-double v7, v7, v17

    .line 666
    iget-object v5, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->arbitraryLineEntity:Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-wide/from16 v17, v13

    iget-wide v13, v5, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->ratio:D

    cmpl-double v5, v13, v15

    if-lez v5, :cond_9

    .line 667
    aget-wide v13, v6, v2

    iget-object v5, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->pointA:[D

    aget-wide v19, v5, v2

    cmpg-double v5, v13, v19

    if-gez v5, :cond_8

    neg-double v7, v7

    sub-double v13, v13, v19

    .line 668
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    sub-double/2addr v7, v9

    goto :goto_5

    :cond_8
    cmpl-double v5, v11, v9

    if-lez v5, :cond_b

    :goto_4
    neg-double v7, v7

    goto :goto_5

    .line 673
    :cond_9
    aget-wide v13, v6, v2

    iget-object v5, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->pointA:[D

    aget-wide v19, v5, v2

    cmpl-double v5, v13, v19

    if-lez v5, :cond_a

    .line 674
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    aget-wide v9, v6, v2

    iget-object v5, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->pointA:[D

    aget-wide v11, v5, v2

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    add-double/2addr v7, v9

    goto :goto_5

    :cond_a
    cmpl-double v5, v9, v11

    if-lez v5, :cond_b

    goto :goto_4

    :cond_b
    :goto_5
    mul-double v7, v7, v17

    .line 680
    invoke-virtual {v1, v7, v8}, Lcom/qianhe/yct/base/BaseActivity;->formatElevationDiffText(D)Ljava/lang/String;

    move-result-object v5

    .line 681
    iget-object v9, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v9, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvUnitV:Landroid/widget/TextView;

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    cmp-long v14, v10, v12

    if-gez v14, :cond_c

    sget v10, Lcom/qianhe/yct/R$string;->unit_cm:I

    goto :goto_6

    :cond_c
    sget v10, Lcom/qianhe/yct/R$string;->unit_m:I

    :goto_6
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 683
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-float v9, v9

    iget-object v10, v1, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v10, v10, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v10, v10, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float v10, v10, v11

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_d

    const/4 v9, 0x1

    goto :goto_7

    :cond_d
    const/4 v9, 0x0

    :goto_7
    if-eqz v9, :cond_12

    .line 685
    iget-boolean v10, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v10, :cond_e

    iget-object v10, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 686
    :cond_e
    iget-boolean v10, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v10, :cond_f

    iget-object v10, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 687
    :cond_f
    iget-object v10, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvStatus:Landroid/widget/TextView;

    sget v12, Lcom/qianhe/yct/R$string;->hold:I

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v10, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->ivStatus:Landroid/widget/ImageView;

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    const-wide/16 v17, 0x1

    cmp-long v14, v12, v17

    if-gez v14, :cond_10

    sget v12, Lcom/qianhe/yct/R$drawable;->icon_status_v:I

    goto :goto_8

    :cond_10
    cmpl-double v12, v7, v15

    if-lez v12, :cond_11

    sget v12, Lcom/qianhe/yct/R$drawable;->icon_status_hold_dig:I

    goto :goto_8

    :cond_11
    sget v12, Lcom/qianhe/yct/R$drawable;->icon_status_hold_fill:I

    :goto_8
    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 690
    :cond_12
    iget-object v10, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 691
    iget-object v10, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setSelected(Z)V

    cmpl-double v10, v7, v15

    if-lez v10, :cond_13

    .line 693
    iget-object v10, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvStatus:Landroid/widget/TextView;

    sget v12, Lcom/qianhe/yct/R$string;->dig:I

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v10, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->ivStatus:Landroid/widget/ImageView;

    sget v12, Lcom/qianhe/yct/R$drawable;->icon_status_dig:I

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 696
    :cond_13
    iget-object v10, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvStatus:Landroid/widget/TextView;

    sget v12, Lcom/qianhe/yct/R$string;->fill:I

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    iget-object v10, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->ivStatus:Landroid/widget/ImageView;

    sget v12, Lcom/qianhe/yct/R$drawable;->icon_status_fill:I

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 700
    :goto_9
    iget-boolean v10, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-nez v10, :cond_14

    .line 701
    invoke-direct {v1}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->showDataUnAvailable()V

    goto :goto_a

    .line 703
    :cond_14
    iget-object v10, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    .line 704
    iget-object v10, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvDiff:Landroid/widget/TextView;

    const/16 v12, 0x5a

    invoke-virtual {v1, v5, v12}, Lcom/qianhe/yct/base/BaseActivity;->getElevationDiffTextSize(Ljava/lang/String;I)F

    move-result v5

    invoke-virtual {v10, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 705
    iget-object v5, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 706
    invoke-static {v1, v11}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v10

    iput v10, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 707
    iget-object v10, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 709
    :goto_a
    iget-object v5, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->ivArm:Lcom/qianhe/yct/view/ArmView;

    iget-boolean v10, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->isH5Pro:Z

    if-eqz v10, :cond_15

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    goto :goto_b

    :cond_15
    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iget v12, v1, Lcom/qianhe/yct/base/BaseActivity;->zeroDegrees:F

    float-to-double v12, v12

    sub-double/2addr v10, v12

    :goto_b
    invoke-virtual {v5, v7, v8, v10, v11}, Lcom/qianhe/yct/view/ArmView;->updateAnimationValue(DD)V

    .line 711
    iget-object v5, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvStartDistance:Landroid/widget/TextView;

    const-string v10, "%s\uff1a%s"

    sget v11, Lcom/qianhe/yct/R$string;->distance_from_project_starting:I

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->pointA:[D

    invoke-static {v6, v12}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Lcom/qianhe/yct/base/BaseActivity;->formatDistance(D)Ljava/lang/String;

    move-result-object v12

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v11, v2, v4

    aput-object v12, v2, v3

    invoke-static {v10, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    iget-boolean v2, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v2, :cond_19

    iget-object v2, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_c

    .line 716
    :cond_16
    iget-object v2, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v2, :cond_1a

    .line 717
    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->resume()V

    .line 718
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 719
    iget-object v4, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v4, v5}, Lcom/qianhe/yct/utils/BeepPlayer;->setUrgency(F)V

    if-eqz v9, :cond_17

    .line 722
    iget-object v2, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v3, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DI_LONG:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 723
    iget-object v2, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_d

    .line 726
    :cond_17
    iget-object v4, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    double-to-float v2, v2

    invoke-virtual {v4, v2}, Lcom/qianhe/yct/utils/BeepPlayer;->setUrgencyByDistanceCm(F)V

    cmpl-double v2, v7, v15

    if-lez v2, :cond_18

    .line 728
    iget-object v2, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v3, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->BUZZ:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 729
    iget-object v2, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_d

    .line 731
    :cond_18
    iget-object v2, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v3, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->WOOD_FISH:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 732
    iget-object v2, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_d

    .line 715
    :cond_19
    :goto_c
    iget-object v2, v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/BeepPlayer;->pause()V

    .line 736
    :cond_1a
    :goto_d
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    invoke-direct {v1, v6, v2, v3}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->refreshCadView([DD)V

    .line 738
    :cond_1b
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->refreshTianDiMap(Lcom/qianhe/baselib/bean/InsNavi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 740
    :goto_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onINsNavi\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 824
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onLowMemory()V

    .line 825
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onLowMemory()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 774
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onPause()V

    .line 775
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onPause()V

    .line 776
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_0

    .line 777
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 778
    iput-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 764
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 765
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onResume()V

    .line 766
    invoke-direct {p0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->initPlayer()V

    .line 767
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

    .line 768
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvMachineNumber:Landroid/widget/TextView;

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

    .line 350
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 351
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->ivMapState:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivMapState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 352
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivSound"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 353
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "webview"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 354
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "cadView"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 355
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltBtn"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 356
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltH5"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 357
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltH5Pro"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 358
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityArbitrarylineWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "tvStatus"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 784
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onStart()V

    .line 785
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 790
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 791
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onStop()V

    return-void
.end method
