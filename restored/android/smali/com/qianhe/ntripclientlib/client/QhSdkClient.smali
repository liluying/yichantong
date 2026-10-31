.class public Lcom/qianhe/ntripclientlib/client/QhSdkClient;
.super Ljava/lang/Object;
.source "QhSdkClient.java"

# interfaces
.implements Lcom/qianhe/ntripclientlib/base/DiffClientImpl;


# instance fields
.field private authSuccess:Z

.field private connectSuccess:Z

.field private executorRead:Ljava/util/concurrent/ExecutorService;

.field private mConfig:Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

.field private final mContext:Landroid/content/Context;

.field private mGGA:Ljava/lang/String;

.field private mInputStream:Ljava/io/InputStream;

.field private mLatestBaiduResponseTime:J

.field private mLatestNtripResponseTime:J

.field private mOutputStream:Ljava/io/OutputStream;

.field private final mSP:Landroid/content/SharedPreferences;

.field private mSocket:Ljava/net/Socket;

.field private reconnect_period:J

.field private scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$th-u3YDFLlcrF9pWJZGryte8-5U(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x800

    .line 250
    :try_start_0
    new-array v1, v1, [B

    const-wide/16 v2, 0x0

    .line 253
    :cond_0
    :goto_0
    iget-object v4, v0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    .line 254
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v7, 0x0

    invoke-direct {v5, v1, v7, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 255
    iget-boolean v6, v0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->authSuccess:Z

    if-nez v6, :cond_7

    .line 256
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "header\u4fe1\u606f\uff1a"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 257
    const-string v6, "200"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v8, 0x1

    if-nez v6, :cond_1

    const-string v6, "OK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 258
    :cond_1
    iput-boolean v8, v0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->connectSuccess:Z

    const-wide/16 v9, 0x3

    .line 259
    iput-wide v9, v0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->reconnect_period:J

    .line 262
    :cond_2
    const-string v6, "EXPIREEPOCH"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 263
    const-string v6, "ENCRYPTDIFF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v9, "\u8bc1\u4e66\u6709\u6548\u671f\uff1a"

    const-string/jumbo v10, "\u5929\u540e)"

    const-string v11, " ("

    const-string v14, "corsAccountExpireEpoch"

    const-wide/16 v15, 0x3e8

    const-wide/32 v17, 0x5265c00

    const-string/jumbo v12, "yyyy-MM-dd HH:mm:ss"

    const-string v13, ":"

    if-eqz v6, :cond_3

    .line 264
    :try_start_1
    const-string v2, "EXPIREEPOCH:"

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 265
    aget-object v3, v2, v7

    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 266
    aget-object v3, v3, v8

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 267
    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 269
    new-instance v6, Ljava/text/SimpleDateFormat;

    sget-object v13, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v6, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v12, Ljava/util/Date;

    const/16 v19, 0x1

    mul-long v7, v2, v15

    invoke-direct {v12, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 270
    iget-object v12, v0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mSP:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12, v14, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v7, v12

    .line 272
    div-long v7, v7, v17

    long-to-int v8, v7

    .line 273
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 274
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/16 v19, 0x1

    .line 276
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 277
    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v19

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 278
    new-instance v6, Ljava/text/SimpleDateFormat;

    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v6, v12, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    mul-long v12, v2, v15

    invoke-direct {v7, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 279
    iget-object v7, v0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mSP:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v14, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v12, v7

    .line 281
    div-long v12, v12, v17

    long-to-int v7, v12

    .line 282
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 283
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/16 v19, 0x1

    .line 288
    :cond_5
    :goto_1
    const-string v6, "ERROR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 289
    const-string v4, "SDK\u8ba4\u8bc1\u5931\u8d25\u3002"

    invoke-static {v4}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const-wide/16 v6, 0xa

    .line 290
    iput-wide v6, v0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->reconnect_period:J

    .line 291
    new-instance v4, Lcom/qianhe/ntripclientlib/bean/AuthResult;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v6, v2, v3, v5}, Lcom/qianhe/ntripclientlib/bean/AuthResult;-><init>(IJLjava/lang/String;)V

    .line 292
    iget-object v5, v0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    iget-boolean v5, v5, Lcom/qianhe/baselib/base/BaseConfig;->isInit:Z

    invoke-virtual {v4, v5}, Lcom/qianhe/ntripclientlib/bean/AuthResult;->setIsInit(Z)V

    .line 293
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 294
    iget-object v4, v0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/qianhe/baselib/base/BaseConfig;->setIsInit(Z)V

    goto/16 :goto_0

    :cond_6
    const/4 v6, 0x4

    if-lt v4, v6, :cond_0

    .line 297
    const-string v4, "\r\n\r\n"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    const-string v4, "SDK\u8ba4\u8bc1\u6210\u529f\u3002"

    invoke-static {v4}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 299
    iput-boolean v5, v0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->authSuccess:Z

    .line 300
    iget-object v4, v0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mGGA:Ljava/lang/String;

    invoke-direct {v0, v4}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->writeData(Ljava/lang/String;)V

    .line 301
    new-instance v4, Lcom/qianhe/ntripclientlib/bean/AuthResult;

    invoke-direct {v4, v5}, Lcom/qianhe/ntripclientlib/bean/AuthResult;-><init>(I)V

    .line 302
    iget-object v5, v0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    iget-boolean v5, v5, Lcom/qianhe/baselib/base/BaseConfig;->isInit:Z

    invoke-virtual {v4, v5}, Lcom/qianhe/ntripclientlib/bean/AuthResult;->setIsInit(Z)V

    .line 303
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 304
    iget-object v4, v0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/qianhe/baselib/base/BaseConfig;->setIsInit(Z)V

    goto/16 :goto_0

    :cond_7
    const/4 v6, 0x0

    .line 308
    invoke-static {v1, v6, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 309
    new-instance v5, Lcom/qianhe/baselib/bean/OrderBean;

    invoke-direct {v5, v4}, Lcom/qianhe/baselib/bean/OrderBean;-><init>([B)V

    .line 310
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mLatestNtripResponseTime:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 316
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 317
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Socket closed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readData()\u5f02\u5e38 - >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetconnectSuccess(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->connectSuccess:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfig(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGGA(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mGGA:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSocket(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)Ljava/net/Socket;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mSocket:Ljava/net/Socket;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreconnect_period(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->reconnect_period:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputreconnect_period(Lcom/qianhe/ntripclientlib/client/QhSdkClient;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->reconnect_period:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mjudgeAuth(Lcom/qianhe/ntripclientlib/client/QhSdkClient;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->judgeAuth(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mjudgeNetwork(Lcom/qianhe/ntripclientlib/client/QhSdkClient;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->judgeNetwork(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mjudgeNtripConnect(Lcom/qianhe/ntripclientlib/client/QhSdkClient;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->judgeNtripConnect(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartConnectNtrip(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->startConnectNtrip()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteData(Lcom/qianhe/ntripclientlib/client/QhSdkClient;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->writeData(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;Ljava/lang/String;)V
    .locals 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->connectSuccess:Z

    iput-boolean v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->authSuccess:Z

    const-wide/16 v1, 0x0

    .line 57
    iput-wide v1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mLatestBaiduResponseTime:J

    iput-wide v1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mLatestNtripResponseTime:J

    const-wide/16 v1, 0x3

    .line 58
    iput-wide v1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->reconnect_period:J

    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 64
    iput-object p1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    .line 66
    const-string/jumbo p2, "sp"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mSP:Landroid/content/SharedPreferences;

    .line 68
    invoke-virtual {p0, p3}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->updateGgaData(Ljava/lang/String;)V

    return-void
.end method

.method private buildParam()Ljava/lang/String;
    .locals 9

    .line 204
    const-string v0, "\r\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 207
    const-string v4, "RSSDID,%s,%s,ABC"

    iget-object v5, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    iget-object v5, v5, Lcom/qianhe/baselib/base/BaseConfig;->deviceId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v5, 0x1

    aput-object v6, v7, v5

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET /"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    iget-object v6, v6, Lcom/qianhe/baselib/base/BaseConfig;->mount_point:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Auth-Type: 2\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeviceID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    iget-object v6, v6, Lcom/qianhe/baselib/base/BaseConfig;->deviceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 209
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Authorization: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-direct {p0, v4}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->getEncryptAuth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "User-Agent: K68G.1.1.2401.125\r\n"

    .line 211
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timestamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CoordSys: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v3, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    iget v3, v3, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    const/16 v4, 0x1f41

    if-ne v3, v4, :cond_0

    const-string v3, "CGCS2000"

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/16 v4, 0x1f42

    if-ne v3, v4, :cond_1

    const-string v3, "WGS84"

    goto :goto_0

    :cond_1
    const-string v3, "ITRF2008"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 218
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ntrip\u8ba4\u8bc1\u5f02\u5e38 \u2014\u2014> getEncryptAuth\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEncryptAuth(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 226
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 227
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 231
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isConnected()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->connectSuccess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->authSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private judgeAuth(J)V
    .locals 3

    .line 149
    iget-boolean v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->connectSuccess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->authSuccess:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0xa

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 150
    const-string p1, "<\u2014\u2014\u2014\u2014 \u957f\u65f6\u95f4\u672a\u8ba4\u8bc1\u6210\u529f \u2014\u2014\u2014\u2014>"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const-wide/16 p1, 0x3

    .line 151
    iput-wide p1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->reconnect_period:J

    .line 152
    invoke-virtual {p0}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->disconnect()V

    .line 153
    invoke-virtual {p0}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->connect()V

    :cond_0
    return-void
.end method

.method private judgeNetwork(J)V
    .locals 3

    .line 108
    iget-wide v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mLatestBaiduResponseTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x2710

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mLatestBaiduResponseTime:J

    .line 110
    iget-object p1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/qianhe/ntripclientlib/client/QhSdkClient$2;

    invoke-direct {p2, p0}, Lcom/qianhe/ntripclientlib/client/QhSdkClient$2;-><init>(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)V

    invoke-static {p1, p2}, Lcom/qianhe/baselib/utils/NetworkChecker;->checkNetworkAsync(Landroid/content/Context;Lcom/qianhe/baselib/utils/NetworkChecker$NetworkCheckCallback;)V

    :cond_0
    return-void
.end method

.method private judgeNtripConnect(J)V
    .locals 5

    .line 130
    iget-boolean v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->connectSuccess:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mLatestNtripResponseTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3a98

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 132
    sget-object p1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object p2, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mGGA:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/qianhe/baselib/utils/parser/GGAParser;->parseGGA(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)Lcom/qianhe/baselib/bean/GGAEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 133
    iget p2, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    if-lez p2, :cond_0

    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<\u2014\u2014\u2014\u2014 \u957f\u65f6\u95f4\u672a\u6536\u5230ntrip\u5e94\u7b54 \u2014\u2014\u2014\u2014> quality:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const-wide/16 p1, 0x3

    .line 135
    iput-wide p1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->reconnect_period:J

    .line 136
    invoke-virtual {p0}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->disconnect()V

    .line 137
    invoke-virtual {p0}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->connect()V

    return-void

    .line 139
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mLatestNtripResponseTime:J

    if-eqz p1, :cond_1

    .line 140
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u5f53\u524d\u89e3\u72b6\u6001 quality:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private readData()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mSocket:Ljava/net/Socket;

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->executorRead:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->executorRead:Ljava/util/concurrent/ExecutorService;

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->executorRead:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qianhe/ntripclientlib/client/QhSdkClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/ntripclientlib/client/QhSdkClient$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private startAuth()V
    .locals 3

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mOutputStream:Ljava/io/OutputStream;

    invoke-direct {p0}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->buildParam()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 196
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAuth\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method private startConnectNtrip()V
    .locals 3

    .line 179
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<\u2014\u2014\u2014\u2014\u2014\u2014 QhSdkClient startConnectNtrip() \u2014\u2014\u2014\u2014\u2014\u2014>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    iget-object v1, v1, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\uff0cdeviceId\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    iget-object v1, v1, Lcom/qianhe/baselib/base/BaseConfig;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->connectSuccess:Z

    .line 181
    iput-boolean v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->authSuccess:Z

    .line 182
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    iget-object v2, v1, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    invoke-direct {v0, v2, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mSocket:Ljava/net/Socket;

    .line 183
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mOutputStream:Ljava/io/OutputStream;

    .line 184
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mInputStream:Ljava/io/InputStream;

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mLatestNtripResponseTime:J

    .line 186
    invoke-direct {p0}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->readData()V

    .line 187
    invoke-direct {p0}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->startAuth()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startConnectNtrip\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method private writeData(Ljava/lang/String;)V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mGGA:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mOutputStream:Ljava/io/OutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 166
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===========QhSdkClient -> updateGGA() ============"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 169
    :cond_1
    const-string/jumbo p1, "updateGGA\uff1asocket\u672a\u8fde\u63a5"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 172
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateGGA\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->connectSuccess:Z

    :goto_1
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 8

    .line 73
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;

    invoke-direct {v2, p0}, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;-><init>(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)V

    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 102
    :cond_1
    const-string/jumbo v0, "\u5b9a\u65f6\u68c0\u6d4b\u5f00\u542f\u5931\u8d25 \u2014\u2014> scheduledFuture != null or mConfig == null"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 325
    :try_start_0
    const-string v0, "<\u2014\u2014\u2014\u2014\u2014\u2014 QhSdkClient disconnect() \u2014\u2014\u2014\u2014\u2014\u2014>"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 327
    iput-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 328
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 329
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 332
    :cond_3
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->executorRead:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 333
    :cond_4
    invoke-static {}, Lcom/qianhe/baselib/utils/NetworkChecker;->release()V

    const/4 v0, 0x0

    .line 334
    iput-boolean v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->connectSuccess:Z

    .line 335
    iput-boolean v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->authSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 337
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public updateGgaData(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 242
    iput-object p1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->mGGA:Ljava/lang/String;

    :cond_0
    return-void
.end method
