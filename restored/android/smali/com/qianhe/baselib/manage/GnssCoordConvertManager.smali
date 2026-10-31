.class public Lcom/qianhe/baselib/manage/GnssCoordConvertManager;
.super Ljava/lang/Object;
.source "GnssCoordConvertManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/baselib/manage/GnssCoordConvertManager$EngineeringProvider;
    }
.end annotation


# static fields
.field private static engineeringProvider:Lcom/qianhe/baselib/manage/GnssCoordConvertManager$EngineeringProvider;

.field private static instance:Lcom/qianhe/baselib/manage/GnssCoordConvertManager;


# instance fields
.field private cachedEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

.field private cachedEngineeringKey:J

.field private cachedTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

.field private gnssCoordConvert:Lcom/qh/yctdevice/GnssCoordConvert;

.field private sessionEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

.field private sessionTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

.field private wgs84Scratch:Lcom/qh/yctdevice/GnssCoordConvert;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 35
    iput-wide v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineeringKey:J

    return-void
.end method

.method private blhToXyz(Lcom/qianhe/baselib/bean/EngineeringEntity;[D)[D
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 577
    array-length v1, p2

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 580
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->applyEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 581
    new-array p1, v2, [D

    .line 582
    invoke-virtual {p0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getGnssCoordConvert()Lcom/qh/yctdevice/GnssCoordConvert;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/qh/yctdevice/GnssCoordConvert;->blhToXyz([D[D)Z

    move-result p2

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static ensureTransformLoaded(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)Lcom/qh/yctdevice/GnssParamTransform;
    .locals 2

    .line 477
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->getInstance()Lcom/qianhe/baselib/manage/GnssParamTransformManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->getGnssParamTransform()Lcom/qh/yctdevice/GnssParamTransform;

    move-result-object v0

    if-eqz p0, :cond_2

    .line 478
    iget p0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 482
    invoke-virtual {v0}, Lcom/qh/yctdevice/GnssParamTransform;->getFourParameter()Lcom/qh/yctdevice/GnssParamTransform$FourParameter;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 483
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->hasParamsDetail()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 484
    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->applyToTransform(Lcom/qh/yctdevice/GnssParamTransform;)V

    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 485
    invoke-virtual {v0}, Lcom/qh/yctdevice/GnssParamTransform;->getSevenParameter()Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;

    move-result-object p0

    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    .line 486
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->hasParamsDetail()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 487
    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->applyToTransform(Lcom/qh/yctdevice/GnssParamTransform;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private geoToProj(Lcom/qianhe/baselib/bean/EngineeringEntity;[D[D)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 549
    array-length v1, p3

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 552
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->applyEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 553
    invoke-virtual {p0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getGnssCoordConvert()Lcom/qh/yctdevice/GnssCoordConvert;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/qh/yctdevice/GnssCoordConvert;->geoToProj([D[D)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 556
    :cond_1
    aget-wide v1, p2, v0

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_2

    move-wide v1, v3

    goto :goto_0

    :cond_2
    aget-wide v1, p3, v0

    :goto_0
    aput-wide v1, p3, v0

    const/4 p1, 0x1

    .line 557
    aget-wide v0, p2, p1

    cmpl-double v2, v0, v3

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    aget-wide v3, p3, p1

    :goto_1
    aput-wide v3, p3, p1

    const/4 v0, 0x2

    .line 558
    aget-wide v1, p2, v0

    aput-wide v1, p3, v0

    return p1

    :cond_4
    :goto_2
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;
    .locals 2

    const-class v0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->instance:Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    invoke-direct {v1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;-><init>()V

    sput-object v1, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->instance:Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    sget-object v1, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->instance:Lcom/qianhe/baselib/manage/GnssCoordConvertManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getWgs84Scratch()Lcom/qh/yctdevice/GnssCoordConvert;
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->wgs84Scratch:Lcom/qh/yctdevice/GnssCoordConvert;

    if-nez v0, :cond_0

    .line 523
    new-instance v0, Lcom/qh/yctdevice/GnssCoordConvert;

    invoke-direct {v0}, Lcom/qh/yctdevice/GnssCoordConvert;-><init>()V

    iput-object v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->wgs84Scratch:Lcom/qh/yctdevice/GnssCoordConvert;

    const/4 v1, 0x1

    .line 524
    invoke-virtual {v0, v1}, Lcom/qh/yctdevice/GnssCoordConvert;->setEllipsoid(I)V

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->wgs84Scratch:Lcom/qh/yctdevice/GnssCoordConvert;

    return-object v0
.end method

.method private projToGeo(Lcom/qianhe/baselib/bean/EngineeringEntity;[D[D)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 563
    array-length v1, p3

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 566
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->applyEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 567
    invoke-virtual {p0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getGnssCoordConvert()Lcom/qh/yctdevice/GnssCoordConvert;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/qh/yctdevice/GnssCoordConvert;->projToGeo([D[D)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 570
    :cond_1
    aget-wide v1, p2, v0

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_2

    move-wide v1, v3

    goto :goto_0

    :cond_2
    aget-wide v1, p3, v0

    :goto_0
    aput-wide v1, p3, v0

    const/4 p1, 0x1

    .line 571
    aget-wide v0, p2, p1

    cmpl-double v2, v0, v3

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    aget-wide v3, p3, p1

    :goto_1
    aput-wide v3, p3, p1

    const/4 v0, 0x2

    .line 572
    aget-wide v1, p2, v0

    aput-wide v1, p3, v0

    return p1

    :cond_4
    :goto_2
    return v0
.end method

.method private refreshCachedTransParamIfNeeded(Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 167
    iget v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->hasParamsDetail()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 173
    :cond_1
    iput-object p1, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 174
    sget-object v0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->engineeringProvider:Lcom/qianhe/baselib/manage/GnssCoordConvertManager$EngineeringProvider;

    invoke-interface {v0, p1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager$EngineeringProvider;->resolveGnssTransParamForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 175
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->getInstance()Lcom/qianhe/baselib/manage/GnssParamTransformManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-virtual {v0, p1, v1}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->applyEngineeringTransform(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private requireBlhToXyz(Lcom/qianhe/baselib/bean/EngineeringEntity;[D)[D
    .locals 0

    .line 506
    invoke-direct {p0, p1, p2}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->blhToXyz(Lcom/qianhe/baselib/bean/EngineeringEntity;[D)[D

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 508
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "\u5750\u6807\u8f6c\u6362\u5931\u8d25"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private requireCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 2

    .line 499
    invoke-virtual {p0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureCurrentEngineering()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v0, :cond_0

    return-object v0

    .line 500
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "\u5f53\u524d\u65e0\u6709\u6548\u5de5\u7a0b\uff0c\u65e0\u6cd5\u8fdb\u884c\u5750\u6807\u8f6c\u6362"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static requireEngineeringProvider()V
    .locals 2

    .line 493
    sget-object v0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->engineeringProvider:Lcom/qianhe/baselib/manage/GnssCoordConvertManager$EngineeringProvider;

    if-eqz v0, :cond_0

    return-void

    .line 494
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GnssCoordConvertManager \u672a\u8bbe\u7f6e\u5de5\u7a0b\u6570\u636e\u6e90\uff0c\u8bf7\u5728 Application \u4e2d\u521d\u59cb\u5316"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private requireWgs84XyzToBlh(DDD)[D
    .locals 4

    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_0

    cmpl-double v3, p3, v1

    if-nez v3, :cond_0

    cmpl-double v3, p5, v1

    if-nez v3, :cond_0

    .line 539
    new-array p1, v0, [D

    fill-array-data p1, :array_0

    return-object p1

    .line 541
    :cond_0
    new-array v1, v0, [D

    .line 542
    invoke-direct {p0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getWgs84Scratch()Lcom/qh/yctdevice/GnssCoordConvert;

    move-result-object v2

    new-array v0, v0, [D

    const/4 v3, 0x0

    aput-wide p1, v0, v3

    const/4 p1, 0x1

    aput-wide p3, v0, p1

    const/4 p1, 0x2

    aput-wide p5, v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/qh/yctdevice/GnssCoordConvert;->xyzToBlh([D[D)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    .line 543
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "\u5750\u6807\u8f6c\u6362\u5931\u8d25"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private requireXyzToBlh(Lcom/qianhe/baselib/bean/EngineeringEntity;DDD)[D
    .locals 0

    .line 514
    invoke-direct/range {p0 .. p7}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->xyzToBlh(Lcom/qianhe/baselib/bean/EngineeringEntity;DDD)[D

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 516
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "\u5750\u6807\u8f6c\u6362\u5931\u8d25"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setEngineeringProvider(Lcom/qianhe/baselib/manage/GnssCoordConvertManager$EngineeringProvider;)V
    .locals 0

    .line 45
    sput-object p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->engineeringProvider:Lcom/qianhe/baselib/manage/GnssCoordConvertManager$EngineeringProvider;

    return-void
.end method

.method private xyzToBlh(Lcom/qianhe/baselib/bean/EngineeringEntity;DDD)[D
    .locals 5

    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    cmpl-double v4, p2, v1

    if-nez v4, :cond_1

    cmpl-double v4, p4, v1

    if-nez v4, :cond_1

    cmpl-double v4, p6, v1

    if-nez v4, :cond_1

    .line 593
    new-array p1, v0, [D

    fill-array-data p1, :array_0

    return-object p1

    .line 595
    :cond_1
    invoke-virtual {p0, p1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->applyEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 596
    new-array p1, v0, [D

    .line 597
    invoke-virtual {p0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getGnssCoordConvert()Lcom/qh/yctdevice/GnssCoordConvert;

    move-result-object v1

    new-array v0, v0, [D

    const/4 v2, 0x0

    aput-wide p2, v0, v2

    const/4 p2, 0x1

    aput-wide p4, v0, p2

    const/4 p2, 0x2

    aput-wide p6, v0, p2

    invoke-virtual {v1, v0, p1}, Lcom/qh/yctdevice/GnssCoordConvert;->xyzToBlh([D[D)Z

    move-result p2

    if-nez p2, :cond_2

    return-object v3

    :cond_2
    return-object p1

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public applyEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 8

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getGnssCoordConvert()Lcom/qh/yctdevice/GnssCoordConvert;

    move-result-object v0

    .line 65
    iget v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->ellipsoidType:I

    const/4 v2, 0x2

    if-nez v1, :cond_1

    iget-object v3, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->customEllipsoidParams:Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;

    if-eqz v3, :cond_1

    .line 66
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;->a:D

    iget-wide v6, v3, Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;->f:D

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/qh/yctdevice/GnssCoordConvert;->setEllipsoid(DD)V

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    .line 68
    invoke-virtual {v0, v1}, Lcom/qh/yctdevice/GnssCoordConvert;->setEllipsoid(I)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v0, v2}, Lcom/qh/yctdevice/GnssCoordConvert;->setEllipsoid(I)V

    .line 72
    :goto_0
    iget v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    if-ne v1, v2, :cond_3

    iget-object v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->utmParams:Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;

    if-eqz v2, :cond_3

    .line 73
    new-instance v1, Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;

    invoke-direct {v1}, Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;-><init>()V

    .line 74
    iget-object p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->utmParams:Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;

    iget v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->zone:I

    iput v2, v1, Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;->zone:I

    .line 75
    iget-boolean v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->isNorth:Z

    iput-boolean v2, v1, Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;->isNorth:Z

    .line 76
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->projectionHeight:D

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;->projectionHeight:D

    .line 77
    iget p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->deformationMethod:I

    iput p1, v1, Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;->deformationMethod:I

    .line 78
    invoke-virtual {v0, v1}, Lcom/qh/yctdevice/GnssCoordConvert;->setProjection(Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;)V

    return-void

    :cond_3
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 79
    iget-object v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->gaussKrugerParams:Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    if-eqz v2, :cond_4

    .line 80
    new-instance v1, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;

    invoke-direct {v1}, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;-><init>()V

    .line 81
    iget-object p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->gaussKrugerParams:Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->lon0:D

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->lon0:D

    .line 82
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->lat0:D

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->lat0:D

    .line 83
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->fe:D

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->fe:D

    .line 84
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->fn:D

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->fn:D

    .line 85
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->k0:D

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->k0:D

    .line 86
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->projectionHeight:D

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->projectionHeight:D

    .line 87
    iget p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->deformationMethod:I

    iput p1, v1, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->deformationMethod:I

    .line 88
    invoke-virtual {v0, v1}, Lcom/qh/yctdevice/GnssCoordConvert;->setProjection(Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;)V

    return-void

    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 89
    iget-object v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transverseMercatorParams:Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    if-eqz v1, :cond_5

    .line 90
    new-instance v1, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;

    invoke-direct {v1}, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;-><init>()V

    .line 91
    iget-object p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transverseMercatorParams:Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->lon0:D

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->lon0:D

    .line 92
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->lat0:D

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->lat0:D

    .line 93
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->fe:D

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->fe:D

    .line 94
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->fn:D

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->fn:D

    .line 95
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->k0:D

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->k0:D

    .line 96
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->projectionHeight:D

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->projectionHeight:D

    .line 97
    iget p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->deformationMethod:I

    iput p1, v1, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->deformationMethod:I

    .line 98
    invoke-virtual {v0, v1}, Lcom/qh/yctdevice/GnssCoordConvert;->setProjection(Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public declared-synchronized clearSessionEngineering()V
    .locals 2

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->sessionEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->sessionTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 154
    :try_start_1
    iput-object v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->sessionEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 155
    iput-object v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->sessionTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    const-wide/high16 v0, -0x8000000000000000L

    .line 156
    iput-wide v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineeringKey:J

    .line 157
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->getInstance()Lcom/qianhe/baselib/manage/GnssParamTransformManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->clearTransformParams()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public convertEcefToGeodetic(DDD)[D
    .locals 8

    .line 310
    invoke-direct {p0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->requireCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->requireXyzToBlh(Lcom/qianhe/baselib/bean/EngineeringEntity;DDD)[D

    move-result-object p1

    return-object p1
.end method

.method public convertGAUSSXYToGeodetic([D)[D
    .locals 9

    const/4 v0, 0x3

    .line 225
    new-array v8, v0, [D

    const/4 v1, 0x0

    .line 226
    aget-wide v2, p1, v1

    const/4 v1, 0x1

    aget-wide v4, p1, v1

    const/4 v1, 0x2

    aget-wide v6, p1, v1

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToGeodeticInverse(DDD[D)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->isVaildCoords([D)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v8

    .line 227
    :cond_0
    new-array p1, v0, [D

    return-object p1
.end method

.method public convertToEcef([D)[D
    .locals 1

    .line 208
    invoke-direct {p0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->requireCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->requireBlhToXyz(Lcom/qianhe/baselib/bean/EngineeringEntity;[D)[D

    move-result-object p1

    return-object p1
.end method

.method public convertToGAUSSXY([D)[D
    .locals 10

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    .line 213
    array-length v1, p1

    if-ge v1, v0, :cond_1

    :cond_0
    move-object v2, p0

    goto :goto_1

    .line 216
    :cond_1
    new-array v9, v0, [D

    const/4 v1, 0x0

    .line 217
    aget-wide v3, p1, v1

    const/4 v1, 0x1

    aget-wide v5, p1, v1

    const/4 v1, 0x2

    aget-wide v7, p1, v1

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToAlignedProj(DDD[D)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v9}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->isVaildCoords([D)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    return-object v9

    .line 218
    :cond_3
    :goto_0
    new-array p1, v0, [D

    return-object p1

    .line 214
    :goto_1
    new-array p1, v0, [D

    return-object p1
.end method

.method public convertToGeodeticInverse(DDD[D)Z
    .locals 10

    move-object/from16 v9, p7

    if-eqz v9, :cond_2

    .line 264
    array-length v0, v9

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureCurrentEngineering()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-nez v1, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    iget v0, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 269
    iget-object v2, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v0 .. v9}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ecefToGeodeticInverse(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;DDD[D)Z

    move-result p1

    return p1

    .line 271
    :cond_1
    iget-object v2, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->projToGeodeticInverse(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;DDD[D)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public convertToWGS84([D)[D
    .locals 8

    .line 201
    invoke-direct {p0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->requireCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    .line 202
    invoke-direct {p0, v0, p1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->requireBlhToXyz(Lcom/qianhe/baselib/bean/EngineeringEntity;[D)[D

    move-result-object p1

    const/4 v0, 0x0

    .line 203
    aget-wide v2, p1, v0

    const/4 v0, 0x1

    aget-wide v4, p1, v0

    const/4 v0, 0x2

    aget-wide v6, p1, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->requireWgs84XyzToBlh(DDD)[D

    move-result-object p1

    return-object p1
.end method

.method public ecefToGeodeticInverse(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;DDD[D)Z
    .locals 12

    move-object/from16 v8, p9

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    .line 276
    array-length v0, v8

    const/4 v2, 0x3

    if-lt v0, v2, :cond_6

    if-nez p1, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    iget v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v0, v10, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    .line 281
    invoke-direct/range {v0 .. v7}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->xyzToBlh(Lcom/qianhe/baselib/bean/EngineeringEntity;DDD)[D

    move-result-object v1

    if-nez v1, :cond_1

    return v9

    .line 285
    :cond_1
    aget-wide v2, v1, v9

    aput-wide v2, v8, v9

    .line 286
    aget-wide v2, v1, v11

    aput-wide v2, v8, v11

    .line 287
    aget-wide v0, v1, v10

    aput-wide v0, v8, v10

    return v11

    .line 290
    :cond_2
    invoke-static/range {p1 .. p2}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureTransformLoaded(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)Lcom/qh/yctdevice/GnssParamTransform;

    move-result-object v7

    .line 291
    invoke-virtual {v7}, Lcom/qh/yctdevice/GnssParamTransform;->getSevenParameter()Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;

    move-result-object v0

    if-nez v0, :cond_3

    return v9

    .line 294
    :cond_3
    new-instance v0, Lcom/qh/yctdevice/GnssParamTransform$Point3D;

    move-wide v1, p3

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/qh/yctdevice/GnssParamTransform$Point3D;-><init>(DDD)V

    invoke-virtual {v7, v0, v11}, Lcom/qh/yctdevice/GnssParamTransform;->transform3D(Lcom/qh/yctdevice/GnssParamTransform$Point3D;Z)Lcom/qh/yctdevice/GnssParamTransform$Point3D;

    move-result-object v0

    if-nez v0, :cond_4

    return v9

    .line 299
    :cond_4
    iget-wide v2, v0, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->x:D

    iget-wide v4, v0, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->y:D

    iget-wide v6, v0, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->z:D

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->xyzToBlh(Lcom/qianhe/baselib/bean/EngineeringEntity;DDD)[D

    move-result-object v1

    if-nez v1, :cond_5

    return v9

    .line 303
    :cond_5
    aget-wide v2, v1, v9

    aput-wide v2, v8, v9

    .line 304
    aget-wide v2, v1, v11

    aput-wide v2, v8, v11

    .line 305
    aget-wide v0, v1, v10

    aput-wide v0, v8, v10

    return v11

    :cond_6
    :goto_0
    return v9
.end method

.method public declared-synchronized ensureCurrentEngineering()Z
    .locals 7

    monitor-enter p0

    .line 103
    :try_start_0
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->requireEngineeringProvider()V

    .line 104
    iget-object v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->sessionEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 105
    iget-wide v2, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineeringKey:J

    const-wide v4, 0x7ffffffffffffff8L

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iget-object v2, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-ne v2, v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->sessionTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    if-eqz v0, :cond_0

    .line 107
    iput-object v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 108
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->getInstance()Lcom/qianhe/baselib/manage/GnssParamTransformManager;

    move-result-object v0

    iget-object v2, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->sessionEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-object v3, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->sessionTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-virtual {v0, v2, v3}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->applyEngineeringTransform(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 110
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 112
    :cond_1
    :try_start_1
    iput-object v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 113
    iget-object v2, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->sessionTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iput-object v2, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 114
    iput-wide v4, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineeringKey:J

    .line 115
    invoke-virtual {p0, v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->applyEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 116
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->getInstance()Lcom/qianhe/baselib/manage/GnssParamTransformManager;

    move-result-object v0

    iget-object v2, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->sessionEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-object v3, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->sessionTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-virtual {v0, v2, v3}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->applyEngineeringTransform(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    monitor-exit p0

    return v1

    .line 119
    :cond_2
    :try_start_2
    sget-object v0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->engineeringProvider:Lcom/qianhe/baselib/manage/GnssCoordConvertManager$EngineeringProvider;

    invoke-interface {v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager$EngineeringProvider;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    if-nez v0, :cond_3

    const-wide/16 v2, 0x0

    goto :goto_1

    .line 120
    :cond_3
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->updateTime:J

    xor-long/2addr v2, v4

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    xor-long/2addr v2, v4

    iget v4, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    .line 121
    :goto_1
    iget-wide v4, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineeringKey:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    iget-object v4, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v4, :cond_4

    .line 122
    invoke-direct {p0, v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->refreshCachedTransParamIfNeeded(Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    monitor-exit p0

    return v1

    .line 125
    :cond_4
    :try_start_3
    iput-object v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    const/4 v4, 0x0

    .line 126
    iput-object v4, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 127
    iput-wide v2, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineeringKey:J

    if-eqz v0, :cond_5

    .line 129
    invoke-virtual {p0, v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->applyEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 130
    sget-object v2, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->engineeringProvider:Lcom/qianhe/baselib/manage/GnssCoordConvertManager$EngineeringProvider;

    invoke-interface {v2, v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager$EngineeringProvider;->resolveGnssTransParamForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 131
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->getInstance()Lcom/qianhe/baselib/manage/GnssParamTransformManager;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-virtual {v2, v0, v3}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->applyEngineeringTransform(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    goto :goto_2

    .line 133
    :cond_5
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->getInstance()Lcom/qianhe/baselib/manage/GnssParamTransformManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->clearTransformParams()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 135
    :goto_3
    monitor-exit p0

    return v1

    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public geoToAlignedGeodetic(DDD[D)Z
    .locals 16

    move-object/from16 v7, p7

    const/4 v0, 0x0

    if-eqz v7, :cond_2

    .line 246
    array-length v1, v7

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    new-array v15, v2, [D

    move-object/from16 v8, p0

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    .line 250
    invoke-virtual/range {v8 .. v15}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToAlignedProj(DDD[D)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 253
    :cond_1
    aget-wide v1, v15, v0

    const/4 v0, 0x1

    aget-wide v3, v15, v0

    const/4 v0, 0x2

    aget-wide v5, v15, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->projToGeodeticInverse(DDD[D)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method public geoToAlignedProj(DDD[D)Z
    .locals 10

    .line 318
    invoke-virtual {p0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureCurrentEngineering()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-object v2, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToAlignedProj(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;DDD[D)Z

    move-result p1

    return p1
.end method

.method public geoToAlignedProj(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;DDD[D)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p9

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v9, 0x0

    if-eqz v8, :cond_b

    .line 375
    array-length v5, v8

    if-lt v5, v4, :cond_b

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 378
    :cond_0
    new-array v5, v4, [D

    aput-wide p3, v5, v9

    aput-wide p5, v5, v3

    aput-wide p7, v5, v2

    .line 379
    iget v6, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    if-gtz v6, :cond_1

    .line 381
    invoke-direct {v0, v1, v5, v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToProj(Lcom/qianhe/baselib/bean/EngineeringEntity;[D[D)Z

    move-result v1

    return v1

    .line 383
    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureTransformLoaded(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)Lcom/qh/yctdevice/GnssParamTransform;

    move-result-object v7

    if-ne v6, v3, :cond_5

    .line 385
    invoke-virtual {v7}, Lcom/qh/yctdevice/GnssParamTransform;->getFourParameter()Lcom/qh/yctdevice/GnssParamTransform$FourParameter;

    move-result-object v6

    if-nez v6, :cond_2

    .line 386
    invoke-direct {v0, v1, v5, v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToProj(Lcom/qianhe/baselib/bean/EngineeringEntity;[D[D)Z

    move-result v1

    return v1

    .line 388
    :cond_2
    new-array v4, v4, [D

    .line 389
    invoke-direct {v0, v1, v5, v4}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToProj(Lcom/qianhe/baselib/bean/EngineeringEntity;[D[D)Z

    move-result v1

    if-nez v1, :cond_3

    return v9

    .line 392
    :cond_3
    new-instance v1, Lcom/qh/yctdevice/GnssParamTransform$Point2D;

    aget-wide v5, v4, v9

    aget-wide v10, v4, v3

    invoke-direct {v1, v5, v6, v10, v11}, Lcom/qh/yctdevice/GnssParamTransform$Point2D;-><init>(DD)V

    invoke-virtual {v7, v1}, Lcom/qh/yctdevice/GnssParamTransform;->transform2D(Lcom/qh/yctdevice/GnssParamTransform$Point2D;)Lcom/qh/yctdevice/GnssParamTransform$Point2D;

    move-result-object v1

    if-nez v1, :cond_4

    return v9

    .line 396
    :cond_4
    iget-wide v5, v1, Lcom/qh/yctdevice/GnssParamTransform$Point2D;->x:D

    aput-wide v5, v8, v9

    .line 397
    iget-wide v5, v1, Lcom/qh/yctdevice/GnssParamTransform$Point2D;->y:D

    aput-wide v5, v8, v3

    .line 398
    aget-wide v5, v4, v2

    aput-wide v5, v8, v2

    return v3

    :cond_5
    if-ne v6, v2, :cond_a

    .line 402
    invoke-virtual {v7}, Lcom/qh/yctdevice/GnssParamTransform;->getSevenParameter()Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;

    move-result-object v4

    if-nez v4, :cond_6

    .line 403
    invoke-direct {v0, v1, v5, v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToProj(Lcom/qianhe/baselib/bean/EngineeringEntity;[D[D)Z

    move-result v1

    return v1

    .line 405
    :cond_6
    invoke-direct {v0, v1, v5}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->blhToXyz(Lcom/qianhe/baselib/bean/EngineeringEntity;[D)[D

    move-result-object v4

    if-nez v4, :cond_7

    return v9

    .line 409
    :cond_7
    new-instance v5, Lcom/qh/yctdevice/GnssParamTransform$Point3D;

    aget-wide v10, v4, v9

    aget-wide v12, v4, v3

    aget-wide v2, v4, v2

    move-wide/from16 p7, v2

    move-object/from16 p2, v5

    move-wide/from16 p3, v10

    move-wide/from16 p5, v12

    invoke-direct/range {p2 .. p8}, Lcom/qh/yctdevice/GnssParamTransform$Point3D;-><init>(DDD)V

    move-object/from16 v2, p2

    invoke-virtual {v7, v2}, Lcom/qh/yctdevice/GnssParamTransform;->transform3D(Lcom/qh/yctdevice/GnssParamTransform$Point3D;)Lcom/qh/yctdevice/GnssParamTransform$Point3D;

    move-result-object v2

    if-nez v2, :cond_8

    return v9

    .line 414
    :cond_8
    iget-wide v3, v2, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->x:D

    move-wide v6, v3

    iget-wide v4, v2, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->y:D

    iget-wide v2, v2, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->z:D

    move-wide v14, v6

    move-wide v6, v2

    move-wide v2, v14

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->xyzToBlh(Lcom/qianhe/baselib/bean/EngineeringEntity;DDD)[D

    move-result-object v2

    if-nez v2, :cond_9

    return v9

    .line 418
    :cond_9
    invoke-direct {v0, v1, v2, v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToProj(Lcom/qianhe/baselib/bean/EngineeringEntity;[D[D)Z

    move-result v1

    return v1

    .line 420
    :cond_a
    invoke-direct {v0, v1, v5, v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToProj(Lcom/qianhe/baselib/bean/EngineeringEntity;[D[D)Z

    move-result v1

    return v1

    :cond_b
    :goto_0
    return v9
.end method

.method public geoToProjOnly(DDD[D)Z
    .locals 3

    const/4 v0, 0x0

    .line 326
    invoke-virtual {p0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureCurrentEngineering()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    .line 329
    new-array v2, v2, [D

    aput-wide p1, v2, v0

    const/4 p1, 0x1

    aput-wide p3, v2, p1

    const/4 p1, 0x2

    aput-wide p5, v2, p1

    invoke-direct {p0, v1, v2, p7}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToProj(Lcom/qianhe/baselib/bean/EngineeringEntity;[D[D)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public geodeticToXyzOnly(DDD[D)Z
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz p7, :cond_2

    .line 334
    array-length v4, p7

    if-lt v4, v2, :cond_2

    invoke-virtual {p0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureCurrentEngineering()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-nez v4, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    new-array v2, v2, [D

    aput-wide p1, v2, v3

    aput-wide p3, v2, v1

    aput-wide p5, v2, v0

    invoke-direct {p0, v4, v2}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->blhToXyz(Lcom/qianhe/baselib/bean/EngineeringEntity;[D)[D

    move-result-object p1

    if-nez p1, :cond_1

    return v3

    .line 341
    :cond_1
    aget-wide p2, p1, v3

    aput-wide p2, p7, v3

    .line 342
    aget-wide p2, p1, v1

    aput-wide p2, p7, v1

    .line 343
    aget-wide p2, p1, v0

    aput-wide p2, p7, v0

    return v1

    :cond_2
    :goto_0
    return v3
.end method

.method public getCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureCurrentEngineering()Z

    .line 191
    iget-object v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    return-object v0
.end method

.method public getCurrentTransParam()Lcom/qianhe/baselib/bean/GnssTransParamEntity;
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureCurrentEngineering()Z

    .line 196
    iget-object v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    return-object v0
.end method

.method public getGnssCoordConvert()Lcom/qh/yctdevice/GnssCoordConvert;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->gnssCoordConvert:Lcom/qh/yctdevice/GnssCoordConvert;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/qh/yctdevice/GnssCoordConvert;

    invoke-direct {v0}, Lcom/qh/yctdevice/GnssCoordConvert;-><init>()V

    iput-object v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->gnssCoordConvert:Lcom/qh/yctdevice/GnssCoordConvert;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->gnssCoordConvert:Lcom/qh/yctdevice/GnssCoordConvert;

    return-object v0
.end method

.method public declared-synchronized invalidateEngineeringCache()V
    .locals 2

    monitor-enter p0

    const-wide/high16 v0, -0x8000000000000000L

    .line 162
    :try_start_0
    iput-wide v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineeringKey:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected isVaildCoords([D)Z
    .locals 5

    .line 232
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-wide v3, p1, v2

    .line 233
    invoke-virtual {p0, v3, v4}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->isValidCoord(D)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected isValidCoord(D)Z
    .locals 1

    .line 239
    invoke-static {p1, p2}, Lcom/qh/xcad/XCadView$$ExternalSyntheticBackport0;->m(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public projToGeodeticInverse(DDD[D)Z
    .locals 10

    .line 367
    invoke-virtual {p0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureCurrentEngineering()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-object v2, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->projToGeodeticInverse(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;DDD[D)Z

    move-result p1

    return p1
.end method

.method public projToGeodeticInverse(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;DDD[D)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-object/from16 v8, p9

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x3

    const/4 v11, 0x0

    if-eqz v8, :cond_b

    .line 425
    array-length v7, v8

    if-lt v7, v6, :cond_b

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 428
    :cond_0
    new-array v7, v6, [D

    aput-wide v2, v7, v11

    aput-wide v4, v7, v10

    aput-wide p7, v7, v9

    .line 429
    iget v12, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    if-gtz v12, :cond_1

    .line 431
    invoke-direct {v0, v1, v7, v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->projToGeo(Lcom/qianhe/baselib/bean/EngineeringEntity;[D[D)Z

    move-result v1

    return v1

    .line 433
    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureTransformLoaded(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)Lcom/qh/yctdevice/GnssParamTransform;

    move-result-object v13

    if-ne v12, v10, :cond_4

    .line 435
    invoke-virtual {v13}, Lcom/qh/yctdevice/GnssParamTransform;->getFourParameter()Lcom/qh/yctdevice/GnssParamTransform$FourParameter;

    move-result-object v7

    if-nez v7, :cond_2

    return v11

    .line 438
    :cond_2
    new-instance v7, Lcom/qh/yctdevice/GnssParamTransform$Point2D;

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/qh/yctdevice/GnssParamTransform$Point2D;-><init>(DD)V

    invoke-virtual {v13, v7, v10}, Lcom/qh/yctdevice/GnssParamTransform;->transform2D(Lcom/qh/yctdevice/GnssParamTransform$Point2D;Z)Lcom/qh/yctdevice/GnssParamTransform$Point2D;

    move-result-object v2

    if-nez v2, :cond_3

    return v11

    .line 443
    :cond_3
    iget-wide v3, v2, Lcom/qh/yctdevice/GnssParamTransform$Point2D;->x:D

    iget-wide v12, v2, Lcom/qh/yctdevice/GnssParamTransform$Point2D;->y:D

    new-array v2, v6, [D

    aput-wide v3, v2, v11

    aput-wide v12, v2, v10

    aput-wide p7, v2, v9

    invoke-direct {v0, v1, v2, v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->projToGeo(Lcom/qianhe/baselib/bean/EngineeringEntity;[D[D)Z

    move-result v1

    return v1

    :cond_4
    if-ne v12, v9, :cond_a

    .line 446
    invoke-virtual {v13}, Lcom/qh/yctdevice/GnssParamTransform;->getSevenParameter()Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;

    move-result-object v2

    if-nez v2, :cond_5

    return v11

    .line 449
    :cond_5
    new-array v2, v6, [D

    .line 450
    invoke-direct {v0, v1, v7, v2}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->projToGeo(Lcom/qianhe/baselib/bean/EngineeringEntity;[D[D)Z

    move-result v3

    if-nez v3, :cond_6

    return v11

    .line 453
    :cond_6
    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->blhToXyz(Lcom/qianhe/baselib/bean/EngineeringEntity;[D)[D

    move-result-object v2

    if-nez v2, :cond_7

    return v11

    .line 457
    :cond_7
    new-instance v3, Lcom/qh/yctdevice/GnssParamTransform$Point3D;

    aget-wide v4, v2, v11

    aget-wide v6, v2, v10

    aget-wide v14, v2, v9

    move-object/from16 p2, v3

    move-wide/from16 p3, v4

    move-wide/from16 p5, v6

    move-wide/from16 p7, v14

    invoke-direct/range {p2 .. p8}, Lcom/qh/yctdevice/GnssParamTransform$Point3D;-><init>(DDD)V

    move-object/from16 v2, p2

    invoke-virtual {v13, v2, v10}, Lcom/qh/yctdevice/GnssParamTransform;->transform3D(Lcom/qh/yctdevice/GnssParamTransform$Point3D;Z)Lcom/qh/yctdevice/GnssParamTransform$Point3D;

    move-result-object v2

    if-nez v2, :cond_8

    return v11

    .line 462
    :cond_8
    iget-wide v3, v2, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->x:D

    move-wide v6, v3

    iget-wide v4, v2, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->y:D

    iget-wide v2, v2, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->z:D

    move-wide/from16 v16, v6

    move-wide v6, v2

    move-wide/from16 v2, v16

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->xyzToBlh(Lcom/qianhe/baselib/bean/EngineeringEntity;DDD)[D

    move-result-object v1

    if-nez v1, :cond_9

    return v11

    .line 466
    :cond_9
    aget-wide v2, v1, v11

    aput-wide v2, v8, v11

    .line 467
    aget-wide v2, v1, v10

    aput-wide v2, v8, v10

    .line 468
    aget-wide v2, v1, v9

    aput-wide v2, v8, v9

    return v10

    .line 471
    :cond_a
    invoke-direct {v0, v1, v7, v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->projToGeo(Lcom/qianhe/baselib/bean/EngineeringEntity;[D[D)Z

    move-result v1

    return v1

    :cond_b
    :goto_0
    return v11
.end method

.method public declared-synchronized setSessionEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 2

    monitor-enter p0

    .line 143
    :try_start_0
    iput-object p1, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->sessionEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 144
    iput-object p2, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->sessionTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    const-wide/high16 v0, -0x8000000000000000L

    .line 145
    iput-wide v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineeringKey:J

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureCurrentEngineering()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 149
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized updateTransParamCache(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 2

    monitor-enter p0

    .line 180
    :try_start_0
    iput-object p1, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 181
    iget-object v0, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v0, :cond_0

    .line 182
    iput-object p1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->hasParamsDetail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->getInstance()Lcom/qianhe/baselib/manage/GnssParamTransformManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    invoke-virtual {v0, v1, p1}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->applyEngineeringTransform(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 187
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public xyzToGeodeticOnly(DDD[D)Z
    .locals 11

    move-object/from16 v0, p7

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 349
    array-length v2, v0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureCurrentEngineering()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->cachedEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, p0

    move-wide v5, p1

    move-wide v7, p3

    move-wide/from16 v9, p5

    .line 352
    invoke-direct/range {v3 .. v10}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->xyzToBlh(Lcom/qianhe/baselib/bean/EngineeringEntity;DDD)[D

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 356
    :cond_1
    aget-wide p2, p1, v1

    aput-wide p2, v0, v1

    const/4 p2, 0x1

    .line 357
    aget-wide p3, p1, p2

    aput-wide p3, v0, p2

    const/4 p3, 0x2

    .line 358
    aget-wide v1, p1, p3

    aput-wide v1, v0, p3

    return p2

    :cond_2
    :goto_0
    return v1
.end method
