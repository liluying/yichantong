.class public Lcom/qianhe/rtkclientlib/event/GetDataLinkResponse;
.super Ljava/lang/Object;
.source "GetDataLinkResponse.java"


# instance fields
.field public final deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/GetDataLinkResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 21
    iput-object p2, p0, Lcom/qianhe/rtkclientlib/event/GetDataLinkResponse;->type:Ljava/lang/String;

    return-void
.end method
