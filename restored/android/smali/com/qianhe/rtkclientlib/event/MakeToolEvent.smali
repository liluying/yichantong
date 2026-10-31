.class public Lcom/qianhe/rtkclientlib/event/MakeToolEvent;
.super Ljava/lang/Object;
.source "MakeToolEvent.java"


# instance fields
.field public final deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public state:I

.field public toolParameters:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;ILjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/MakeToolEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 21
    iput p2, p0, Lcom/qianhe/rtkclientlib/event/MakeToolEvent;->state:I

    .line 22
    iput-object p3, p0, Lcom/qianhe/rtkclientlib/event/MakeToolEvent;->toolParameters:Ljava/lang/String;

    return-void
.end method
