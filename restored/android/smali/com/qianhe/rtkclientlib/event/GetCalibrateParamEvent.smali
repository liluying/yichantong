.class public Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;
.super Ljava/lang/Object;
.source "GetCalibrateParamEvent.java"


# instance fields
.field public calibParams:Ljava/lang/String;

.field public calibParamsId:Ljava/lang/String;

.field public final deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public line:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 32
    iput-object p2, p0, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->line:Ljava/lang/String;

    .line 36
    new-instance p1, Ljava/lang/String;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    sget-object p4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p2, p4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 37
    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, p3

    :goto_0
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->name:Ljava/lang/String;

    return-void
.end method
