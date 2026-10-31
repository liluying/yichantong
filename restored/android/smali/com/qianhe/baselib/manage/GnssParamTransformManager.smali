.class public Lcom/qianhe/baselib/manage/GnssParamTransformManager;
.super Ljava/lang/Object;
.source "GnssParamTransformManager.java"


# static fields
.field private static instance:Lcom/qianhe/baselib/manage/GnssParamTransformManager;


# instance fields
.field private gnssParamTransform:Lcom/qh/yctdevice/GnssParamTransform;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/qh/yctdevice/GnssParamTransform;

    invoke-direct {v0}, Lcom/qh/yctdevice/GnssParamTransform;-><init>()V

    iput-object v0, p0, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->gnssParamTransform:Lcom/qh/yctdevice/GnssParamTransform;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/qianhe/baselib/manage/GnssParamTransformManager;
    .locals 2

    const-class v0, Lcom/qianhe/baselib/manage/GnssParamTransformManager;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->instance:Lcom/qianhe/baselib/manage/GnssParamTransformManager;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/qianhe/baselib/manage/GnssParamTransformManager;

    invoke-direct {v1}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;-><init>()V

    sput-object v1, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->instance:Lcom/qianhe/baselib/manage/GnssParamTransformManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    sget-object v1, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->instance:Lcom/qianhe/baselib/manage/GnssParamTransformManager;
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


# virtual methods
.method public applyEngineeringTransform(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 37
    iget p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    if-lez p1, :cond_1

    if-eqz p2, :cond_1

    .line 38
    invoke-virtual {p2}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->hasParamsDetail()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->getGnssParamTransform()Lcom/qh/yctdevice/GnssParamTransform;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->applyToTransform(Lcom/qh/yctdevice/GnssParamTransform;)V

    return-void

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->clearTransformParams()V

    return-void
.end method

.method public clearTransformParams()V
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->getGnssParamTransform()Lcom/qh/yctdevice/GnssParamTransform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qh/yctdevice/GnssParamTransform;->clearParameters()V

    return-void
.end method

.method public getGnssParamTransform()Lcom/qh/yctdevice/GnssParamTransform;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->gnssParamTransform:Lcom/qh/yctdevice/GnssParamTransform;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/qh/yctdevice/GnssParamTransform;

    invoke-direct {v0}, Lcom/qh/yctdevice/GnssParamTransform;-><init>()V

    iput-object v0, p0, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->gnssParamTransform:Lcom/qh/yctdevice/GnssParamTransform;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->gnssParamTransform:Lcom/qh/yctdevice/GnssParamTransform;

    return-object v0
.end method
