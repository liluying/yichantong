.class public Lcom/qianhe/ntripclientlib/factory/DiffClientFactory;
.super Ljava/lang/Object;
.source "DiffClientFactory.java"


# static fields
.field private static final dateFormatT:Ljava/text/SimpleDateFormat;

.field private static isFailReq:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetdateFormatT()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 0
    sget-object v0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory;->dateFormatT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetisFailReq()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory;->isFailReq:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputisFailReq(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory;->isFailReq:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory;->dateFormatT:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 34
    sput-boolean v0, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory;->isFailReq:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntance(Landroid/content/Context;Lcom/qianhe/baselib/base/BaseConfig;Ljava/lang/String;)Lcom/qianhe/ntripclientlib/base/DiffClientImpl;
    .locals 10

    const/4 v0, 0x1

    .line 40
    const-string/jumbo v1, "sp"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 41
    const-string v1, "deviceSn"

    const-string v3, ""

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    new-instance v3, Lcom/qh/diffclient/DiffClient;

    invoke-direct {v3}, Lcom/qh/diffclient/DiffClient;-><init>()V

    .line 55
    new-instance v4, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;

    invoke-direct {v4, p1, v3, p0, v1}, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory$1;-><init>(Lcom/qianhe/baselib/base/BaseConfig;Lcom/qh/diffclient/DiffClient;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/qh/diffclient/DiffClient;->setListener(Lcom/qh/diffclient/DiffClient$Listener;)Z

    .line 147
    instance-of p0, p1, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    const/4 v4, 0x6

    const-string v5, "NTRIP\u8fde\u63a5\u5931\u8d25\uff01"

    if-eqz p0, :cond_0

    .line 148
    new-instance p0, Lcom/qh/diffclient/DiffClient$NtripClientDiffParams;

    invoke-direct {p0}, Lcom/qh/diffclient/DiffClient$NtripClientDiffParams;-><init>()V

    .line 149
    iput-object v1, p0, Lcom/qh/diffclient/DiffClient$NtripClientDiffParams;->sn:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Lcom/qh/diffclient/DiffClient$NtripClientDiffParams;->ggaLine:Ljava/lang/String;

    .line 151
    iget-object p2, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    iput-object p2, p0, Lcom/qh/diffclient/DiffClient$NtripClientDiffParams;->host:Ljava/lang/String;

    .line 152
    iget p2, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    iput p2, p0, Lcom/qh/diffclient/DiffClient$NtripClientDiffParams;->port:I

    .line 153
    iget-object p2, p1, Lcom/qianhe/baselib/base/BaseConfig;->username:Ljava/lang/String;

    iput-object p2, p0, Lcom/qh/diffclient/DiffClient$NtripClientDiffParams;->user:Ljava/lang/String;

    .line 154
    iget-object p2, p1, Lcom/qianhe/baselib/base/BaseConfig;->password:Ljava/lang/String;

    iput-object p2, p0, Lcom/qh/diffclient/DiffClient$NtripClientDiffParams;->password:Ljava/lang/String;

    .line 155
    iget-object p2, p1, Lcom/qianhe/baselib/base/BaseConfig;->mount_point:Ljava/lang/String;

    iput-object p2, p0, Lcom/qh/diffclient/DiffClient$NtripClientDiffParams;->mountPoint:Ljava/lang/String;

    .line 156
    iget p2, p1, Lcom/qianhe/baselib/base/BaseConfig;->updateGGA_period:I

    iput p2, p0, Lcom/qh/diffclient/DiffClient$NtripClientDiffParams;->ggaUploadInterval:I

    .line 157
    invoke-static {p0}, Lcom/qh/diffclient/DiffClient;->initialize(Lcom/qh/diffclient/DiffClient$NtripClientDiffParams;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 159
    invoke-static {v5}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 160
    new-instance p0, Lcom/qianhe/ntripclientlib/bean/AuthResult;

    invoke-direct {p0, v4}, Lcom/qianhe/ntripclientlib/bean/AuthResult;-><init>(I)V

    .line 161
    iget-boolean p2, p1, Lcom/qianhe/baselib/base/BaseConfig;->isInit:Z

    invoke-virtual {p0, p2}, Lcom/qianhe/ntripclientlib/bean/AuthResult;->setIsInit(Z)V

    .line 162
    invoke-virtual {p0, p1}, Lcom/qianhe/ntripclientlib/bean/AuthResult;->setConfig(Lcom/qianhe/baselib/base/BaseConfig;)V

    .line 163
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-object v3

    .line 165
    :cond_0
    instance-of p0, p1, Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    if-eqz p0, :cond_6

    .line 166
    invoke-static {v1}, Lcom/qh/diffclient/DiffClient;->getRssConnectSupports(Ljava/lang/String;)I

    move-result p0

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<====== RSS\u652f\u6301\u7684\u7c7b\u578b\uff1a======>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v0, [Ljava/lang/Object;

    aput-object v7, v8, v2

    const-string v2, "0x%02X"

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff0csn:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 168
    sget-boolean v2, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory;->isFailReq:Z

    const/4 v6, 0x3

    const/16 v7, 0x1f43

    const/16 v8, 0x1f42

    const/4 v9, 0x2

    if-nez v2, :cond_3

    and-int/2addr p0, v9

    if-ne p0, v9, :cond_3

    .line 170
    new-instance p0, Lcom/qh/diffclient/DiffClient$RssAccDiffParams;

    invoke-direct {p0}, Lcom/qh/diffclient/DiffClient$RssAccDiffParams;-><init>()V

    .line 171
    iput-object v1, p0, Lcom/qh/diffclient/DiffClient$RssAccDiffParams;->sn:Ljava/lang/String;

    .line 172
    iput-object p2, p0, Lcom/qh/diffclient/DiffClient$RssAccDiffParams;->ggaLine:Ljava/lang/String;

    .line 173
    iget p1, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    if-ne p1, v8, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v7, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/qh/diffclient/DiffClient$RssAccDiffParams;->coordSys:I

    .line 174
    invoke-static {p0}, Lcom/qh/diffclient/DiffClient;->initialize(Lcom/qh/diffclient/DiffClient$RssAccDiffParams;)Z

    return-object v3

    .line 177
    :cond_3
    new-instance p0, Lcom/qh/diffclient/DiffClient$RssSdkDiffParams;

    invoke-direct {p0}, Lcom/qh/diffclient/DiffClient$RssSdkDiffParams;-><init>()V

    .line 178
    iput-object v1, p0, Lcom/qh/diffclient/DiffClient$RssSdkDiffParams;->sn:Ljava/lang/String;

    .line 179
    iput-object p2, p0, Lcom/qh/diffclient/DiffClient$RssSdkDiffParams;->ggaLine:Ljava/lang/String;

    .line 180
    const-string p2, "ABC"

    iput-object p2, p0, Lcom/qh/diffclient/DiffClient$RssSdkDiffParams;->salt:Ljava/lang/String;

    .line 181
    iget p2, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    if-ne p2, v8, :cond_4

    goto :goto_1

    :cond_4
    if-ne p2, v7, :cond_5

    const/4 v0, 0x3

    goto :goto_1

    :cond_5
    const/4 v0, 0x2

    :goto_1
    iput v0, p0, Lcom/qh/diffclient/DiffClient$RssSdkDiffParams;->coordSys:I

    .line 182
    invoke-static {p0}, Lcom/qh/diffclient/DiffClient;->initialize(Lcom/qh/diffclient/DiffClient$RssSdkDiffParams;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 184
    invoke-static {v5}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 185
    new-instance p0, Lcom/qianhe/ntripclientlib/bean/AuthResult;

    invoke-direct {p0, v4}, Lcom/qianhe/ntripclientlib/bean/AuthResult;-><init>(I)V

    .line 186
    iget-boolean p1, p1, Lcom/qianhe/baselib/base/BaseConfig;->isInit:Z

    invoke-virtual {p0, p1}, Lcom/qianhe/ntripclientlib/bean/AuthResult;->setIsInit(Z)V

    .line 187
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_6
    return-object v3
.end method
