.class public Lcom/qianhe/yct/manage/AppConfigManager;
.super Ljava/lang/Object;
.source "AppConfigManager.java"


# static fields
.field private static instance:Lcom/qianhe/yct/manage/AppConfigManager;


# instance fields
.field private appConfig:Lcom/qianhe/yct/bean/AppConfig;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/qianhe/yct/manage/AppConfigManager;
    .locals 2

    const-class v0, Lcom/qianhe/yct/manage/AppConfigManager;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/qianhe/yct/manage/AppConfigManager;->instance:Lcom/qianhe/yct/manage/AppConfigManager;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/qianhe/yct/manage/AppConfigManager;

    invoke-direct {v1}, Lcom/qianhe/yct/manage/AppConfigManager;-><init>()V

    sput-object v1, Lcom/qianhe/yct/manage/AppConfigManager;->instance:Lcom/qianhe/yct/manage/AppConfigManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    sget-object v1, Lcom/qianhe/yct/manage/AppConfigManager;->instance:Lcom/qianhe/yct/manage/AppConfigManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z
    .locals 4

    .line 52
    iget-wide v0, p1, Lcom/qianhe/yct/bean/AppConfig;->version:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/qianhe/yct/bean/AppConfig;->version:J

    .line 53
    invoke-static {p1}, Lcom/qianhe/yct/utils/AppConfigUtil;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getAppConfig()Lcom/qianhe/yct/bean/AppConfig;
    .locals 1

    .line 43
    invoke-static {}, Lcom/qianhe/yct/utils/AppConfigUtil;->loadAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    return-object v0
.end method

.method public getPoleHeight()F
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->pole_height:F

    return v0
.end method

.method public getUnitPreference()I
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/qianhe/yct/utils/AppConfigUtil;->loadAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->unit_preference:I

    invoke-static {v0}, Lcom/qianhe/baselib/enums/UnitEnum;->normalize(I)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 493
    sput-object v0, Lcom/qianhe/yct/manage/AppConfigManager;->instance:Lcom/qianhe/yct/manage/AppConfigManager;

    .line 494
    iput-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    return-void
.end method

.method public resetConfig()Z
    .locals 4

    .line 64
    invoke-static {}, Lcom/qianhe/yct/utils/AppConfigUtil;->createDefaultConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-wide v2, v1, Lcom/qianhe/yct/bean/AppConfig;->version:J

    iput-wide v2, v0, Lcom/qianhe/yct/bean/AppConfig;->version:J

    .line 68
    iget-object v2, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    iput v3, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    .line 69
    iget-object v3, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_host:Ljava/lang/String;

    iput-object v3, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_host:Ljava/lang/String;

    .line 70
    iget v3, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_port:I

    iput v3, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_port:I

    .line 71
    iget-object v3, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_mount_point:Ljava/lang/String;

    iput-object v3, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_mount_point:Ljava/lang/String;

    .line 72
    iget-object v3, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_username:Ljava/lang/String;

    iput-object v3, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_username:Ljava/lang/String;

    .line 73
    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_password:Ljava/lang/String;

    iput-object v1, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_password:Ljava/lang/String;

    .line 74
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    move-result v0

    return v0
.end method

.method public setBaseHeightCutoffAngle(F)V
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->base_height_cutoff_angle:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    .line 382
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->base_height_cutoff_angle:F

    .line 383
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 385
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 386
    const-string v1, "base_height_cutoff_angle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBaseHost(Ljava/lang/String;)V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->base_host:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iput-object p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->base_host:Ljava/lang/String;

    .line 327
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 329
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 330
    const-string v1, "base_host"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBaseMobilityThreshold(F)V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->base_mobility_threshold:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    .line 312
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->base_mobility_threshold:F

    .line 313
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 315
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 316
    const-string v1, "base_mobility_threshold"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBasePDOPLimit(F)V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->base_pdop_limit:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    .line 368
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->base_pdop_limit:F

    .line 369
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 371
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 372
    const-string v1, "base_pdop_limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBasePort(I)V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->base_port:I

    if-eq v2, p1, :cond_0

    .line 354
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->base_port:I

    .line 355
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 357
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 358
    const-string v1, "base_port"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBestposInterval(F)V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->bestpos_interval:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    .line 256
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->bestpos_interval:F

    .line 257
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 259
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 260
    const-string v1, "bestpos_interval"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCors(Lcom/qianhe/baselib/base/BaseConfig;)V
    .locals 4

    .line 78
    const-string v0, ""

    invoke-static {}, Lcom/qianhe/yct/utils/AppConfigUtil;->createDefaultConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    :cond_0
    iput v3, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    .line 80
    iget-object v3, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_host:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    :goto_0
    iput-object v3, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_host:Ljava/lang/String;

    .line 81
    iget-object v2, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_port:I

    :cond_2
    iput v3, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_port:I

    .line 82
    iget-object v3, p1, Lcom/qianhe/baselib/base/BaseConfig;->mount_point:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_mount_point:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lcom/qianhe/baselib/base/BaseConfig;->mount_point:Ljava/lang/String;

    :goto_1
    iput-object v1, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_mount_point:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v3, p1, Lcom/qianhe/baselib/base/BaseConfig;->username:Ljava/lang/String;

    iput-object v3, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_username:Ljava/lang/String;

    .line 84
    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseConfig;->password:Ljava/lang/String;

    iput-object p1, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_password:Ljava/lang/String;

    .line 85
    invoke-direct {p0, v1}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 87
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 88
    const-string v1, "ntrip_type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v1, "ntrip_host"

    iget-object v2, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_host:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v1, "ntrip_port"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v0, "ntrip_mount_point"

    iget-object v1, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_mount_point:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v0, "ntrip_username"

    iget-object v1, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_username:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v0, "ntrip_password"

    iget-object v1, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_password:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setDataSmoot(I)V
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->data_smoot:I

    if-eq v2, p1, :cond_0

    .line 396
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->data_smoot:I

    .line 397
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 399
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 400
    const-string v1, "data_smoot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDistanceFromProjectVisibility(I)V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->display_distance_starting_point:I

    if-eq v2, p1, :cond_0

    .line 411
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->display_distance_starting_point:I

    .line 412
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 414
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 415
    const-string v1, "display_distance_starting_point"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDopInterval(F)V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->dop_interval:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    .line 158
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->dop_interval:F

    .line 159
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 161
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 162
    const-string v1, "dop_interval"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setExtsensor1(F)V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->extsensor_1:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    .line 144
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->extsensor_1:F

    .line 145
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 147
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 148
    const-string v1, "extsensor_1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setGGaInterval(F)V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->gga_interval:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    .line 242
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->gga_interval:F

    .line 243
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 245
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 246
    const-string v1, "gga_interval"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setGstInterval(F)V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->gst_interval:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    .line 172
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->gst_interval:F

    .line 173
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 175
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 176
    const-string v1, "gst_interval"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setHRMSLimit(F)V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->hrms_limit:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    .line 284
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->hrms_limit:F

    .line 285
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 287
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 288
    const-string v1, "hrms_limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setInsInterval(F)V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ins_interval:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    .line 116
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ins_interval:F

    .line 117
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 119
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 120
    const-string v1, "ins_interval"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setInsUnavailableCount(I)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ins_unavailable_count:I

    if-eq v2, p1, :cond_0

    .line 130
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ins_unavailable_count:I

    .line 131
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 133
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 134
    const-string v1, "ins_unavailable_count"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setNtriptype(I)V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    if-eq v2, p1, :cond_0

    .line 102
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    .line 103
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 105
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 106
    const-string v1, "ntrip_type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPoleHeight(F)V
    .locals 3

    .line 478
    invoke-virtual {p0}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    .line 479
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->pole_height:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    .line 480
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->pole_height:F

    .line 481
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 483
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 484
    const-string v1, "pole_height"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 485
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setRefstationInterval(F)V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->refstation_interval:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    .line 228
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->refstation_interval:F

    .line 229
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 231
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 232
    const-string v1, "refstation_interval"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSauInterval(F)V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->sau_interval:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    .line 214
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->sau_interval:F

    .line 215
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 217
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 218
    const-string v1, "sau_interval"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSavInterval(F)V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->sav_interval:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    .line 200
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->sav_interval:F

    .line 201
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 203
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 204
    const-string v1, "sav_interval"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSnrInterval(F)V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->snr_interval:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    .line 186
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->snr_interval:F

    .line 187
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 189
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 190
    const-string/jumbo v1, "snr_interval"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTiltDisplay(I)V
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->tilt_display:I

    if-eq v2, p1, :cond_0

    .line 441
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->tilt_display:I

    .line 442
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 444
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 445
    const-string/jumbo v1, "tilt_display"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setUnitPreference(I)V
    .locals 3

    .line 459
    invoke-static {p1}, Lcom/qianhe/baselib/enums/UnitEnum;->normalize(I)I

    move-result p1

    .line 460
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->unit_preference:I

    if-eq v2, p1, :cond_0

    .line 461
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->unit_preference:I

    .line 462
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 464
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 465
    const-string/jumbo v1, "unit_preference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 466
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVRMSLimit(F)V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->vrms_limit:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    .line 298
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->vrms_limit:F

    .line 299
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 301
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 302
    const-string/jumbo v1, "vrms_limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVerifyAccuracyHorizontalErrorVisibility(I)V
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->display_verify_horizontal_error:I

    if-eq v2, p1, :cond_0

    .line 426
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->display_verify_horizontal_error:I

    .line 427
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 429
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 430
    const-string v1, "display_verify_horizontal_error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 431
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setWorktolerance(F)V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    .line 270
    iput p1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    .line 271
    invoke-direct {p0, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    .line 273
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 274
    const-string/jumbo v1, "work_tolerance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synVersion(I)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    int-to-long v1, p1

    iput-wide v1, v0, Lcom/qianhe/yct/bean/AppConfig;->version:J

    .line 58
    const-string/jumbo p1, "\u540c\u6b65\u914d\u7f6e\u6587\u4ef6\u7248\u672c\u53f7"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/qianhe/yct/manage/AppConfigManager;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/manage/AppConfigManager;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    return-void
.end method
