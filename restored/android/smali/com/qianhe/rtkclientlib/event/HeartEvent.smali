.class public Lcom/qianhe/rtkclientlib/event/HeartEvent;
.super Ljava/lang/Object;
.source "HeartEvent.java"


# instance fields
.field public final deviceType:Lcom/qianhe/baselib/enums/DeviceType;


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/HeartEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    return-void
.end method
