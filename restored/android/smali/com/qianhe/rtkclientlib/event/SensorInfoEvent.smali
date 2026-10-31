.class public Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;
.super Ljava/lang/Object;
.source "SensorInfoEvent.java"


# instance fields
.field public headingAngle:D

.field public pitchAngle:D

.field public powerLevel:I

.field public rollAngle:D


# direct methods
.method public constructor <init>(IDDD)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->powerLevel:I

    .line 17
    iput-wide p2, p0, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->rollAngle:D

    .line 18
    iput-wide p4, p0, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->pitchAngle:D

    .line 19
    iput-wide p6, p0, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->headingAngle:D

    return-void
.end method
