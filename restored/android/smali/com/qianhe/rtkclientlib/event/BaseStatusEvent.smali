.class public Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;
.super Ljava/lang/Object;
.source "BaseStatusEvent.java"


# instance fields
.field public final baseSn:Ljava/lang/String;

.field public final batt:I

.field public final deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public diffSize:J

.field public final powerType:I

.field public final status:I


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;JIILjava/lang/String;I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 24
    iput-wide p2, p0, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->diffSize:J

    .line 25
    iput p4, p0, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->powerType:I

    .line 26
    iput p5, p0, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->batt:I

    .line 27
    iput-object p6, p0, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->baseSn:Ljava/lang/String;

    .line 28
    iput p7, p0, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->status:I

    return-void
.end method
