.class public Lcom/qianhe/rtkclientlib/event/PowerSourceEvent;
.super Ljava/lang/Object;
.source "PowerSourceEvent.java"


# instance fields
.field public final deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/PowerSourceEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 20
    const-string p1, "EXTEND"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput p1, p0, Lcom/qianhe/rtkclientlib/event/PowerSourceEvent;->type:I

    return-void
.end method
