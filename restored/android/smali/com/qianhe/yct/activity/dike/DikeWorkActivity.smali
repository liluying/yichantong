.class public Lcom/qianhe/yct/activity/dike/DikeWorkActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "DikeWorkActivity.java"


# instance fields
.field private baseX:D

.field private baseY:D

.field private binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

.field private curPositionWgs84:[D

.field private dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

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

.field private yMap:Lcom/qianhe/yct/view/map/YMap;


# direct methods
.method static bridge synthetic -$$Nest$fgetbaseX(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->baseX:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurPositionWgs84(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)[D
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->curPositionWgs84:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdikeEntity(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/baselib/bean/DikeEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisH5Pro(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->isH5Pro:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBeepPlayer(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/utils/BeepPlayer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/db/DatabaseManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmapController(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/view/map/MapController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetyMap(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Lcom/qianhe/yct/view/map/YMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->hasCheckBasestation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisCheckBase(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->isCheckBase:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBeepPlayer(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;Lcom/qianhe/yct/utils/BeepPlayer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyWorkViewProjectData(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->applyWorkViewProjectData()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhasCadPath(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->hasCadPath()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minitPlayer(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->initPlayer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshToothType(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->refreshToothType(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowFixedCoordinateStartupDialog(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->showFixedCoordinateStartupDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;DI)Ljava/lang/String;
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private applyWorkViewProjectData()V
    .locals 12

    .line 805
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->east1:D

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/DikeEntity;->north1:D

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation1:D

    const/4 v7, 0x3

    new-array v8, v7, [D

    const/4 v9, 0x0

    aput-wide v1, v8, v9

    const/4 v1, 0x1

    aput-wide v3, v8, v1

    const/4 v2, 0x2

    aput-wide v5, v8, v2

    .line 806
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/DikeEntity;->east2:D

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/DikeEntity;->north2:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation2:D

    new-array v0, v7, [D

    aput-wide v3, v0, v9

    aput-wide v5, v0, v1

    aput-wide v10, v0, v2

    .line 809
    iget-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivDirection:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 810
    invoke-direct {p0, v0, v8}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->calculateProjectEndOnCenterline([D[D)[D

    move-result-object v2

    .line 811
    new-instance v3, Landroid/graphics/PointF;

    aget-wide v4, v0, v9

    iget-wide v6, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->baseX:D

    sub-double/2addr v4, v6

    double-to-float v4, v4

    aget-wide v5, v0, v1

    iget-wide v7, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->baseY:D

    sub-double/2addr v5, v7

    double-to-float v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 812
    new-instance v4, Landroid/graphics/PointF;

    aget-wide v5, v2, v9

    iget-wide v7, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->baseX:D

    sub-double/2addr v5, v7

    double-to-float v5, v5

    aget-wide v6, v2, v1

    iget-wide v8, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->baseY:D

    sub-double/2addr v6, v8

    double-to-float v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 813
    invoke-direct {p0, v0, v2}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->initCadView([D[D)V

    goto :goto_0

    .line 815
    :cond_0
    invoke-direct {p0, v8, v0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->calculateProjectEndOnCenterline([D[D)[D

    move-result-object v0

    .line 816
    new-instance v3, Landroid/graphics/PointF;

    aget-wide v4, v8, v9

    iget-wide v6, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->baseX:D

    sub-double/2addr v4, v6

    double-to-float v2, v4

    aget-wide v4, v8, v1

    iget-wide v6, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->baseY:D

    sub-double/2addr v4, v6

    double-to-float v4, v4

    invoke-direct {v3, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 817
    new-instance v4, Landroid/graphics/PointF;

    aget-wide v5, v0, v9

    iget-wide v9, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->baseX:D

    sub-double/2addr v5, v9

    double-to-float v2, v5

    aget-wide v5, v0, v1

    iget-wide v9, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->baseY:D

    sub-double/2addr v5, v9

    double-to-float v5, v5

    invoke-direct {v4, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 818
    invoke-direct {p0, v8, v0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->initCadView([D[D)V

    .line 820
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    iget-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/DikeEntity;->width:D

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/qianhe/yct/view/WorkView;->setProjectData(Landroid/graphics/PointF;Landroid/graphics/PointF;D)V

    .line 821
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/WorkView;->setUseBitmap(Z)V

    .line 822
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivDirection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/view/WorkView;->resfreshDirection(I)V

    return-void
.end method

.method private calculateElevA()D
    .locals 6

    .line 738
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->tickA:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 739
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation1:D

    return-wide v0

    .line 740
    :cond_0
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_1

    .line 741
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation1:D

    add-double/2addr v3, v1

    :cond_1
    return-wide v3
.end method

.method private calculateElevB(DDD)D
    .locals 4

    .line 748
    iget-object p5, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget p5, p5, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object p6, Lcom/qianhe/baselib/enums/DikeEnum;->DOWN:Lcom/qianhe/baselib/enums/DikeEnum;

    invoke-virtual {p6}, Lcom/qianhe/baselib/enums/DikeEnum;->getType()I

    move-result p6

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    if-ne p5, p6, :cond_2

    .line 749
    iget-object p5, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget p6, p5, Lcom/qianhe/baselib/bean/DikeEntity;->tickB:I

    if-ne p6, v2, :cond_0

    .line 750
    iget-wide p1, p5, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation2:D

    return-wide p1

    .line 751
    :cond_0
    iget-wide v2, p5, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    cmpl-double p6, v2, v0

    if-eqz p6, :cond_1

    .line 752
    iget-wide p1, p5, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation2:D

    :goto_0
    add-double/2addr p1, v2

    return-wide p1

    :cond_1
    sub-double/2addr p1, p3

    return-wide p1

    .line 757
    :cond_2
    iget-object p5, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget p6, p5, Lcom/qianhe/baselib/bean/DikeEntity;->tickB:I

    if-ne p6, v2, :cond_3

    .line 758
    iget-wide p1, p5, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation2:D

    return-wide p1

    .line 759
    :cond_3
    iget-wide v2, p5, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    cmpl-double p6, v2, v0

    if-eqz p6, :cond_4

    .line 760
    iget-wide p1, p5, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation2:D

    goto :goto_0

    :cond_4
    add-double/2addr p1, p3

    return-wide p1
.end method

.method private calculateProjectEndOnCenterline([D[D)[D
    .locals 12

    .line 797
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/DikeEntity;->length:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 799
    invoke-static {p1, p2}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v0

    :cond_0
    move-wide v10, v0

    const/4 v0, 0x0

    .line 801
    aget-wide v2, p1, v0

    const/4 v1, 0x1

    aget-wide v4, p1, v1

    aget-wide v6, p2, v0

    aget-wide v8, p2, v1

    invoke-static/range {v2 .. v11}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->calculatePointOnLineDirectionGAUSS(DDDDD)[D

    move-result-object p1

    return-object p1
.end method

.method private calculateRatio([D[DD)D
    .locals 8

    .line 720
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->ratio:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_0

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    div-double/2addr v1, p1

    return-wide v1

    .line 723
    :cond_0
    iget v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->tickA:I

    const/4 v2, 0x1

    const/4 v5, 0x2

    if-ne v1, v2, :cond_1

    iget v6, v0, Lcom/qianhe/baselib/bean/DikeEntity;->tickB:I

    if-ne v6, v2, :cond_1

    .line 724
    aget-wide v0, p1, v5

    aget-wide p1, p2, v5

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    :goto_0
    div-double/2addr p1, p3

    return-wide p1

    :cond_1
    if-ne v1, v2, :cond_2

    .line 725
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    cmpl-double v1, v6, v3

    if-eqz v1, :cond_2

    .line 726
    aget-wide v0, p1, v5

    aget-wide p1, p2, v5

    add-double/2addr p1, v6

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    goto :goto_0

    .line 727
    :cond_2
    iget v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->tickB:I

    if-ne v1, v2, :cond_3

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    cmpl-double v6, v1, v3

    if-eqz v6, :cond_3

    .line 728
    aget-wide v3, p2, v5

    aget-wide v5, p1, v5

    add-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    sub-double/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    goto :goto_0

    .line 729
    :cond_3
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    cmpl-double v6, v1, v3

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    cmpl-double v0, v6, v3

    if-eqz v0, :cond_4

    .line 730
    aget-wide v3, p1, v5

    add-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    aget-wide p1, p2, v5

    iget-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    add-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    goto :goto_0

    :cond_4
    return-wide v3
.end method

.method private flatDitch(Lcom/qianhe/baselib/bean/InsNavi;)D
    .locals 6

    .line 770
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->tickA:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 771
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation1:D

    goto :goto_1

    .line 772
    :cond_0
    iget v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->tickB:I

    if-ne v1, v2, :cond_1

    .line 773
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation2:D

    goto :goto_1

    .line 775
    :cond_1
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_2

    .line 776
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation1:D

    :goto_0
    add-double/2addr v1, v3

    goto :goto_1

    .line 777
    :cond_2
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_3

    .line 778
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation2:D

    goto :goto_0

    .line 780
    :cond_3
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation1:D

    .line 784
    :goto_1
    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-nez v0, :cond_4

    .line 785
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    goto :goto_2

    :cond_4
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 787
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    goto :goto_2

    .line 789
    :cond_5
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    .line 791
    :goto_2
    invoke-static {v1, v2, v3, v4}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->compareElevation(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    return-wide v0
.end method

.method private hasCadPath()Z
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

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

    .line 350
    invoke-direct {p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->hasCadPath()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 353
    :cond_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-object v3, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-object v3, v3, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/qh/xcad/XCadView;->setCadFilePath(Ljava/lang/String;)V

    .line 354
    iget-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v2, v1}, Lcom/qh/xcad/XCadView;->setFollowVehicle(Z)V

    .line 355
    iget-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v2, v1}, Lcom/qh/xcad/XCadView;->setCadTouchEnable(Z)V

    .line 356
    iget-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v2, v1}, Lcom/qh/xcad/XCadView;->setSelectSingleLine(Z)V

    .line 357
    iget-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v2, v1}, Lcom/qh/xcad/XCadView;->setDrawSelectedLineNumText(Z)V

    .line 358
    iget-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    new-instance v3, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    aget-wide v4, p1, v1

    aget-wide v6, p1, v0

    sget p1, Lcom/qianhe/yct/R$string;->starting_point:I

    .line 359
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;-><init>(DDLjava/lang/String;)V

    new-instance v4, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    aget-wide v5, p2, v1

    aget-wide v7, p2, v0

    sget p1, Lcom/qianhe/yct/R$string;->ending_point:I

    .line 360
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;-><init>(DDLjava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    aput-object v3, p1, v1

    aput-object v4, p1, v0

    .line 358
    invoke-virtual {v2, p1, v0, v0, v1}, Lcom/qh/xcad/XCadView;->setXCadItemAreaPoint([Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;ZZZ)V

    return-void
.end method

.method private initPlayer()V
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-nez v0, :cond_0

    .line 640
    new-instance v0, Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-direct {v0}, Lcom/qianhe/yct/utils/BeepPlayer;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_0
    return-void
.end method

.method private initWorkView()V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 827
    iget-wide v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->baseX:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    .line 828
    iget-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v3, v2, Lcom/qianhe/baselib/bean/DikeEntity;->east1:D

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/DikeEntity;->north1:D

    iget-wide v7, v2, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation1:D

    const/4 v2, 0x3

    new-array v2, v2, [D

    aput-wide v3, v2, v1

    aput-wide v5, v2, v0

    const/4 v3, 0x2

    aput-wide v7, v2, v3

    .line 830
    aget-wide v3, v2, v1

    iput-wide v3, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->baseX:D

    .line 831
    aget-wide v0, v2, v0

    iput-wide v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->baseY:D

    .line 832
    invoke-direct {p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->applyWorkViewProjectData()V

    :cond_0
    return-void
.end method

.method private persistCurrentProject(Z)V
    .locals 5

    .line 611
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 613
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    if-eqz p1, :cond_1

    .line 614
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 615
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->silentModifyProject:Z

    .line 616
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshCadView([DD)V
    .locals 8

    .line 994
    invoke-direct {p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->hasCadPath()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

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

    .line 1001
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

    .line 1002
    iput-object v1, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->curPositionWgs84:[D

    .line 1003
    iget-object v2, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/map/YMap;->isInit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1004
    iget-object v2, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    iget-object v5, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->mapContainer:Lcom/qianhe/yct/view/map/MapContainerView;

    new-instance v10, Lcom/qianhe/yct/view/map/GeoPoint;

    aget-wide v11, v1, v3

    aget-wide v13, v1, v9

    aget-wide v15, v1, v4

    invoke-direct/range {v10 .. v16}, Lcom/qianhe/yct/view/map/GeoPoint;-><init>(DDD)V

    invoke-virtual {v2, v5, v10}, Lcom/qianhe/yct/view/map/YMap;->init(Landroid/view/ViewGroup;Lcom/qianhe/yct/view/map/GeoPoint;)Z

    return-void

    .line 1006
    :cond_0
    iget-object v2, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

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

    .line 590
    iget-boolean v3, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->isH5Pro:Z

    if-eqz v3, :cond_5

    if-nez p1, :cond_0

    .line 593
    sget v3, Lcom/qianhe/yct/R$string;->left_tooth:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 595
    sget v3, Lcom/qianhe/yct/R$string;->rigth_tooth:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 597
    :cond_1
    sget v3, Lcom/qianhe/yct/R$string;->center_tooth:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 599
    :goto_0
    iget-object v4, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvDistanceDesH:Landroidx/appcompat/widget/AppCompatTextView;

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

    .line 600
    iget-object v4, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvDistanceDesV:Landroidx/appcompat/widget/AppCompatTextView;

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

    .line 602
    iget-object v3, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvDistanceDesM:Landroidx/appcompat/widget/AppCompatTextView;

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

    .line 603
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/view/WorkView;->refreshToothType(I)V

    .line 604
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iput p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-eqz p2, :cond_5

    .line 605
    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->persistCurrentProject(Z)V

    :cond_5
    return-void
.end method

.method private restoreData(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 366
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivMapState:Landroid/widget/ImageView;

    const-string v1, "ivMapState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 367
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivSound:Landroid/widget/ImageView;

    const-string v1, "ivSound"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 368
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivDirection:Landroid/widget/ImageView;

    const-string v1, "ivDirection"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 369
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    const-string/jumbo v1, "webview"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    const-string v1, "cadView"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    const-string v1, "lltBtn"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    const-string v1, "lltH5"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    const-string v1, "lltH5Pro"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStatusV:Landroid/widget/TextView;

    const-string/jumbo v1, "tvStatusV"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStatusH:Landroid/widget/TextView;

    const-string/jumbo v1, "tvStatusH"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, p1, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivDirection:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/view/WorkView;->resfreshDirection(I)V

    .line 377
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 378
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 p1, 0x0

    .line 380
    iput-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 382
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->initPlayer()V

    :cond_1
    return-void
.end method

.method private showDataUnAvailable()V
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvDiffH:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->data_unavailable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 578
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvDiffV:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->data_unavailable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 579
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvDiffH:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 580
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 581
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStatusH:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 582
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStatusV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 583
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStatusH:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStatusV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showFixedCoordinateStartupDialog()V
    .locals 4

    .line 498
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->isCheckBase:Z

    if-eqz v0, :cond_0

    .line 499
    new-instance v0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;-><init>()V

    .line 500
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "FixedCoordinateStartupDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 501
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 502
    const-string v2, "baseProEntity"

    iget-object v3, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 503
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 504
    new-instance v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$13;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$13;-><init>(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->setOnCloseListener(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;)V

    :cond_0
    return-void
.end method

.method private showStartSetBase()V
    .locals 7

    .line 545
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->isCheckBase:Z

    if-eqz v0, :cond_0

    .line 546
    sget v0, Lcom/qianhe/yct/R$string;->connected_base_whether_start_config:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$14;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$14;-><init>(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V

    const-string v5, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method

.method private slopeDitch(Lcom/qianhe/baselib/bean/InsNavi;[D[D)D
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 668
    iget-object v2, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v2, :cond_0

    .line 669
    new-array v2, v9, [D

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    aput-wide v3, v2, v12

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    aput-wide v3, v2, v11

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    aput-wide v3, v2, v10

    :goto_0
    move-object/from16 v16, v2

    goto :goto_1

    :cond_0
    if-ne v2, v10, :cond_1

    .line 671
    new-array v2, v9, [D

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    aput-wide v3, v2, v12

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    aput-wide v3, v2, v11

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    aput-wide v3, v2, v10

    goto :goto_0

    .line 673
    :cond_1
    new-array v2, v9, [D

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->longitudeM:D

    aput-wide v3, v2, v12

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->latitudeM:D

    aput-wide v3, v2, v11

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    aput-wide v3, v2, v10

    goto :goto_0

    .line 676
    :goto_1
    invoke-static/range {p2 .. p3}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v13

    .line 678
    invoke-direct {v0, v7, v8, v13, v14}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->calculateRatio([D[DD)D

    move-result-wide v1

    .line 679
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    mul-double v3, v1, v13

    .line 683
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    .line 685
    iget-object v1, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v2, Lcom/qianhe/baselib/enums/DikeEnum;->DOWN:Lcom/qianhe/baselib/enums/DikeEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/DikeEnum;->getType()I

    move-result v2

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    if-ne v1, v2, :cond_2

    .line 687
    invoke-direct {v0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->calculateElevA()D

    move-result-wide v1

    .line 688
    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->calculateElevB(DDD)D

    move-result-wide v3

    .line 689
    aget-wide v17, v7, v12

    aget-wide v19, v7, v11

    new-array v7, v9, [D

    aput-wide v17, v7, v12

    aput-wide v19, v7, v11

    aput-wide v1, v7, v10

    .line 690
    aget-wide v21, v8, v12

    aget-wide v23, v8, v11

    move-wide/from16 v25, v13

    invoke-static/range {v17 .. v26}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->calculatePointOnLineDirectionGAUSS(DDDDD)[D

    move-result-object v8

    .line 691
    aget-wide v13, v8, v12

    aget-wide v17, v8, v11

    new-array v8, v9, [D

    aput-wide v13, v8, v12

    aput-wide v17, v8, v11

    aput-wide v3, v8, v10

    .line 692
    iget-object v13, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v13, v13, Lcom/qianhe/baselib/bean/DikeEntity;->width:D

    div-double v13, v13, v27

    invoke-static {v7, v8, v13, v14}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->getDitchFence([D[DD)[[D

    move-result-object v7

    .line 694
    iget-object v8, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v13, v8, Lcom/qianhe/baselib/bean/DikeEntity;->targetLon1:D

    const/4 v15, 0x2

    const/16 v29, 0x1

    iget-wide v10, v8, Lcom/qianhe/baselib/bean/DikeEntity;->targetLat1:D

    new-array v8, v9, [D

    aput-wide v13, v8, v12

    aput-wide v10, v8, v29

    aput-wide v1, v8, v15

    .line 696
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    aget-object v2, v7, v12

    invoke-virtual {v1, v2}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v18

    .line 698
    iget-object v1, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v10, v1, Lcom/qianhe/baselib/bean/DikeEntity;->targetLon2:D

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/DikeEntity;->targetLat2:D

    new-array v7, v9, [D

    aput-wide v10, v7, v12

    aput-wide v1, v7, v29

    aput-wide v3, v7, v15

    .line 699
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v13, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    move-wide v14, v5

    move-object/from16 v19, v7

    move-object/from16 v17, v8

    invoke-static/range {v13 .. v19}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->checkPositionGeodetic(FD[D[D[D[D)Lcom/qianhe/baselib/bean/CheckResult;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-wide/from16 v25, v13

    const/4 v15, 0x2

    const/16 v29, 0x1

    .line 701
    invoke-direct {v0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->calculateElevA()D

    move-result-wide v1

    .line 702
    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->calculateElevB(DDD)D

    move-result-wide v3

    .line 703
    aget-wide v17, v7, v12

    aget-wide v19, v7, v29

    new-array v7, v9, [D

    aput-wide v17, v7, v12

    aput-wide v19, v7, v29

    aput-wide v1, v7, v15

    .line 704
    aget-wide v21, v8, v12

    aget-wide v23, v8, v29

    invoke-static/range {v17 .. v26}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->calculatePointOnLineDirectionGAUSS(DDDDD)[D

    move-result-object v8

    .line 705
    aget-wide v10, v8, v12

    aget-wide v13, v8, v29

    new-array v8, v9, [D

    aput-wide v10, v8, v12

    aput-wide v13, v8, v29

    aput-wide v3, v8, v15

    .line 706
    iget-object v3, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v3, v3, Lcom/qianhe/baselib/bean/DikeEntity;->width:D

    div-double v3, v3, v27

    invoke-static {v8, v7, v3, v4}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->getDitchFence([D[DD)[[D

    move-result-object v3

    .line 708
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v17

    .line 710
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v4

    aget-object v3, v3, v12

    invoke-virtual {v4, v3}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v18

    .line 712
    iget-object v3, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v7, v3, Lcom/qianhe/baselib/bean/DikeEntity;->targetLon1:D

    iget-wide v3, v3, Lcom/qianhe/baselib/bean/DikeEntity;->targetLat1:D

    new-array v9, v9, [D

    aput-wide v7, v9, v12

    aput-wide v3, v9, v29

    aput-wide v1, v9, v15

    .line 713
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v13, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    move-wide v14, v5

    move-object/from16 v19, v9

    invoke-static/range {v13 .. v19}, Lcom/qianhe/baselib/utils/workchecker/SlopePositionChecker;->checkPositionGeodetic(FD[D[D[D[D)Lcom/qianhe/baselib/bean/CheckResult;

    move-result-object v1

    .line 715
    :goto_2
    iget-wide v1, v1, Lcom/qianhe/baselib/bean/CheckResult;->verticalDistance:D

    return-wide v1
.end method


# virtual methods
.method protected bluetoothStatus(I)V
    .locals 1

    .line 564
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->bluetoothStatus(I)V

    .line 565
    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 567
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz p1, :cond_0

    .line 568
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 p1, 0x0

    .line 569
    iput-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 572
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->showDataUnAvailable()V

    :cond_1
    return-void
.end method

.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 662
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 651
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->dike:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 652
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1052
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1055
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 1056
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_1

    .line 1057
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 1058
    iput-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

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

    .line 110
    const-string v1, ","

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    .line 111
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->finishPreviousActivity()V

    .line 113
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 115
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v4, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v5, "LOG,REFSTATION,ONTIME,1"

    invoke-direct {v3, v4, v5}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 116
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 117
    new-instance v2, Lcom/qianhe/baselib/utils/SensorEventHelper;

    invoke-direct {v2, p0}, Lcom/qianhe/baselib/utils/SensorEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

    .line 118
    invoke-virtual {v2}, Lcom/qianhe/baselib/utils/SensorEventHelper;->registerSensorListener()V

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v2}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v2

    iput-boolean v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->isH5Pro:Z

    .line 120
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v3, "current_coords"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    new-instance v3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object v3, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 122
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_0

    .line 124
    :try_start_0
    iget-object v3, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/InsNavi;->longitudeM:D

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 125
    iget-object v3, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/InsNavi;->latitudeM:D

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 126
    iget-object v3, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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
    move-exception v1

    .line 128
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

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
    iget-object v3, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    sget-object v7, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

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

    check-cast v1, Lcom/qianhe/baselib/bean/DikeEntity;

    iput-object v1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    .line 138
    iget-object v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v3, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    invoke-virtual {v1, v2, v3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_1

    .line 142
    :cond_1
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    iget-wide v7, v2, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-virtual {v1, v3, v7, v8}, Lcom/qh/yctdevice/YctDevice;->updateCurrentProjectInfo(IJ)V

    .line 144
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-le v2, v4, :cond_2

    iput v6, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    .line 145
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->toothTipView:Lcom/qianhe/yct/view/ToothTipDropdownView;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/view/ToothTipDropdownView;->setToothType(I)V

    .line 146
    iget-object v1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-direct {p0, v1, v6}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->refreshToothType(IZ)V

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
    iget-object v1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

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
    iget-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvProTitle:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v2, v1, Lcom/qianhe/baselib/bean/DikeEntity;->east1:D

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/DikeEntity;->north1:D

    iget-wide v9, v1, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation1:D

    new-array v11, v0, [D

    aput-wide v2, v11, v6

    aput-wide v7, v11, v5

    aput-wide v9, v11, v4

    iput-object v11, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->pointA:[D

    .line 158
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/DikeEntity;->east2:D

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/DikeEntity;->north2:D

    iget-wide v9, v1, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation2:D

    new-array v0, v0, [D

    aput-wide v2, v0, v6

    aput-wide v7, v0, v5

    aput-wide v9, v0, v4

    iput-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->pointB:[D

    .line 159
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvProjectDistance:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->project_length:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/DikeEntity;->length:D

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
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$1;-><init>(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivResetLocation:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$2;-><init>(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivStartPoint:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$3;-><init>(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivMapState:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$4;-><init>(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivZoom:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$5;-><init>(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 236
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivSound:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$6;-><init>(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivDirection:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$7;-><init>(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/DikeEnum;->DOWN:Lcom/qianhe/baselib/enums/DikeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/DikeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 262
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivSlopeType:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_dike_flat:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 263
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivArm:Lcom/qianhe/yct/view/ArmView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_wg_arm:I

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ArmView;->setImageResource(I)V

    goto :goto_3

    .line 264
    :cond_7
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/DikeEnum;->UP:Lcom/qianhe/baselib/enums/DikeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/DikeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 265
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivSlopeType:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_dike_flat:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 266
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivArm:Lcom/qianhe/yct/view/ArmView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_wg_arm_r:I

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ArmView;->setImageResource(I)V

    goto :goto_3

    .line 268
    :cond_8
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivSlopeType:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_dike_flat:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 269
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivArm:Lcom/qianhe/yct/view/ArmView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_wg_arm:I

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ArmView;->setImageResource(I)V

    .line 271
    :goto_3
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->isH5Pro:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_9

    const/16 v1, 0x8

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->isH5Pro:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    goto :goto_5

    :cond_a
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStartDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->display_distance_starting_point:I

    if-ne v1, v5, :cond_b

    goto :goto_6

    :cond_b
    const/16 v6, 0x8

    :goto_6
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->toothTipView:Lcom/qianhe/yct/view/ToothTipDropdownView;

    new-instance v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$8;-><init>(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ToothTipDropdownView;->setOnSelectedListener(Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;)V

    .line 293
    invoke-direct {p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->initPlayer()V

    .line 295
    new-instance v0, Lcom/qianhe/yct/view/map/YMap;

    invoke-direct {v0}, Lcom/qianhe/yct/view/map/YMap;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    .line 296
    new-instance v0, Lcom/qianhe/yct/view/map/MapController;

    invoke-direct {v0}, Lcom/qianhe/yct/view/map/MapController;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mapController:Lcom/qianhe/yct/view/map/MapController;

    .line 297
    iget-object v1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/view/map/YMap;->setMapController(Lcom/qianhe/yct/view/map/BaseMapController;)Z

    .line 298
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/view/map/YMap;->onCreate(Landroid/os/Bundle;)V

    .line 299
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    new-instance v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$9;-><init>(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/map/YMap;->setOnLoadMapListener(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V

    .line 341
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->restoreData(Landroid/os/Bundle;)V

    .line 342
    invoke-direct {p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->initWorkView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 1065
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 1066
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onDestroy()V

    .line 1067
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/qh/yctdevice/YctDevice;->updateCurrentProjectInfo(IJ)V

    .line 1068
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->sensorEventHelper:Lcom/qianhe/baselib/utils/SensorEventHelper;

    invoke-virtual {v0}, Lcom/qianhe/baselib/utils/SensorEventHelper;->unRegisterSensorListener()V

    .line 1069
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 1070
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_0

    .line 1071
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 1072
    iput-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    .line 1074
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

    .line 404
    iget-boolean v4, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->isCheckBase:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v4, :cond_1

    .line 405
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

    .line 492
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
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->hasCheckBasestation:Z

    return-void

    .line 406
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->isCheckBase:Z

    .line 407
    iget-object v4, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

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

    .line 408
    new-instance p1, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;-><init>()V

    .line 409
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CorsChangesDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 410
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 411
    iget-object v1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 412
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getAuthResult()Lcom/qianhe/ntripclientlib/bean/AuthResult;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    const-string v2, "diffConfig"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 413
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 414
    new-instance v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$10;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$10;-><init>(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;)V

    return-void

    .line 425
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

    iget-object v4, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-object v4, v4, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    sget v6, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 426
    iget-object v4, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

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

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u57fa\u7ad9\u76f8\u5dee\u8ddd\u79bb\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

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

    .line 428
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->base_mobility_threshold:F

    float-to-double v6, v2

    cmpl-double v2, v0, v6

    if-lez v2, :cond_6

    .line 429
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    const-wide/16 v3, 0x0

    cmpl-double v6, v1, v3

    if-eqz v6, :cond_5

    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    cmpl-double v2, v0, v3

    if-eqz v2, :cond_5

    .line 431
    new-instance v0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;-><init>()V

    .line 432
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "CheckBasestationDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 433
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 434
    sget v2, Lcom/qianhe/yct/R$string;->base_station_have_changed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 436
    const-string v2, "baseStationEntity"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 437
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 438
    new-instance p1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;-><init>(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$OnConfirmListener;)V

    return-void

    .line 467
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

    new-instance v6, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$12;

    invoke-direct {v6, p0, p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$12;-><init>(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;Lcom/qianhe/baselib/bean/BaseStationEntity;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_6
    move-object v1, p0

    .line 485
    iput-boolean v3, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->hasCheckBasestation:Z

    return-void

    :cond_7
    move-object v1, p0

    .line 488
    iput-boolean v3, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->hasCheckBasestation:Z

    :goto_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 526
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V

    .line 527
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 528
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v0, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->showStartSetBase()V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/CreateProjectResponse;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 622
    iget v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->state:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_1

    .line 623
    iget-object v1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    iget-wide v4, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 624
    iget-object v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    .line 625
    iget-wide v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    const/4 v0, 0x1

    .line 626
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->persistCurrentProject(Z)V

    goto :goto_0

    .line 628
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 629
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 632
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_2

    .line 633
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

    .line 515
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 516
    invoke-direct {p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->showStartSetBase()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 518
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->hasCheckBasestation:Z

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/ModifyProjectResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 536
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->silentModifyProject:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 537
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->silentModifyProject:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 540
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->hasCheckBasestation:Z

    .line 541
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
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    goto/16 :goto_14

    .line 840
    :cond_0
    iget-object v6, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-nez v6, :cond_1

    goto/16 :goto_14

    .line 841
    :cond_1
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_2

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_2

    iput-object v0, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 844
    :cond_2
    :try_start_0
    iget-object v6, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->rollAngleView:Lcom/qianhe/yct/view/RollAngleView;

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    invoke-virtual {v6, v10, v11}, Lcom/qianhe/yct/view/RollAngleView;->setCurrnetAngle(D)V

    .line 845
    sget-object v6, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;->FULL:Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    invoke-virtual {v1, v0, v6}, Lcom/qianhe/yct/base/BaseActivity;->resolveWorkPageAvailable(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;)Z

    .line 846
    iget-boolean v6, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->isH5Pro:Z

    if-nez v6, :cond_4

    .line 847
    iget v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v7, Lcom/qianhe/yct/enums/InsStatusEnum;->VERTICAL:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v7}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v7

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    .line 849
    iget-object v6, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 850
    iget-object v6, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_13

    .line 852
    :cond_3
    iget-object v6, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 853
    iget-object v6, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/view/View;->setClickable(Z)V

    .line 855
    :goto_0
    iget-object v6, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvArmAngle:Landroid/widget/TextView;

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

    .line 857
    :cond_4
    iget-boolean v6, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    iget-boolean v7, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->hasCheckBasestation:Z

    invoke-virtual {v1, v0, v6, v7}, Lcom/qianhe/yct/base/BaseActivity;->handleWorkInsCalibrateTips(Lcom/qianhe/baselib/bean/InsNavi;ZZ)V

    .line 859
    iget-object v6, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    if-eqz v6, :cond_24

    .line 861
    iget v6, v6, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-nez v6, :cond_5

    .line 862
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

    .line 864
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    new-array v14, v2, [D

    aput-wide v6, v14, v4

    aput-wide v10, v14, v5

    aput-wide v12, v14, v3

    goto :goto_1

    .line 866
    :cond_6
    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    iget-wide v12, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    new-array v14, v2, [D

    aput-wide v6, v14, v4

    aput-wide v10, v14, v5

    aput-wide v12, v14, v3

    .line 870
    :goto_1
    iget-object v6, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivDirection:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 871
    iget-object v6, v1, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v6, v6, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v6, v6, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    iget-object v7, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->pointB:[D

    iget-object v10, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->pointA:[D

    iget-wide v11, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    move-wide v15, v8

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    const/4 v13, 0x0

    const/16 v17, 0x1

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    const/16 v18, 0x0

    new-array v13, v2, [D

    aput-wide v11, v13, v18

    aput-wide v8, v13, v17

    aput-wide v4, v13, v3

    invoke-static {v6, v7, v10, v14, v13}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->calculatePosition(F[D[D[D[D)Lcom/qianhe/baselib/bean/PositionResult;

    move-result-object v4

    goto :goto_2

    :cond_7
    move-wide v15, v8

    const/16 v17, 0x1

    const/16 v18, 0x0

    .line 873
    iget-object v4, v1, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v4, v4, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v4, v4, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    iget-object v5, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->pointA:[D

    iget-object v6, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->pointB:[D

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    iget-wide v9, v0, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    iget-wide v11, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    new-array v13, v2, [D

    aput-wide v7, v13, v18

    aput-wide v9, v13, v17

    aput-wide v11, v13, v3

    invoke-static {v4, v5, v6, v14, v13}, Lcom/qianhe/baselib/utils/workchecker/DitchPositionChecker;->calculatePosition(F[D[D[D[D)Lcom/qianhe/baselib/bean/PositionResult;

    move-result-object v4

    .line 876
    :goto_2
    iget-wide v5, v4, Lcom/qianhe/baselib/bean/PositionResult;->distance:D

    iget-object v7, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v7, v7, Lcom/qianhe/baselib/bean/DikeEntity;->width:D

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double v7, v7, v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v11

    cmpg-double v13, v5, v7

    if-gtz v13, :cond_8

    const/16 v24, 0x1

    goto :goto_3

    :cond_8
    const/16 v24, 0x0

    .line 879
    :goto_3
    iget-object v5, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvBoundTip:Landroid/widget/TextView;

    if-eqz v24, :cond_9

    const/16 v13, 0x8

    goto :goto_4

    :cond_9
    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 882
    iget-object v5, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStartDistance:Landroid/widget/TextView;

    const-string v6, "%s%s"

    sget v7, Lcom/qianhe/yct/R$string;->start_distance:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->pointA:[D

    move-wide/from16 v19, v9

    invoke-static {v14, v8}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Lcom/qianhe/yct/base/BaseActivity;->formatDistance(D)Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v7, v9, v18

    aput-object v8, v9, v17

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    iget-object v5, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v5, v5, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v6, Lcom/qianhe/baselib/enums/DikeEnum;->FLAT:Lcom/qianhe/baselib/enums/DikeEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/DikeEnum;->getType()I

    move-result v6

    if-ne v5, v6, :cond_a

    .line 885
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->flatDitch(Lcom/qianhe/baselib/bean/InsNavi;)D

    move-result-wide v5

    goto :goto_6

    .line 886
    :cond_a
    iget-object v5, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v5, v5, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v6, Lcom/qianhe/baselib/enums/DikeEnum;->DOWN:Lcom/qianhe/baselib/enums/DikeEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/DikeEnum;->getType()I

    move-result v6

    if-eq v5, v6, :cond_c

    iget-object v5, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v5, v5, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v6, Lcom/qianhe/baselib/enums/DikeEnum;->UP:Lcom/qianhe/baselib/enums/DikeEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/DikeEnum;->getType()I

    move-result v6

    if-ne v5, v6, :cond_b

    goto :goto_5

    :cond_b
    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_6

    .line 887
    :cond_c
    :goto_5
    iget-object v5, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->pointA:[D

    iget-object v6, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->pointB:[D

    invoke-direct {v1, v0, v5, v6}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->slopeDitch(Lcom/qianhe/baselib/bean/InsNavi;[D[D)D

    move-result-wide v5

    .line 889
    :goto_6
    iget-object v7, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v7, v7, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivArm:Lcom/qianhe/yct/view/ArmView;

    div-double v8, v5, v11

    iget-boolean v10, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->isH5Pro:Z

    if-eqz v10, :cond_d

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    goto :goto_7

    :cond_d
    iget-wide v10, v0, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iget v12, v1, Lcom/qianhe/yct/base/BaseActivity;->zeroDegrees:F

    float-to-double v12, v12

    sub-double/2addr v10, v12

    :goto_7
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/qianhe/yct/view/ArmView;->updateAnimationValue(DD)V

    .line 890
    invoke-virtual {v1, v5, v6}, Lcom/qianhe/yct/base/BaseActivity;->formatElevationDiffText(D)Ljava/lang/String;

    move-result-object v7

    .line 891
    iget-object v8, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvUnitV:Landroid/widget/TextView;

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    cmp-long v13, v9, v11

    if-gez v13, :cond_e

    sget v9, Lcom/qianhe/yct/R$string;->unit_cm:I

    goto :goto_8

    :cond_e
    sget v9, Lcom/qianhe/yct/R$string;->unit_m:I

    :goto_8
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 892
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-float v8, v8

    iget-object v9, v1, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v9, v9, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v9, v9, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float v9, v9, v10

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_f

    const/4 v8, 0x1

    goto :goto_9

    :cond_f
    const/4 v8, 0x0

    :goto_9
    if-eqz v8, :cond_14

    .line 894
    iget-object v9, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStatusV:Landroid/widget/TextView;

    sget v10, Lcom/qianhe/yct/R$string;->hold:I

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    iget-boolean v9, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v9, :cond_10

    iget-object v9, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStatusV:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 896
    :cond_10
    iget-object v9, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 897
    iget-boolean v9, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v9, :cond_11

    iget-object v9, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvDiffV:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 898
    :cond_11
    iget-object v9, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivStatusV:Landroid/widget/ImageView;

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->round(D)J

    move-result-wide v21

    const-wide/16 v25, 0x1

    cmp-long v10, v21, v25

    if-gez v10, :cond_12

    sget v10, Lcom/qianhe/yct/R$drawable;->icon_status_v:I

    goto :goto_a

    :cond_12
    cmpl-double v10, v5, v15

    if-lez v10, :cond_13

    sget v10, Lcom/qianhe/yct/R$drawable;->icon_status_hold_dig:I

    goto :goto_a

    :cond_13
    sget v10, Lcom/qianhe/yct/R$drawable;->icon_status_hold_fill:I

    :goto_a
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    :cond_14
    cmpl-double v9, v5, v15

    if-lez v9, :cond_15

    .line 900
    iget-object v9, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStatusV:Landroid/widget/TextView;

    sget v10, Lcom/qianhe/yct/R$string;->dig:I

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    iget-object v9, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStatusV:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 902
    iget-object v9, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 903
    iget-object v9, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvDiffV:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 904
    iget-object v9, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivStatusV:Landroid/widget/ImageView;

    sget v10, Lcom/qianhe/yct/R$drawable;->icon_status_dig:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 906
    :cond_15
    iget-object v9, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStatusV:Landroid/widget/TextView;

    sget v10, Lcom/qianhe/yct/R$string;->fill:I

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    iget-object v9, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStatusV:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 908
    iget-object v9, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 909
    iget-object v9, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvDiffV:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 910
    iget-object v9, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivStatusV:Landroid/widget/ImageView;

    sget v10, Lcom/qianhe/yct/R$drawable;->icon_status_fill:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 913
    :goto_b
    iget-wide v9, v4, Lcom/qianhe/baselib/bean/PositionResult;->distance:D

    invoke-virtual {v1, v9, v10}, Lcom/qianhe/yct/base/BaseActivity;->formatElevationDiffText(D)Ljava/lang/String;

    move-result-object v9

    .line 914
    iget-object v10, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvDiffH:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 915
    iget-object v10, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvUnitH:Landroid/widget/TextView;

    move-wide/from16 v21, v11

    iget-wide v11, v4, Lcom/qianhe/baselib/bean/PositionResult;->distance:D

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    cmp-long v18, v11, v21

    if-gez v18, :cond_16

    sget v11, Lcom/qianhe/yct/R$string;->unit_cm:I

    goto :goto_c

    :cond_16
    sget v11, Lcom/qianhe/yct/R$string;->unit_m:I

    :goto_c
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 916
    iget v10, v4, Lcom/qianhe/baselib/bean/PositionResult;->position:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_17

    .line 917
    iget-object v10, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvDiffH:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 918
    iget-object v10, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStatusH:Landroid/widget/TextView;

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 919
    iget-object v10, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStatusH:Landroid/widget/TextView;

    sget v11, Lcom/qianhe/yct/R$string;->left_leaning:I

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 920
    iget-object v10, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivStatusH:Landroid/widget/ImageView;

    sget v11, Lcom/qianhe/yct/R$drawable;->icon_status_l:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    :cond_17
    const/4 v11, -0x1

    if-ne v10, v11, :cond_18

    .line 922
    iget-object v10, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvDiffH:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 923
    iget-object v10, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStatusH:Landroid/widget/TextView;

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 924
    iget-object v10, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStatusH:Landroid/widget/TextView;

    sget v11, Lcom/qianhe/yct/R$string;->right_leaning:I

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 925
    iget-object v10, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivStatusH:Landroid/widget/ImageView;

    sget v11, Lcom/qianhe/yct/R$drawable;->icon_status_r:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    .line 927
    :cond_18
    iget-boolean v10, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v10, :cond_19

    iget-object v10, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvDiffH:Landroid/widget/TextView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setSelected(Z)V

    .line 928
    :cond_19
    iget-boolean v10, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v10, :cond_1a

    iget-object v10, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStatusH:Landroid/widget/TextView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setSelected(Z)V

    .line 929
    :cond_1a
    iget-object v10, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStatusH:Landroid/widget/TextView;

    sget v11, Lcom/qianhe/yct/R$string;->center:I

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 930
    iget-object v10, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivStatusH:Landroid/widget/ImageView;

    sget v11, Lcom/qianhe/yct/R$drawable;->icon_status_h:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 932
    :goto_d
    iget-boolean v10, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-nez v10, :cond_1b

    .line 933
    iget-object v7, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v7, v7, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivBucket:Lcom/qianhe/yct/view/BucketIndicatorView;

    iget v9, v4, Lcom/qianhe/baselib/bean/PositionResult;->positionM:I

    iget-wide v10, v4, Lcom/qianhe/baselib/bean/PositionResult;->distanceM:D

    double-to-float v4, v10

    float-to-double v10, v4

    const/4 v13, 0x0

    invoke-virtual {v7, v9, v10, v11, v13}, Lcom/qianhe/yct/view/BucketIndicatorView;->setDiffValue(IDZ)V

    .line 934
    invoke-direct {v1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->showDataUnAvailable()V

    const/16 v18, 0x2

    goto :goto_f

    .line 936
    :cond_1b
    iget-object v10, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvDiffH:Landroid/widget/TextView;

    const/16 v11, 0x50

    invoke-virtual {v1, v9, v11}, Lcom/qianhe/yct/base/BaseActivity;->getElevationDiffTextSize(Ljava/lang/String;I)F

    move-result v9

    const/4 v12, 0x1

    invoke-virtual {v10, v12, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 937
    iget-object v9, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvDiffV:Landroid/widget/TextView;

    invoke-virtual {v1, v7, v11}, Lcom/qianhe/yct/base/BaseActivity;->getElevationDiffTextSize(Ljava/lang/String;I)F

    move-result v7

    invoke-virtual {v9, v12, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 938
    iget-object v7, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v7, v7, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStatusH:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 939
    iget-object v7, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v7, v7, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStatusV:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 940
    iget-object v7, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v7, v7, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivBucket:Lcom/qianhe/yct/view/BucketIndicatorView;

    iget v9, v4, Lcom/qianhe/baselib/bean/PositionResult;->positionM:I

    iget-wide v10, v4, Lcom/qianhe/baselib/bean/PositionResult;->distanceM:D

    double-to-float v4, v10

    float-to-double v10, v4

    invoke-virtual {v7, v9, v10, v11}, Lcom/qianhe/yct/view/BucketIndicatorView;->setDiffValue(ID)V

    .line 941
    iget-wide v9, v0, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    iget-wide v11, v0, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    const/4 v7, 0x2

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    const/16 v18, 0x2

    new-array v7, v2, [D

    const/4 v13, 0x0

    aput-wide v9, v7, v13

    const/16 v17, 0x1

    aput-wide v11, v7, v17

    aput-wide v3, v7, v18

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    iget-wide v9, v0, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    iget-wide v11, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    new-array v13, v2, [D

    const/16 v21, 0x0

    aput-wide v3, v13, v21

    const/16 v17, 0x1

    aput-wide v9, v13, v17

    aput-wide v11, v13, v18

    invoke-static {v7, v13}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v3

    .line 942
    iget-object v7, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v7, v7, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivBucket:Lcom/qianhe/yct/view/BucketIndicatorView;

    cmpl-double v9, v3, v15

    if-nez v9, :cond_1c

    move-wide/from16 v9, v19

    goto :goto_e

    :cond_1c
    mul-double v9, v3, v19

    :goto_e
    invoke-virtual {v7, v9, v10}, Lcom/qianhe/yct/view/BucketIndicatorView;->setIconWidth(D)V

    .line 945
    :goto_f
    iget-boolean v3, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v3, :cond_20

    iget-object v3, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_10

    .line 947
    :cond_1d
    iget-object v3, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v3, :cond_21

    .line 948
    invoke-virtual {v3}, Lcom/qianhe/yct/utils/BeepPlayer;->resume()V

    .line 949
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    .line 950
    iget-object v7, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual {v7, v9}, Lcom/qianhe/yct/utils/BeepPlayer;->setUrgency(F)V

    if-eqz v8, :cond_1e

    .line 953
    iget-object v3, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v4, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DI_LONG:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v3, v4}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 954
    iget-object v3, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v3}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_11

    .line 957
    :cond_1e
    iget-object v7, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    double-to-float v3, v3

    invoke-virtual {v7, v3}, Lcom/qianhe/yct/utils/BeepPlayer;->setUrgencyByDistanceCm(F)V

    cmpl-double v3, v5, v15

    if-lez v3, :cond_1f

    .line 959
    iget-object v3, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v4, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->BUZZ:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v3, v4}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 960
    iget-object v3, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v3}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_11

    .line 962
    :cond_1f
    iget-object v3, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    sget-object v4, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->WOOD_FISH:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v3, v4}, Lcom/qianhe/yct/utils/BeepPlayer;->setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V

    .line 963
    iget-object v3, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    invoke-virtual {v3}, Lcom/qianhe/yct/utils/BeepPlayer;->start()V

    goto :goto_11

    .line 946
    :cond_20
    :goto_10
    iget-object v3, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Lcom/qianhe/yct/utils/BeepPlayer;->pause()V

    .line 967
    :cond_21
    :goto_11
    iget-wide v3, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->baseX:D

    cmpl-double v5, v3, v15

    if-eqz v5, :cond_23

    iget-wide v3, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->baseY:D

    cmpl-double v5, v3, v15

    if-eqz v5, :cond_23

    .line 969
    iget-boolean v3, v1, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    if-eqz v3, :cond_22

    .line 970
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    new-array v9, v2, [D

    const/4 v13, 0x0

    aput-wide v3, v9, v13

    const/16 v17, 0x1

    aput-wide v5, v9, v17

    aput-wide v7, v9, v18

    .line 971
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    new-array v2, v2, [D

    const/4 v13, 0x0

    aput-wide v3, v2, v13

    const/16 v17, 0x1

    aput-wide v5, v2, v17

    aput-wide v7, v2, v18

    goto :goto_12

    .line 974
    :cond_22
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v3

    iget-object v4, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v5, v4, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    iget-wide v7, v4, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    iget-wide v9, v4, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    new-array v2, v2, [D

    const/4 v13, 0x0

    aput-wide v5, v2, v13

    const/16 v17, 0x1

    aput-wide v7, v2, v17

    aput-wide v9, v2, v18

    invoke-virtual {v3, v2}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToGAUSSXY([D)[D

    move-result-object v9

    move-object v2, v9

    :goto_12
    if-eqz v9, :cond_23

    if-eqz v2, :cond_23

    .line 978
    new-instance v3, Landroid/graphics/PointF;

    const/4 v13, 0x0

    aget-wide v4, v9, v13

    iget-wide v6, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->baseX:D

    sub-double/2addr v4, v6

    double-to-float v4, v4

    const/16 v17, 0x1

    aget-wide v5, v9, v17

    iget-wide v7, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->baseY:D

    sub-double/2addr v5, v7

    double-to-float v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 979
    new-instance v4, Landroid/graphics/PointF;

    const/4 v13, 0x0

    aget-wide v5, v2, v13

    iget-wide v7, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->baseX:D

    sub-double/2addr v5, v7

    double-to-float v5, v5

    const/16 v17, 0x1

    aget-wide v6, v2, v17

    iget-wide v10, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->baseY:D

    sub-double/2addr v6, v10

    double-to-float v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 980
    invoke-static {v9, v2}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v22

    .line 981
    iget-object v2, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-virtual/range {v19 .. v24}, Lcom/qianhe/yct/view/WorkView;->setLocationPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;DZ)V

    .line 984
    :cond_23
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    invoke-direct {v1, v14, v2, v3}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->refreshCadView([DD)V

    .line 986
    :cond_24
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->refreshTianDiMap(Lcom/qianhe/baselib/bean/InsNavi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 988
    :goto_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 989
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :goto_14
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1080
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onLowMemory()V

    .line 1081
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    if-eqz v0, :cond_0

    .line 1082
    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onLowMemory()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1030
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onPause()V

    .line 1031
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onPause()V

    .line 1032
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    if-eqz v0, :cond_0

    .line 1033
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    const/4 v0, 0x0

    .line 1034
    iput-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->mBeepPlayer:Lcom/qianhe/yct/utils/BeepPlayer;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1020
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 1021
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onResume()V

    .line 1022
    invoke-direct {p0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->initPlayer()V

    .line 1023
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

    .line 1024
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvMachineNumber:Landroid/widget/TextView;

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

    .line 389
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 390
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivMapState:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivMapState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 391
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivSound"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 392
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->ivDirection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "ivDirection"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 393
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "webview"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 394
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "cadView"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 395
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->lltBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltBtn"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 396
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->lltH5:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltH5"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 397
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->lltH5Pro:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltH5Pro"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 398
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStatusV:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "tvStatusV"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 399
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDikeWorkBinding;->tvStatusH:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "tvStatusH"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1040
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onStart()V

    .line 1041
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1046
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 1047
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->yMap:Lcom/qianhe/yct/view/map/YMap;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/map/YMap;->onStop()V

    return-void
.end method
