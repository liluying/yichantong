.class public Lcom/qianhe/rtkclientlib/event/GetFeatureCodeEvent;
.super Ljava/lang/Object;
.source "GetFeatureCodeEvent.java"


# instance fields
.field public code:Ljava/lang/String;

.field public final deviceType:Lcom/qianhe/baselib/enums/DeviceType;


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/GetFeatureCodeEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 15
    iput-object p2, p0, Lcom/qianhe/rtkclientlib/event/GetFeatureCodeEvent;->code:Ljava/lang/String;

    return-void
.end method
