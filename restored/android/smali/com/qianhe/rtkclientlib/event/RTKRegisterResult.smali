.class public Lcom/qianhe/rtkclientlib/event/RTKRegisterResult;
.super Ljava/lang/Object;
.source "RTKRegisterResult.java"


# instance fields
.field public code:Ljava/lang/String;

.field public final deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public result:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/RTKRegisterResult;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 22
    iput-object p2, p0, Lcom/qianhe/rtkclientlib/event/RTKRegisterResult;->code:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/qianhe/rtkclientlib/event/RTKRegisterResult;->result:Ljava/lang/String;

    return-void
.end method
