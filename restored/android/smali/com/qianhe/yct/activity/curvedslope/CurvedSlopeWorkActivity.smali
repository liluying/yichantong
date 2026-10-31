.class public Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "CurvedSlopeWorkActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

.field private curPositionWgs84:[D

.field private curvedSlopeChecker:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;

.field private curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

.field private curvedSlopePreview:Lcom/qianhe/yct/view/CurvedSlopePreview;

.field private hasCheckBasestation:Z

.field private isCheckBase:Z

.field private isH5Pro:Z

.field private list3D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;",
            ">;"
        }
    .end annotation
.end field

.field private mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private mPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private mapController:Lcom/qianhe/yct/view/map/MapController;

.field private point2Bottom:[D

.field private pointA:[D

.field private pointTop:[D

.field private refBottom:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

.field private refTop:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

.field private sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

.field private silentModifyProject:Z

.field private yMap:Lcom/qianhe/yct/view/map/YMap;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurPositionWgs84(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)[D
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curPositionWgs84:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurvedSlopeEntity(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurvedSlopePreview(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/yct/view/CurvedSlopePreview;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopePreview:Lcom/qianhe/yct/view/CurvedSlopePreview;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisH5Pro(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->isH5Pro:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBeepPlayer(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/yct/utils/BeepPlayer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/yct/db/DatabaseManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPointList(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mPointList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmapController(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/yct/view/map/MapController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetyMap(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/yct/view/map/YMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->hasCheckBasestation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisCheckBase(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->isCheckBase:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBeepPlayer(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;Lcom/qianhe/yct/utils/BeepPlayer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    return-void
.end method

.method static bridge synthetic -$$Nest$minitPlayer(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->initPlayer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshToothType(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->refreshToothType(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowFixedCoordinateStartupDialog(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->showFixedCoordinateStartupDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 122
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 122
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 122
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initPlayer()V
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-direct {v0}, Lcom/qianhe/yct/utils/BeepPlayer;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_0
    return-void
.end method

.method private persistCurrentProject(Z)V
    .locals 5

    .line 572
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 573
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 574
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    if-eqz p1, :cond_1

    .line 575
    iget-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 576
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->silentModifyProject:Z

    .line 577
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshTianDiMap(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 747
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

    .line 748
    iput-object v1, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curPositionWgs84:[D

    .line 749
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/map/YMap;->isInit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 750
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    iget-object v5, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->mapContainer:Lcom/qianhe/yct/view/map/MapContainerView;

    new-instance v10, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v11, v1, v3

    aget-wide v13, v1, v9

    aget-wide v15, v1, v4

    invoke-direct/range {v10 .. v16}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v2, v5, v10}, Lcom/qianhe/yct/view/map/YMap;->init(Landroid/view/ViewGroup;Lcom/qianhe/yct/view/map/GeoPoint;)Z

    return-void

    .line 752
    :cond_0
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

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

    .line 552
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->isH5Pro:Z

    if-eqz v2, :cond_4

    if-nez p1, :cond_0

    .line 555
    sget v2, Lcom/qianhe/yct/R$string;->left_tooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 557
    sget v2, Lcom/qianhe/yct/R$string;->rigth_tooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 559
    :cond_1
    sget v2, Lcom/qianhe/yct/R$string;->center_tooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 561
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvDistanceDes:Landroidx/appcompat/widget/AppCompatTextView;

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

    .line 562
    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iput p1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-eqz p2, :cond_3

    .line 563
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->persistCurrentProject(Z)V

    .line 564
    :cond_3
    iget-object p2, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopePreview:Lcom/qianhe/yct/view/CurvedSlopePreview;

    if-eqz p2, :cond_4

    .line 565
    invoke-virtual {p2, p1}, Lcom/qianhe/yct/view/CurvedSlopePreview;->refreshToothType(I)V

    :cond_4
    return-void
.end method

.method private restoreData(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 341
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->ivMapState:Landroid/widget/ImageView;

    const-string v1, "ivMapState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 342
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->ivSound:Landroid/widget/ImageView;

    const-string v1, "ivSound"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 343
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    const-string/jumbo v1, "webview"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    const-string v1, "lltBtn"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    const-string v1, "lltH5"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    const-string v1, "lltH5Pro"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvStatus:Landroid/widget/TextView;

    const-string/jumbo v1, "tvStatus"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 349
    iget-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz p1, :cond_0

    .line 350
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 p1, 0x0

    .line 351
    iput-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 353
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->initPlayer()V

    :cond_1
    return-void
.end method

.method private showDataUnAvailable()V
    .locals 3

    .line 545
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvDiff:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->data_unavailable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 546
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvDiff:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 547
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvDiff:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 548
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvStatus:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showFixedCoordinateStartupDialog()V
    .locals 4

    .line 466
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->isCheckBase:Z

    if-eqz v0, :cond_0

    .line 467
    new-instance v0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;-><init>()V

    .line 468
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "FixedCoordinateStartupDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 469
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 470
    const-string v2, "baseProEntity"

    iget-object v3, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 471
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 472
    new-instance v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$12;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$12;-><init>(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->setOnCloseListener(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;)V

    :cond_0
    return-void
.end method

.method private showStartSetBase()V
    .locals 7

    .line 513
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->isCheckBase:Z

    if-eqz v0, :cond_0

    .line 514
    sget v0, Lcom/qianhe/yct/R$string;->connected_base_whether_start_config:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$13;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$13;-><init>(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)V

    const-string v5, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bluetoothStatus(I)V
    .locals 1

    .line 532
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->bluetoothStatus(I)V

    .line 533
    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 535
    iget-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz p1, :cond_0

    .line 536
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 p1, 0x0

    .line 537
    iput-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 540
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->showDataUnAvailable()V

    :cond_1
    return-void
.end method

.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 623
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 612
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->curved_slope:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 613
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 796
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 797
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_1

    .line 798
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 799
    iput-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 152
    const-string v2, ","

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-static {v3}, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    move-result-object v3

    iput-object v3, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    .line 153
    invoke-super/range {p0 .. p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->finishPreviousActivity()V

    .line 155
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 157
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v5, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v6, "LOG,REFSTATION,ONTIME,1"

    invoke-direct {v4, v5, v6}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 158
    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v3

    iput-object v3, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 159
    new-instance v3, Lcom/qianhe/baselib/utils/SensorEventHelper;

    invoke-direct {v3, v0}, Lcom/qianhe/baselib/utils/SensorEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

    .line 160
    invoke-virtual {v3}, Lcom/qianhe/baselib/utils/SensorEventHelper;->registerSensorListener()V

    .line 161
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v3}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v3

    iput-boolean v3, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->isH5Pro:Z

    .line 162
    iget-object v3, v0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v4, "current_coords"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    new-instance v4, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v4}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object v4, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 164
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_0

    .line 166
    :try_start_0
    iget-object v4, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v4, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    iput-wide v8, v4, Lcom/qianhe/baselib/bean/InsNavi;->longitudeM:D

    iput-wide v8, v4, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 167
    iget-object v4, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v6

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v4, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    iput-wide v8, v4, Lcom/qianhe/baselib/bean/InsNavi;->latitudeM:D

    iput-wide v8, v4, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 168
    iget-object v4, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 172
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 174
    const-string v3, "id"

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v4, v2, v8

    if-lez v4, :cond_3

    .line 176
    iget-object v4, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    sget-object v8, Lcom/qianhe/baselib/enums/ProjectEnum;->CURVEDSLOPE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v8, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;)Ljava/util/List;

    move-result-object v2

    .line 177
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 178
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iput-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    .line 179
    iget-object v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v4, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    invoke-virtual {v2, v3, v4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_1

    .line 183
    :cond_1
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget v4, v3, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    iget-wide v8, v3, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-virtual {v2, v4, v8, v9}, Lcom/qh/yctdevice/YctDevice;->updateCurrentProjectInfo(IJ)V

    .line 185
    :goto_1
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-le v3, v5, :cond_2

    iput v7, v2, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    .line 186
    :cond_2
    iget-object v3, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->toothTipView:Lcom/qianhe/yct/view/ToothTipDropdownView;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-virtual {v3, v2}, Lcom/qianhe/yct/view/ToothTipDropdownView;->setToothType(I)V

    .line 187
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-direct {v0, v2, v7}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->refreshToothType(IZ)V

    goto :goto_2

    .line 190
    :cond_3
    sget v2, Lcom/qianhe/yct/R$string;->data_exception:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 195
    :cond_4
    :goto_2
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->ivResetLocation:Landroid/widget/ImageView;

    new-instance v3, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$1;

    invoke-direct {v3, v0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$1;-><init>(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->ivStartPoint:Landroid/widget/ImageView;

    new-instance v3, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$2;

    invoke-direct {v3, v0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$2;-><init>(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    new-instance v3, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$3;

    invoke-direct {v3, v0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$3;-><init>(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->ivMapState:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 232
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->ivMapState:Landroid/widget/ImageView;

    new-instance v3, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$4;

    invoke-direct {v3, v0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$4;-><init>(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 245
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->ivSound:Landroid/widget/ImageView;

    new-instance v3, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$5;

    invoke-direct {v3, v0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$5;-><init>(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 260
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 261
    invoke-direct {v0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->initPlayer()V

    .line 262
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    iget-boolean v3, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->isH5Pro:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_5

    const/16 v3, 0x8

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    iget-boolean v3, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->isH5Pro:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    const/16 v3, 0x8

    :goto_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvStartDistance:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->display_distance_starting_point:I

    if-ne v3, v6, :cond_7

    const/4 v4, 0x0

    :cond_7
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->toothTipView:Lcom/qianhe/yct/view/ToothTipDropdownView;

    new-instance v3, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$6;

    invoke-direct {v3, v0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$6;-><init>(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)V

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/view/ToothTipDropdownView;->setOnSelectedListener(Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;)V

    .line 272
    new-instance v2, Lcom/qianhe/yct/view/map/YMap;

    invoke-direct {v2}, Lcom/qianhe/yct/view/map/YMap;-><init>()V

    iput-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    .line 273
    new-instance v2, Lcom/qianhe/yct/view/map/MapController;

    invoke-direct {v2}, Lcom/qianhe/yct/view/map/MapController;-><init>()V

    iput-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    .line 274
    iget-object v3, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v3, v2}, Lcom/qianhe/yct/view/map/YMap;->setMapController(Lcom/qianhe/yct/view/map/BaseMapController;)Z

    .line 275
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/view/map/YMap;->onCreate(Landroid/os/Bundle;)V

    .line 276
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    new-instance v4, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$7;

    invoke-direct {v4, v0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$7;-><init>(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)V

    invoke-virtual {v2, v4}, Lcom/qianhe/yct/view/map/YMap;->setOnLoadMapListener(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V

    .line 306
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->restoreData(Landroid/os/Bundle;)V

    .line 307
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    if-eqz v2, :cond_9

    .line 308
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvProTitle:Landroid/widget/TextView;

    sget v3, Lcom/qianhe/yct/R$string;->project_name:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget-object v4, v4, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v3, v8, v7

    aput-object v4, v8, v6

    const-string v3, "%s:%s"

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget-object v3, v3, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->coordsListJson:Ljava/lang/String;

    new-instance v4, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$8;

    invoke-direct {v4, v0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$8;-><init>(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mPointList:Ljava/util/List;

    .line 311
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->list3D:Ljava/util/List;

    .line 312
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mPointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    .line 313
    iget-object v4, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->list3D:Ljava/util/List;

    new-instance v8, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    aget-wide v9, v3, v7

    aget-wide v11, v3, v6

    aget-wide v13, v3, v5

    invoke-direct/range {v8 .. v14}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;-><init>(DDD)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 319
    :cond_8
    new-instance v2, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;

    invoke-direct {v2}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;-><init>()V

    iput-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeChecker:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;

    .line 320
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget-wide v3, v2, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->east1:D

    iget-wide v8, v2, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->north1:D

    iget-wide v10, v2, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->elev1:D

    iget-wide v12, v2, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->depthA:D

    add-double/2addr v10, v12

    new-array v12, v1, [D

    aput-wide v3, v12, v7

    aput-wide v8, v12, v6

    aput-wide v10, v12, v5

    iput-object v12, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->pointTop:[D

    .line 321
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->east2:D

    iget-wide v8, v2, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->north2:D

    iget-wide v10, v2, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->elev2:D

    iget-wide v12, v2, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->depthB:D

    add-double/2addr v10, v12

    new-array v1, v1, [D

    aput-wide v3, v1, v7

    aput-wide v8, v1, v6

    aput-wide v10, v1, v5

    iput-object v1, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->point2Bottom:[D

    .line 322
    iget-object v1, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mPointList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->pointA:[D

    .line 323
    new-instance v8, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-object v1, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->pointTop:[D

    aget-wide v9, v1, v7

    aget-wide v11, v1, v6

    aget-wide v13, v1, v5

    invoke-direct/range {v8 .. v14}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;-><init>(DDD)V

    iput-object v8, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->refTop:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    .line 324
    new-instance v9, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-object v1, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->point2Bottom:[D

    aget-wide v10, v1, v7

    aget-wide v12, v1, v6

    aget-wide v14, v1, v5

    invoke-direct/range {v9 .. v15}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;-><init>(DDD)V

    iput-object v9, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->refBottom:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    .line 326
    iget-object v1, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->curvedSlopePreview:Lcom/qianhe/yct/view/CurvedSlopePreview;

    iput-object v1, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopePreview:Lcom/qianhe/yct/view/CurvedSlopePreview;

    .line 327
    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/view/CurvedSlopePreview;->refreshToothType(I)V

    .line 328
    iget-object v1, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->refTop:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-object v2, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->refBottom:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    invoke-static {v1, v2}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->slopeRatioFromAC(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;)D

    move-result-wide v4

    .line 330
    iget-object v3, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->list3D:Ljava/util/List;

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->buildSlopeFaces(Ljava/util/List;DZD)Ljava/util/List;

    move-result-object v1

    .line 332
    iget-object v3, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->list3D:Ljava/util/List;

    invoke-static/range {v3 .. v8}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->buildArcTransitions(Ljava/util/List;DZD)Ljava/util/List;

    move-result-object v2

    .line 334
    iget-object v3, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopePreview:Lcom/qianhe/yct/view/CurvedSlopePreview;

    iget-object v4, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->list3D:Ljava/util/List;

    invoke-virtual {v3, v4, v1, v2}, Lcom/qianhe/yct/view/CurvedSlopePreview;->setSlopeData(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 336
    iget-object v1, v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopePreview:Lcom/qianhe/yct/view/CurvedSlopePreview;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/CurvedSlopePreview;->locateToStartPoint()V

    return-void

    .line 316
    :cond_9
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

    .line 805
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 806
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onDestroy()V

    .line 807
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/qh/yctdevice/YctDevice;->updateCurrentProjectInfo(IJ)V

    .line 808
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

    invoke-virtual {v0}, Lcom/qianhe/baselib/utils/SensorEventHelper;->unRegisterSensorListener()V

    .line 809
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 810
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 812
    iput-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 814
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

    .line 372
    iget-boolean v4, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->isCheckBase:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v4, :cond_1

    .line 373
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

    .line 460
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
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->hasCheckBasestation:Z

    return-void

    .line 374
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->isCheckBase:Z

    .line 375
    iget-object v4, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

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

    .line 376
    new-instance p1, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;-><init>()V

    .line 377
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CorsChangesDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 378
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 379
    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 380
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getAuthResult()Lcom/qianhe/ntripclientlib/bean/AuthResult;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    const-string v2, "diffConfig"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 381
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 382
    new-instance v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$9;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$9;-><init>(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;)V

    return-void

    .line 393
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

    iget-object v4, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget-object v4, v4, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    sget v6, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 394
    iget-object v4, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

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

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u57fa\u7ad9\u76f8\u5dee\u8ddd\u79bb\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

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

    .line 396
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->base_mobility_threshold:F

    float-to-double v6, v2

    cmpl-double v2, v0, v6

    if-lez v2, :cond_6

    .line 397
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    const-wide/16 v3, 0x0

    cmpl-double v6, v1, v3

    if-eqz v6, :cond_5

    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    cmpl-double v2, v0, v3

    if-eqz v2, :cond_5

    .line 399
    new-instance v0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;-><init>()V

    .line 400
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "CheckBasestationDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 401
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 402
    sget v2, Lcom/qianhe/yct/R$string;->base_station_have_changed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v2, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 404
    const-string v2, "baseStationEntity"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 405
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 406
    new-instance p1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$10;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$10;-><init>(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)V

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$OnConfirmListener;)V

    return-void

    .line 435
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

    new-instance v6, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$11;

    invoke-direct {v6, p0, p1}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$11;-><init>(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;Lcom/qianhe/baselib/bean/BaseStationEntity;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_6
    move-object v1, p0

    .line 453
    iput-boolean v3, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->hasCheckBasestation:Z

    return-void

    :cond_7
    move-object v1, p0

    .line 456
    iput-boolean v3, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->hasCheckBasestation:Z

    :goto_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 494
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V

    .line 495
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 496
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v0, :cond_0

    .line 497
    invoke-direct {p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->showStartSetBase()V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/CreateProjectResponse;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 583
    iget v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->state:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_1

    .line 584
    iget-object v1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    iget-wide v4, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 585
    iget-object v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    .line 586
    iget-wide v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    const/4 v0, 0x1

    .line 587
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->persistCurrentProject(Z)V

    goto :goto_0

    .line 589
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 590
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 593
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_2

    .line 594
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

    .line 483
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 484
    invoke-direct {p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->showStartSetBase()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 486
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->hasCheckBasestation:Z

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/ModifyProjectResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 504
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->silentModifyProject:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 505
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->silentModifyProject:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 508
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->hasCheckBasestation:Z

    .line 509
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
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    goto/16 :goto_f

    .line 630
    :cond_0
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_1

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_1

    iput-object v0, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 633
    :cond_1
    :try_start_0
    iget-object v6, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->rollAngleView:Lcom/qianhe/yct/view/RollAngleView;

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    invoke-virtual {v6, v10, v11}, Lcom/qianhe/yct/view/RollAngleView;->setCurrnetAngle(D)V

    .line 634
    iget-boolean v6, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->isH5Pro:Z

    if-nez v6, :cond_3

    .line 635
    iget v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v7, Lcom/qianhe/yct/enums/InsStatusEnum;->VERTICAL:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v7}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v7

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    .line 637
    iget-object v6, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 638
    iget-object v6, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_e

    .line 640
    :cond_2
    iget-object v6, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 641
    iget-object v6, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/view/View;->setClickable(Z)V

    .line 643
    :goto_0
    iget-object v6, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvArmAngle:Landroid/widget/TextView;

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

    .line 645
    :cond_3
    iget-boolean v6, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    iget-boolean v7, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->hasCheckBasestation:Z

    invoke-virtual {v1, v0, v6, v7}, Lcom/qianhe/yct/base/BaseActivity;->handleWorkInsCalibrateTips(Lcom/qianhe/baselib/bean/InsNavi;ZZ)V

    .line 646
    iget-object v6, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    if-eqz v6, :cond_18

    .line 648
    new-array v7, v2, [D

    .line 649
    iget v6, v6, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-nez v6, :cond_4

    .line 652
    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    .line 653
    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    aput-wide v12, v7, v4

    .line 654
    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    aput-wide v12, v7, v5

    .line 655
    aput-wide v10, v7, v3

    goto :goto_1

    :cond_4
    if-ne v6, v3, :cond_5

    .line 659
    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    .line 660
    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    aput-wide v12, v7, v4

    .line 661
    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    aput-wide v12, v7, v5

    .line 662
    aput-wide v10, v7, v3

    goto :goto_1

    .line 666
    :cond_5
    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    .line 667
    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    aput-wide v12, v7, v4

    .line 668
    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    aput-wide v12, v7, v5

    .line 669
    aput-wide v10, v7, v3

    .line 671
    :goto_1
    new-instance v14, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    aget-wide v15, v7, v4

    aget-wide v17, v7, v5

    aget-wide v19, v7, v3

    invoke-direct/range {v14 .. v20}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;-><init>(DDD)V

    move-object v15, v14

    .line 672
    iget-object v14, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeChecker:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;

    iget-object v6, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->list3D:Ljava/util/List;

    iget-object v10, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->refTop:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-object v11, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->refBottom:Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;

    iget-object v12, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget v12, v12, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    if-nez v12, :cond_6

    const/16 v19, 0x1

    :goto_2
    move-object/from16 v16, v6

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    goto :goto_3

    :cond_6
    const/16 v19, 0x0

    goto :goto_2

    :goto_3
    invoke-virtual/range {v14 .. v19}, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker;->calculate(Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Ljava/util/List;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$Point3D;Z)Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;

    move-result-object v6

    .line 673
    iget v10, v6, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;->distanceCm:I

    int-to-double v10, v10

    .line 674
    invoke-virtual {v1, v10, v11}, Lcom/qianhe/yct/base/BaseActivity;->formatElevationDiffText(D)Ljava/lang/String;

    move-result-object v12

    .line 675
    iget-object v13, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v13, v13, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v13, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v13, v13, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvUnitV:Landroid/widget/TextView;

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    cmp-long v18, v14, v16

    if-gez v18, :cond_7

    sget v14, Lcom/qianhe/yct/R$string;->unit_cm:I

    goto :goto_4

    :cond_7
    sget v14, Lcom/qianhe/yct/R$string;->unit_m:I

    :goto_4
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 677
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-float v13, v13

    iget-object v14, v1, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v14, v14, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v14, v14, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float v14, v14, v15

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_8

    const/4 v13, 0x1

    goto :goto_5

    :cond_8
    const/4 v13, 0x0

    .line 678
    :goto_5
    iget-object v14, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v14, v14, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvBoundTip:Landroid/widget/TextView;

    move-wide/from16 v16, v8

    iget-boolean v8, v6, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;->isOutOfSlopeRange:Z

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    goto :goto_6

    :cond_9
    const/16 v8, 0x8

    :goto_6
    invoke-virtual {v14, v8}, Landroid/view/View;->setVisibility(I)V

    if-eqz v13, :cond_e

    .line 680
    iget-boolean v8, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v8, :cond_a

    iget-object v8, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 681
    :cond_a
    iget-boolean v8, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v8, :cond_b

    iget-object v8, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 682
    :cond_b
    iget-object v8, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvStatus:Landroid/widget/TextView;

    sget v9, Lcom/qianhe/yct/R$string;->hold:I

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v8, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->ivStatus:Landroid/widget/ImageView;

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    const-wide/16 v20, 0x1

    cmp-long v9, v18, v20

    if-gez v9, :cond_c

    sget v9, Lcom/qianhe/yct/R$drawable;->icon_status_v:I

    goto :goto_7

    :cond_c
    cmpl-double v9, v10, v16

    if-lez v9, :cond_d

    sget v9, Lcom/qianhe/yct/R$drawable;->icon_status_hold_dig:I

    goto :goto_7

    :cond_d
    sget v9, Lcom/qianhe/yct/R$drawable;->icon_status_hold_fill:I

    :goto_7
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 685
    :cond_e
    iget-object v8, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 686
    iget-object v8, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 687
    iget-boolean v8, v6, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;->isCut:Z

    if-eqz v8, :cond_f

    .line 688
    iget-object v8, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvStatus:Landroid/widget/TextView;

    sget v9, Lcom/qianhe/yct/R$string;->dig:I

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v8, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->ivStatus:Landroid/widget/ImageView;

    sget v9, Lcom/qianhe/yct/R$drawable;->icon_status_dig:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 691
    :cond_f
    iget-object v8, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvStatus:Landroid/widget/TextView;

    sget v9, Lcom/qianhe/yct/R$string;->fill:I

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v8, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->ivStatus:Landroid/widget/ImageView;

    sget v9, Lcom/qianhe/yct/R$drawable;->icon_status_fill:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 695
    :goto_8
    iget-boolean v8, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-nez v8, :cond_10

    .line 696
    invoke-direct {v1}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->showDataUnAvailable()V

    goto :goto_9

    .line 698
    :cond_10
    iget-object v8, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    .line 699
    iget-object v8, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvDiff:Landroid/widget/TextView;

    const/16 v9, 0x5a

    invoke-virtual {v1, v12, v9}, Lcom/qianhe/yct/base/BaseActivity;->getElevationDiffTextSize(Ljava/lang/String;I)F

    move-result v9

    invoke-virtual {v8, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 700
    iget-object v8, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 701
    invoke-static {v1, v15}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 702
    iget-object v9, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 704
    :goto_9
    iget-object v8, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->ivArm:Lcom/qianhe/yct/view/ArmView;

    iget v9, v6, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;->distanceCm:I

    int-to-double v9, v9

    iget-boolean v11, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->isH5Pro:Z

    if-eqz v11, :cond_11

    iget-wide v11, v0, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    goto :goto_a

    :cond_11
    iget-wide v11, v0, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iget v14, v1, Lcom/qianhe/yct/base/BaseActivity;->zeroDegrees:F

    float-to-double v14, v14

    sub-double/2addr v11, v14

    :goto_a
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/qianhe/yct/view/ArmView;->updateAnimationValue(DD)V

    .line 706
    iget-object v8, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvStartDistance:Landroid/widget/TextView;

    const-string v9, "%s\uff1a%s"

    sget v10, Lcom/qianhe/yct/R$string;->distance_from_project_starting:I

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->pointA:[D

    invoke-static {v7, v11}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Lcom/qianhe/yct/base/BaseActivity;->formatDistance(D)Ljava/lang/String;

    move-result-object v7

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v10, v11, v4

    aput-object v7, v11, v5

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    iget-boolean v7, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v7, :cond_15

    iget-object v7, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v7, v7, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_b

    .line 710
    :cond_12
    iget-object v7, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v7, :cond_16

    .line 711
    invoke-virtual {v7}, Lcom/qianhe/yct/utils/BeepPlayer;->resume()V

    .line 712
    iget v7, v6, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;->distanceCm:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v7, v7

    if-eqz v13, :cond_13

    .line 714
    iget-object v6, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v7, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DI_LONG:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v6, v7}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 715
    iget-object v6, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v6, v7}, Lcom/qianhe/yct/utils/BeepPlayer;->setUrgency(F)V

    .line 716
    iget-object v6, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v6}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_c

    .line 718
    :cond_13
    iget-object v9, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    double-to-float v7, v7

    invoke-virtual {v9, v7}, Lcom/qianhe/yct/utils/BeepPlayer;->setUrgencyByDistanceCm(F)V

    .line 719
    iget v6, v6, Lcom/qianhe/baselib/utils/workchecker/CurvedSlopeChecker$SlopeResult;->distanceCm:I

    if-lez v6, :cond_14

    .line 720
    iget-object v6, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v7, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DIDI:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v6, v7}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 721
    iget-object v6, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v6}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_c

    .line 723
    :cond_14
    iget-object v6, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v7, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->WOOD_FISH:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v6, v7}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 724
    iget-object v6, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v6}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_c

    .line 709
    :cond_15
    :goto_b
    iget-object v6, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v6, :cond_16

    invoke-virtual {v6}, Lcom/qianhe/yct/utils/BeepPlayer;->pause()V

    .line 728
    :cond_16
    :goto_c
    iget-object v6, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopePreview:Lcom/qianhe/yct/view/CurvedSlopePreview;

    if-eqz v6, :cond_18

    .line 730
    iget-boolean v6, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v6, :cond_17

    .line 731
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    new-array v12, v2, [D

    aput-wide v6, v12, v4

    aput-wide v8, v12, v5

    aput-wide v10, v12, v3

    .line 732
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    new-array v2, v2, [D

    aput-wide v6, v2, v4

    aput-wide v8, v2, v5

    aput-wide v10, v2, v3

    goto :goto_d

    .line 735
    :cond_17
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v6

    iget-object v7, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 737
    :goto_d
    iget-object v3, v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->curvedSlopePreview:Lcom/qianhe/yct/view/CurvedSlopePreview;

    invoke-virtual {v3, v12, v2}, Lcom/qianhe/yct/view/CurvedSlopePreview;->setCurrentPoint([D[D)V

    .line 740
    :cond_18
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->refreshTianDiMap(Lcom/qianhe/baselib/bean/InsNavi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 742
    :goto_e
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

    .line 819
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onLowMemory()V

    .line 820
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onLowMemory()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 775
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onPause()V

    .line 776
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 765
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 766
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onResume()V

    .line 767
    invoke-direct {p0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->initPlayer()V

    .line 768
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

    .line 769
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvMachineNumber:Landroid/widget/TextView;

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

    .line 360
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 361
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->ivMapState:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivMapState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 362
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivSound"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 363
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "webview"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 364
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltBtn"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 365
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltH5"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 366
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltH5Pro"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 367
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "tvStatus"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 781
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onStart()V

    .line 782
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 787
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 788
    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onStop()V

    return-void
.end method
