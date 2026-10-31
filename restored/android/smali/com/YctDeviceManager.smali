.class public abstract Lcom/YctDeviceManager;
.super Ljava/lang/Object;
.source "YctDeviceManager.java"


# static fields
.field private static INSTANCE_BASE:Lcom/qh/yctdevice/YctDevice;

.field private static INSTANCE_H5:Lcom/qh/yctdevice/YctDevice;


# direct methods
.method public static declared-synchronized getInstanceBase()Lcom/qh/yctdevice/YctDevice;
    .locals 2

    const-class v0, Lcom/YctDeviceManager;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/YctDeviceManager;->INSTANCE_BASE:Lcom/qh/yctdevice/YctDevice;

    if-nez v1, :cond_0

    new-instance v1, Lcom/qh/yctdevice/YctDevice;

    invoke-direct {v1}, Lcom/qh/yctdevice/YctDevice;-><init>()V

    sput-object v1, Lcom/YctDeviceManager;->INSTANCE_BASE:Lcom/qh/yctdevice/YctDevice;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    sget-object v1, Lcom/YctDeviceManager;->INSTANCE_BASE:Lcom/qh/yctdevice/YctDevice;
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

.method public static declared-synchronized getInstanceH5()Lcom/qh/yctdevice/YctDevice;
    .locals 2

    const-class v0, Lcom/YctDeviceManager;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/YctDeviceManager;->INSTANCE_H5:Lcom/qh/yctdevice/YctDevice;

    if-nez v1, :cond_0

    new-instance v1, Lcom/qh/yctdevice/YctDevice;

    invoke-direct {v1}, Lcom/qh/yctdevice/YctDevice;-><init>()V

    sput-object v1, Lcom/YctDeviceManager;->INSTANCE_H5:Lcom/qh/yctdevice/YctDevice;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    sget-object v1, Lcom/YctDeviceManager;->INSTANCE_H5:Lcom/qh/yctdevice/YctDevice;
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
