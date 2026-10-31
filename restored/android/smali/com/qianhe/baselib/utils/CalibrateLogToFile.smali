.class public abstract Lcom/qianhe/baselib/utils/CalibrateLogToFile;
.super Ljava/lang/Object;
.source "CalibrateLogToFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/baselib/utils/CalibrateLogToFile$OnSessionWrittenListener;
    }
.end annotation


# static fields
.field private static final GSON:Lcom/google/gson/Gson;

.field private static final SESSION_LOCK:Ljava/lang/Object;

.field private static activeEvents:Lcom/google/gson/JsonArray;

.field private static activeFileFlow:Ljava/lang/String;

.field private static activeSession:Lcom/google/gson/JsonObject;

.field private static applicationContext:Landroid/content/Context;

.field private static executors:Ljava/util/concurrent/ExecutorService;

.field private static init:Z

.field private static latestLogPath:Ljava/lang/String;

.field private static volatile sessionWrittenListener:Lcom/qianhe/baselib/utils/CalibrateLogToFile$OnSessionWrittenListener;

.field private static xexcavatorVersion:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetGSON()Lcom/google/gson/Gson;
    .locals 1

    .line 0
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->GSON:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetapplicationContext()Landroid/content/Context;
    .locals 1

    .line 0
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetlatestLogPath()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->latestLogPath:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsessionWrittenListener()Lcom/qianhe/baselib/utils/CalibrateLogToFile$OnSessionWrittenListener;
    .locals 1

    .line 0
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->sessionWrittenListener:Lcom/qianhe/baselib/utils/CalibrateLogToFile$OnSessionWrittenListener;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputlatestLogPath(Ljava/lang/String;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->latestLogPath:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 81
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->GSON:Lcom/google/gson/Gson;

    .line 90
    const-string v0, ""

    sput-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->xexcavatorVersion:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->SESSION_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public static beginSession(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 232
    const-string v0, "finetune"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "finetune_five_point"

    :goto_0
    move-object v1, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v2, v0

    goto :goto_1

    .line 234
    :cond_0
    const-string v0, "bucket"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const-string v0, "bucket_switch"

    goto :goto_0

    :cond_1
    move-object v1, p0

    move-object v2, v1

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 239
    :goto_1
    invoke-static/range {v1 .. v7}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->beginSession(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static beginSession(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 192
    invoke-static/range {v0 .. v7}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->beginSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static beginSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 202
    sget-boolean v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->init:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 206
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->SESSION_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_0
    sput-object p0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeFileFlow:Ljava/lang/String;

    .line 208
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    sput-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    .line 209
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    sput-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    .line 210
    const-string v2, "id"

    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->nextSessionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 211
    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    const-string v2, "flow"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, p0

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 214
    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 216
    :cond_2
    :goto_1
    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    const-string v2, "name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    const-string v2, "algo_provider"

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p7, "local"

    :cond_3
    invoke-virtual {v1, v2, p7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    sget-object p7, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    const-string v1, "excavator_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p7, v1, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 219
    sget-object p3, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    const-string p4, "excavator_name"

    if-nez p5, :cond_4

    const-string p5, ""

    :cond_4
    invoke-virtual {p3, p4, p5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object p3, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    const-string p4, "device_sn"

    if-nez p6, :cond_5

    const-string p6, ""

    :cond_5
    invoke-virtual {p3, p4, p6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-object p3, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    const-string/jumbo p4, "started_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 222
    sget-object p3, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    const-string p4, "meta"

    new-instance p5, Lcom/google/gson/JsonObject;

    invoke-direct {p5}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {p3, p4, p5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 223
    sget-object p3, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    const-string/jumbo p4, "uploaded"

    const/4 p5, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 224
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "\u6821\u51c6\u4f1a\u8bdd\u5f00\u59cb\uff1aflow="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " sessionFlow="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, ""

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " type="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 225
    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 224
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 203
    :cond_7
    :goto_4
    const-string p0, "CalibrateLogToFile.beginSession \u672a\u521d\u59cb\u5316\u6216 flow \u4e3a\u7a7a"

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private static buildAppInfo()Lcom/google/gson/JsonObject;
    .locals 6

    .line 545
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 548
    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "yct"

    const-string v3, ""

    if-eqz v1, :cond_1

    .line 549
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 550
    const-string/jumbo v4, "xcloud"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v2, v4

    .line 554
    :cond_0
    :try_start_0
    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v4, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->applicationContext:Landroid/content/Context;

    .line 555
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 556
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    goto :goto_0

    :catch_0
    nop

    :cond_1
    move-object v1, v3

    .line 562
    :goto_0
    const-string v4, "brand"

    invoke-virtual {v0, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->xexcavatorVersion:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    const-string/jumbo v1, "xexcavator"

    invoke-virtual {v0, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v1, "platform"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static checkPermissions(Landroid/content/Context;)Z
    .locals 2

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 131
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile$$ExternalSyntheticApiModelOutline0;->m()Z

    move-result p0

    return p0

    .line 133
    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static discardSession()V
    .locals 2

    .line 499
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->SESSION_LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 500
    :try_start_0
    sput-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    .line 501
    sput-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    .line 502
    sput-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeFileFlow:Ljava/lang/String;

    .line 503
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0

    .line 173
    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static endSession(ZLcom/google/gson/JsonObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 449
    invoke-static {p0, p1, v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->endSession(ZLcom/google/gson/JsonObject;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static endSession(ZLcom/google/gson/JsonObject;Ljava/lang/Runnable;)V
    .locals 7

    .line 459
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->SESSION_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_0
    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeFileFlow:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 466
    :cond_0
    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeFileFlow:Ljava/lang/String;

    .line 467
    sget-object v2, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_1

    .line 468
    sget-object v2, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    const/4 v2, 0x0

    .line 470
    :goto_0
    sget-object v3, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    const-string v4, "ended_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    if-eqz p1, :cond_2

    goto :goto_1

    .line 471
    :cond_2
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 472
    :goto_1
    const-string v3, "ok"

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 473
    const-string v3, "ok"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 476
    :cond_3
    const-string v3, "app"

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 477
    const-string v3, "app"

    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->buildAppInfo()Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 479
    :cond_4
    sget-object v3, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    const-string v4, "meta"

    invoke-virtual {v3, v4, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 481
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 482
    const-string v3, "app"

    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->buildAppInfo()Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 483
    const-string v3, "session"

    sget-object v4, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    invoke-virtual {p1, v3, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 484
    const-string v3, "event_count"

    sget-object v4, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 485
    const-string v3, "events"

    sget-object v4, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    invoke-virtual {p1, v3, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const/4 v3, 0x0

    .line 487
    sput-object v3, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    .line 488
    sput-object v3, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    .line 489
    sput-object v3, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeFileFlow:Ljava/lang/String;

    .line 490
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    invoke-static {v1, v2, p1, p2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->writeJsonFile(Ljava/lang/String;ILcom/google/gson/JsonObject;Ljava/lang/Runnable;)V

    .line 492
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "\u6821\u51c6\u4f1a\u8bdd\u7ed3\u675f\uff1aflow="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ok="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " path="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->latestLogPath:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_2
    if-eqz p2, :cond_6

    .line 462
    :try_start_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 464
    :cond_6
    monitor-exit v0

    return-void

    .line 490
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static eventKind(Lcom/google/gson/JsonObject;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 373
    const-string v0, "kind"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 374
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private static eventTag(Lcom/google/gson/JsonObject;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 380
    const-string/jumbo v0, "tag"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 381
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private static fileNameFlow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-lez p1, :cond_1

    .line 604
    const-string/jumbo v0, "verify"

    .line 605
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "finetune"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getActiveFileFlow()Ljava/lang/String;
    .locals 2

    .line 124
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->SESSION_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeFileFlow:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 126
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getXexcavatorVersion()Ljava/lang/String;
    .locals 1

    .line 157
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->xexcavatorVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public static hasActiveSession()Z
    .locals 2

    .line 118
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->SESSION_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static i(Ljava/lang/String;)V
    .locals 0

    .line 165
    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 141
    sget-boolean v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->init:Z

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->applicationContext:Landroid/content/Context;

    const/4 p0, 0x1

    .line 145
    sput-boolean p0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->init:Z

    .line 146
    const-string p0, "calibrate-log"

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogIo;->newSingleWriter(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sput-object p0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->executors:Ljava/util/concurrent/ExecutorService;

    :cond_1
    :goto_0
    return-void
.end method

.method public static isInit()Z
    .locals 1

    .line 110
    sget-boolean v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->init:Z

    return v0
.end method

.method private static isReplaceableCollectTag(Ljava/lang/String;)Z
    .locals 4

    .line 303
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 306
    :cond_0
    const-string/jumbo v0, "sweep1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    const-string/jumbo v0, "sweep2"

    .line 307
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "sweep3"

    .line 308
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "sweep4"

    .line 309
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "hab"

    .line 310
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "K"

    .line 311
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "input"

    .line 312
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "\u5df2\u77e5\u9ad8\u7a0b\u70b9"

    .line 313
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_2

    const-string/jumbo v0, "step"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 319
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p0, v2, :cond_2

    const/16 v0, 0x9

    if-gt p0, v0, :cond_2

    return v2

    :catch_0
    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method private static isReuseInput(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 355
    const-string v0, "INPUT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "bucket"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "arm"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static nextSessionId()I
    .locals 4

    .line 570
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x186a0

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1

    .line 573
    :cond_0
    const-string v1, "calibrate_log"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 575
    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->SESSION_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 576
    :try_start_0
    const-string v3, "session_seq"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 577
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "session_seq"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 578
    monitor-exit v1

    return v2

    :catchall_0
    move-exception v0

    .line 579
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static recordEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 5

    .line 251
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->SESSION_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_0
    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    if-nez v1, :cond_0

    .line 253
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 255
    :cond_0
    const-string v1, "MAKE_TOOL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->removePreviousMakeToolPairLocked()V

    goto :goto_0

    .line 257
    :cond_1
    invoke-static {p0, p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->isReuseInput(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 258
    invoke-static {p0, p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->removePreviousEventsWithKindAndTagLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_2
    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->isReplaceableCollectTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 261
    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->removePreviousEventsWithTagLocked(Ljava/lang/String;)V

    .line 263
    :cond_3
    :goto_0
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 264
    const-string/jumbo v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 265
    const-string v2, "kind"

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    invoke-virtual {v1, v2, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string/jumbo p0, "tag"

    if-nez p1, :cond_5

    const-string p1, ""

    :cond_5
    invoke-virtual {v1, p0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string p0, "data"

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    :goto_1
    invoke-virtual {v1, p0, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 268
    sget-object p0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 269
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static removeEventsFromTagOnward(Ljava/lang/String;)I
    .locals 4

    .line 522
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->SESSION_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    :try_start_0
    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 527
    :goto_0
    sget-object v3, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 528
    sget-object v3, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    invoke-virtual {v3, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-static {v3}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->eventTag(Lcom/google/gson/JsonObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    const/4 v1, -0x1

    :goto_1
    if-gez v1, :cond_3

    .line 534
    monitor-exit v0

    return v2

    .line 536
    :cond_3
    sget-object p0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result p0

    sub-int/2addr p0, v1

    .line 537
    sget-object v2, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-lt v2, v1, :cond_4

    .line 538
    sget-object v3, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonArray;->remove(I)Lcom/google/gson/JsonElement;

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 540
    :cond_4
    monitor-exit v0

    return p0

    .line 524
    :cond_5
    :goto_3
    monitor-exit v0

    return v2

    .line 541
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static removeEventsWithKindAndTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 349
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->SESSION_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_0
    invoke-static {p0, p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->removePreviousEventsWithKindAndTagLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static removeLatestMakeToolPair()V
    .locals 2

    .line 510
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->SESSION_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_0
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->removePreviousMakeToolPairLocked()V

    .line 512
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static removePreviousEventsWithKindAndTagLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 360
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 364
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 365
    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 366
    invoke-static {v1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->eventKind(Lcom/google/gson/JsonObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->eventTag(Lcom/google/gson/JsonObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->remove(I)Lcom/google/gson/JsonElement;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static removePreviousEventsWithTagLocked(Ljava/lang/String;)V
    .locals 2

    .line 337
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 340
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 341
    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->eventTag(Lcom/google/gson/JsonObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->remove(I)Lcom/google/gson/JsonElement;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static removePreviousMakeToolPairLocked()V
    .locals 5

    .line 277
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 281
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-ltz v0, :cond_2

    .line 282
    sget-object v2, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->eventTag(Lcom/google/gson/JsonObject;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MAKE_TOOL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_1
    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    if-lez v0, :cond_4

    .line 291
    sget-object v2, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    add-int/lit8 v3, v0, -0x1

    .line 292
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->eventTag(Lcom/google/gson/JsonObject;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "INPUT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v3

    .line 295
    :cond_4
    sget-object v2, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonArray;->remove(I)Lcom/google/gson/JsonElement;

    if-ltz v1, :cond_5

    .line 297
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeEvents:Lcom/google/gson/JsonArray;

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->remove(I)Lcom/google/gson/JsonElement;

    :cond_5
    :goto_2
    return-void
.end method

.method public static resetSessionSeq(Landroid/content/Context;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 587
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->applicationContext:Landroid/content/Context;

    :goto_0
    if-nez p0, :cond_1

    return-void

    .line 591
    :cond_1
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->SESSION_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 592
    :try_start_0
    const-string v1, "calibrate_log"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 593
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "session_seq"

    .line 594
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 595
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 596
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    const-string p0, "CalibrateLogToFile\uff1asession_seq \u5df2\u91cd\u7f6e\u4e3a 0"

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 596
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static setOnSessionWrittenListener(Lcom/qianhe/baselib/utils/CalibrateLogToFile$OnSessionWrittenListener;)V
    .locals 0

    .line 106
    sput-object p0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->sessionWrittenListener:Lcom/qianhe/baselib/utils/CalibrateLogToFile$OnSessionWrittenListener;

    return-void
.end method

.method public static setXexcavatorVersion(Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    .line 153
    const-string p0, ""

    :cond_0
    sput-object p0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->xexcavatorVersion:Ljava/lang/String;

    return-void
.end method

.method public static updateSessionExcavator(JLjava/lang/String;)V
    .locals 5

    .line 390
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->SESSION_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_0
    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    if-nez v1, :cond_0

    .line 392
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-lez v4, :cond_1

    .line 395
    const-string v2, "excavator_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 398
    sget-object p0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    const-string p1, "excavator_name"

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_2
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static updateSessionType(Ljava/lang/String;)V
    .locals 5

    .line 407
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 410
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->SESSION_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_0
    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    if-nez v1, :cond_1

    .line 412
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 414
    :cond_1
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 415
    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    monitor-exit v0

    return-void

    .line 418
    :cond_2
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 419
    sget-object v2, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 420
    sget-object v4, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    invoke-virtual {v4, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 421
    const-string v4, "flow"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 422
    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_4
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 426
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_5
    sput-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->activeSession:Lcom/google/gson/JsonObject;

    .line 429
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static w(Ljava/lang/String;)V
    .locals 0

    .line 169
    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->w(Ljava/lang/String;)V

    return-void
.end method

.method private static writeJsonFile(Ljava/lang/String;ILcom/google/gson/JsonObject;Ljava/lang/Runnable;)V
    .locals 2

    .line 613
    sget-object v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->executors:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    goto :goto_0

    .line 619
    :cond_0
    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->checkPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 620
    const-string p0, "loglog"

    const-string/jumbo p1, "\u672a\u83b7\u53d6\u6743\u9650!"

    nop

    nop

    nop

    .line 621
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    const-string/jumbo p1, "\u672a\u83b7\u53d6\u6743\u9650"

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    if-eqz p3, :cond_3

    .line 623
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    .line 627
    :cond_1
    invoke-static {p0, p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->fileNameFlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 628
    sget-object p1, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->executors:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/qianhe/baselib/utils/CalibrateLogToFile$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/qianhe/baselib/utils/CalibrateLogToFile$1;-><init>(Ljava/lang/String;Lcom/google/gson/JsonObject;Ljava/lang/Runnable;)V

    invoke-static {p1, v0}, Lcom/qianhe/baselib/utils/LogIo;->execute(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 615
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
