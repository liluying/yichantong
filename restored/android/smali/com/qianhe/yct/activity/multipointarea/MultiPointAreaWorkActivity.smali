.class public Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "MultiPointAreaWorkActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

.field private curPositionWgs84:[D

.field private hasCheckBasestation:Z

.field private isCheckBase:Z

.field private isH5Pro:Z

.field private mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

.field private mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private mapController:Lcom/qianhe/yct/view/map/MapController;

.field private multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

.field private pointsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

.field private silentModifyProject:Z

.field private yMap:Lcom/qianhe/yct/view/map/YMap;


# direct methods
.method public static synthetic $r8$lambda$DbNoFaxYYX7vNp5CYwBFIbU_Rbw(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;Landroid/view/View;)V
    .locals 11

    const/4 p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 211
    invoke-direct {p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->hasCadPath()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 212
    iget-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1}, Lcom/qh/xcad/XCadView;->centerXCadItemAreaPointLocation()V

    .line 213
    iget-object p0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->areaPreview:Lcom/qianhe/yct/view/MulPointAreaPreView;

    invoke-virtual {p0}, Lcom/qianhe/yct/view/MulPointAreaPreView;->locateToStartPoint()V

    return-void

    .line 216
    :cond_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->pointsList:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 217
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->pointsList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    aget-wide v4, v3, v1

    iget-object v3, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->pointsList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    aget-wide v6, v3, v0

    iget-object v3, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->pointsList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    aget-wide v8, v3, p1

    const/4 v3, 0x3

    new-array v3, v3, [D

    aput-wide v4, v3, v1

    aput-wide v6, v3, v0

    aput-wide v8, v3, p1

    invoke-virtual {v2, v3}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v2

    .line 218
    iget-object v3, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    if-eqz v3, :cond_1

    .line 219
    new-instance v4, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v5, v2, v0

    aget-wide v7, v2, v1

    aget-wide v9, v2, p1

    invoke-direct/range {v4 .. v10}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v3, v4}, Lcom/qianhe/yct/view/map/MapController;->centerLocation(Lcom/qianhe/yct/view/map/GeoPoint;)V

    .line 222
    :cond_1
    iget-object p0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->areaPreview:Lcom/qianhe/yct/view/MulPointAreaPreView;

    invoke-virtual {p0}, Lcom/qianhe/yct/view/MulPointAreaPreView;->locateToStartPoint()V

    return-void
.end method

.method public static synthetic $r8$lambda$H13qWiGU30CGIfkWpRDRX5fyeUA(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;Landroid/view/View;)V
    .locals 11

    const/4 p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 197
    invoke-direct {p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->hasCadPath()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 198
    iget-object p0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p0}, Lcom/qh/xcad/XCadView;->centerVehiclePointLocation()V

    return-void

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-eqz v2, :cond_2

    .line 202
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v4, v3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    iget-wide v6, v3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    iget-wide v8, v3, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    const/4 v3, 0x3

    new-array v3, v3, [D

    aput-wide v4, v3, v1

    aput-wide v6, v3, v0

    aput-wide v8, v3, p1

    invoke-virtual {v2, v3}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToWGS84([D)[D

    move-result-object v2

    .line 203
    iget-object v3, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    if-eqz v3, :cond_1

    .line 204
    new-instance v4, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v5, v2, v0

    aget-wide v7, v2, v1

    aget-wide v9, v2, p1

    invoke-direct/range {v4 .. v10}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v3, v4}, Lcom/qianhe/yct/view/map/MapController;->centerLocation(Lcom/qianhe/yct/view/map/GeoPoint;)V

    .line 206
    :cond_1
    iget-object p0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->areaPreview:Lcom/qianhe/yct/view/MulPointAreaPreView;

    invoke-virtual {p0}, Lcom/qianhe/yct/view/MulPointAreaPreView;->locateToCurrentPoint()V

    :cond_2
    return-void
.end method

.method public static synthetic $r8$lambda$O64dYdZTs98PyCzYzM3O4z4Bm30(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;Landroid/view/View;)V
    .locals 1

    .line 248
    iget-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    .line 248
    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 249
    iget-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 250
    iget-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 p1, 0x0

    .line 252
    iput-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_0
    return-void

    .line 255
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->initPlayer()V

    return-void
.end method

.method public static synthetic $r8$lambda$Y0rv0WnIucLF1_Aw5KkFdp7bKCM(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;Landroid/view/View;)V
    .locals 1

    .line 124
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->isH5Pro:Z

    if-nez p1, :cond_0

    .line 124
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/qianhe/yct/activity/ZeroingActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$b75vhS7uuRsYZiyWv9zI-9eangY(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;Landroid/view/View;)V
    .locals 2

    .line 226
    iget-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    .line 226
    invoke-virtual {p1}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 227
    iget-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object p0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 231
    iget-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 232
    iget-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 233
    iget-object p0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 235
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->hasCadPath()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 236
    iget-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object p0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 239
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 240
    iget-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object p0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kSrW02ypqkskmb-OUNQ3vtHJkck(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;Landroid/view/View;)V
    .locals 0

    .line 558
    invoke-virtual {p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->onBackPressed()V

    return-void
.end method

.method public static synthetic $r8$lambda$mKzf4-g5IMVMiVZhI9RVOzEoVPM(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;I)V
    .locals 1

    const/4 v0, 0x1

    .line 259
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->refreshToothType(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurPositionWgs84(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)[D
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->curPositionWgs84:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmapController(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)Lcom/qianhe/yct/view/map/MapController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmultiPointAreaEntity(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)Lcom/qianhe/baselib/bean/MultiPointAreaEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpointsList(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->pointsList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->hasCheckBasestation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisCheckBase(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->isCheckBase:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowFixedCoordinateStartupDialog(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->showFixedCoordinateStartupDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildCadItemAreaPoints()[D
    .locals 7

    .line 287
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->pointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 288
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->pointsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x2

    .line 289
    iget-object v4, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->pointsList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    aget-wide v5, v4, v1

    aput-wide v5, v0, v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 290
    iget-object v5, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->pointsList:Ljava/util/List;

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

    .line 271
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

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

.method private initAreaView()V
    .locals 3

    .line 263
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;->coordsListJson:Ljava/lang/String;

    new-instance v2, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$2;-><init>(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)V

    .line 264
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 263
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->pointsList:Ljava/util/List;

    .line 265
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->areaPreview:Lcom/qianhe/yct/view/MulPointAreaPreView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/MulPointAreaPreView;->setWorkMode(Z)V

    .line 266
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->areaPreview:Lcom/qianhe/yct/view/MulPointAreaPreView;

    iget-object v1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->pointsList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/MulPointAreaPreView;->setProjectPoint(Ljava/util/List;)V

    .line 267
    invoke-direct {p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->initCadView()V

    return-void
.end method

.method private initCadView()V
    .locals 3

    .line 275
    invoke-direct {p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->hasCadPath()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->pointsList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-object v1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setCadFilePath(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setFollowVehicle(Z)V

    .line 280
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setCadTouchEnable(Z)V

    .line 281
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setSelectSingleLine(Z)V

    .line 282
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0, v1}, Lcom/qh/xcad/XCadView;->setDrawSelectedLineNumText(Z)V

    .line 283
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-direct {p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->buildCadItemAreaPoints()[D

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/qh/xcad/XCadView;->setXCadItemAreaPoint([DZZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initControls()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->ivResetLocation:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->ivStartPoint:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->ivMapState:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->ivSound:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 247
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->ivSound:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->toothTipView:Lcom/qianhe/yct/view/ToothTipDropdownView;

    new-instance v1, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ToothTipDropdownView;->setOnSelectedListener(Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;)V

    return-void
.end method

.method private initPlayer()V
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-direct {v0}, Lcom/qianhe/yct/utils/BeepPlayer;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_0
    return-void
.end method

.method private persistCurrentProject(Z)V
    .locals 5

    .line 349
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 351
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    if-eqz p1, :cond_1

    .line 352
    iget-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 353
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->silentModifyProject:Z

    .line 354
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshCadView([DD)V
    .locals 8

    .line 296
    invoke-direct {p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->hasCadPath()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    const/4 v0, 0x0

    aget-wide v2, p1, v0

    const/4 v0, 0x1

    aget-wide v4, p1, v0

    move-wide v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/qh/xcad/XCadView;->setXCadVehiclePosition(DDD)V

    return-void
.end method

.method private refreshMapLocation(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 514
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

    .line 515
    iput-object v1, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->curPositionWgs84:[D

    .line 516
    iget-object v2, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/map/YMap;->isInit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 517
    iget-object v2, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    iget-object v5, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->mapContainer:Lcom/qianhe/yct/view/map/MapContainerView;

    new-instance v10, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v11, v1, v3

    aget-wide v13, v1, v9

    aget-wide v15, v1, v4

    invoke-direct/range {v10 .. v16}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v2, v5, v10}, Lcom/qianhe/yct/view/map/YMap;->init(Landroid/view/ViewGroup;Lcom/qianhe/yct/view/map/GeoPoint;)Z

    return-void

    .line 519
    :cond_0
    iget-object v2, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

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

    .line 332
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->isH5Pro:Z

    if-eqz v2, :cond_3

    if-nez p1, :cond_0

    .line 335
    sget v2, Lcom/qianhe/yct/R$string;->left_tooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 337
    sget v2, Lcom/qianhe/yct/R$string;->rigth_tooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 339
    :cond_1
    sget v2, Lcom/qianhe/yct/R$string;->center_tooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 341
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvDistanceDes:Landroidx/appcompat/widget/AppCompatTextView;

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

    .line 342
    iget-object v1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iput p1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-eqz p2, :cond_3

    .line 343
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->persistCurrentProject(Z)V

    :cond_3
    return-void
.end method

.method private restoreData(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 304
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->ivMapState:Landroid/widget/ImageView;

    const-string v1, "ivMapState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 305
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->ivSound:Landroid/widget/ImageView;

    const-string v1, "ivSound"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 306
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    const-string/jumbo v1, "webview"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    const-string v1, "cadView"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    const-string v1, "lltBtn"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    const-string/jumbo v1, "tvStatus"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 311
    iget-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 p1, 0x0

    .line 313
    iput-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->initPlayer()V

    :cond_1
    return-void
.end method

.method private showDataUnAvailable()V
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvDiff:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->data_unavailable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 505
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvDiff:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 506
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvDiff:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 507
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 508
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->ivStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 509
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->pause()V

    :cond_0
    return-void
.end method

.method private showFixedCoordinateStartupDialog()V
    .locals 4

    .line 664
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->isCheckBase:Z

    if-eqz v0, :cond_0

    .line 665
    new-instance v0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;-><init>()V

    .line 666
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "FixedCoordinateStartupDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 667
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 668
    const-string v2, "baseProEntity"

    iget-object v3, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 669
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 670
    new-instance v1, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$6;-><init>(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->setOnCloseListener(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;)V

    :cond_0
    return-void
.end method

.method private showStartSetBase()V
    .locals 7

    .line 710
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->isCheckBase:Z

    if-eqz v0, :cond_0

    .line 711
    sget v0, Lcom/qianhe/yct/R$string;->connected_base_whether_start_config:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$7;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$7;-><init>(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)V

    const-string v5, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method

.method private updateWorkData(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 398
    iget-object v2, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_0

    .line 399
    new-array v2, v3, [D

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    aput-wide v7, v2, v6

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    aput-wide v7, v2, v5

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    aput-wide v7, v2, v4

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_1

    .line 401
    new-array v2, v3, [D

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    aput-wide v7, v2, v6

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    aput-wide v7, v2, v5

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    aput-wide v7, v2, v4

    goto :goto_0

    .line 403
    :cond_1
    new-array v2, v3, [D

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    aput-wide v7, v2, v6

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    aput-wide v7, v2, v5

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    aput-wide v7, v2, v4

    .line 406
    :goto_0
    iget-object v7, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->pointsList:Ljava/util/List;

    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 407
    iget-object v7, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->pointsList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [D

    .line 408
    aget-wide v8, v2, v6

    aget-wide v10, v7, v6

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    aget-wide v12, v2, v5

    aget-wide v14, v7, v5

    sub-double/2addr v12, v14

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 409
    iget-object v9, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvStartDistance:Landroid/widget/TextView;

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sget v11, Lcom/qianhe/yct/R$string;->start_distance:I

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v11, v8, v6

    aput-object v7, v8, v5

    const-string v7, "%s %.2fm"

    invoke-static {v10, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    :cond_2
    iget-object v7, v0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v7, v7, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v7, v7, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    iget-object v8, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->pointsList:Ljava/util/List;

    invoke-static {v7, v2, v8}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker;->calculateVerticalDiff(F[DLjava/util/List;)D

    move-result-wide v7

    .line 415
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 416
    iget-object v7, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v7, v7, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvBoundTip:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 417
    iget-object v7, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v7, v7, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvDiff:Landroid/widget/TextView;

    const-string v8, "---"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v7, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v7, v7, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 419
    iget-object v7, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v7, v7, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 420
    iget-object v7, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v7, v7, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->ivStatus:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 421
    iget-object v7, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v7, v7, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 422
    iget-object v7, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lcom/qianhe/yct/utils/BeepPlayer;->pause()V

    goto/16 :goto_7

    .line 424
    :cond_3
    iget-object v9, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvBoundTip:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double v7, v7, v9

    .line 426
    invoke-virtual {v0, v7, v8}, Lcom/qianhe/yct/base/BaseActivity;->formatElevationDiffText(D)Ljava/lang/String;

    move-result-object v9

    .line 427
    iget-object v10, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v10, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvUnitV:Landroid/widget/TextView;

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    cmp-long v15, v11, v13

    if-gez v15, :cond_4

    sget v11, Lcom/qianhe/yct/R$string;->unit_cm:I

    goto :goto_1

    :cond_4
    sget v11, Lcom/qianhe/yct/R$string;->unit_m:I

    :goto_1
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 429
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-float v10, v10

    iget-object v11, v0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v11, v11, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v11, v11, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v11, v11, v12

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_5

    const/4 v10, 0x1

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    :goto_2
    const-wide/16 v13, 0x0

    if-eqz v10, :cond_8

    .line 432
    iget-object v11, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvDiff:Landroid/widget/TextView;

    iget-boolean v15, v0, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setSelected(Z)V

    .line 433
    iget-object v11, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    iget-boolean v15, v0, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setSelected(Z)V

    .line 434
    iget-object v11, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->ivStatus:Landroid/widget/ImageView;

    iget-boolean v15, v0, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 435
    iget-object v11, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    sget v15, Lcom/qianhe/yct/R$string;->hold:I

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(I)V

    .line 436
    iget-object v11, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->ivStatus:Landroid/widget/ImageView;

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v15

    const-wide/16 v17, 0x1

    cmp-long v19, v15, v17

    if-gez v19, :cond_6

    sget v15, Lcom/qianhe/yct/R$drawable;->icon_status_v:I

    goto :goto_3

    :cond_6
    cmpl-double v15, v7, v13

    if-lez v15, :cond_7

    sget v15, Lcom/qianhe/yct/R$drawable;->icon_status_hold_dig:I

    goto :goto_3

    :cond_7
    sget v15, Lcom/qianhe/yct/R$drawable;->icon_status_hold_fill:I

    :goto_3
    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 438
    :cond_8
    iget-object v11, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 439
    iget-object v11, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 440
    iget-object v11, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->ivStatus:Landroid/widget/ImageView;

    invoke-virtual {v11, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    cmpl-double v11, v7, v13

    if-lez v11, :cond_9

    .line 442
    iget-object v11, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    sget v15, Lcom/qianhe/yct/R$string;->dig:I

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(I)V

    .line 443
    iget-object v11, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->ivStatus:Landroid/widget/ImageView;

    sget v15, Lcom/qianhe/yct/R$drawable;->icon_status_dig:I

    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 445
    :cond_9
    iget-object v11, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    sget v15, Lcom/qianhe/yct/R$string;->fill:I

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(I)V

    .line 446
    iget-object v11, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->ivStatus:Landroid/widget/ImageView;

    sget v15, Lcom/qianhe/yct/R$drawable;->icon_status_fill:I

    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 449
    :goto_4
    iget-boolean v11, v0, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-nez v11, :cond_a

    .line 450
    invoke-direct {v0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->showDataUnAvailable()V

    goto :goto_5

    .line 452
    :cond_a
    iget-object v11, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v11, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    .line 454
    iget-object v11, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvDiff:Landroid/widget/TextView;

    const/16 v15, 0x5a

    invoke-virtual {v0, v9, v15}, Lcom/qianhe/yct/base/BaseActivity;->getElevationDiffTextSize(Ljava/lang/String;I)F

    move-result v9

    invoke-virtual {v11, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 455
    iget-object v9, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 456
    invoke-static {v0, v12}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 457
    iget-object v11, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvDiff:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    :goto_5
    iget-boolean v9, v0, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v9, :cond_e

    iget-object v9, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/view/View;->isSelected()Z

    move-result v9

    if-nez v9, :cond_b

    goto :goto_6

    .line 462
    :cond_b
    iget-object v9, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v9, :cond_f

    .line 463
    invoke-virtual {v9}, Lcom/qianhe/yct/utils/BeepPlayer;->resume()V

    .line 464
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    .line 465
    iget-object v9, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-virtual {v9, v15}, Lcom/qianhe/yct/utils/BeepPlayer;->setUrgency(F)V

    if-eqz v10, :cond_c

    .line 468
    iget-object v7, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v8, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DI_LONG:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v7, v8}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 469
    iget-object v7, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v7}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_7

    .line 472
    :cond_c
    iget-object v9, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    double-to-float v10, v11

    invoke-virtual {v9, v10}, Lcom/qianhe/yct/utils/BeepPlayer;->setUrgencyByDistanceCm(F)V

    cmpl-double v9, v7, v13

    if-lez v9, :cond_d

    .line 474
    iget-object v7, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v8, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->BUZZ:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v7, v8}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 475
    iget-object v7, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v7}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_7

    .line 477
    :cond_d
    iget-object v7, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v8, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->WOOD_FISH:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v7, v8}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 478
    iget-object v7, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v7}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_7

    .line 461
    :cond_e
    :goto_6
    iget-object v7, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lcom/qianhe/yct/utils/BeepPlayer;->resume()V

    .line 484
    :cond_f
    :goto_7
    iget-object v7, v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v7, v7, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->areaPreview:Lcom/qianhe/yct/view/MulPointAreaPreView;

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    iget-wide v10, v1, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    iget-wide v12, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    new-array v14, v3, [D

    aput-wide v8, v14, v6

    aput-wide v10, v14, v5

    aput-wide v12, v14, v4

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    iget-wide v10, v1, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    iget-wide v12, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    new-array v3, v3, [D

    aput-wide v8, v3, v6

    aput-wide v10, v3, v5

    aput-wide v12, v3, v4

    invoke-virtual {v7, v14, v3}, Lcom/qianhe/yct/view/MulPointAreaPreView;->setCurrentPoint([D[D)V

    .line 485
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    invoke-direct {v0, v2, v3, v4}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->refreshCadView([DD)V

    return-void
.end method


# virtual methods
.method protected bluetoothStatus(I)V
    .locals 1

    .line 491
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->bluetoothStatus(I)V

    .line 492
    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 494
    iget-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz p1, :cond_0

    .line 495
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 p1, 0x0

    .line 496
    iput-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 499
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->showDataUnAvailable()V

    :cond_1
    return-void
.end method

.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 536
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->multi_point_area:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 537
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected ivBackClick()V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->lltBackTb:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 750
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 751
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_1

    .line 752
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 753
    iput-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

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

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    .line 104
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->finishPreviousActivity()V

    .line 106
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 107
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v3, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v4, "LOG,REFSTATION,ONTIME,1"

    invoke-direct {v2, v3, v4}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 109
    new-instance v1, Lcom/qianhe/baselib/utils/SensorEventHelper;

    invoke-direct {v1, p0}, Lcom/qianhe/baselib/utils/SensorEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

    .line 110
    invoke-virtual {v1}, Lcom/qianhe/baselib/utils/SensorEventHelper;->registerSensorListener()V

    .line 111
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v1

    iput-boolean v1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->isH5Pro:Z

    .line 112
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "current_coords"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    new-instance v2, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v2}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object v2, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 114
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 116
    :try_start_0
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/InsNavi;->longitudeM:D

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 118
    iget-object v2, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    aget-object v5, v1, v0

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/InsNavi;->latitudeM:D

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 119
    iget-object v2, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 123
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 128
    const-string v2, "id"

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v7, v1, v5

    if-lez v7, :cond_3

    .line 130
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v5

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->MULTI_POINT_AREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;)Ljava/util/List;

    move-result-object v1

    .line 131
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 132
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iput-object v1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    .line 133
    iget-object v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v5, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    invoke-virtual {v1, v2, v5}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_1

    .line 136
    :cond_1
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iget v5, v2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    iget-wide v6, v2, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-virtual {v1, v5, v6, v7}, Lcom/qh/yctdevice/YctDevice;->updateCurrentProjectInfo(IJ)V

    .line 138
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iget v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-le v2, v3, :cond_2

    iput v4, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->toothTipView:Lcom/qianhe/yct/view/ToothTipDropdownView;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/view/ToothTipDropdownView;->setToothType(I)V

    .line 140
    iget-object v1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-direct {p0, v1, v4}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->refreshToothType(IZ)V

    .line 145
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    if-nez v1, :cond_4

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 150
    :cond_4
    iget-object v1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvProTitle:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->project_name:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iget-object v5, v5, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    aput-object v5, v3, v0

    const-string v0, "%s:%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-direct {p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->initControls()V

    .line 152
    invoke-direct {p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->initAreaView()V

    .line 153
    invoke-direct {p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->initPlayer()V

    .line 155
    new-instance v0, Lcom/qianhe/yct/view/map/YMap;

    invoke-direct {v0}, Lcom/qianhe/yct/view/map/YMap;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    .line 156
    new-instance v0, Lcom/qianhe/yct/view/map/MapController;

    invoke-direct {v0}, Lcom/qianhe/yct/view/map/MapController;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    .line 157
    iget-object v1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/view/map/YMap;->setMapController(Lcom/qianhe/yct/view/map/BaseMapController;)Z

    .line 158
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/view/map/YMap;->onCreate(Landroid/os/Bundle;)V

    .line 159
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    new-instance v1, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$1;-><init>(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/map/YMap;->setOnLoadMapListener(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V

    .line 192
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->restoreData(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 760
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 761
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onDestroy()V

    .line 762
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/qh/yctdevice/YctDevice;->updateCurrentProjectInfo(IJ)V

    .line 763
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

    invoke-virtual {v0}, Lcom/qianhe/baselib/utils/SensorEventHelper;->unRegisterSensorListener()V

    .line 764
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 765
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 767
    iput-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 769
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

    .line 572
    iget-boolean v4, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->isCheckBase:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v4, :cond_1

    .line 573
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

    .line 658
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
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->hasCheckBasestation:Z

    return-void

    .line 574
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->isCheckBase:Z

    .line 575
    iget-object v4, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

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

    .line 576
    new-instance p1, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;-><init>()V

    .line 577
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CorsChangesDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 578
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 579
    iget-object v1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 580
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getAuthResult()Lcom/qianhe/ntripclientlib/bean/AuthResult;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    const-string v2, "diffConfig"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 581
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 582
    new-instance v0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$3;-><init>(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;)V

    return-void

    .line 593
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

    iget-object v4, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iget-object v4, v4, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    sget v6, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 594
    iget-object v4, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

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

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u57fa\u7ad9\u76f8\u5dee\u8ddd\u79bb\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

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

    .line 596
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->base_mobility_threshold:F

    float-to-double v6, v2

    cmpl-double v2, v0, v6

    if-lez v2, :cond_6

    .line 597
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    const-wide/16 v3, 0x0

    cmpl-double v6, v1, v3

    if-eqz v6, :cond_5

    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    cmpl-double v2, v0, v3

    if-eqz v2, :cond_5

    .line 598
    new-instance v0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;-><init>()V

    .line 599
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "CheckBasestationDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 600
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 601
    sget v2, Lcom/qianhe/yct/R$string;->base_station_have_changed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v2, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 603
    const-string v2, "baseStationEntity"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 604
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 605
    new-instance p1, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$4;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$4;-><init>(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)V

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$OnConfirmListener;)V

    return-void

    .line 634
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

    new-instance v6, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$5;

    invoke-direct {v6, p0, p1}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$5;-><init>(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;Lcom/qianhe/baselib/bean/BaseStationEntity;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_6
    move-object v1, p0

    .line 651
    iput-boolean v3, v1, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->hasCheckBasestation:Z

    return-void

    :cond_7
    move-object v1, p0

    .line 654
    iput-boolean v3, v1, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->hasCheckBasestation:Z

    :goto_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 691
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V

    .line 692
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 693
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v0, :cond_0

    .line 694
    invoke-direct {p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->showStartSetBase()V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/CreateProjectResponse;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 360
    iget v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->state:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_1

    .line 361
    iget-object v1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->multiPointAreaEntity:Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    iget-wide v4, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 362
    iget-object v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    .line 363
    iget-wide v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    const/4 v0, 0x1

    .line 364
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->persistCurrentProject(Z)V

    goto :goto_0

    .line 366
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 367
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 370
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

    .line 681
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 682
    invoke-direct {p0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->showStartSetBase()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 684
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->hasCheckBasestation:Z

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/ModifyProjectResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 701
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->silentModifyProject:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 702
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->silentModifyProject:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 705
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->hasCheckBasestation:Z

    .line 706
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
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-void

    .line 377
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 378
    iget-object v2, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->rollAngleView:Lcom/qianhe/yct/view/RollAngleView;

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    invoke-virtual {v2, v3, v4}, Lcom/qianhe/yct/view/RollAngleView;->setCurrnetAngle(D)V

    .line 379
    sget-object v2, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;->FULL:Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    invoke-virtual {p0, p1, v2}, Lcom/qianhe/yct/base/BaseActivity;->resolveWorkPageAvailable(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;)Z

    .line 380
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->isH5Pro:Z

    if-nez v2, :cond_2

    .line 381
    iget v2, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v3, Lcom/qianhe/yct/enums/InsStatusEnum;->VERTICAL:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v3}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 383
    iget-object v2, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 384
    iget-object v2, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 386
    :cond_1
    iget-object v2, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 387
    iget-object v2, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 389
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v4, p0, Lcom/qianhe/yct/base/BaseActivity;->pitchAngle:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v1

    const-string v1, "%.2f\u00b0"

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    :cond_2
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->hasCheckBasestation:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->handleWorkInsCalibrateTips(Lcom/qianhe/baselib/bean/InsNavi;ZZ)V

    .line 392
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->updateWorkData(Lcom/qianhe/baselib/bean/InsNavi;)V

    .line 393
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->refreshMapLocation(Lcom/qianhe/baselib/bean/InsNavi;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 774
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onLowMemory()V

    .line 775
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onLowMemory()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 552
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onPause()V

    .line 553
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 543
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 544
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onResume()V

    .line 545
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

    .line 546
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvMachineNumber:Landroid/widget/TextView;

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

    .line 322
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 323
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->ivMapState:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivMapState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 324
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivSound"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "webview"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 326
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "cadView"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 327
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltBtn"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 328
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMultiPointAreaWorkBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "tvStatus"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 734
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onStart()V

    .line 735
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 740
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 741
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onStop()V

    return-void
.end method
