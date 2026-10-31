.class public Lcom/qianhe/rtkclientlib/event/SetAntennaHeightResponse;
.super Ljava/lang/Object;
.source "SetAntennaHeightResponse.java"


# instance fields
.field public final deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public heigth:D

.field public line:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;D)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/SetAntennaHeightResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 22
    iput-object p2, p0, Lcom/qianhe/rtkclientlib/event/SetAntennaHeightResponse;->line:Ljava/lang/String;

    .line 23
    iput-wide p3, p0, Lcom/qianhe/rtkclientlib/event/SetAntennaHeightResponse;->heigth:D

    return-void
.end method
