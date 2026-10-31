.class public Lcom/qianhe/rtkclientlib/event/GetRadioChannelEvent;
.super Ljava/lang/Object;
.source "GetRadioChannelEvent.java"


# instance fields
.field public final channelArray:[Ljava/lang/String;

.field public deviceType:Lcom/qianhe/baselib/enums/DeviceType;


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;[Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/GetRadioChannelEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 21
    iput-object p2, p0, Lcom/qianhe/rtkclientlib/event/GetRadioChannelEvent;->channelArray:[Ljava/lang/String;

    return-void
.end method
