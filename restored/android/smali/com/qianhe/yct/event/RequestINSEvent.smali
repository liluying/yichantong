.class public Lcom/qianhe/yct/event/RequestINSEvent;
.super Ljava/lang/Object;
.source "RequestINSEvent.java"


# instance fields
.field public deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public interval:F


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;F)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/qianhe/yct/event/RequestINSEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 20
    iput p2, p0, Lcom/qianhe/yct/event/RequestINSEvent;->interval:F

    return-void
.end method
