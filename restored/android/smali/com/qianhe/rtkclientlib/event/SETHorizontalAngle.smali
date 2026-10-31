.class public Lcom/qianhe/rtkclientlib/event/SETHorizontalAngle;
.super Ljava/lang/Object;
.source "SETHorizontalAngle.java"


# instance fields
.field public final deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public h1:F

.field public h2:F

.field public l1:F

.field public l2:F

.field public state:Z


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;ZFFFF)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/SETHorizontalAngle;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 24
    iput-boolean p2, p0, Lcom/qianhe/rtkclientlib/event/SETHorizontalAngle;->state:Z

    .line 25
    iput p3, p0, Lcom/qianhe/rtkclientlib/event/SETHorizontalAngle;->l1:F

    .line 26
    iput p4, p0, Lcom/qianhe/rtkclientlib/event/SETHorizontalAngle;->l2:F

    .line 27
    iput p5, p0, Lcom/qianhe/rtkclientlib/event/SETHorizontalAngle;->h1:F

    .line 28
    iput p6, p0, Lcom/qianhe/rtkclientlib/event/SETHorizontalAngle;->h2:F

    return-void
.end method
