.class public Lcom/qianhe/rtkclientlib/event/RtkInfo;
.super Ljava/lang/Object;
.source "RtkInfo.java"


# instance fields
.field public bluethoothVersion:Ljava/lang/String;

.field public deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public firmwareVersion:Ljava/lang/String;

.field public hardwareVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/RtkInfo;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 23
    iput-object p2, p0, Lcom/qianhe/rtkclientlib/event/RtkInfo;->hardwareVersion:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/qianhe/rtkclientlib/event/RtkInfo;->firmwareVersion:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/qianhe/rtkclientlib/event/RtkInfo;->bluethoothVersion:Ljava/lang/String;

    return-void
.end method
