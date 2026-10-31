.class public Lcom/qianhe/rtkclientlib/event/Batt;
.super Ljava/lang/Object;
.source "Batt.java"


# instance fields
.field public deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public percent:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/qianhe/rtkclientlib/event/Batt;->percent:I

    return-void
.end method

.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/Batt;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 25
    iput p2, p0, Lcom/qianhe/rtkclientlib/event/Batt;->percent:I

    return-void
.end method
