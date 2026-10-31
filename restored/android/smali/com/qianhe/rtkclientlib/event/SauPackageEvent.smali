.class public Lcom/qianhe/rtkclientlib/event/SauPackageEvent;
.super Ljava/lang/Object;
.source "SauPackageEvent.java"


# instance fields
.field public deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public lines:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/SauPackageEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 24
    iput-object p2, p0, Lcom/qianhe/rtkclientlib/event/SauPackageEvent;->lines:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/SauPackageEvent;->lines:Ljava/lang/String;

    return-void
.end method
