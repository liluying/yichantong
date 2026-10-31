.class public Lcom/qianhe/rtkclientlib/event/ParseToolEvent;
.super Ljava/lang/Object;
.source "ParseToolEvent.java"


# instance fields
.field public clearParameters:Ljava/lang/String;

.field public final deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public state:I


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;ILjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/ParseToolEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 21
    iput p2, p0, Lcom/qianhe/rtkclientlib/event/ParseToolEvent;->state:I

    .line 22
    iput-object p3, p0, Lcom/qianhe/rtkclientlib/event/ParseToolEvent;->clearParameters:Ljava/lang/String;

    return-void
.end method
