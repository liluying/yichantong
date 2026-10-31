.class public abstract Lcom/qianhe/yct/utils/CalibrateSessionHelper;
.super Ljava/lang/Object;
.source "CalibrateSessionHelper.java"


# static fields
.field private static final AWAIT_SET_PARAM_LOCK:Ljava/lang/Object;

.field private static awaitSetParamReply:Z

.field private static pendingEndMeta:Lcom/google/gson/JsonObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 912
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->AWAIT_SET_PARAM_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public static beginBucketSwitch(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 8

    .line 162
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->ensureXexcavatorVersion()V

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    .line 168
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    move-wide v0, v2

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateId:J

    :cond_2
    :goto_0
    move-wide v3, v0

    .line 171
    invoke-static {p0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->deviceSn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "local"

    .line 170
    const-string v2, "bucket"

    const-string v5, ""

    invoke-static/range {v2 .. v7}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->beginSession(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static beginFinetune(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 1

    .line 130
    const-string v0, "finetune_five_point"

    invoke-static {p0, p1, v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginFinetune(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V

    return-void
.end method

.method public static beginFinetune(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V
    .locals 10

    .line 140
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->ensureXexcavatorVersion()V

    .line 147
    const-string v0, ""

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_2

    .line 148
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_1

    move-wide v1, v3

    goto :goto_0

    :cond_1
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateId:J

    .line 149
    :goto_0
    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    if-eqz p1, :cond_2

    move-object v0, p1

    :cond_2
    move-object v7, v0

    move-wide v5, v1

    .line 151
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 152
    const-string p2, "finetune_five_point"

    :cond_3
    move-object v4, p2

    .line 154
    invoke-static {p0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->deviceSn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "local"

    .line 153
    const-string v3, "finetune"

    invoke-static/range {v3 .. v9}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->beginSession(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static beginForExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V
    .locals 1

    .line 59
    instance-of v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    .line 60
    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->isReplaceBucketMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "bucket"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginForExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static beginForExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 69
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->ensureXexcavatorVersion()V

    .line 73
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->resolveFileFlow(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    move-object v0, p3

    if-eqz p1, :cond_2

    .line 74
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateId:J

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 75
    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    if-eqz p1, :cond_3

    :goto_1
    move-object v3, p1

    goto :goto_2

    :cond_3
    const-string p1, ""

    goto :goto_1

    .line 76
    :goto_2
    const-string p1, "bucket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move-object v4, v3

    move-wide v2, v1

    .line 77
    const-string v1, "reuse_create"

    .line 78
    invoke-static {p0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->deviceSn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v6, p2

    .line 77
    invoke-static/range {v0 .. v6}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->beginSession(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    move-object v5, p2

    move-object v4, v3

    move-wide v2, v1

    .line 80
    invoke-static {p0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->deviceSn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    move-wide v1, v2

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->beginSession(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static beginFreshForExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->discardSession()V

    .line 94
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->clearAwaitSetParamReply()V

    .line 95
    invoke-static {p0, p1, p2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginForExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V

    return-void
.end method

.method public static beginReplaceBucket(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 2

    .line 86
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->discardSession()V

    .line 87
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->clearAwaitSetParamReply()V

    .line 88
    const-string v0, "local"

    const-string v1, "bucket"

    invoke-static {p0, p1, v0, v1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginForExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static beginVerify(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V
    .locals 10

    .line 108
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "verify"

    .line 111
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->getActiveFileFlow()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 112
    invoke-static {p2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->updateSessionType(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 116
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->ensureXexcavatorVersion()V

    if-eqz p1, :cond_2

    .line 117
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateId:J

    :goto_0
    move-wide v5, v0

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_3

    .line 118
    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    if-eqz p1, :cond_3

    :goto_2
    move-object v7, p1

    goto :goto_3

    :cond_3
    const-string p1, ""

    goto :goto_2

    .line 125
    :goto_3
    invoke-static {p0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->deviceSn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "device"

    .line 119
    const-string/jumbo v2, "verify"

    const-string/jumbo v3, "verify"

    move-object v4, p2

    invoke-static/range {v2 .. v9}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->beginSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static buildBody(Lcom/qianhe/baselib/bean/InsNavi;)Lcom/google/gson/JsonObject;
    .locals 7

    if-nez p0, :cond_0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    .line 238
    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0

    .line 240
    :cond_0
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static buildBucketSwitchMeta(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;Z)Lcom/google/gson/JsonObject;
    .locals 4

    .line 879
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 881
    const-string v1, ""

    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 880
    :goto_0
    const-string v3, "excavator_name"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 882
    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    const-string v2, "bucket"

    invoke-virtual {v0, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string p1, "mode"

    invoke-static {p0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->resolveFileFlow(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_2

    move-object p2, v1

    .line 884
    :cond_2
    const-string p0, "new_calib_params_id"

    invoke-virtual {v0, p0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "ok"

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static buildBucketToolInput(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/google/gson/JsonObject;
    .locals 7

    .line 497
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 498
    const-string v1, "algo"

    const-string/jumbo v2, "tool"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 500
    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    .line 501
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 503
    iget-object v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 504
    iget-object v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    goto :goto_0

    .line 506
    :cond_1
    const-string v1, ""

    :goto_0
    const-string v2, "bucket"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, p0

    :goto_1
    if-nez p1, :cond_3

    return-object v0

    .line 511
    :cond_3
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->useDistanceToolLog(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result p0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const-string v3, "lr"

    const-string v4, "ab"

    if-eqz p0, :cond_4

    .line 512
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 513
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAT()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string v4, "at"

    invoke-virtual {v0, v4, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 514
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNA()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string v4, "an"

    invoke-virtual {v0, v4, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 515
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNT()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string v4, "nt"

    invoke-virtual {v0, v4, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 516
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide p0

    mul-double p0, p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0

    .line 518
    :cond_4
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG1()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string v5, "g1"

    invoke-virtual {v0, v5, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 519
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG2()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string v5, "g2"

    invoke-virtual {v0, v5, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 520
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG3()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string v5, "g3"

    invoke-virtual {v0, v5, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 521
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v5

    mul-double v5, v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 522
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method

.method public static buildCollectSample(Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;D)Lcom/google/gson/JsonObject;
    .locals 8

    .line 285
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 287
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const-string p4, "phase_to_hang"

    invoke-virtual {v0, p4, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 288
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 289
    const-string p4, "hgt"

    const-string v1, "lon"

    const-string v2, "lat"

    if-eqz p0, :cond_0

    .line 290
    iget-wide v3, p0, Lcom/qianhe/baselib/bean/GGAEntity;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 291
    iget-wide v2, p0, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 292
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GGAEntity;->elevation:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p3, p4, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 294
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 295
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 296
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p4, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 298
    :goto_0
    const-string p0, "gga"

    invoke-virtual {v0, p0, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 299
    const-string p0, "device"

    if-eqz p1, :cond_1

    .line 300
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p3

    invoke-virtual {v0, p0, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    .line 302
    invoke-static/range {v1 .. v7}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p3

    invoke-virtual {v0, p0, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 304
    :goto_1
    const-string p0, "sensor"

    if-eqz p2, :cond_2

    .line 305
    iget-wide v1, p2, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->rollAngle:D

    iget-wide v3, p2, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->pitchAngle:D

    iget-wide v5, p2, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->headingAngle:D

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_2

    :cond_2
    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    .line 307
    invoke-static/range {v1 .. v7}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :goto_2
    if-eqz p1, :cond_3

    .line 309
    iget-wide p0, p1, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    goto :goto_3

    :cond_3
    const-wide/16 p0, 0x0

    :goto_3
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "arm_angle"

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method

.method public static buildCommonData(Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Z)Lcom/google/gson/JsonObject;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 189
    invoke-static/range {v0 .. v5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildCommonData(Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;ZLcom/qianhe/baselib/bean/InsNavi;)Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static buildCommonData(Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;ZLcom/qianhe/baselib/bean/InsNavi;)Lcom/google/gson/JsonObject;
    .locals 2

    .line 197
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 198
    const-string v1, "gga"

    invoke-static {p0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildGga(Lcom/qianhe/baselib/bean/GGAEntity;)Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 199
    invoke-static {p1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildBody(Lcom/qianhe/baselib/bean/InsNavi;)Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 200
    const-string/jumbo v1, "y_err"

    if-eqz p3, :cond_0

    .line 201
    invoke-virtual {p0, v1, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 203
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, v1, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 205
    :goto_0
    const-string p3, "device"

    invoke-virtual {v0, p3, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 206
    const-string p0, "sensor"

    invoke-static {p2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildSensor(Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)Lcom/google/gson/JsonObject;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    if-eqz p5, :cond_1

    move-object p1, p5

    :cond_1
    if-eqz p4, :cond_2

    if-eqz p1, :cond_2

    .line 209
    const-string/jumbo p0, "teeth"

    invoke-static {p1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildTeeth(Lcom/qianhe/baselib/bean/InsNavi;)Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_2
    return-object v0
.end method

.method private static buildFineTuneCollectData(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)Lcom/google/gson/JsonObject;
    .locals 9

    const/4 v0, 0x1

    .line 1028
    invoke-static {p1, p2, p3, p4, v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildCommonData(Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Z)Lcom/google/gson/JsonObject;

    move-result-object p2

    if-nez p0, :cond_0

    return-object p2

    .line 1032
    :cond_0
    iget-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->deviceRoll:D

    iget-wide v2, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->devicePitch:D

    iget-wide v4, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->deviceHeading:D

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p3

    .line 1033
    const-string/jumbo v0, "y_err"

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    .line 1034
    invoke-virtual {p3, v0, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 1036
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, v0, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1038
    :goto_0
    const-string p4, "device"

    invoke-virtual {p2, p4, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1039
    iget-boolean p3, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorValid:Z

    if-eqz p3, :cond_2

    .line 1040
    iget-wide v2, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorRoll:D

    iget-wide v4, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorPitch:D

    iget-wide v6, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorHeading:D

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p3

    goto :goto_1

    :cond_2
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    .line 1041
    invoke-static/range {v2 .. v8}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p3

    .line 1039
    :goto_1
    const-string p4, "sensor"

    invoke-virtual {p2, p4, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1043
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1044
    iget-wide v2, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->lat:D

    invoke-static {v2, v3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->formatLatLon(D)Ljava/lang/String;

    move-result-object p4

    const-string v0, "lat"

    invoke-virtual {p3, v0, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    iget-wide v2, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->lon:D

    invoke-static {v2, v3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->formatLatLon(D)Ljava/lang/String;

    move-result-object p4

    const-string v0, "lon"

    invoke-virtual {p3, v0, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    iget-wide v2, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->elev:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    const-string v0, "hgt"

    invoke-virtual {p3, v0, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1047
    const-string p4, "age"

    const-string v0, "hdop"

    const-string v2, "sats"

    const-string v3, "q"

    if-eqz p1, :cond_3

    .line 1048
    iget v1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v3, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1049
    iget v1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->useStarNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1050
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->hdop:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1051
    iget p1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->age:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_2

    .line 1053
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, v3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1054
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1055
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1056
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1058
    :goto_2
    const-string p1, "gga"

    invoke-virtual {p2, p1, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1059
    const-string p1, "sample"

    invoke-static {p0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildFineTuneHabSample(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p2
.end method

.method public static buildFineTuneHabSample(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)Lcom/google/gson/JsonObject;
    .locals 12

    .line 1119
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1120
    const-string v1, "sensor"

    const-string v2, "device"

    const-string v3, "phase_to_hang"

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 1121
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    .line 1122
    invoke-static/range {v4 .. v10}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    .line 1123
    invoke-static/range {v3 .. v9}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0

    .line 1126
    :cond_0
    iget-wide v4, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->phaseToHang:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1127
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1128
    iget-wide v4, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->lat:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "lat"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1129
    iget-wide v4, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->lon:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "lon"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1130
    iget-wide v4, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->elev:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "hgt"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1131
    const-string v4, "gga"

    invoke-virtual {v0, v4, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1132
    new-instance v3, Lcom/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/google/gson/JsonArray;-><init>()V

    .line 1133
    iget-wide v4, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->north:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 1134
    iget-wide v4, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->east:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 1135
    iget-wide v4, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->down:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 1136
    const-string v4, "ned"

    invoke-virtual {v0, v4, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1137
    iget-wide v5, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->deviceRoll:D

    iget-wide v7, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->devicePitch:D

    iget-wide v9, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->deviceHeading:D

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1138
    iget-boolean v2, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorValid:Z

    if-eqz v2, :cond_1

    .line 1139
    iget-wide v3, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorRoll:D

    iget-wide v5, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorPitch:D

    iget-wide v7, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorHeading:D

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    .line 1140
    invoke-static/range {v2 .. v8}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 1138
    :goto_0
    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public static buildFineTuneInputSample(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)Lcom/google/gson/JsonObject;
    .locals 1

    const/4 v0, 0x1

    .line 1072
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildFineTuneInputSample(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;Z)Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static buildFineTuneInputSample(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;Z)Lcom/google/gson/JsonObject;
    .locals 10

    .line 1079
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1080
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "seed"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz p0, :cond_0

    .line 1081
    iget-wide v1, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->phaseToHang:D

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "phase_to_hang"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1082
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1083
    const-string v1, "hgt"

    const-string v2, "lon"

    const-string v3, "lat"

    const/4 v4, 0x0

    if-eqz p0, :cond_1

    .line 1084
    iget-wide v5, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->lat:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1085
    iget-wide v5, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->lon:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1086
    iget-wide v2, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->elev:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_1

    .line 1088
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1089
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1090
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1092
    :goto_1
    const-string v1, "gga"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1093
    new-instance p1, Lcom/google/gson/JsonArray;

    invoke-direct {p1}, Lcom/google/gson/JsonArray;-><init>()V

    if-eqz p0, :cond_2

    .line 1096
    iget-wide v1, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->north:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 1097
    iget-wide v1, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->east:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 1098
    iget-wide v1, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->down:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    goto :goto_2

    .line 1100
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 1101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 1102
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 1104
    :goto_2
    const-string v1, "ned"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1105
    const-string p1, "sensor"

    const-string v1, "device"

    if-eqz p0, :cond_3

    .line 1106
    iget-wide v2, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->deviceRoll:D

    iget-wide v4, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->devicePitch:D

    iget-wide v6, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->deviceHeading:D

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1107
    iget-wide v3, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorRoll:D

    iget-wide v5, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorPitch:D

    iget-wide v7, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorHeading:D

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0

    :cond_3
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    .line 1109
    invoke-static/range {v2 .. v8}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1110
    invoke-static/range {v2 .. v8}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public static buildGetParamReplyLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#CALIBRATE,,GET_PARAM,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    const-string v1, ""

    if-nez p0, :cond_0

    move-object p0, v1

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    move-object p1, v1

    .line 848
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildGga(Lcom/qianhe/baselib/bean/GGAEntity;)Lcom/google/gson/JsonObject;
    .locals 10

    .line 215
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 216
    const-string v1, "age"

    const-string v2, "hdop"

    const-string v3, "sats"

    const-string v4, "q"

    const-string v5, "hgt"

    const-string v6, "lon"

    const-string v7, "lat"

    if-nez p0, :cond_0

    .line 217
    const-string p0, "0"

    invoke-virtual {v0, v7, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, v6, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 219
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 220
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 221
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 222
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 223
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0

    .line 226
    :cond_0
    iget-wide v8, p0, Lcom/qianhe/baselib/bean/GGAEntity;->latitude:D

    invoke-static {v8, v9}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->formatLatLon(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-wide v7, p0, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    invoke-static {v7, v8}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->formatLatLon(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-wide v6, p0, Lcom/qianhe/baselib/bean/GGAEntity;->elevation:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 229
    iget v5, p0, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 230
    iget v4, p0, Lcom/qianhe/baselib/bean/GGAEntity;->useStarNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 231
    iget-wide v3, p0, Lcom/qianhe/baselib/bean/GGAEntity;->hdop:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 232
    iget p0, p0, Lcom/qianhe/baselib/bean/GGAEntity;->age:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method

.method public static buildHabSnapshot(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)Lcom/google/gson/JsonObject;
    .locals 9

    .line 1146
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1147
    const-string v1, "device"

    if-eqz p0, :cond_0

    .line 1148
    iget-wide v2, p0, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iget-wide v6, p0, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    .line 1150
    invoke-static/range {v2 .. v8}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1152
    :goto_0
    const-string p0, "sensor"

    if-eqz p1, :cond_1

    .line 1153
    iget-wide v1, p1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->rollAngle:D

    iget-wide v3, p1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->pitchAngle:D

    iget-wide v5, p1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->headingAngle:D

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0

    :cond_1
    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    .line 1155
    invoke-static/range {v1 .. v7}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public static buildMakeToolCmd(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    .line 529
    const-string p0, "LOCAL,tool,fromDistance"

    return-object p0

    .line 531
    :cond_0
    invoke-static {p0, p0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->useDistanceToolLog(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result v0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const-string v3, ",LR="

    if-eqz v0, :cond_1

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOCAL,tool,fromDistance,AB="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ",AT="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAT()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ",AN="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNA()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ",NT="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNT()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v3

    mul-double v3, v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 538
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOCAL,tool,fromMeasure,G1="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG1()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ",G2="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG2()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ",G3="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG3()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v3

    mul-double v3, v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",AB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildMode1GoCmd(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    .line 344
    const-string p0, "LOCAL,caliMode1"

    return-object p0

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOCAL,caliMode1,HG="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",GL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",GR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",LR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildMode1Input(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/google/gson/JsonObject;
    .locals 10

    .line 329
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 330
    const-string v1, "algo"

    const-string v2, "caliMode1"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-object v0

    .line 334
    :cond_0
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "hg"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 335
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "gl"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 336
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "gr"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 337
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "lr"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 338
    iget-wide v3, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceRoll:D

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->devicePitch:D

    iget-wide v7, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeading:D

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string v1, "device"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public static buildMode21GoCmd(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->countSweepExcludingDc([[DI)I

    move-result v0

    .line 578
    const-string v1, "LOCAL,caliMode21,sweep="

    if-nez p0, :cond_1

    .line 579
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 581
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",HA="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",phaseToHang="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->phaseToHang:D

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildMode21Input(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/google/gson/JsonObject;
    .locals 10

    .line 554
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 555
    const-string v1, "algo"

    const-string v2, "caliMode21"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-object v0

    .line 559
    :cond_0
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->phaseToHang:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "phase_to_hang"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 560
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "ha"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 561
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "hy"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 562
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "dx"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 563
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "ad"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 564
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "cd"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 565
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "bc"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 566
    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildSweepArrayExcludingDc([[DI)Lcom/google/gson/JsonArray;

    move-result-object v1

    const-string/jumbo v2, "sweep"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 567
    iget-wide v3, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceRoll:D

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDevicePitch:D

    iget-wide v7, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceHeading:D

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "a_device"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 568
    iget-wide v3, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDeviceRoll:D

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDevicePitch:D

    iget-wide v7, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDeviceHeading:D

    invoke-static/range {v3 .. v9}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "b_device"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 569
    iget-wide v3, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorRoll:D

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorPitch:D

    iget-wide v7, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorHeading:D

    invoke-static/range {v3 .. v9}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "b_sensor"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 570
    iget-wide v3, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDeviceRoll:D

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDevicePitch:D

    iget-wide v7, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDeviceHeading:D

    invoke-static/range {v3 .. v9}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "dc_device"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 571
    iget-wide v3, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorRoll:D

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorPitch:D

    iget-wide v7, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorHeading:D

    invoke-static/range {v3 .. v9}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "dc_sensor"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 572
    const-string/jumbo v1, "tool"

    invoke-static {p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->buildToolInputJson(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public static buildMode23GoCmd(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    .line 705
    iget v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_NOT_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    .line 706
    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 707
    const-string v0, "caliMode3"

    goto :goto_0

    :cond_0
    const-string v0, "caliMode2"

    .line 708
    :goto_0
    const-string v1, "LOCAL,"

    if-nez p0, :cond_1

    .line 709
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 711
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",HA="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",Hy="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",Ay="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",Ax="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",Dx="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",AD="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",BD="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",CD="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",BC="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildMode23Input(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/google/gson/JsonObject;
    .locals 11

    .line 361
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    if-eqz p0, :cond_0

    .line 362
    iget v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_NOT_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    .line 363
    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 364
    const-string v2, "caliMode3"

    goto :goto_1

    :cond_1
    const-string v2, "caliMode2"

    :goto_1
    const-string v3, "algo"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_2

    return-object v0

    .line 368
    :cond_2
    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "ha"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 369
    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "hy"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 370
    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "ay"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 371
    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "ax"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 372
    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "dx"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 373
    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "ad"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 374
    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "bd"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 375
    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "cd"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 376
    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "bc"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 377
    iget-wide v4, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceRoll:D

    iget-wide v6, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->devicePitch:D

    iget-wide v8, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeading:D

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "device"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    if-nez v1, :cond_3

    .line 379
    iget-wide v4, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorRoll:D

    iget-wide v6, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorPitch:D

    iget-wide v8, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorHeading:D

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 382
    :cond_3
    const-string/jumbo v1, "tool"

    invoke-static {p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->buildToolInputJson(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public static buildRpy(DDDZ)Lcom/google/gson/JsonObject;
    .locals 3

    .line 251
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 252
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 253
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "p"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 254
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "y"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    if-eqz p6, :cond_0

    .line 256
    invoke-static/range {p0 .. p5}, Lcom/qh/libexcavator/GeoQuaternion;->fromAngleZyx(DDD)Lcom/qh/libexcavator/GeoQuaternion;

    move-result-object p0

    .line 257
    iget-wide p1, p0, Lcom/qh/libexcavator/GeoQuaternion;->x:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "qx"

    invoke-virtual {v0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 258
    iget-wide p1, p0, Lcom/qh/libexcavator/GeoQuaternion;->y:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "qy"

    invoke-virtual {v0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 259
    iget-wide p0, p0, Lcom/qh/libexcavator/GeoQuaternion;->z:D

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "qz"

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_0
    return-object v0
.end method

.method public static buildSensor(Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)Lcom/google/gson/JsonObject;
    .locals 7

    if-nez p0, :cond_0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    .line 245
    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0

    .line 247
    :cond_0
    iget-wide v0, p0, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->rollAngle:D

    iget-wide v2, p0, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->pitchAngle:D

    iget-wide v4, p0, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->headingAngle:D

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static buildSetParam(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 5

    .line 314
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 315
    const-string/jumbo v1, "target"

    const-string v2, "device"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 317
    const-string v2, ""

    if-nez p0, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, p0

    :goto_0
    const-string v4, "calib_params_id"

    invoke-virtual {v1, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p1

    .line 318
    :goto_1
    const-string v4, "calib_params"

    invoke-virtual {v1, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CALIBRATE,,SET_PARAM,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_2

    move-object p0, v2

    .line 320
    :cond_2
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    move-object p1, v2

    .line 321
    :cond_3
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 322
    const-string p1, "command"

    invoke-virtual {v1, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string p0, "params"

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public static buildSweepArrayExcludingDc([[DI)Lcom/google/gson/JsonArray;
    .locals 13

    .line 771
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 775
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    if-ne v2, p1, :cond_1

    goto :goto_1

    .line 779
    :cond_1
    aget-object v3, p0, v2

    if-eqz v3, :cond_2

    .line 780
    array-length v4, v3

    const/4 v5, 0x3

    if-lt v4, v5, :cond_2

    .line 781
    aget-wide v6, v3, v1

    const/4 v4, 0x1

    aget-wide v8, v3, v4

    const/4 v4, 0x2

    aget-wide v10, v3, v4

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static buildTeeth(Lcom/qianhe/baselib/bean/InsNavi;)Lcom/google/gson/JsonObject;
    .locals 15

    .line 265
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 266
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLat:D

    iget-wide v3, p0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLon:D

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElev:D

    iget-wide v7, p0, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    iget-wide v9, p0, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    iget-wide v11, p0, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    invoke-static/range {v1 .. v12}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildTooth(DDDDDD)Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "l"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 267
    iget-wide v3, p0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLatR:D

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLonR:D

    iget-wide v7, p0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElevR:D

    iget-wide v9, p0, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    iget-wide v11, p0, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    iget-wide v13, p0, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    invoke-static/range {v3 .. v14}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildTooth(DDDDDD)Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 268
    iget-wide v3, p0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLatM:D

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLonM:D

    iget-wide v7, p0, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElevM:D

    iget-wide v9, p0, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    iget-wide v11, p0, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    iget-wide v13, p0, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    invoke-static/range {v3 .. v14}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildTooth(DDDDDD)Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string v1, "c"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method private static buildTooth(DDDDDD)Lcom/google/gson/JsonObject;
    .locals 2

    .line 273
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 274
    const-string v1, "lat"

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->formatLatLon(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string p0, "lon"

    invoke-static {p2, p3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->formatLatLon(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "hgt"

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 277
    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string/jumbo p1, "x"

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 278
    invoke-static {p8, p9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string/jumbo p1, "y"

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 279
    invoke-static {p10, p11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string/jumbo p1, "z"

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method

.method public static clearAwaitSetParamReply()V
    .locals 2

    .line 925
    sget-object v0, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->AWAIT_SET_PARAM_LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 926
    :try_start_0
    sput-boolean v1, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->awaitSetParamReply:Z

    const/4 v1, 0x0

    .line 927
    sput-object v1, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->pendingEndMeta:Lcom/google/gson/JsonObject;

    .line 928
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static clearReuseArmInput()V
    .locals 2

    .line 479
    const-string v0, "arm"

    const-string v1, "INPUT"

    invoke-static {v0, v1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->removeEventsWithKindAndTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string/jumbo v0, "sweep1"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->removeEventsFromTagOnward(Ljava/lang/String;)I

    return-void
.end method

.method public static clearReuseBucketInput()V
    .locals 2

    .line 474
    const-string v0, "bucket"

    const-string v1, "INPUT"

    invoke-static {v0, v1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->removeEventsWithKindAndTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->removeLatestMakeToolPair()V

    return-void
.end method

.method public static countSweepExcludingDc([[DI)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 792
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    if-eq v0, p1, :cond_1

    .line 793
    aget-object v2, p0, v0

    if-eqz v2, :cond_1

    array-length v2, v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static deviceSn(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 49
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 52
    :cond_0
    const-string/jumbo v1, "sp"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 53
    const-string v1, "deviceSn"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static endAwaitingSessionIfNeeded()V
    .locals 3

    .line 934
    sget-object v0, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->AWAIT_SET_PARAM_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 935
    :try_start_0
    sget-boolean v1, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->awaitSetParamReply:Z

    if-nez v1, :cond_0

    .line 936
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 938
    sput-boolean v1, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->awaitSetParamReply:Z

    .line 939
    sget-object v1, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->pendingEndMeta:Lcom/google/gson/JsonObject;

    const/4 v2, 0x0

    .line 940
    sput-object v2, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->pendingEndMeta:Lcom/google/gson/JsonObject;

    .line 941
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    .line 943
    :cond_1
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    :goto_0
    const/4 v0, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->endSession(ZLcom/google/gson/JsonObject;)V

    :cond_2
    return-void

    .line 941
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static endBucketSwitchFailed(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 2

    .line 891
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->clearAwaitSetParamReply()V

    .line 892
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "bucket"

    .line 893
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->getActiveFileFlow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 896
    invoke-static {p0, p1, v0, v1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildBucketSwitchMeta(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;Z)Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->endSession(ZLcom/google/gson/JsonObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static endFinetuneSessionFailed(Ljava/lang/String;)V
    .locals 3

    .line 1424
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1427
    :cond_0
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1428
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "ok"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz p0, :cond_1

    .line 1430
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    .line 1432
    invoke-static {p0, v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->endSession(ZLcom/google/gson/JsonObject;)V

    return-void
.end method

.method private static ensureMode21SweepAttitudesForLog(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 467
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->ensureCalibSoInputsReady()V

    .line 468
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reloadSweepAttitudesFromJson()V

    .line 469
    invoke-static {p0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->loadSavedCalibSoInputs(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 470
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reloadSweepAttitudesFromJson()V

    return-void
.end method

.method private static ensureXexcavatorVersion()V
    .locals 1

    .line 175
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->getXexcavatorVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/qh/libexcavator/Excavator;->libraryVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->setXexcavatorVersion(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method private static formatLatLon(D)Ljava/lang/String;
    .locals 2

    .line 1436
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    const-string p0, "%.8f"

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static handleSetParamReplyIfWaiting(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 954
    invoke-static/range {v0 .. v5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->handleSetParamReplyIfWaiting(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static handleSetParamReplyIfWaiting(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Ljava/lang/Runnable;)Z
    .locals 3

    .line 964
    sget-object v0, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->AWAIT_SET_PARAM_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 965
    :try_start_0
    sget-boolean v1, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->awaitSetParamReply:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 966
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 968
    :cond_0
    sput-boolean v2, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->awaitSetParamReply:Z

    .line 969
    sget-object v1, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->pendingEndMeta:Lcom/google/gson/JsonObject;

    const/4 v2, 0x0

    .line 970
    sput-object v2, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->pendingEndMeta:Lcom/google/gson/JsonObject;

    .line 971
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 972
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    if-eqz p5, :cond_1

    .line 974
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_1
    return v2

    .line 978
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordSetParamReply(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    if-eqz v1, :cond_3

    goto :goto_0

    .line 979
    :cond_3
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    :goto_0
    invoke-static {v2, v1, p5}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->endSession(ZLcom/google/gson/JsonObject;Ljava/lang/Runnable;)V

    return v2

    .line 971
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static insFromRow([D)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 7

    if-eqz p0, :cond_1

    .line 682
    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 685
    aget-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v3, p0, v0

    const/4 v0, 0x2

    aget-wide v5, p0, v0

    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->insFromRpy(DDD)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object p0

    return-object p0

    .line 683
    :cond_1
    :goto_0
    new-instance p0, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p0}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    return-object p0
.end method

.method private static insFromRpy(DDD)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 1

    .line 696
    new-instance v0, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    .line 697
    iput-wide p0, v0, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    .line 698
    iput-wide p2, v0, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    .line 699
    iput-wide p4, v0, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    return-object v0
.end method

.method public static insFromSavedDevice(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 6

    if-nez p0, :cond_0

    .line 669
    new-instance p0, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p0}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    return-object p0

    .line 671
    :cond_0
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceRoll:D

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->devicePitch:D

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeading:D

    invoke-static/range {v0 .. v5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->insFromRpy(DDD)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object p0

    return-object p0
.end method

.method public static insFromSavedMode21(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 7

    if-nez p0, :cond_0

    .line 636
    new-instance p0, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p0}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    return-object p0

    .line 638
    :cond_0
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceRoll:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_5

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDevicePitch:D

    cmpl-double v6, v4, v2

    if-nez v6, :cond_5

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceHeading:D

    cmpl-double v6, v4, v2

    if-eqz v6, :cond_1

    goto :goto_1

    .line 641
    :cond_1
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceRoll:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_4

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->devicePitch:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_4

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeading:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_2

    goto :goto_0

    .line 644
    :cond_2
    iget-object p0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    if-eqz p0, :cond_3

    array-length v0, p0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 645
    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->insFromRow([D)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object p0

    return-object p0

    .line 647
    :cond_3
    new-instance p0, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p0}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    return-object p0

    .line 642
    :cond_4
    :goto_0
    invoke-static {p0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->insFromSavedDevice(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object p0

    return-object p0

    .line 639
    :cond_5
    :goto_1
    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDevicePitch:D

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceHeading:D

    invoke-static/range {v0 .. v5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->insFromRpy(DDD)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object p0

    return-object p0
.end method

.method private static loadSavedCalibSoInputs(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 664
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->loadCalibSoInputsFromJson()V

    return-void
.end method

.method private static prepareMode21ReuseLogEntity(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 13

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 441
    :cond_1
    invoke-static {v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->ensureMode21SweepAttitudesForLog(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    if-eqz p0, :cond_7

    if-ne p0, v0, :cond_2

    goto :goto_5

    .line 446
    :cond_2
    iget-boolean p1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->distanceBucketMeasure:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->isDistanceBucketMeasureFlow()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x1

    :goto_2
    iput-boolean p1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->distanceBucketMeasure:Z

    .line 447
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesDistanceMeasure()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->isDistanceBucketMeasureFlow()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 453
    :cond_5
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG1()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG2()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG3()D

    move-result-wide v5

    .line 454
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v7

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getRy()D

    move-result-wide v9

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v11

    .line 452
    invoke-virtual/range {v0 .. v12}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setMeasureValues(DDDDDD)V

    goto :goto_4

    .line 449
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNT()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAT()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNA()D

    move-result-wide v5

    .line 450
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v7

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getRy()D

    move-result-wide v9

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v11

    .line 448
    invoke-virtual/range {v0 .. v12}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setDistanceMeasureValues(DDDDDD)V

    .line 456
    :goto_4
    iget-object p0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz p0, :cond_7

    .line 457
    iput-object p0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    :cond_7
    :goto_5
    return-object v0
.end method

.method public static recordApplyReply(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V
    .locals 7

    .line 904
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 907
    :cond_0
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    if-nez p0, :cond_1

    .line 908
    const-string p0, ""

    :cond_1
    const-string v0, "reply"

    invoke-virtual {v2, v0, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const-string v1, "apply"

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void
.end method

.method public static recordBucketSwitchApply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V
    .locals 8

    .line 857
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 860
    :cond_0
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 861
    const-string v1, "algo"

    const-string v2, "setTool"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v1, ""

    if-nez p0, :cond_1

    move-object p0, v1

    :cond_1
    const-string v2, "calib_params"

    invoke-virtual {v0, v2, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    move-object p1, v1

    .line 863
    :cond_2
    const-string/jumbo p0, "tool_param"

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 865
    const-string p0, "input"

    invoke-virtual {v3, p0, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 866
    const-string v2, "INPUT"

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v2 .. v7}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    move-object p3, v5

    move-object p4, v6

    move-object p5, v7

    .line 868
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    if-nez p2, :cond_3

    move-object p2, v1

    .line 870
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "LOCAL,switchBucketB64,"

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "cmd"

    invoke-virtual {p1, p2, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string p0, "ADJUST_PARAM"

    move-object p2, v4

    invoke-static/range {p0 .. p5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void
.end method

.method public static recordCmdFromSaved(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/ExcavatorEntity;ZLcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V
    .locals 8

    .line 628
    invoke-static {p2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->loadSavedCalibSoInputs(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 629
    invoke-static {p2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->insFromSavedMode21(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v3

    invoke-static {p2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->sensorFromSavedMode21(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    move-object v2, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;ZLcom/qianhe/baselib/bean/InsNavi;)V

    return-void
.end method

.method public static recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 725
    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Z)V

    return-void
.end method

.method public static recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Z)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 734
    invoke-static/range {v0 .. v7}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;ZLcom/qianhe/baselib/bean/InsNavi;)V

    return-void
.end method

.method public static recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;ZLcom/qianhe/baselib/bean/InsNavi;)V
    .locals 0

    .line 743
    invoke-static/range {p2 .. p7}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildCommonData(Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;ZLcom/qianhe/baselib/bean/InsNavi;)Lcom/google/gson/JsonObject;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 745
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 746
    invoke-virtual {p1, p4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p5

    invoke-virtual {p2, p4, p5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 749
    :cond_0
    const-string p1, "cmd"

    invoke-static {p1, p0, p2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->recordEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public static recordCollect(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Lcom/google/gson/JsonObject;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 985
    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCollect(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/InsNavi;)V

    return-void
.end method

.method public static recordCollect(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 6

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p6

    .line 990
    invoke-static/range {v0 .. v5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildCommonData(Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;ZLcom/qianhe/baselib/bean/InsNavi;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p5, :cond_0

    .line 992
    const-string p2, "sample"

    invoke-virtual {p1, p2, p5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 994
    :cond_0
    const-string p2, "collect"

    invoke-static {p2, p0, p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->recordEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public static recordFineTuneK(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V
    .locals 0

    .line 1004
    invoke-static {p0, p1, p2, p3, p4}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildFineTuneCollectData(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 1005
    const-string p1, "collect"

    const-string p2, "K"

    invoke-static {p1, p2, p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->recordEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public static recordFineTuneKnownHeightPoint(DDDZ[DLcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V
    .locals 15

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    const/4 v2, 0x1

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    .line 1291
    invoke-static {v1, v3, v4, v5, v2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildCommonData(Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Z)Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 1293
    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1294
    const-string v5, "lon"

    const-string v6, "lat"

    if-eqz p6, :cond_0

    .line 1295
    invoke-static/range {p0 .. p1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->formatLatLon(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    invoke-static/range {p2 .. p3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->formatLatLon(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1298
    :cond_0
    const-string v7, "0"

    invoke-virtual {v4, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    invoke-virtual {v4, v5, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    :goto_0
    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-string v8, "hgt"

    invoke-virtual {v4, v8, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1302
    const-string v7, "age"

    const-string v9, "hdop"

    const-string v10, "sats"

    const-string v11, "q"

    const/4 v12, 0x0

    if-eqz v1, :cond_1

    .line 1303
    iget v13, v1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v11, v13}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1304
    iget v11, v1, Lcom/qianhe/baselib/bean/GGAEntity;->useStarNum:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1305
    iget-wide v10, v1, Lcom/qianhe/baselib/bean/GGAEntity;->hdop:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1306
    iget v1, v1, Lcom/qianhe/baselib/bean/GGAEntity;->age:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v4, v7, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_1

    .line 1308
    :cond_1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v11, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1309
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v10, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1310
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v9, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1311
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v7, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1313
    :goto_1
    const-string v1, "gga"

    invoke-virtual {v3, v1, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1314
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-wide/16 v9, 0x0

    if-eqz p6, :cond_2

    move-wide v13, p0

    goto :goto_2

    :cond_2
    move-wide v13, v9

    .line 1315
    :goto_2
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    if-eqz p6, :cond_3

    move-wide/from16 v9, p2

    .line 1316
    :cond_3
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1317
    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1318
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "has_llh"

    invoke-virtual {v1, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1320
    new-instance v4, Lcom/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    if-eqz v0, :cond_4

    .line 1321
    array-length v5, v0

    const/4 v6, 0x3

    if-lt v5, v6, :cond_4

    .line 1322
    aget-wide v5, v0, v12

    invoke-static {v5, v6}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 1323
    aget-wide v5, v0, v2

    invoke-static {v5, v6}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    const/4 v2, 0x2

    .line 1324
    aget-wide v5, v0, v2

    invoke-static {v5, v6}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    goto :goto_3

    .line 1326
    :cond_4
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 1327
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 1328
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 1330
    :goto_3
    const-string v0, "ned"

    invoke-virtual {v1, v0, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1331
    const-string v0, "sample"

    invoke-virtual {v3, v0, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1332
    const-string v0, "collect"

    const-string/jumbo v1, "\u5df2\u77e5\u9ad8\u7a0b\u70b9"

    invoke-static {v0, v1, v3}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->recordEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public static recordFineTuneNineFourAdjustHeight(Ljava/lang/String;IIZLcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V
    .locals 6

    if-nez p0, :cond_0

    .line 1372
    const-string p0, ""

    .line 1373
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOCAL,adjustHeight,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",hab=false,heightValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",samples="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",flag="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1377
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1378
    const-string p3, "cmd"

    invoke-virtual {v1, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    const-string p2, "algo"

    const-string p3, "adjustHeight"

    invoke-virtual {v1, p2, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    const-string/jumbo p2, "type"

    invoke-virtual {v1, p2, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "flag"

    invoke-virtual {v1, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1382
    const-string v0, "ADJUST"

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void
.end method

.method public static recordFineTuneNineFourInput(Ljava/lang/String;IILjava/lang/String;DLcom/google/gson/JsonArray;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V
    .locals 1

    const/4 v0, 0x1

    .line 1349
    invoke-static {p8, p9, p10, p11, v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildCommonData(Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Z)Lcom/google/gson/JsonObject;

    move-result-object p8

    .line 1350
    new-instance p9, Lcom/google/gson/JsonObject;

    invoke-direct {p9}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1351
    const-string p10, "algo"

    const-string p11, "adjustHeight"

    invoke-virtual {p9, p10, p11}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    const-string p10, ""

    if-nez p0, :cond_0

    move-object p0, p10

    :cond_0
    const-string/jumbo p11, "type"

    invoke-virtual {p9, p11, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "flag"

    invoke-virtual {p9, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1354
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo p1, "source_mode"

    invoke-virtual {p9, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    if-nez p3, :cond_1

    move-object p3, p10

    .line 1355
    :cond_1
    const-string/jumbo p0, "source_params"

    invoke-virtual {p9, p0, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "ref_height"

    invoke-virtual {p9, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    if-eqz p6, :cond_2

    goto :goto_0

    .line 1358
    :cond_2
    new-instance p6, Lcom/google/gson/JsonArray;

    invoke-direct {p6}, Lcom/google/gson/JsonArray;-><init>()V

    :goto_0
    const-string p0, "samples"

    invoke-virtual {p9, p0, p6}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    if-eqz p7, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    .line 1359
    invoke-static {p0, p0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildHabSnapshot(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)Lcom/google/gson/JsonObject;

    move-result-object p7

    :goto_1
    const-string p0, "hab"

    invoke-virtual {p9, p0, p7}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1360
    const-string p0, "input"

    invoke-virtual {p8, p0, p9}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1361
    const-string p1, "cmd"

    invoke-static {p1, p0, p8}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->recordEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public static recordFineTuneSetParam(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V
    .locals 2

    move-object v0, p1

    .line 1413
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1414
    const-string v1, "set_param"

    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildSetParam(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1415
    const-string p0, "SET_PARAM"

    invoke-static/range {p0 .. p5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void
.end method

.method public static recordFineTuneSetTool(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V
    .locals 6

    .line 1405
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    if-nez p0, :cond_0

    .line 1406
    const-string p0, ""

    :cond_0
    const-string v0, "cmd"

    invoke-virtual {v1, v0, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    const-string v0, "SET_TOOL"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void
.end method

.method private static recordFivePointAdjustHeightInput(III[ILcom/google/gson/JsonArray;DLcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V
    .locals 3

    .line 1211
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1212
    const-string v1, "algo"

    const-string v2, "adjustHeight"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "seq"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1214
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "round"

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1215
    const-string/jumbo p0, "type"

    const-string p1, "fivePoint"

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "flag"

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1217
    new-instance p0, Lcom/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/google/gson/JsonArray;-><init>()V

    if-eqz p3, :cond_0

    .line 1219
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget v1, p3, p2

    .line 1220
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1223
    :cond_0
    const-string p1, "points"

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1224
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "ref_height"

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    if-eqz p4, :cond_1

    goto :goto_1

    .line 1225
    :cond_1
    new-instance p4, Lcom/google/gson/JsonArray;

    invoke-direct {p4}, Lcom/google/gson/JsonArray;-><init>()V

    :goto_1
    const-string p0, "samples"

    invoke-virtual {v0, p0, p4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1226
    new-instance p6, Lcom/google/gson/JsonObject;

    invoke-direct {p6}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1227
    const-string p0, "input"

    invoke-virtual {p6, p0, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1228
    const-string p5, "INPUT"

    invoke-static/range {p5 .. p10}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void
.end method

.method public static recordGetParamCmd(Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V
    .locals 7

    .line 821
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 824
    :cond_0
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 825
    const-string v0, "cmd"

    const-string v1, "CALIBRATE,,GET_PARAM"

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const-string v1, "GET_PARAM"

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void
.end method

.method public static recordGetParamReply(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V
    .locals 7

    .line 834
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 837
    :cond_0
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    if-nez p0, :cond_1

    .line 838
    const-string p0, ""

    :cond_1
    const-string v0, "reply"

    invoke-virtual {v2, v0, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v1, "GET_PARAM"

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void
.end method

.method private static recordKindWithLive(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p4

    move-object v2, p5

    move-object v3, p6

    move v4, p7

    .line 756
    invoke-static/range {v0 .. v5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildCommonData(Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;ZLcom/qianhe/baselib/bean/InsNavi;)Lcom/google/gson/JsonObject;

    move-result-object p3

    if-eqz p2, :cond_0

    .line 758
    invoke-virtual {p2}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 759
    invoke-virtual {p2, p5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p6

    invoke-virtual {p3, p5, p6}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 762
    :cond_0
    invoke-static {p0, p1, p3}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->recordEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public static recordMode1Input(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V
    .locals 6

    .line 354
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 355
    const-string v0, "input"

    invoke-static {p0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildMode1Input(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 356
    const-string v0, "INPUT"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void
.end method

.method public static recordMode21EventsFromSaved(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V
    .locals 20

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    if-nez v2, :cond_0

    return-void

    .line 592
    :cond_0
    invoke-static {v2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->ensureMode21SweepAttitudesForLog(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 593
    iget-object v0, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    .line 594
    iget-object v1, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reSensorAttitudes:[[D

    .line 595
    const-string/jumbo v3, "sweep3"

    const-string/jumbo v5, "sweep4"

    const-string/jumbo v6, "sweep1"

    const-string/jumbo v7, "sweep2"

    filled-new-array {v6, v7, v3, v5}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    if-nez v0, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    .line 596
    :cond_1
    array-length v3, v0

    const/4 v5, 0x4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v12, v3

    :goto_0
    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_5

    .line 598
    aget-object v3, v0, v13

    if-eqz v3, :cond_4

    .line 599
    array-length v5, v3

    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    goto :goto_2

    .line 602
    :cond_2
    aget-wide v5, v3, v11

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-nez v9, :cond_3

    const/4 v5, 0x1

    aget-wide v5, v3, v5

    cmpl-double v9, v5, v7

    if-nez v9, :cond_3

    const/4 v5, 0x2

    aget-wide v5, v3, v5

    cmpl-double v9, v5, v7

    if-nez v9, :cond_3

    goto :goto_2

    .line 605
    :cond_3
    invoke-static {v3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->insFromRow([D)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v5

    .line 606
    invoke-static {v1, v13}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->sensorFromRow([[DI)Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v6

    .line 607
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->phaseToHang:D

    invoke-static {v4, v5, v6, v7, v8}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildCollectSample(Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;D)Lcom/google/gson/JsonObject;

    move-result-object v8

    .line 608
    aget-object v3, v10, v13

    const/4 v7, 0x0

    move-object/from16 v9, p2

    invoke-static/range {v3 .. v9}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCollect(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/InsNavi;)V

    :cond_4
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 610
    :cond_5
    iget-wide v14, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceRoll:D

    iget-wide v0, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDevicePitch:D

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceHeading:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v5

    invoke-static/range {v14 .. v19}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->insFromRpy(DDD)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v5

    .line 611
    new-instance v6, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    iget-wide v8, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorRoll:D

    iget-wide v10, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorPitch:D

    iget-wide v12, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorHeading:D

    const/4 v7, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;-><init>(IDDD)V

    .line 613
    iget-wide v0, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->phaseToHang:D

    invoke-static {v4, v5, v6, v0, v1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildCollectSample(Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;D)Lcom/google/gson/JsonObject;

    move-result-object v8

    .line 614
    const-string v3, "hab"

    const/4 v7, 0x0

    move-object/from16 v9, p2

    invoke-static/range {v3 .. v9}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCollect(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/InsNavi;)V

    .line 616
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 617
    const-string v0, "input"

    invoke-static {v2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildMode21Input(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 618
    const-string v0, "INPUT"

    const/4 v3, 0x1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdFromSaved(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/ExcavatorEntity;ZLcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    .line 620
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 621
    const-string v0, "cmd"

    invoke-static/range {p0 .. p0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildMode21GoCmd(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v0, "GO"

    move-object/from16 v2, p0

    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdFromSaved(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/ExcavatorEntity;ZLcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    return-void
.end method

.method public static recordMode23Input(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V
    .locals 6

    .line 388
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 389
    const-string v0, "input"

    invoke-static {p0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildMode23Input(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 390
    const-string v0, "INPUT"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void
.end method

.method public static recordPreciseFivePointEvents(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;ILjava/lang/String;DLcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 1174
    invoke-static {v0, v7, v8, v9, v10}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordFineTuneK(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 1176
    invoke-static {v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildFineTuneHabSample(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)Lcom/google/gson/JsonObject;

    move-result-object v11

    const-wide/16 v0, 0x0

    const/4 v12, 0x1

    cmpl-double v2, p3, v0

    if-eqz v2, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v6, 0x1

    const/4 v14, 0x1

    :goto_1
    const/4 v15, 0x5

    if-gt v6, v15, :cond_2

    .line 1182
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1183
    const-string v1, "algo"

    const-string v2, "adjustHabVertical"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v16, v14, 0x1

    .line 1184
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "seq"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1185
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "round"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1186
    const-string/jumbo v1, "type"

    const-string v2, "fivePoint"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "source_mode"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    if-nez p2, :cond_1

    .line 1188
    const-string v1, ""

    goto :goto_2

    :cond_1
    move-object/from16 v1, p2

    :goto_2
    const-string/jumbo v2, "source_params"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    const-string v1, "sample"

    invoke-virtual {v0, v1, v11}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1190
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1191
    const-string v2, "input"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1192
    const-string v0, "INPUT"

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    add-int/lit8 v17, v14, 0x2

    or-int/lit8 v2, v13, 0x10

    const/4 v0, 0x3

    const/4 v1, 0x4

    .line 1194
    filled-new-array {v0, v1, v15}, [I

    move-result-object v3

    move-object/from16 v4, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move v1, v6

    move/from16 v0, v16

    const/4 v15, 0x4

    move-wide/from16 v5, p3

    invoke-static/range {v0 .. v10}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordFivePointAdjustHeightInput(III[ILcom/google/gson/JsonArray;DLcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    add-int/lit8 v14, v14, 0x3

    or-int/lit8 v2, v13, 0x20

    const/4 v0, 0x2

    .line 1197
    filled-new-array {v12, v0, v15}, [I

    move-result-object v3

    move-object/from16 v4, p6

    move/from16 v0, v17

    invoke-static/range {v0 .. v10}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordFivePointAdjustHeightInput(III[ILcom/google/gson/JsonArray;DLcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    add-int/lit8 v6, v1, 0x1

    goto/16 :goto_1

    .line 1201
    :cond_2
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOCAL,adjustHeight,fivePoint,hab=true,rounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",heightValid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",samples=5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cmd"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    const-string v1, "ADJUST"

    move-object/from16 p2, p7

    move-object/from16 p3, p8

    move-object/from16 p4, p9

    move-object/from16 p5, p10

    move-object/from16 p1, v0

    move-object/from16 p0, v1

    invoke-static/range {p0 .. p5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void
.end method

.method public static recordReuseArmInput(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V
    .locals 8

    .line 420
    const-string v0, "local"

    invoke-static {p0, p1, v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginForExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V

    .line 421
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->clearReuseArmInput()V

    .line 422
    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->prepareMode21ReuseLogEntity(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 426
    :cond_0
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 427
    const-string p1, "input"

    invoke-static {p0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildMode21Input(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/google/gson/JsonObject;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 428
    const-string v0, "arm"

    const-string v1, "INPUT"

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordKindWithLive(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Z)V

    .line 429
    invoke-static {p0, v3, v4, v5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordMode21EventsFromSaved(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    return-void
.end method

.method public static recordReuseBucketInput(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V
    .locals 9

    .line 407
    const-string v0, "local"

    invoke-static {p0, p1, v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginForExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V

    .line 408
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->clearReuseBucketInput()V

    .line 409
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 410
    const-string p0, "input"

    invoke-static {p1, p1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildBucketToolInput(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 411
    const-string v1, "bucket"

    const-string v2, "INPUT"

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v8}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordKindWithLive(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Z)V

    return-void
.end method

.method public static recordSetParamReply(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V
    .locals 7

    .line 806
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 809
    :cond_0
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    if-nez p0, :cond_1

    .line 810
    const-string p0, ""

    :cond_1
    const-string v0, "reply"

    invoke-virtual {v2, v0, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const-string p0, "bucket"

    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->getActiveFileFlow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 812
    const-string p0, "SET_PARAM"

    :goto_0
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    goto :goto_1

    .line 813
    :cond_2
    const-string p0, "SET_PARAM \u5e94\u7b54"

    goto :goto_0

    .line 814
    :goto_1
    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void
.end method

.method public static recordSetToolInput(Ljava/lang/String;DLcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V
    .locals 8

    const/4 v0, 0x3

    .line 1236
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1237
    const-string v2, "algo"

    const-string v3, "setTool"

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 1238
    const-string p0, ""

    :cond_0
    const-string v2, "bucket"

    invoke-virtual {v1, v2, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "ab"

    invoke-virtual {v1, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    if-eqz p3, :cond_1

    goto :goto_0

    .line 1240
    :cond_1
    new-array p0, v0, [D

    fill-array-data p0, :array_0

    invoke-static {p0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->toJsonArray([D)Lcom/google/gson/JsonArray;

    move-result-object p3

    :goto_0
    const-string/jumbo p0, "t0"

    invoke-virtual {v1, p0, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    if-eqz p4, :cond_2

    goto :goto_1

    .line 1241
    :cond_2
    new-array p0, v0, [D

    fill-array-data p0, :array_1

    invoke-static {p0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->toJsonArray([D)Lcom/google/gson/JsonArray;

    move-result-object p4

    :goto_1
    const-string/jumbo p0, "t1"

    invoke-virtual {v1, p0, p4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1242
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1243
    const-string p0, "input"

    invoke-virtual {v3, p0, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1244
    const-string v2, "INPUT"

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v2 .. v7}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static recordToolEvents(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V
    .locals 15

    if-nez p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    .line 488
    :goto_0
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 489
    const-string v1, "input"

    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildBucketToolInput(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 490
    const-string v1, "INPUT"

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Z)V

    .line 491
    new-instance v9, Lcom/google/gson/JsonObject;

    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    if-eqz v0, :cond_1

    move-object p0, v0

    .line 492
    :cond_1
    invoke-static {p0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildMakeToolCmd(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "cmd"

    invoke-virtual {v9, v0, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 493
    const-string v8, "MAKE_TOOL"

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-static/range {v8 .. v14}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Z)V

    return-void
.end method

.method public static recordToolEvents(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V
    .locals 0

    .line 398
    invoke-static {p0, p0, p1, p2, p3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordToolEvents(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    return-void
.end method

.method public static resolveFileFlow(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;
    .locals 3

    .line 31
    const-string v0, "mode1"

    if-nez p0, :cond_0

    return-object v0

    .line 34
    :cond_0
    iget v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v2

    if-ne v1, v2, :cond_1

    return-object v0

    .line 37
    :cond_1
    iget v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_NOT_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 38
    const-string p0, "mode3"

    return-object p0

    .line 40
    :cond_2
    iget v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 41
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->isDistanceBucketMeasureFlow()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 42
    const-string p0, "mode2_1"

    return-object p0

    .line 43
    :cond_3
    const-string p0, "mode2_0"

    return-object p0

    :cond_4
    return-object v0
.end method

.method public static scheduleEndAfterSetParamReply(Lcom/google/gson/JsonObject;)V
    .locals 2

    .line 918
    sget-object v0, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->AWAIT_SET_PARAM_LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 919
    :try_start_0
    sput-boolean v1, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->awaitSetParamReply:Z

    .line 920
    sput-object p0, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->pendingEndMeta:Lcom/google/gson/JsonObject;

    .line 921
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static sensorFromRow([[DI)Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;
    .locals 10

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 689
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-object p0, p0, p1

    if-eqz p0, :cond_1

    array-length p1, p0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 692
    :cond_0
    new-instance v1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    const/4 p1, 0x0

    aget-wide v3, p0, p1

    const/4 p1, 0x1

    aget-wide v5, p0, p1

    const/4 p1, 0x2

    aget-wide v7, p0, p1

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;-><init>(IDDD)V

    return-object v1

    .line 690
    :cond_1
    :goto_0
    new-instance v2, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;-><init>(IDDD)V

    return-object v2
.end method

.method public static sensorFromSaved(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;
    .locals 9

    if-nez p0, :cond_0

    .line 676
    new-instance v0, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;-><init>(IDDD)V

    return-object v0

    .line 678
    :cond_0
    new-instance v1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    iget-wide v3, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorRoll:D

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorPitch:D

    iget-wide v7, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorHeading:D

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;-><init>(IDDD)V

    return-object v1
.end method

.method public static sensorFromSavedMode21(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;
    .locals 9

    if-nez p0, :cond_0

    .line 652
    new-instance v0, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;-><init>(IDDD)V

    return-object v0

    .line 654
    :cond_0
    iget-wide v3, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorRoll:D

    const-wide/16 v0, 0x0

    cmpl-double v2, v3, v0

    if-nez v2, :cond_2

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorPitch:D

    cmpl-double v2, v5, v0

    if-nez v2, :cond_2

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorHeading:D

    cmpl-double v2, v5, v0

    if-eqz v2, :cond_1

    goto :goto_0

    .line 657
    :cond_1
    invoke-static {p0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->sensorFromSaved(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object p0

    return-object p0

    .line 655
    :cond_2
    :goto_0
    new-instance v1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorPitch:D

    iget-wide v7, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorHeading:D

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;-><init>(IDDD)V

    return-object v1
.end method

.method public static varargs toJsonArray([D)Lcom/google/gson/JsonArray;
    .locals 5

    .line 1440
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    if-eqz p0, :cond_0

    .line 1442
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p0, v2

    .line 1443
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static useDistanceToolLog(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->isDistanceBucketMeasureFlow()Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 549
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesDistanceMeasure()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
