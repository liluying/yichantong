.class public Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;
.super Ljava/lang/Object;
.source "UpgradeInfoEvent.java"


# instance fields
.field public final deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public final pns:Ljava/lang/String;

.field public final vsersions:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 22
    iput-object p2, p0, Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;->pns:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;->vsersions:Ljava/lang/String;

    return-void
.end method
