.class public Lcom/qianhe/rtkclientlib/event/CalibrateEvent;
.super Ljava/lang/Object;
.source "CalibrateEvent.java"


# instance fields
.field public final deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public line:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/CalibrateEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 20
    iput-object p2, p0, Lcom/qianhe/rtkclientlib/event/CalibrateEvent;->line:Ljava/lang/String;

    return-void
.end method
