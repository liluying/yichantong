.class public Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;
.super Ljava/lang/Object;
.source "UpgradeWriteEvent.java"


# instance fields
.field public final currentIndex:I

.field public final deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public final result:Ljava/lang/String;

.field public final session:Ljava/lang/String;

.field public final state:Ljava/lang/String;

.field public final totalSize:I


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 24
    iput-object p2, p0, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->session:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->state:Ljava/lang/String;

    .line 26
    iput p4, p0, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->totalSize:I

    .line 27
    iput p5, p0, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->currentIndex:I

    .line 28
    iput-object p6, p0, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->result:Ljava/lang/String;

    return-void
.end method
