.class public Lcom/qianhe/yct/event/ReloadAppConfigEvent;
.super Ljava/lang/Object;
.source "ReloadAppConfigEvent.java"


# instance fields
.field public final appConfig:Lcom/qianhe/yct/bean/AppConfig;

.field public deviceType:Lcom/qianhe/baselib/enums/DeviceType;


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;Lcom/qianhe/yct/bean/AppConfig;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/qianhe/yct/event/ReloadAppConfigEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 25
    iput-object p2, p0, Lcom/qianhe/yct/event/ReloadAppConfigEvent;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    return-void
.end method

.method public constructor <init>(Lcom/qianhe/yct/bean/AppConfig;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/qianhe/yct/event/ReloadAppConfigEvent;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    return-void
.end method
