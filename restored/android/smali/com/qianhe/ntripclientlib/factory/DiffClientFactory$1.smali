.class Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;
.super Ljava/lang/Object;
.source "DiffClientFactory.java"

# interfaces
.implements Lcom/qh/diffclient/DiffClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/ntripclientlib/factory/DiffClientFactory;->getIntance(Landroid/content/Context;Lcom/qianhe/baselib/base/BaseConfig;Ljava/lang/String;)Lcom/qianhe/ntripclientlib/base/DiffClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$diffClient:Lcom/qh/diffclient/DiffClient;

.field final synthetic val$diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

.field final synthetic val$sn:Ljava/lang/String;

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/qianhe/baselib/base/BaseConfig;Lcom/qh/diffclient/DiffClient;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    iput-object p2, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$diffClient:Lcom/qh/diffclient/DiffClient;

    iput-object p3, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$sp:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$sn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiffDataReceived([B)V
    .locals 2

    .line 139
    new-instance v0, Lcom/qianhe/ntripclientlib/bean/AuthResult;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/qianhe/ntripclientlib/bean/AuthResult;-><init>(I)V

    .line 140
    iget-object v1, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    iget-boolean v1, v1, Lcom/qianhe/baselib/base/BaseConfig;->isInit:Z

    invoke-virtual {v0, v1}, Lcom/qianhe/ntripclientlib/bean/AuthResult;->setIsInit(Z)V

    .line 141
    iget-object v1, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    invoke-virtual {v0, v1}, Lcom/qianhe/ntripclientlib/bean/AuthResult;->setConfig(Lcom/qianhe/baselib/base/BaseConfig;)V

    .line 142
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 143
    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v0, v1, p1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;[B)V

    .line 144
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 10

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 59
    const-string p1, "DiffClient \u2014\u2014> \u8bf7\u6c42Rss\u8d26\u53f7..."

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0xb

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 61
    const-string p1, "DiffClient \u2014\u2014> \u8bf7\u6c42Rss\u8d26\u53f7\u5931\u8d25"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory;->-$$Nest$sfgetisFailReq()Z

    move-result p1

    if-nez p1, :cond_d

    .line 63
    invoke-static {v1}, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory;->-$$Nest$sfputisFailReq(Z)V

    .line 64
    new-instance p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lcom/qianhe/ntripclientlib/bean/AuthResult;-><init>(I)V

    .line 65
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    iget-boolean v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->isInit:Z

    invoke-virtual {p1, v0}, Lcom/qianhe/ntripclientlib/bean/AuthResult;->setIsInit(Z)V

    .line 66
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_1
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 69
    const-string p1, "DiffClient \u2014\u2014> \u6b63\u5728\u8fde\u63a5..."

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 70
    new-instance p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/qianhe/ntripclientlib/bean/AuthResult;-><init>(I)V

    .line 71
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    iget-boolean v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->isInit:Z

    invoke-virtual {p1, v0}, Lcom/qianhe/ntripclientlib/bean/AuthResult;->setIsInit(Z)V

    .line 72
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_2
    const/16 v0, 0x65

    if-ne p1, v0, :cond_3

    .line 74
    const-string p1, "DiffClient \u2014\u2014> \u8fde\u63a5\u6210\u529f"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 75
    new-instance p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/qianhe/ntripclientlib/bean/AuthResult;-><init>(I)V

    .line 76
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    iget-boolean v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->isInit:Z

    invoke-virtual {p1, v0}, Lcom/qianhe/ntripclientlib/bean/AuthResult;->setIsInit(Z)V

    .line 77
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_3
    const/16 v0, 0x66

    if-ne p1, v0, :cond_4

    .line 79
    const-string p1, "DiffClient \u2014\u2014> \u8fde\u63a5\u65ad\u5f00"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 80
    new-instance p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lcom/qianhe/ntripclientlib/bean/AuthResult;-><init>(I)V

    .line 81
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    iget-boolean v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->isInit:Z

    invoke-virtual {p1, v0}, Lcom/qianhe/ntripclientlib/bean/AuthResult;->setIsInit(Z)V

    .line 82
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_4
    const/16 v0, 0xc8

    const/4 v2, 0x2

    if-ne p1, v0, :cond_5

    .line 84
    const-string p1, "DiffClient \u2014\u2014> \u8ba4\u8bc1\u4e2d..."

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 85
    new-instance p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;

    invoke-direct {p1, v2}, Lcom/qianhe/ntripclientlib/bean/AuthResult;-><init>(I)V

    .line 86
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    iget-boolean v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->isInit:Z

    invoke-virtual {p1, v0}, Lcom/qianhe/ntripclientlib/bean/AuthResult;->setIsInit(Z)V

    .line 87
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_5
    const/16 v0, 0xc9

    if-ne p1, v0, :cond_6

    .line 89
    const-string p1, "DiffClient \u2014\u2014> \u670d\u52a1\u65e0\u8986\u76d6"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    :cond_6
    const/16 v0, 0xcb

    const/4 v3, 0x0

    if-ne p1, v0, :cond_b

    .line 91
    const-string p1, "DiffClient \u2014\u2014> \u8ba4\u8bc1\u6210\u529f"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    instance-of v0, p1, Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    if-eqz v0, :cond_9

    .line 93
    invoke-static {}, Lcom/qh/diffclient/DiffClient;->getAccountExpireEpoch()J

    move-result-wide v4

    .line 94
    iget-object p1, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-wide/16 v6, 0x3e8

    mul-long v6, v6, v4

    const-string v0, "corsAccountExpireEpoch"

    invoke-interface {p1, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    invoke-static {}, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory;->-$$Nest$sfgetdateFormatT()Ljava/text/SimpleDateFormat;

    move-result-object p1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x5265c00

    .line 97
    div-long/2addr v6, v8

    long-to-int v0, v6

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\u5929\u540e)"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u5dee\u5206\u8d26\u53f7\u8fc7\u671f\u65f6\u95f4\u2014\u2014> expireEpoch\uff1a"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\uff0c"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory;->-$$Nest$sfgetisFailReq()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$sn:Ljava/lang/String;

    invoke-static {p1}, Lcom/qh/diffclient/DiffClient;->getRssConnectSupports(Ljava/lang/String;)I

    move-result p1

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_7

    .line 101
    const-string/jumbo p1, "\u63a5\u5165\u65b9\u5f0f: ACC"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    sget-object v0, Lcom/qianhe/baselib/enums/NtripTypeEnum;->ACC:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v0

    iput v0, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    goto :goto_0

    .line 104
    :cond_7
    const-string/jumbo p1, "\u63a5\u5165\u65b9\u5f0f: SDK"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    sget-object v0, Lcom/qianhe/baselib/enums/NtripTypeEnum;->SDK:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v0

    iput v0, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    .line 108
    :goto_0
    iget-object p1, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    const-string v0, "rss.rtkiot.cn"

    iput-object v0, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    .line 109
    iget v0, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    if-nez v0, :cond_8

    const/16 v0, 0x1f41

    :cond_8
    iput v0, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    .line 110
    const-string v0, "AUTO"

    iput-object v0, p1, Lcom/qianhe/baselib/base/BaseConfig;->mount_point:Ljava/lang/String;

    goto :goto_1

    .line 111
    :cond_9
    instance-of p1, p1, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    if-eqz p1, :cond_a

    .line 112
    const-string/jumbo p1, "\u63a5\u5165\u65b9\u5f0f: NTRIP"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    sget-object v0, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v0

    iput v0, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    .line 115
    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/Constant;->NTRIPTYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    new-instance p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;

    invoke-direct {p1, v1}, Lcom/qianhe/ntripclientlib/bean/AuthResult;-><init>(I)V

    .line 117
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    iget-boolean v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->isInit:Z

    invoke-virtual {p1, v0}, Lcom/qianhe/ntripclientlib/bean/AuthResult;->setIsInit(Z)V

    .line 118
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    invoke-virtual {p1, v0}, Lcom/qianhe/ntripclientlib/bean/AuthResult;->setConfig(Lcom/qianhe/baselib/base/BaseConfig;)V

    .line 119
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 120
    invoke-static {v3}, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory;->-$$Nest$sfputisFailReq(Z)V

    return-void

    :cond_b
    const/16 v0, 0xca

    if-ne p1, v0, :cond_c

    .line 122
    invoke-static {v3}, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory;->-$$Nest$sfputisFailReq(Z)V

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DiffClient \u2014\u2014> \u8ba4\u8bc1\u5931\u8d25\u3002"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    invoke-virtual {v0}, Lcom/qianhe/baselib/base/BaseConfig;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 124
    new-instance p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;

    invoke-direct {p1, v3}, Lcom/qianhe/ntripclientlib/bean/AuthResult;-><init>(I)V

    .line 125
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    iget-boolean v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->isInit:Z

    invoke-virtual {p1, v0}, Lcom/qianhe/ntripclientlib/bean/AuthResult;->setIsInit(Z)V

    .line 126
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    invoke-virtual {p1, v0}, Lcom/qianhe/ntripclientlib/bean/AuthResult;->setConfig(Lcom/qianhe/baselib/base/BaseConfig;)V

    .line 127
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_c
    const/16 v0, 0x12d

    if-ne p1, v0, :cond_d

    .line 129
    const-string p1, "DiffClient \u2014\u2014> \u6536\u5230\u5dee\u5206\u6570\u636e\u3002"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 130
    new-instance p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, Lcom/qianhe/ntripclientlib/bean/AuthResult;-><init>(I)V

    .line 131
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    iget-boolean v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->isInit:Z

    invoke-virtual {p1, v0}, Lcom/qianhe/ntripclientlib/bean/AuthResult;->setIsInit(Z)V

    .line 132
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;->val$diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    invoke-virtual {p1, v0}, Lcom/qianhe/ntripclientlib/bean/AuthResult;->setConfig(Lcom/qianhe/baselib/base/BaseConfig;)V

    .line 133
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method
