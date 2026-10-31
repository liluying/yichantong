.class public Lcom/qianhe/yct/activity/CollectCoordsActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "CollectCoordsActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

.field private collectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private count:I

.field private dopLogEnabled:Z

.field private geodeticCollectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private final hdopSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private isShowTips:Z

.field private mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field private mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

.field private mGPDOP:Lcom/qianhe/baselib/bean/GPDOPEntity;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private mToothType:I

.field private returnGeodetic:Z

.field private scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private start:Z

.field private final vdopSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 57
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    iput-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->hdopSamples:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->vdopSamples:Ljava/util/List;

    return-void
.end method

.method static synthetic access$001(Lcom/qianhe/yct/activity/CollectCoordsActivity;)V
    .locals 0

    .line 43
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private addDopSample()V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mGPDOP:Lcom/qianhe/baselib/bean/GPDOPEntity;

    if-eqz v0, :cond_0

    .line 303
    iget-object v1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->hdopSamples:Ljava/util/List;

    iget v0, v0, Lcom/qianhe/baselib/bean/GPDOPEntity;->hdop:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->vdopSamples:Ljava/util/List;

    iget-object v1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mGPDOP:Lcom/qianhe/baselib/bean/GPDOPEntity;

    iget v1, v1, Lcom/qianhe/baselib/bean/GPDOPEntity;->vdop:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v0, :cond_1

    .line 306
    iget-object v1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->hdopSamples:Ljava/util/List;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/GGAEntity;->hdop:D

    double-to-float v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private addGeodeticSample(DDD)V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->geodeticCollectList:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 297
    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    const/4 p1, 0x1

    aput-wide p3, v1, p1

    const/4 p1, 0x2

    aput-wide p5, v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private averageDopSample(Ljava/util/List;)D
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)D"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    .line 325
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 327
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    add-double/2addr v0, v3

    goto :goto_0

    .line 330
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    :cond_2
    :goto_1
    return-wide v0
.end method

.method private calculateAverageCoords(Ljava/util/List;)[D
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[D>;)[D"
        }
    .end annotation

    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_3

    .line 409
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 412
    :cond_0
    new-array v3, v0, [D

    .line 413
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    .line 414
    aget-wide v9, v3, v8

    aget-wide v11, v5, v8

    add-double/2addr v9, v11

    aput-wide v9, v3, v8

    .line 415
    aget-wide v8, v3, v7

    aget-wide v10, v5, v7

    add-double/2addr v8, v10

    aput-wide v8, v3, v7

    .line 416
    aget-wide v7, v3, v6

    aget-wide v9, v5, v6

    add-double/2addr v7, v9

    aput-wide v7, v3, v6

    goto :goto_0

    .line 418
    :cond_1
    aget-wide v4, v3, v8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v4, v9

    aput-wide v4, v3, v8

    .line 419
    aget-wide v4, v3, v7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v4, v9

    aput-wide v4, v3, v7

    .line 420
    aget-wide v4, v3, v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-double v9, p1

    div-double/2addr v4, v9

    aput-wide v4, v3, v6

    .line 421
    aget-wide v8, v3, v8

    cmpl-double p1, v8, v1

    if-nez p1, :cond_2

    aget-wide v6, v3, v7

    cmpl-double p1, v6, v1

    if-nez p1, :cond_2

    cmpl-double p1, v4, v1

    if-nez p1, :cond_2

    .line 422
    new-array p1, v0, [D

    fill-array-data p1, :array_0

    return-object p1

    :cond_2
    return-object v3

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private calculateCoords()[D
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->calculateAverageCoords(Ljava/util/List;)[D

    move-result-object v0

    return-object v0
.end method

.method private finishWithCollectResult()V
    .locals 6

    .line 311
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 312
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->calculateCoords()[D

    move-result-object v1

    .line 313
    const-string v2, "coords"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 314
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->returnGeodetic:Z

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->geodeticCollectList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->calculateAverageCoords(Ljava/util/List;)[D

    move-result-object v2

    const-string v3, "geodetic"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget v2, v2, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v4, "quality"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    iget-object v2, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->hdopSamples:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->averageDopSample(Ljava/util/List;)D

    move-result-wide v4

    const-string v2, "hdop"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 319
    iget-object v2, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->vdopSamples:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->averageDopSample(Ljava/util/List;)D

    move-result-wide v4

    const-string/jumbo v2, "vdop"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    if-eqz v1, :cond_2

    const/4 v3, -0x1

    .line 320
    :cond_2
    invoke-virtual {p0, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 321
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private flattenDoubleArrays(Ljava/util/List;)[D
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[D>;)[D"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 116
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 121
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    if-eqz v3, :cond_1

    .line 123
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 127
    :cond_2
    new-array v1, v2, [D

    .line 129
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    if-eqz v3, :cond_3

    .line 131
    array-length v4, v3

    invoke-static {v3, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_4
    return-object v1

    .line 117
    :cond_5
    :goto_2
    new-array p1, v0, [D

    return-object p1
.end method

.method private moveJudge()Z
    .locals 15

    const/4 v0, 0x3

    .line 350
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->prepareCurrentEngineeringForCoordConvert(Landroid/content/Context;)V

    .line 351
    iget-object v1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-wide v2, 0x3fa999999999999aL    # 0.05

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-lt v1, v6, :cond_0

    .line 352
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    iget-object v7, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [D

    invoke-virtual {v1, v7}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v1

    .line 353
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v7

    iget-object v8, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    invoke-virtual {v7, v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v7

    .line 354
    aget-wide v8, v1, v4

    aget-wide v10, v1, v5

    aget-wide v12, v1, v6

    new-array v1, v0, [D

    aput-wide v8, v1, v4

    aput-wide v10, v1, v5

    aput-wide v12, v1, v6

    aget-wide v8, v7, v4

    aget-wide v10, v7, v5

    aget-wide v12, v7, v6

    new-array v7, v0, [D

    aput-wide v8, v7, v4

    aput-wide v10, v7, v5

    aput-wide v12, v7, v6

    invoke-static {v1, v7}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGeodetic([D[D)D

    move-result-wide v7

    cmpl-double v1, v7, v2

    if-ltz v1, :cond_0

    return v5

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_1

    .line 361
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    iget-object v7, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [D

    invoke-virtual {v1, v7}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v1

    .line 362
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v7

    iget-object v8, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    invoke-virtual {v7, v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v7

    .line 363
    aget-wide v8, v7, v4

    aget-wide v10, v7, v5

    aget-wide v12, v7, v6

    new-array v7, v0, [D

    aput-wide v8, v7, v4

    aput-wide v10, v7, v5

    aput-wide v12, v7, v6

    aget-wide v8, v1, v4

    aget-wide v10, v1, v5

    aget-wide v12, v1, v6

    new-array v1, v0, [D

    aput-wide v8, v1, v4

    aput-wide v10, v1, v5

    aput-wide v12, v1, v6

    invoke-static {v7, v1}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGeodetic([D[D)D

    move-result-wide v7

    cmpl-double v1, v7, v2

    if-ltz v1, :cond_1

    return v5

    .line 369
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x4

    if-lt v1, v7, :cond_2

    .line 370
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    iget-object v8, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    invoke-virtual {v1, v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v1

    .line 371
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v8

    iget-object v9, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [D

    invoke-virtual {v8, v9}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v8

    .line 372
    aget-wide v9, v1, v4

    aget-wide v11, v1, v5

    aget-wide v13, v1, v6

    new-array v1, v0, [D

    aput-wide v9, v1, v4

    aput-wide v11, v1, v5

    aput-wide v13, v1, v6

    aget-wide v9, v8, v4

    aget-wide v11, v8, v5

    aget-wide v13, v8, v6

    new-array v8, v0, [D

    aput-wide v9, v8, v4

    aput-wide v11, v8, v5

    aput-wide v13, v8, v6

    invoke-static {v1, v8}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGeodetic([D[D)D

    move-result-wide v8

    cmpl-double v1, v8, v2

    if-ltz v1, :cond_2

    return v5

    .line 378
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v8, 0x5

    if-lt v1, v8, :cond_3

    .line 379
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    iget-object v8, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    invoke-virtual {v1, v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v1

    .line 380
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v8

    iget-object v9, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [D

    invoke-virtual {v8, v7}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object v7

    .line 381
    aget-wide v8, v7, v4

    aget-wide v10, v7, v5

    aget-wide v12, v7, v6

    new-array v7, v0, [D

    aput-wide v8, v7, v4

    aput-wide v10, v7, v5

    aput-wide v12, v7, v6

    aget-wide v8, v1, v4

    aget-wide v10, v1, v5

    aget-wide v12, v1, v6

    new-array v0, v0, [D

    aput-wide v8, v0, v4

    aput-wide v10, v0, v5

    aput-wide v12, v0, v6

    invoke-static {v7, v0}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGeodetic([D[D)D

    move-result-wide v0

    cmpl-double v6, v0, v2

    if-ltz v6, :cond_3

    return v5

    :cond_3
    return v4
.end method

.method private refreshImgStatus(ZD)V
    .locals 2

    if-nez p1, :cond_2

    .line 392
    iget-boolean p1, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    if-eqz p1, :cond_0

    .line 393
    iget-object p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->ivAngleStatus:Landroidx/appcompat/widget/AppCompatImageView;

    sget p2, Lcom/qianhe/yct/R$drawable;->icon_collect_v:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double p1, p2, v0

    if-lez p1, :cond_1

    .line 396
    iget-object p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->ivAngleStatus:Landroidx/appcompat/widget/AppCompatImageView;

    sget p2, Lcom/qianhe/yct/R$drawable;->icon_collect_l:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void

    :cond_1
    cmpg-double p1, p2, v0

    if-gez p1, :cond_2

    .line 398
    iget-object p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->ivAngleStatus:Landroidx/appcompat/widget/AppCompatImageView;

    sget p2, Lcom/qianhe/yct/R$drawable;->icon_collect_r:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method

.method private resetStatus()V
    .locals 2

    const/4 v0, 0x1

    .line 334
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->isShowTips:Z

    .line 335
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 336
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->geodeticCollectList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 337
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->hdopSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 340
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->vdopSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 341
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->bar1:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 342
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->bar2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 343
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->bar3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 344
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->bar4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 345
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->bar5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method protected cancelCollect()V
    .locals 2

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->start:Z

    .line 167
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 169
    iget-object v1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 170
    :cond_1
    iput-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 213
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 4

    .line 175
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iput-object v1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    goto :goto_0

    .line 177
    :cond_0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iput-object v1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 180
    :cond_1
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "LOG,DOP,ONTIME,1"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->dopLogEnabled:Z

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->collect:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 207
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 437
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->moveJudge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->cancelCollect()V

    .line 439
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->resetStatus()V

    .line 440
    sget v0, Lcom/qianhe/yct/R$string;->invalid_collection:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/activity/CollectCoordsActivity$2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/CollectCoordsActivity$2;-><init>(Lcom/qianhe/yct/activity/CollectCoordsActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->finishWithCollectResult()V

    .line 453
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    .line 66
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 70
    const-string/jumbo v1, "toothType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mToothType:I

    .line 71
    const-string v1, "returnGeodetic"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->returnGeodetic:Z

    .line 73
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    .line 74
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->returnGeodetic:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->geodeticCollectList:Ljava/util/List;

    .line 75
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->prepareCurrentEngineeringForCoordConvert(Landroid/content/Context;)V

    .line 76
    iget-object p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvCollect:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/CollectCoordsActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/CollectCoordsActivity$1;-><init>(Lcom/qianhe/yct/activity/CollectCoordsActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result p1

    const/16 v1, 0x8

    if-eqz p1, :cond_4

    .line 84
    iget p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mToothType:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 85
    iget-object p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->ivAngleStatus:Landroidx/appcompat/widget/AppCompatImageView;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_rigth_tooth_h5pro:I

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 86
    iget-object p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvToothTips:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->align_right_bucket_tip:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 88
    iget-object p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->ivAngleStatus:Landroidx/appcompat/widget/AppCompatImageView;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_middle_tooth_h5pro:I

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 89
    iget-object p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvToothTips:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->align_middle_bucket_tip:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 91
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->ivAngleStatus:Landroidx/appcompat/widget/AppCompatImageView;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_left_tooth_h5pro:I

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 92
    iget-object p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvToothTips:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->align_left_bucket_tip:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 94
    :goto_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->lltAngle:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvH5proTips:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvToothTips:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 98
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->lltAngle:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvH5proTips:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvToothTips:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 459
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->dopLogEnabled:Z

    if-eqz v0, :cond_0

    .line 460
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "UNLOG,DOP"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 462
    :cond_0
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 463
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 464
    invoke-virtual {p0}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->cancelCollect()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/GPDOPEntity;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p1, Lcom/qianhe/baselib/bean/GPDOPEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    .line 190
    :cond_1
    iput-object p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mGPDOP:Lcom/qianhe/baselib/bean/GPDOPEntity;

    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 14

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_7

    .line 222
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 224
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v3}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    const-string v4, "%.2f\u00b0"

    if-eqz v3, :cond_2

    .line 226
    :try_start_1
    iget-object v5, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStausHex:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v10

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 227
    iget-object v6, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvArmAngle:Landroid/widget/TextView;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v11, p0, Lcom/qianhe/yct/base/BaseActivity;->pitchAngle:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    new-array v12, v10, [Ljava/lang/Object;

    aput-object v11, v12, v2

    invoke-static {v7, v4, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x32

    if-ne v5, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 228
    :goto_0
    invoke-virtual {p0, v4}, Lcom/qianhe/yct/base/BaseActivity;->resolveWorkInsAvailable(Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    .line 229
    iget-wide v4, p1, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    invoke-direct {p0, v3, v4, v5}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->refreshImgStatus(ZD)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_6

    .line 232
    :cond_2
    iget-object v5, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStausHex:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 233
    iget-object v6, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvArmAngle:Landroid/widget/TextView;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v11, p0, Lcom/qianhe/yct/base/BaseActivity;->pitchAngle:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    new-array v12, v10, [Ljava/lang/Object;

    aput-object v11, v12, v2

    invoke-static {v7, v4, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x38

    if-ne v5, v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 234
    :goto_1
    iput-boolean v4, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    .line 235
    iget-wide v4, p1, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iget v0, p0, Lcom/qianhe/yct/base/BaseActivity;->zeroDegrees:F

    float-to-double v6, v0

    sub-double/2addr v4, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->refreshImgStatus(ZD)V

    .line 237
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->isDataAvailable()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 238
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->isDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 239
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 240
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 241
    iput v2, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->count:I

    .line 242
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->isShowTips:Z

    if-eqz v0, :cond_5

    .line 243
    iput-boolean v2, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->isShowTips:Z

    .line 244
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvCollect:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3

    .line 247
    :cond_4
    iget v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->count:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->count:I

    .line 248
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 249
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setClickable(Z)V

    if-eqz v3, :cond_5

    .line 250
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->isShowTips:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->count:I

    iget-object v4, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v4, v4, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v4, v4, Lcom/qianhe/yct/bean/AppConfig$Details;->ins_unavailable_count:I

    div-int/2addr v4, v9

    if-le v0, v4, :cond_5

    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v0, :cond_5

    .line 251
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->resetStatus()V

    .line 252
    invoke-virtual {p0}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->showCalibrateTips()V

    .line 255
    :cond_5
    :goto_3
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->start:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvCollect:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->isDataAvailable()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 256
    :cond_6
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->start:Z

    const/4 v11, 0x5

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v11, :cond_d

    .line 257
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->isDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 258
    iget v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mToothType:I

    if-eqz v0, :cond_9

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    if-ne v0, v10, :cond_8

    .line 263
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    iget-object v3, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v4, v3, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    iget-wide v6, v3, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    iget-wide v12, v3, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    new-array v3, v9, [D

    aput-wide v4, v3, v2

    aput-wide v6, v3, v10

    aput-wide v12, v3, v8

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLonM:D

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLatM:D

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElevM:D

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->addGeodeticSample(DDD)V

    .line 265
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->addDopSample()V

    goto :goto_5

    .line 267
    :cond_8
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    iget-object v3, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v4, v3, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    iget-wide v6, v3, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    iget-wide v12, v3, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    new-array v3, v9, [D

    aput-wide v4, v3, v2

    aput-wide v6, v3, v10

    aput-wide v12, v3, v8

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLonR:D

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLatR:D

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElevR:D

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->addGeodeticSample(DDD)V

    .line 269
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->addDopSample()V

    goto :goto_5

    .line 259
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    iget-object v3, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v4, v3, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    iget-wide v6, v3, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    iget-wide v12, v3, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    new-array v3, v9, [D

    aput-wide v4, v3, v2

    aput-wide v6, v3, v10

    aput-wide v12, v3, v8

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLon:D

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLat:D

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElev:D

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->addGeodeticSample(DDD)V

    .line 261
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->addDopSample()V

    .line 271
    :goto_5
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->bar1:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setSelected(Z)V

    .line 272
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v8, :cond_a

    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->bar2:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setSelected(Z)V

    .line 273
    :cond_a
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v9, :cond_b

    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->bar3:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setSelected(Z)V

    .line 274
    :cond_b
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_c

    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->bar4:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setSelected(Z)V

    .line 275
    :cond_c
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v11, :cond_d

    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->bar5:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setSelected(Z)V

    .line 278
    :cond_d
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v11, :cond_f

    .line 279
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->moveJudge()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 280
    sget v0, Lcom/qianhe/yct/R$string;->invalid_collection:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 281
    invoke-virtual {p0}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->cancelCollect()V

    .line 282
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->resetStatus()V

    return-void

    .line 286
    :cond_e
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->finishWithCollectResult()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 290
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_f
    :goto_7
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 140
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 142
    const-string/jumbo v2, "toothType"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mToothType:I

    .line 143
    const-string v2, "collectList"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object p1

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 146
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, p1, v3

    .line 147
    iget-object v6, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    new-array v7, v0, [D

    aput-wide v4, v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    return-void

    .line 150
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->resetStatus()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 106
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    const-string/jumbo v0, "toothType"

    iget v1, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->mToothType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->collectList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->flattenDoubleArrays(Ljava/util/List;)[D

    move-result-object v0

    const-string v1, "collectList"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    :cond_0
    return-void
.end method

.method protected showCalibrateTips()V
    .locals 0

    .line 156
    invoke-virtual {p0}, Lcom/qianhe/yct/activity/CollectCoordsActivity;->cancelCollect()V

    .line 157
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->showCalibrateTips()V

    return-void
.end method

.method protected startCollect()V
    .locals 2

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->start:Z

    .line 162
    iget-object v0, p0, Lcom/qianhe/yct/activity/CollectCoordsActivity;->binding:Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvCollect:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
