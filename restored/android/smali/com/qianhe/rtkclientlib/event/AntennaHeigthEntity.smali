.class public Lcom/qianhe/rtkclientlib/event/AntennaHeigthEntity;
.super Ljava/lang/Object;
.source "AntennaHeigthEntity.java"


# instance fields
.field public final deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public height:D

.field public way:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;D)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/AntennaHeigthEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 27
    iput-object p2, p0, Lcom/qianhe/rtkclientlib/event/AntennaHeigthEntity;->way:Ljava/lang/String;

    .line 28
    iput-wide p3, p0, Lcom/qianhe/rtkclientlib/event/AntennaHeigthEntity;->height:D

    return-void
.end method
