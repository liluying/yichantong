.class public Lcom/qianhe/yct/event/AppVersionCheckEndEvent;
.super Ljava/lang/Object;
.source "AppVersionCheckEndEvent.java"


# instance fields
.field public final deviceType:Lcom/qianhe/baselib/enums/DeviceType;


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/qianhe/yct/event/AppVersionCheckEndEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    return-void
.end method
