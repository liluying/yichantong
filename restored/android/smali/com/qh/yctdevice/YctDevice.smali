.class public Lcom/qh/yctdevice/YctDevice;
.super Ljava/lang/Object;
.source "YctDevice.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qh/yctdevice/YctDevice$Listener;,
        Lcom/qh/yctdevice/YctDevice$FmwUpdateListener;
    }
.end annotation


# instance fields
.field public FMW_TYPE_BEIYUN:I

.field public FMW_TYPE_DEVICE:I

.field public FMW_TYPE_UNICORE:I

.field private mHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    const-string/jumbo v0, "yctdevice"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/qh/yctdevice/YctDevice;->FMW_TYPE_BEIYUN:I

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/qh/yctdevice/YctDevice;->FMW_TYPE_DEVICE:I

    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/qh/yctdevice/YctDevice;->FMW_TYPE_UNICORE:I

    const-wide/16 v0, -0x1

    .line 9
    iput-wide v0, p0, Lcom/qh/yctdevice/YctDevice;->mHandle:J

    .line 12
    invoke-static {}, Lcom/qh/yctdevice/YctDevice;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qh/yctdevice/YctDevice;->mHandle:J

    return-void
.end method

.method private static native create()J
.end method

.method private static native destory(J)V
.end method

.method public static native getVersion()Ljava/lang/String;
.end method

.method private static native inputStream(J[BI)V
.end method

.method private static native notifyUserLogged(JJ)V
.end method

.method private static native sendToDevice(J[BI)V
.end method

.method private static native setListener(JLcom/qh/yctdevice/YctDevice$Listener;)Z
.end method

.method public static native setLoggerFilePath(Ljava/lang/String;)Z
.end method

.method private static native startFmwUpdate(JILjava/lang/String;Lcom/qh/yctdevice/YctDevice$FmwUpdateListener;)Z
.end method

.method private static native stopFmwUpdate(J)V
.end method

.method private static native updateCurrentProjectInfo(JIJ)V
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 17
    iget-wide v0, p0, Lcom/qh/yctdevice/YctDevice;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 18
    invoke-static {v0, v1}, Lcom/qh/yctdevice/YctDevice;->destory(J)V

    const-wide/16 v0, -0x1

    .line 19
    iput-wide v0, p0, Lcom/qh/yctdevice/YctDevice;->mHandle:J

    :cond_0
    return-void
.end method

.method public inputStream([BI)V
    .locals 5

    .line 43
    iget-wide v0, p0, Lcom/qh/yctdevice/YctDevice;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 44
    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/qh/yctdevice/YctDevice;->inputStream(J[BI)V

    return-void
.end method

.method public notifyUserLogged(J)V
    .locals 5

    .line 37
    iget-wide v0, p0, Lcom/qh/yctdevice/YctDevice;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/qh/yctdevice/YctDevice;->notifyUserLogged(JJ)V

    return-void
.end method

.method public sendToDevice([BI)V
    .locals 5

    .line 49
    iget-wide v0, p0, Lcom/qh/yctdevice/YctDevice;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/qh/yctdevice/YctDevice;->sendToDevice(J[BI)V

    return-void
.end method

.method public setListener(Lcom/qh/yctdevice/YctDevice$Listener;)Z
    .locals 5

    .line 31
    iget-wide v0, p0, Lcom/qh/yctdevice/YctDevice;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 32
    :cond_0
    invoke-static {v0, v1, p1}, Lcom/qh/yctdevice/YctDevice;->setListener(JLcom/qh/yctdevice/YctDevice$Listener;)Z

    move-result p1

    return p1
.end method

.method public startFmwUpdate(ILjava/lang/String;Lcom/qh/yctdevice/YctDevice$FmwUpdateListener;)Z
    .locals 5

    .line 62
    iget-wide v0, p0, Lcom/qh/yctdevice/YctDevice;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 63
    :cond_0
    invoke-static {v0, v1, p1, p2, p3}, Lcom/qh/yctdevice/YctDevice;->startFmwUpdate(JILjava/lang/String;Lcom/qh/yctdevice/YctDevice$FmwUpdateListener;)Z

    move-result p1

    return p1
.end method

.method public stopFmwUpdate()V
    .locals 5

    .line 67
    iget-wide v0, p0, Lcom/qh/yctdevice/YctDevice;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-static {v0, v1}, Lcom/qh/yctdevice/YctDevice;->stopFmwUpdate(J)V

    return-void
.end method

.method public updateCurrentProjectInfo(IJ)V
    .locals 5

    .line 56
    iget-wide v0, p0, Lcom/qh/yctdevice/YctDevice;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-static {v0, v1, p1, p2, p3}, Lcom/qh/yctdevice/YctDevice;->updateCurrentProjectInfo(JIJ)V

    return-void
.end method
