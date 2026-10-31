.class public Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;
.super Ljava/lang/Object;
.source "GETHorizontalAngleRange.java"


# instance fields
.field public final deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public h1:F

.field public h2:F

.field public l1:F

.field public l2:F


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;FFFF)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 23
    iput p2, p0, Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;->l1:F

    .line 24
    iput p3, p0, Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;->l2:F

    .line 25
    iput p4, p0, Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;->h1:F

    .line 26
    iput p5, p0, Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;->h2:F

    return-void
.end method
