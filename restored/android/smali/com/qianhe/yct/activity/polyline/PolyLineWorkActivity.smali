.class public Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "PolyLineWorkActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

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

.field private pointsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

.field private sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

.field private silentModifyProject:Z

.field private yMap:Lcom/qianhe/yct/view/map/YMap;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurPositionWgs84(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)[D
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->curPositionWgs84:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisH5Pro(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->isH5Pro:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBeepPlayer(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/utils/BeepPlayer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/db/DatabaseManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmapController(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/view/map/MapController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpointsList(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->pointsList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpolyLineEntity(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/baselib/bean/PolyLineEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetyMap(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/view/map/YMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->hasCheckBasestation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisCheckBase(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->isCheckBase:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBeepPlayer(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;Lcom/qianhe/yct/utils/BeepPlayer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhasCadPath(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->hasCadPath()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minitPlayer(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->initPlayer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshToothType(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->refreshToothType(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowFixedCoordinateStartupDialog(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->showFixedCoordinateStartupDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildCadItemAreaPoints()[Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;
    .locals 11

    .line 356
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->pointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 357
    new-array v1, v0, [Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 359
    iget-object v4, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->pointsList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    aget-wide v6, v4, v2

    .line 360
    iget-object v4, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->pointsList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    const/4 v5, 0x1

    aget-wide v8, v4, v5

    if-nez v3, :cond_0

    .line 362
    new-instance v5, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    sget v4, Lcom/qianhe/yct/R$string;->starting_point:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;-><init>(DDLjava/lang/String;)V

    aput-object v5, v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v0, -0x1

    if-ne v3, v4, :cond_1

    .line 364
    new-instance v5, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    sget v4, Lcom/qianhe/yct/R$string;->ending_point:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;-><init>(DDLjava/lang/String;)V

    aput-object v5, v1, v3

    goto :goto_1

    .line 366
    :cond_1
    new-instance v4, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;-><init>(DD)V

    aput-object v4, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private hasCadPath()Z
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

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
    .locals 4

    .line 342
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->hasCadPath()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setCadFilePath(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setFollowVehicle(Z)V

    .line 347
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setCadTouchEnable(Z)V

    .line 348
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setSelectSingleLine(Z)V

    .line 349
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setDrawSelectedLineNumText(Z)V

    .line 350
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->pointsList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    .line 351
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->buildCadItemAreaPoints()[Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1, v1}, Lcom/qh/xcad/XCadView;->setXCadItemAreaPoint([Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;ZZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initPlayer()V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-nez v0, :cond_0

    .line 646
    new-instance v0, Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-direct {v0}, Lcom/qianhe/yct/utils/BeepPlayer;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_0
    return-void
.end method

.method private initPolyLineView()V
    .locals 12

    .line 323
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/PolyLineEntity;->coordsListJson:Ljava/lang/String;

    new-instance v2, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$9;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$9;-><init>(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)V

    .line 324
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 323
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->pointsList:Ljava/util/List;

    const/4 v1, 0x0

    .line 326
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    aget-wide v2, v0, v1

    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->pointsList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v4, 0x1

    aget-wide v5, v0, v4

    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->pointsList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v7, 0x2

    aget-wide v8, v0, v7

    const/4 v0, 0x3

    new-array v10, v0, [D

    aput-wide v2, v10, v1

    aput-wide v5, v10, v4

    aput-wide v8, v10, v7

    iput-object v10, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->pointA:[D

    .line 327
    iget-object v2, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->pointsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    aget-wide v5, v2, v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->pointsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    aget-wide v8, v2, v4

    iget-object v2, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->pointsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    aget-wide v10, v2, v7

    new-array v0, v0, [D

    aput-wide v5, v0, v1

    aput-wide v8, v0, v4

    aput-wide v10, v0, v7

    iput-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->pointB:[D

    .line 329
    iget-object v2, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->pointA:[D

    invoke-static {v2, v0}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v2

    .line 330
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvProjectDistance:Landroid/widget/TextView;

    sget v5, Lcom/qianhe/yct/R$string;->project_length:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->formatDistance(D)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v5, v3, v1

    aput-object v2, v3, v4

    const-string v1, "%s%s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v0, v4}, Lcom/qianhe/yct/view/PolyLinePreView;->setWorkMode(Z)V

    .line 333
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->pointsList:Ljava/util/List;

    iget-object v2, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/PolyLineEntity;->width:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/view/PolyLinePreView;->setProjectPoint(Ljava/util/List;D)V

    .line 334
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->initCadView()V

    return-void
.end method

.method private persistCurrentProject(Z)V
    .locals 5

    .line 617
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 618
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 619
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    if-eqz p1, :cond_1

    .line 620
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 621
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->silentModifyProject:Z

    .line 622
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshCadView([DD)V
    .locals 8

    .line 373
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->hasCadPath()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

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

    .line 831
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

    .line 832
    iput-object v1, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->curPositionWgs84:[D

    .line 833
    iget-object v2, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/map/YMap;->isInit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 834
    iget-object v2, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    iget-object v5, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->mapContainer:Lcom/qianhe/yct/view/map/MapContainerView;

    new-instance v10, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v11, v1, v3

    aget-wide v13, v1, v9

    aget-wide v15, v1, v4

    invoke-direct/range {v10 .. v16}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v2, v5, v10}, Lcom/qianhe/yct/view/map/YMap;->init(Landroid/view/ViewGroup;Lcom/qianhe/yct/view/map/GeoPoint;)Z

    return-void

    .line 836
    :cond_0
    iget-object v2, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

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

    .line 599
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->isH5Pro:Z

    if-eqz v2, :cond_3

    if-nez p1, :cond_0

    .line 602
    sget v2, Lcom/qianhe/yct/R$string;->left_tooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 604
    sget v2, Lcom/qianhe/yct/R$string;->rigth_tooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 606
    :cond_1
    sget v2, Lcom/qianhe/yct/R$string;->center_tooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 608
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvDistanceDesV:Landroidx/appcompat/widget/AppCompatTextView;

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

    .line 609
    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v1, p1}, Lcom/qianhe/yct/view/PolyLinePreView;->refreshToothType(I)V

    .line 610
    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iput p1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-eqz p2, :cond_3

    .line 611
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->persistCurrentProject(Z)V

    :cond_3
    return-void
.end method

.method private restoreData(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 381
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivMapState:Landroid/widget/ImageView;

    const-string v1, "ivMapState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 382
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivSound:Landroid/widget/ImageView;

    const-string v1, "ivSound"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 383
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    const-string/jumbo v1, "webview"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    const-string v1, "cadView"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    const-string v1, "lltBtn"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    const-string v1, "lltH5"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    const-string v1, "lltH5Pro"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvStatusV:Landroid/widget/TextView;

    const-string/jumbo v1, "tvStatus"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 389
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 390
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz p1, :cond_0

    .line 391
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 p1, 0x0

    .line 392
    iput-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 394
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->initPlayer()V

    :cond_1
    return-void
.end method

.method private showDataUnAvailable()V
    .locals 3

    .line 587
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvDiffV:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->data_unavailable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 588
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvDiffH:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->data_unavailable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 589
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvDiffV:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 590
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvDiffH:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 591
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvDiffV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 592
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvStatusV:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvDiffH:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 594
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvStatusH:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showFixedCoordinateStartupDialog()V
    .locals 4

    .line 508
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->isCheckBase:Z

    if-eqz v0, :cond_0

    .line 509
    new-instance v0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;-><init>()V

    .line 510
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "FixedCoordinateStartupDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 511
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 512
    const-string v2, "baseProEntity"

    iget-object v3, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 513
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 514
    new-instance v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$13;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$13;-><init>(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->setOnCloseListener(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;)V

    :cond_0
    return-void
.end method

.method private showStartSetBase()V
    .locals 7

    .line 555
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->isCheckBase:Z

    if-eqz v0, :cond_0

    .line 556
    sget v0, Lcom/qianhe/yct/R$string;->connected_base_whether_start_config:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$14;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$14;-><init>(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)V

    const-string v5, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method

.method private slopeDitch(Lcom/qianhe/baselib/bean/InsNavi;[D[D)Lcom/qianhe/baselib/bean/CheckResult;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 780
    iget-object v2, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_0

    .line 781
    new-array v7, v3, [D

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    aput-wide v8, v7, v6

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    aput-wide v8, v7, v5

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    aput-wide v8, v7, v4

    :goto_0
    move-object v11, v7

    goto :goto_1

    :cond_0
    if-ne v2, v4, :cond_1

    .line 783
    new-array v7, v3, [D

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    aput-wide v8, v7, v6

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    aput-wide v8, v7, v5

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    aput-wide v8, v7, v4

    goto :goto_0

    .line 785
    :cond_1
    new-array v7, v3, [D

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/InsNavi;->longitudeM:D

    aput-wide v8, v7, v6

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/InsNavi;->latitudeM:D

    aput-wide v8, v7, v5

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    aput-wide v8, v7, v4

    goto :goto_0

    :goto_1
    if-nez v2, :cond_2

    .line 790
    new-array v2, v3, [D

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    aput-wide v7, v2, v6

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    aput-wide v7, v2, v5

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    aput-wide v7, v2, v4

    goto :goto_2

    :cond_2
    if-ne v2, v4, :cond_3

    .line 792
    new-array v2, v3, [D

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    aput-wide v7, v2, v6

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    aput-wide v7, v2, v5

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    aput-wide v7, v2, v4

    goto :goto_2

    .line 794
    :cond_3
    new-array v2, v3, [D

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    aput-wide v7, v2, v6

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    aput-wide v7, v2, v5

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    aput-wide v7, v2, v4

    .line 797
    :goto_2
    iget-object v1, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->pointsList:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/qianhe/baselib/utils/workchecker/PolyLinePositionChecker;->findNearestSegmentIndex([DLjava/util/List;)I

    move-result v13

    .line 798
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v10, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    iget-object v12, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->pointsList:Ljava/util/List;

    iget-object v1, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget-wide v14, v1, Lcom/qianhe/baselib/bean/PolyLineEntity;->width:D

    invoke-static/range {v10 .. v15}, Lcom/qianhe/baselib/utils/workchecker/PolyLinePositionChecker;->checkSegmentSlopeVertical(F[DLjava/util/List;ID)Lcom/qianhe/baselib/bean/CheckResult;

    move-result-object v12

    .line 800
    iget-object v14, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->pointsList:Ljava/util/List;

    iget-object v1, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/PolyLineEntity;->width:D

    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    float-to-double v7, v1

    iget-object v1, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/PolyLinePreView;->isDirectionReverse()Z

    move-result v19

    move-object v13, v2

    move-wide v15, v3

    move-wide/from16 v17, v7

    invoke-static/range {v12 .. v19}, Lcom/qianhe/baselib/utils/workchecker/PolyLinePositionChecker;->checkPolyLineHorizontal(Lcom/qianhe/baselib/bean/CheckResult;[DLjava/util/List;DDZ)V

    .line 802
    iget-wide v1, v12, Lcom/qianhe/baselib/bean/CheckResult;->distanceH:D

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->formatElevationDiffText(D)Ljava/lang/String;

    move-result-object v1

    .line 803
    iget-object v2, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvUnitH:Landroid/widget/TextView;

    iget-wide v3, v12, Lcom/qianhe/baselib/bean/CheckResult;->distanceH:D

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v7, 0x3e8

    cmp-long v9, v3, v7

    if-gez v9, :cond_4

    sget v3, Lcom/qianhe/yct/R$string;->unit_cm:I

    goto :goto_3

    :cond_4
    sget v3, Lcom/qianhe/yct/R$string;->unit_m:I

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 805
    iget-object v2, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvDiffH:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    iget-object v1, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvBoundTip:Landroid/widget/TextView;

    iget-boolean v2, v12, Lcom/qianhe/baselib/bean/CheckResult;->inBounds:Z

    if-eqz v2, :cond_5

    const/16 v2, 0x8

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 808
    iget-wide v1, v12, Lcom/qianhe/baselib/bean/CheckResult;->distanceH:D

    iget-object v3, v0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    float-to-double v3, v3

    cmpg-double v7, v1, v3

    if-gtz v7, :cond_6

    .line 810
    iget-object v1, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvStatusH:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->hold:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    iget-object v1, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvStatusH:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 812
    iget-object v1, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvDiffH:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 813
    iget-object v1, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivStatusH:Landroid/widget/ImageView;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_status_h:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v12

    .line 814
    :cond_6
    iget-boolean v1, v12, Lcom/qianhe/baselib/bean/CheckResult;->isLeft:Z

    if-eqz v1, :cond_7

    .line 816
    iget-object v1, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvStatusH:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->left_leaning:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    iget-object v1, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvStatusH:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 818
    iget-object v1, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvDiffH:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 819
    iget-object v1, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivStatusH:Landroid/widget/ImageView;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_status_l:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v12

    .line 822
    :cond_7
    iget-object v1, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvStatusH:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->right_leaning:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    iget-object v1, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvStatusH:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 824
    iget-object v1, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvDiffH:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 825
    iget-object v1, v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivStatusH:Landroid/widget/ImageView;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_status_r:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v12
.end method


# virtual methods
.method protected bluetoothStatus(I)V
    .locals 1

    .line 574
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->bluetoothStatus(I)V

    .line 575
    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 577
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz p1, :cond_0

    .line 578
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 p1, 0x0

    .line 579
    iput-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 582
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->showDataUnAvailable()V

    :cond_1
    return-void
.end method

.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 668
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 657
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->polyline:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 658
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 885
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 886
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_1

    .line 887
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 888
    iput-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 133
    const-string v0, ","

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    .line 134
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->finishPreviousActivity()V

    .line 136
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 138
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v3, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v4, "LOG,REFSTATION,ONTIME,1"

    invoke-direct {v2, v3, v4}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 139
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 140
    new-instance v1, Lcom/qianhe/baselib/utils/SensorEventHelper;

    invoke-direct {v1, p0}, Lcom/qianhe/baselib/utils/SensorEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

    .line 141
    invoke-virtual {v1}, Lcom/qianhe/baselib/utils/SensorEventHelper;->registerSensorListener()V

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v1

    iput-boolean v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->isH5Pro:Z

    .line 143
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "current_coords"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    new-instance v2, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v2}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object v2, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    .line 147
    :try_start_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/InsNavi;->longitudeM:D

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 148
    iget-object v2, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/InsNavi;->latitudeM:D

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 149
    iget-object v2, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 153
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 155
    const-string v1, "id"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-lez v2, :cond_3

    .line 157
    iget-object v2, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->POLY_LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 159
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/PolyLineEntity;

    iput-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    .line 160
    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v2, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_1

    .line 164
    :cond_1
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    iget-wide v6, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-virtual {v0, v2, v6, v7}, Lcom/qh/yctdevice/YctDevice;->updateCurrentProjectInfo(IJ)V

    .line 166
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-le v1, v3, :cond_2

    iput v5, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->toothTipView:Lcom/qianhe/yct/view/ToothTipDropdownView;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/view/ToothTipDropdownView;->setToothType(I)V

    .line 168
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-direct {p0, v0, v5}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->refreshToothType(IZ)V

    goto :goto_2

    .line 171
    :cond_3
    sget v0, Lcom/qianhe/yct/R$string;->data_exception:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 173
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    if-eqz v0, :cond_5

    .line 174
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvProTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->project_name:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget-object v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    aput-object v2, v3, v4

    const-string v1, "%s:%s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 176
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

    .line 182
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivResetLocation:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$1;-><init>(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivStartPoint:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$2;-><init>(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivDirection:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$3;-><init>(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$4;-><init>(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivMapState:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$5;-><init>(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 253
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivSound:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$6;-><init>(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 268
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 269
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->initPlayer()V

    .line 270
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->isH5Pro:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->isH5Pro:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_5

    :cond_8
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvStartDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->display_distance_starting_point:I

    if-ne v1, v4, :cond_9

    goto :goto_6

    :cond_9
    const/16 v5, 0x8

    :goto_6
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->toothTipView:Lcom/qianhe/yct/view/ToothTipDropdownView;

    new-instance v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$7;-><init>(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ToothTipDropdownView;->setOnSelectedListener(Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;)V

    .line 281
    new-instance v0, Lcom/qianhe/yct/view/map/YMap;

    invoke-direct {v0}, Lcom/qianhe/yct/view/map/YMap;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    .line 282
    new-instance v0, Lcom/qianhe/yct/view/map/MapController;

    invoke-direct {v0}, Lcom/qianhe/yct/view/map/MapController;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    .line 283
    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/view/map/YMap;->setMapController(Lcom/qianhe/yct/view/map/BaseMapController;)Z

    .line 284
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/view/map/YMap;->onCreate(Landroid/os/Bundle;)V

    .line 285
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    new-instance v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$8;-><init>(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/map/YMap;->setOnLoadMapListener(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V

    .line 318
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->restoreData(Landroid/os/Bundle;)V

    .line 319
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->initPolyLineView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 895
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 896
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onDestroy()V

    .line 897
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/qh/yctdevice/YctDevice;->updateCurrentProjectInfo(IJ)V

    .line 898
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

    invoke-virtual {v0}, Lcom/qianhe/baselib/utils/SensorEventHelper;->unRegisterSensorListener()V

    .line 899
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 900
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 902
    iput-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 904
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

    .line 414
    iget-boolean v4, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->isCheckBase:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v4, :cond_1

    .line 415
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

    .line 502
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
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->hasCheckBasestation:Z

    return-void

    .line 416
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->isCheckBase:Z

    .line 417
    iget-object v4, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

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

    .line 418
    new-instance p1, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;-><init>()V

    .line 419
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CorsChangesDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 420
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 421
    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 422
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getAuthResult()Lcom/qianhe/ntripclientlib/bean/AuthResult;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    const-string v2, "diffConfig"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 423
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 424
    new-instance v0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$10;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$10;-><init>(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;)V

    return-void

    .line 435
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

    iget-object v4, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget-object v4, v4, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    sget v6, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 436
    iget-object v4, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

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

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u57fa\u7ad9\u76f8\u5dee\u8ddd\u79bb\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

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

    .line 438
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->base_mobility_threshold:F

    float-to-double v6, v2

    cmpl-double v2, v0, v6

    if-lez v2, :cond_6

    .line 439
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    const-wide/16 v3, 0x0

    cmpl-double v6, v1, v3

    if-eqz v6, :cond_5

    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    cmpl-double v2, v0, v3

    if-eqz v2, :cond_5

    .line 441
    new-instance v0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;-><init>()V

    .line 442
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "CheckBasestationDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 443
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 444
    sget v2, Lcom/qianhe/yct/R$string;->base_station_have_changed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 446
    const-string v2, "baseStationEntity"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 447
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 448
    new-instance p1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$11;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$11;-><init>(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)V

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$OnConfirmListener;)V

    return-void

    .line 477
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

    new-instance v6, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$12;

    invoke-direct {v6, p0, p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$12;-><init>(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;Lcom/qianhe/baselib/bean/BaseStationEntity;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_6
    move-object v1, p0

    .line 495
    iput-boolean v3, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->hasCheckBasestation:Z

    return-void

    :cond_7
    move-object v1, p0

    .line 498
    iput-boolean v3, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->hasCheckBasestation:Z

    :goto_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 536
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V

    .line 537
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 538
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v0, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->showStartSetBase()V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/CreateProjectResponse;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 628
    iget v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->state:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_1

    .line 629
    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    iget-wide v4, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 630
    iget-object v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    .line 631
    iget-wide v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    const/4 v0, 0x1

    .line 632
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->persistCurrentProject(Z)V

    goto :goto_0

    .line 634
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 635
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 638
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_2

    .line 639
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

    .line 525
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 526
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->showStartSetBase()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 528
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->hasCheckBasestation:Z

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/ModifyProjectResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 546
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->silentModifyProject:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 547
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->silentModifyProject:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 550
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->hasCheckBasestation:Z

    .line 551
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

    .line 675
    :cond_0
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_1

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_1

    iput-object v0, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 678
    :cond_1
    :try_start_0
    iget-object v6, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->rollAngleView:Lcom/qianhe/yct/view/RollAngleView;

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    invoke-virtual {v6, v10, v11}, Lcom/qianhe/yct/view/RollAngleView;->setCurrnetAngle(D)V

    .line 679
    sget-object v6, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;->FULL:Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    invoke-virtual {v1, v0, v6}, Lcom/qianhe/yct/base/BaseActivity;->resolveWorkPageAvailable(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;)Z

    .line 680
    iget-boolean v6, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->isH5Pro:Z

    if-nez v6, :cond_3

    .line 681
    iget v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v7, Lcom/qianhe/yct/enums/InsStatusEnum;->VERTICAL:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v7}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v7

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    .line 683
    iget-object v6, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 684
    iget-object v6, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_a

    .line 686
    :cond_2
    iget-object v6, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 687
    iget-object v6, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/view/View;->setClickable(Z)V

    .line 689
    :goto_0
    iget-object v6, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvArmAngle:Landroid/widget/TextView;

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

    .line 691
    :cond_3
    iget-boolean v6, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    iget-boolean v7, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->hasCheckBasestation:Z

    invoke-virtual {v1, v0, v6, v7}, Lcom/qianhe/yct/base/BaseActivity;->handleWorkInsCalibrateTips(Lcom/qianhe/baselib/bean/InsNavi;ZZ)V

    .line 692
    iget-object v6, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    if-eqz v6, :cond_16

    .line 694
    iget v6, v6, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-nez v6, :cond_4

    .line 695
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

    .line 697
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    new-array v14, v2, [D

    aput-wide v6, v14, v4

    aput-wide v10, v14, v5

    aput-wide v12, v14, v3

    goto :goto_1

    .line 699
    :cond_5
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    new-array v14, v2, [D

    aput-wide v6, v14, v4

    aput-wide v10, v14, v5

    aput-wide v12, v14, v3

    .line 702
    :goto_1
    iget-object v6, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvStartDistance:Landroid/widget/TextView;

    const-string v7, "%s%s"

    sget v10, Lcom/qianhe/yct/R$string;->start_distance:I

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->pointA:[D

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

    .line 703
    iget-object v6, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->pointA:[D

    iget-object v7, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->pointB:[D

    invoke-direct {v1, v0, v6, v7}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->slopeDitch(Lcom/qianhe/baselib/bean/InsNavi;[D[D)Lcom/qianhe/baselib/bean/CheckResult;

    move-result-object v6

    .line 704
    iget-wide v10, v6, Lcom/qianhe/baselib/bean/CheckResult;->verticalDistance:D

    .line 705
    invoke-virtual {v1, v10, v11}, Lcom/qianhe/yct/base/BaseActivity;->formatElevationDiffText(D)Ljava/lang/String;

    move-result-object v7

    .line 706
    iget-object v12, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v12, v12, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvUnitV:Landroid/widget/TextView;

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    cmp-long v13, v15, v17

    if-gez v13, :cond_6

    sget v13, Lcom/qianhe/yct/R$string;->unit_cm:I

    goto :goto_2

    :cond_6
    sget v13, Lcom/qianhe/yct/R$string;->unit_m:I

    :goto_2
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 707
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-float v12, v12

    iget-object v13, v1, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v13, v13, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v13, v13, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float v13, v13, v15

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_7

    const/4 v12, 0x1

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_c

    .line 709
    iget-object v13, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v13, v13, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvStatusV:Landroid/widget/TextView;

    sget v15, Lcom/qianhe/yct/R$string;->hold:I

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(I)V

    .line 710
    iget-boolean v13, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v13, :cond_8

    iget-object v13, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v13, v13, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvStatusV:Landroid/widget/TextView;

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 711
    :cond_8
    iget-object v13, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v13, v13, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    iget-boolean v13, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v13, :cond_9

    iget-object v13, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v13, v13, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 713
    :cond_9
    iget-object v13, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v13, v13, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivStatusV:Landroid/widget/ImageView;

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v15

    const-wide/16 v17, 0x1

    cmp-long v19, v15, v17

    if-gez v19, :cond_a

    sget v15, Lcom/qianhe/yct/R$drawable;->icon_status_v:I

    goto :goto_4

    :cond_a
    cmpl-double v15, v10, v8

    if-lez v15, :cond_b

    sget v15, Lcom/qianhe/yct/R$drawable;->icon_status_hold_dig:I

    goto :goto_4

    :cond_b
    sget v15, Lcom/qianhe/yct/R$drawable;->icon_status_hold_fill:I

    :goto_4
    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_c
    cmpl-double v13, v10, v8

    if-lez v13, :cond_d

    .line 715
    iget-object v13, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v13, v13, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvStatusV:Landroid/widget/TextView;

    sget v15, Lcom/qianhe/yct/R$string;->dig:I

    invoke-virtual {v1, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget-object v13, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v13, v13, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvStatusV:Landroid/widget/TextView;

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 717
    iget-object v13, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v13, v13, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v13, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v13, v13, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 719
    iget-object v13, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v13, v13, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivStatusV:Landroid/widget/ImageView;

    sget v15, Lcom/qianhe/yct/R$drawable;->icon_status_dig:I

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 721
    :cond_d
    iget-object v13, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v13, v13, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvStatusV:Landroid/widget/TextView;

    sget v15, Lcom/qianhe/yct/R$string;->fill:I

    invoke-virtual {v1, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    iget-object v13, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v13, v13, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvStatusV:Landroid/widget/TextView;

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 723
    iget-object v13, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v13, v13, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    iget-object v13, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v13, v13, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 725
    iget-object v13, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v13, v13, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivStatusV:Landroid/widget/ImageView;

    sget v15, Lcom/qianhe/yct/R$drawable;->icon_status_fill:I

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 727
    :goto_5
    iget-boolean v13, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-nez v13, :cond_e

    .line 728
    invoke-direct {v1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->showDataUnAvailable()V

    move-wide/from16 v16, v8

    goto :goto_6

    .line 730
    :cond_e
    iget-object v13, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v13, v13, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvDiffV:Landroid/widget/TextView;

    const/16 v15, 0x50

    invoke-virtual {v1, v7, v15}, Lcom/qianhe/yct/base/BaseActivity;->getElevationDiffTextSize(Ljava/lang/String;I)F

    move-result v7

    invoke-virtual {v13, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 731
    iget-object v7, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v7, v7, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvDiffH:Landroid/widget/TextView;

    move-wide/from16 v16, v8

    iget-wide v8, v6, Lcom/qianhe/baselib/bean/CheckResult;->distanceH:D

    invoke-virtual {v1, v8, v9}, Lcom/qianhe/yct/base/BaseActivity;->formatElevationDiffText(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v15}, Lcom/qianhe/yct/base/BaseActivity;->getElevationDiffTextSize(Ljava/lang/String;I)F

    move-result v6

    invoke-virtual {v7, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 732
    iget-object v6, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvStatusV:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 733
    iget-object v6, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvStatusH:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 736
    :goto_6
    iget-boolean v6, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v6, :cond_12

    iget-object v6, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->isSelected()Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_7

    .line 738
    :cond_f
    iget-object v6, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v6, :cond_13

    .line 739
    invoke-virtual {v6}, Lcom/qianhe/yct/utils/BeepPlayer;->resume()V

    .line 740
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 741
    iget-object v8, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual {v8, v9}, Lcom/qianhe/yct/utils/BeepPlayer;->setUrgency(F)V

    if-eqz v12, :cond_10

    .line 744
    iget-object v6, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v7, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DI_LONG:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v6, v7}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 745
    iget-object v6, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v6}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_8

    .line 748
    :cond_10
    iget-object v8, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    double-to-float v6, v6

    invoke-virtual {v8, v6}, Lcom/qianhe/yct/utils/BeepPlayer;->setUrgencyByDistanceCm(F)V

    cmpl-double v6, v10, v16

    if-lez v6, :cond_11

    .line 750
    iget-object v6, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v7, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->BUZZ:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v6, v7}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 751
    iget-object v6, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v6}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_8

    .line 753
    :cond_11
    iget-object v6, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v7, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->WOOD_FISH:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v6, v7}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 754
    iget-object v6, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v6}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_8

    .line 737
    :cond_12
    :goto_7
    iget-object v6, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v6, :cond_13

    invoke-virtual {v6}, Lcom/qianhe/yct/utils/BeepPlayer;->pause()V

    .line 759
    :cond_13
    :goto_8
    iget-boolean v6, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v6, :cond_14

    .line 760
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    new-array v12, v2, [D

    aput-wide v6, v12, v4

    aput-wide v8, v12, v5

    aput-wide v10, v12, v3

    .line 761
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    new-array v2, v2, [D

    aput-wide v6, v2, v4

    aput-wide v8, v2, v5

    aput-wide v10, v2, v3

    goto :goto_9

    .line 764
    :cond_14
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v6

    iget-object v7, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v8, v7, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    iget-wide v10, v7, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    iget-wide v12, v7, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    new-array v2, v2, [D

    aput-wide v8, v2, v4

    aput-wide v10, v2, v5

    aput-wide v12, v2, v3

    invoke-virtual {v6, v2}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToGAUSSXY([D)[D

    move-result-object v12

    move-object v2, v12

    :goto_9
    if-eqz v12, :cond_15

    .line 768
    iget-object v3, v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v3, v12, v2}, Lcom/qianhe/yct/view/PolyLinePreView;->setCurrentPoint([D[D)V

    .line 770
    :cond_15
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    invoke-direct {v1, v14, v2, v3}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->refreshCadView([DD)V

    .line 772
    :cond_16
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->refreshTianDiMap(Lcom/qianhe/baselib/bean/InsNavi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 774
    :goto_a
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

    .line 909
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onLowMemory()V

    .line 910
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    if-eqz v0, :cond_0

    .line 911
    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onLowMemory()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 859
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onPause()V

    .line 860
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onPause()V

    .line 861
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 863
    iput-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 849
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 850
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onResume()V

    .line 851
    invoke-direct {p0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->initPlayer()V

    .line 852
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

    .line 853
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvMachineNumber:Landroid/widget/TextView;

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

    .line 401
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 402
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivMapState:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivMapState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 403
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivSound"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 404
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "webview"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 405
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "cadView"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 406
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltBtn"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 407
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltH5"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 408
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltH5Pro"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 409
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->tvStatusV:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "tvStatus"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 869
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onStart()V

    .line 870
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 875
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 876
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onStop()V

    return-void
.end method
