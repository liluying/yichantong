.class public Lcom/qianhe/yct/bean/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field public fmwVersion:Ljava/lang/String;

.field public gnssVersion:Ljava/lang/String;

.field public id:J

.field public pnVersion:Ljava/lang/String;

.field public sn:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/bean/DeviceInfo;->type:Ljava/lang/String;

    return-void
.end method
