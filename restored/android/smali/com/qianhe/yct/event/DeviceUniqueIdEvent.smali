.class public Lcom/qianhe/yct/event/DeviceUniqueIdEvent;
.super Ljava/lang/Object;
.source "DeviceUniqueIdEvent.java"


# instance fields
.field public deviceId:Ljava/lang/String;

.field public first:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lcom/qianhe/yct/event/DeviceUniqueIdEvent;->first:Z

    .line 21
    iput-object p2, p0, Lcom/qianhe/yct/event/DeviceUniqueIdEvent;->deviceId:Ljava/lang/String;

    return-void
.end method
