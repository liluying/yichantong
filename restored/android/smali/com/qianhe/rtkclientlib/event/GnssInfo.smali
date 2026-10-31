.class public Lcom/qianhe/rtkclientlib/event/GnssInfo;
.super Ljava/lang/Object;
.source "GnssInfo.java"


# instance fields
.field public final deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public gnssVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/GnssInfo;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 21
    iput-object p2, p0, Lcom/qianhe/rtkclientlib/event/GnssInfo;->gnssVersion:Ljava/lang/String;

    return-void
.end method
