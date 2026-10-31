.class public final Lcom/qianhe/yct/utils/CalibrateUploadHelper;
.super Ljava/lang/Object;
.source "CalibrateUploadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/qianhe/yct/utils/CalibrateUploadHelper;


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$aH1ooegUTPY42P1aJPmFc4N98GA(Ljava/lang/String;)V
    .locals 1

    .line 67
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->getInstance()Lcom/qianhe/yct/utils/CalibrateUploadHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->enqueue(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uVDIUpMS94NPGGIxWwfpO5XuzfE(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "calib-upload"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x4

    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$ue2qKRoxLrgJZ_U7LDiPFibZijs(Lcom/qianhe/yct/utils/CalibrateUploadHelper;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->uploadLocked(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mignoreNotify(Lcom/qianhe/yct/utils/CalibrateUploadHelper;Ljava/io/File;)Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->ignoreNotify(Ljava/io/File;)Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mossCallback(Lcom/qianhe/yct/utils/CalibrateUploadHelper;Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->ossCallback(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smdeleteQuietly(Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->deleteQuietly(Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/qianhe/yct/utils/CalibrateUploadHelper$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private static bool(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 530
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 534
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    :goto_0
    return p2
.end method

.method private static copyNum(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 440
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_0
    return-void
.end method

.method private static dbl(Lcom/google/gson/JsonObject;Ljava/lang/String;D)D
    .locals 1

    if-eqz p0, :cond_1

    .line 519
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    :cond_1
    :goto_0
    return-wide p2
.end method

.method private static deleteQuietly(Ljava/io/File;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 479
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method static finetuneApiFlowFromAdjustHeight(Lcom/google/gson/JsonObject;)Ljava/lang/String;
    .locals 1

    .line 381
    invoke-static {p0}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->finetuneMethodFromAdjustHeight(Lcom/google/gson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    .line 382
    const-string v0, "arm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const-string p0, "finetune_arm"

    return-object p0

    .line 385
    :cond_0
    const-string v0, "bucket"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    const-string p0, "finetune_bucket"

    return-object p0

    .line 388
    :cond_1
    const-string v0, "five_point"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 389
    const-string p0, "finetune_five_point"

    return-object p0

    .line 391
    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method static finetuneMethodFromAdjustHeight(Lcom/google/gson/JsonObject;)Ljava/lang/String;
    .locals 4

    .line 362
    const-string v0, "adjust_height"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->lng(Lcom/google/gson/JsonObject;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int p0, v0

    .line 363
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    and-int/lit8 v1, p0, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 369
    const-string p0, "five_point"

    return-object p0

    :cond_3
    if-eqz v1, :cond_4

    .line 372
    const-string p0, "arm"

    return-object p0

    :cond_4
    if-eqz v2, :cond_5

    .line 375
    const-string p0, "bucket"

    return-object p0

    :cond_5
    return-object v0
.end method

.method private static formatUtc(JLjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 454
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 455
    const-string p2, "UTC"

    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 456
    new-instance p2, Ljava/util/Date;

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    :goto_0
    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/qianhe/yct/utils/CalibrateUploadHelper;
    .locals 2

    .line 56
    sget-object v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->instance:Lcom/qianhe/yct/utils/CalibrateUploadHelper;

    if-nez v0, :cond_1

    .line 57
    const-class v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->instance:Lcom/qianhe/yct/utils/CalibrateUploadHelper;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/qianhe/yct/utils/CalibrateUploadHelper;

    invoke-direct {v1}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;-><init>()V

    sput-object v1, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->instance:Lcom/qianhe/yct/utils/CalibrateUploadHelper;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 61
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 63
    :cond_1
    :goto_2
    sget-object v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->instance:Lcom/qianhe/yct/utils/CalibrateUploadHelper;

    return-object v0
.end method

.method private ignoreNotify(Ljava/io/File;)Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;
    .locals 1

    .line 254
    new-instance v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/utils/CalibrateUploadHelper$3;-><init>(Lcom/qianhe/yct/utils/CalibrateUploadHelper;Ljava/io/File;)V

    return-object v0
.end method

.method public static install()V
    .locals 1

    .line 67
    new-instance v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/qianhe/yct/utils/CalibrateUploadHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->setOnSessionWrittenListener(Lcom/qianhe/baselib/utils/CalibrateLogToFile$OnSessionWrittenListener;)V

    return-void
.end method

.method private static lng(Lcom/google/gson/JsonObject;Ljava/lang/String;J)J
    .locals 1

    if-eqz p0, :cond_1

    .line 508
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    :cond_1
    :goto_0
    return-wide p2
.end method

.method private static nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 486
    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static obj(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 1

    if-eqz p0, :cond_1

    .line 490
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0

    .line 491
    :cond_1
    :goto_0
    new-instance p0, Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/google/gson/JsonObject;-><init>()V

    return-object p0
.end method

.method private ossCallback(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;
    .locals 6

    .line 238
    new-instance v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/utils/CalibrateUploadHelper$2;-><init>(Lcom/qianhe/yct/utils/CalibrateUploadHelper;Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    return-object v0
.end method

.method private static passedByThreshold(D)I
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-ltz v2, :cond_2

    .line 433
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private static readUtf8(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .line 460
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    long-to-int v1, v0

    .line 464
    new-array v0, v1, [B

    .line 466
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 p0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    sub-int v4, v1, v3

    .line 468
    :try_start_0
    invoke-virtual {v2, v0, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v4, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr v3, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 466
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    .line 474
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 475
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, p0, v3, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1

    .line 462
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "file too large"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static resolveAccuracy(Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;
    .locals 10

    .line 395
    new-instance v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;-><init>(Lcom/qianhe/yct/utils/CalibrateUploadHelper-IA;)V

    .line 396
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 397
    const-string/jumbo v2, "verify"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ""

    const-wide/16 v4, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    if-eqz v2, :cond_2

    .line 398
    const-string p0, "elev_max"

    invoke-static {p1, p0, v6, v7}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->dbl(Lcom/google/gson/JsonObject;Ljava/lang/String;D)D

    move-result-wide v8

    iput-wide v8, v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->accuracy:D

    cmpl-double v2, v8, v4

    if-ltz v2, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 399
    :goto_0
    iput-object v2, v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->accuracyType:Ljava/lang/String;

    .line 400
    const-string v2, "plane_max"

    invoke-static {p1, v2, v6, v7}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->dbl(Lcom/google/gson/JsonObject;Ljava/lang/String;D)D

    move-result-wide v8

    iput-wide v8, v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->accuracy2:D

    .line 401
    const-string v8, "elev_123"

    invoke-static {p1, v1, v8}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->copyNum(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 402
    const-string v8, "elev_345"

    invoke-static {p1, v1, v8}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->copyNum(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 403
    invoke-static {p1, v1, p0}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->copyNum(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 404
    invoke-static {p1, v1, v2}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->copyNum(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 406
    iget-wide p0, v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->accuracy:D

    cmpl-double v2, p0, v4

    if-ltz v2, :cond_1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v6, p0, v4

    :cond_1
    invoke-static {v6, v7}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->passedByThreshold(D)I

    move-result p0

    iput p0, v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->passed:I

    goto :goto_3

    .line 407
    :cond_2
    const-string v2, "finetune"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 408
    const-string/jumbo p0, "stdev_after"

    invoke-static {p1, p0, v6, v7}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->dbl(Lcom/google/gson/JsonObject;Ljava/lang/String;D)D

    move-result-wide v8

    iput-wide v8, v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->accuracy:D

    cmpl-double v2, v8, v4

    if-ltz v2, :cond_3

    move-object v2, p0

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 409
    :goto_1
    iput-object v2, v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->accuracyType:Ljava/lang/String;

    .line 410
    const-string/jumbo v2, "stdev_before"

    invoke-static {p1, v2, v6, v7}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->dbl(Lcom/google/gson/JsonObject;Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->accuracy2:D

    .line 411
    invoke-static {p1, v1, v2}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->copyNum(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 412
    invoke-static {p1, v1, p0}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->copyNum(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 413
    const-string/jumbo p0, "stdev_after_ha"

    invoke-static {p1, v1, p0}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->copyNum(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 414
    const-string/jumbo p0, "stdev_after_forearm"

    invoke-static {p1, v1, p0}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->copyNum(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 415
    const-string/jumbo p0, "stdev_after_bucket"

    invoke-static {p1, v1, p0}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->copyNum(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 416
    const-string/jumbo p0, "stdev_after_forearm_then_bucket"

    invoke-static {p1, v1, p0}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->copyNum(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 417
    iget-wide p0, v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->accuracy:D

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->passedByThreshold(D)I

    move-result p0

    iput p0, v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->passed:I

    goto :goto_3

    .line 418
    :cond_4
    const-string v2, "mode1_1"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 419
    const-string/jumbo p0, "stdev"

    invoke-static {p1, p0, v6, v7}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->dbl(Lcom/google/gson/JsonObject;Ljava/lang/String;D)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->accuracy:D

    cmpl-double v2, v6, v4

    if-ltz v2, :cond_5

    move-object v2, p0

    goto :goto_2

    :cond_5
    move-object v2, v3

    .line 420
    :goto_2
    iput-object v2, v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->accuracyType:Ljava/lang/String;

    .line 421
    invoke-static {p1, v1, p0}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->copyNum(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 423
    :cond_6
    :goto_3
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->size()I

    move-result p0

    if-nez p0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    .line 424
    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x400

    if-le p0, p1, :cond_8

    const/4 p0, 0x0

    .line 425
    invoke-virtual {v3, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 427
    :cond_8
    iput-object v3, v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->accuracyJson:Ljava/lang/String;

    return-object v0
.end method

.method private static resolveBrand(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 446
    const-string/jumbo v0, "yct"

    if-nez p0, :cond_0

    return-object v0

    .line 449
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 450
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private static str(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 497
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object p2
.end method

.method static toApiFlow(Ljava/lang/String;Lcom/google/gson/JsonObject;)Ljava/lang/String;
    .locals 10

    .line 279
    const-string v0, "bucket_switch"

    const-string v1, "mode2_1"

    const-string v2, "mode2_0"

    const-string v3, "mode1_1"

    const-string v4, "finetune_four_point"

    const-string v5, "reuse_create"

    const-string v6, "finetune_five_point"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "mode1_0"

    if-eqz v7, :cond_0

    return-object v8

    .line 282
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v7, 0xe

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v7, 0xd

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v7, 0xc

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v7, 0xb

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v7, 0xa

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v7, 0x9

    goto/16 :goto_0

    :sswitch_6
    const-string v9, "mode3"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v7, 0x8

    goto :goto_0

    :sswitch_7
    const-string v9, "mode1"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_0

    :cond_8
    const/4 v7, 0x7

    goto :goto_0

    :sswitch_8
    const-string v9, "pro"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_0

    :cond_9
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_9
    const-string v9, "finetune_nine_point"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_0

    :cond_a
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_a
    const-string v9, "rod_cali"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto :goto_0

    :cond_b
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_b
    const-string v9, "finetune"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_0

    :cond_c
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_c
    const-string/jumbo v9, "simple"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_0

    :cond_d
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_d
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    goto :goto_0

    :cond_e
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_e
    const-string v9, "proSensor"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    goto :goto_0

    :cond_f
    const/4 v7, 0x0

    :goto_0
    packed-switch v7, :pswitch_data_0

    return-object p0

    :pswitch_0
    return-object v6

    :pswitch_1
    return-object v0

    :pswitch_2
    return-object v1

    .line 293
    :pswitch_3
    const-string p0, "mode3_0"

    return-object p0

    .line 301
    :pswitch_4
    invoke-static {p1}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->finetuneApiFlowFromAdjustHeight(Lcom/google/gson/JsonObject;)Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    return-object p1

    .line 305
    :cond_10
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 306
    const-string p0, "finetune_arm"

    return-object p0

    :cond_11
    const-string p0, "finetune_bucket"

    return-object p0

    :pswitch_5
    return-object v3

    :pswitch_6
    return-object v6

    :pswitch_7
    return-object v8

    :pswitch_8
    return-object v5

    :pswitch_9
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c908339 -> :sswitch_e
        -0x47aef2d9 -> :sswitch_d
        -0x35c7ce4e -> :sswitch_c
        -0x285ef74e -> :sswitch_b
        -0x1dd8822d -> :sswitch_a
        -0x1d013290 -> :sswitch_9
        0x1b2ad -> :sswitch_8
        0x633faee -> :sswitch_7
        0x633faf0 -> :sswitch_6
        0x41271ae4 -> :sswitch_5
        0x49210320 -> :sswitch_4
        0x492106e0 -> :sswitch_3
        0x492106e1 -> :sswitch_2
        0x7ef04f29 -> :sswitch_1
        0x7fbcab70 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static toMethod(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)Ljava/lang/String;
    .locals 3

    .line 320
    const-string/jumbo v0, "verify"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 321
    const-string/jumbo p0, "standard"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string/jumbo v0, "verify_5p"

    if-eqz p0, :cond_0

    return-object v0

    .line 324
    :cond_0
    const-string/jumbo p0, "simple"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string/jumbo p1, "verify_3p"

    if-eqz p0, :cond_1

    return-object p1

    .line 327
    :cond_1
    const-string/jumbo p0, "steps"

    const-wide/16 v1, 0x0

    invoke-static {p2, p0, v1, v2}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->lng(Lcom/google/gson/JsonObject;Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int p0, v1

    const/4 p2, 0x5

    if-lt p0, p2, :cond_2

    return-object v0

    :cond_2
    return-object p1

    :cond_3
    if-eqz p0, :cond_4

    .line 330
    const-string p1, "finetune"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 331
    invoke-static {p2}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->finetuneMethodFromAdjustHeight(Lcom/google/gson/JsonObject;)Ljava/lang/String;

    move-result-object p1

    .line 332
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    return-object p1

    .line 336
    :cond_4
    const-string p1, "finetune_five_point"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 337
    const-string p0, "five_point"

    return-object p0

    .line 339
    :cond_5
    const-string p1, "finetune_bucket"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 340
    const-string p0, "bucket"

    return-object p0

    .line 342
    :cond_6
    const-string p1, "finetune_arm"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 343
    const-string p0, "arm"

    return-object p0

    .line 345
    :cond_7
    const-string p1, "mode1_1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 346
    const-string p0, "rod_cali"

    return-object p0

    .line 348
    :cond_8
    const-string p1, "bucket_switch"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-object p0

    :cond_9
    if-eqz p0, :cond_a

    .line 351
    const-string p1, "mode"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-object p0

    .line 354
    :cond_a
    const-string p0, ""

    return-object p0
.end method

.method private uploadLocked(Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p1

    .line 81
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 88
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->readUtf8(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    const-string v2, "session"

    invoke-static {v0, v2}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->obj(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    const-string v2, "meta"

    invoke-static {v0, v2}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->obj(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    :goto_0
    if-nez v0, :cond_2

    .line 96
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    :cond_2
    if-nez v2, :cond_3

    .line 99
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 102
    :cond_3
    const-string v3, "flow"

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->str(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-static {v3, v2}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->toApiFlow(Ljava/lang/String;Lcom/google/gson/JsonObject;)Ljava/lang/String;

    move-result-object v8

    .line 104
    const-string/jumbo v3, "type"

    invoke-static {v0, v3, v4}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->str(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3, v2}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->toMethod(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)Ljava/lang/String;

    move-result-object v9

    .line 105
    const-string v3, "algo_provider"

    const-string v5, "local"

    invoke-static {v0, v3, v5}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->str(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 106
    const-string v3, "device_sn"

    invoke-static {v0, v3, v4}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->str(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 108
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 110
    const-string/jumbo v3, "sp"

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "deviceSn"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    move-object v11, v3

    .line 113
    const-string v3, "excavator_name"

    invoke-static {v0, v3, v4}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->str(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 115
    const-string v5, "name"

    invoke-static {v2, v5, v4}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->str(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->str(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_5
    move-object v12, v5

    .line 117
    const-string v3, "ok"

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->bool(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 120
    const-string v3, "calib_params_id"

    invoke-static {v0, v3, v4}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->str(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 122
    const-string v5, "new_calib_params_id"

    invoke-static {v2, v5, v4}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->str(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->str(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_6
    move-object v13, v4

    goto :goto_1

    :cond_7
    move-object v13, v5

    .line 125
    :goto_1
    const-string/jumbo v3, "started_at"

    const-wide/16 v4, 0x0

    invoke-static {v0, v3, v4, v5}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->lng(Lcom/google/gson/JsonObject;Ljava/lang/String;J)J

    move-result-wide v6

    .line 126
    const-string v3, "ended_at"

    invoke-static {v0, v3, v4, v5}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->lng(Lcom/google/gson/JsonObject;Ljava/lang/String;J)J

    move-result-wide v16

    cmp-long v3, v6, v4

    if-gtz v3, :cond_8

    .line 128
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    :cond_8
    move-wide v14, v6

    .line 131
    invoke-static {v8, v2}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->resolveAccuracy(Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;

    move-result-object v18

    .line 133
    const-string v2, "id"

    const-string v3, "0"

    invoke-static {v0, v2, v3}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->str(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    cmp-long v2, v16, v4

    if-lez v2, :cond_9

    move-wide/from16 v2, v16

    goto :goto_2

    .line 134
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_2
    const-string/jumbo v4, "yyyyMMdd_HHmmss"

    invoke-static {v2, v3, v4}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->formatUtc(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calib/calib_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v5

    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "yctcalib_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p1, v5

    const-string v5, ".zip"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v19, v8

    if-eqz p1, :cond_b

    .line 140
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v9

    invoke-static/range {p1 .. p1}, Lcom/qianhe/baselib/utils/FileUtil;->mkLogDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 141
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/qianhe/baselib/utils/FileUtil;->mkLogDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 145
    :cond_a
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".json"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_stream.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[]"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {v6, v0, v1}, Lcom/qianhe/baselib/utils/ZipUtil;->zipWithPassword(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_c

    .line 151
    const-string/jumbo v1, "\u6821\u51c6\u6570\u636e\u5305\u538b\u7f29\u5931\u8d25"

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    move-object/from16 v20, v9

    const/4 v0, 0x0

    .line 155
    :cond_c
    :goto_3
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v6

    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v5, p0

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v19, v0

    invoke-direct/range {v5 .. v19}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->uploadPacket(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;Ljava/io/File;)V

    return-void

    :catch_0
    move-exception v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6821\u51c6\u4e0a\u4f20\u89e3\u6790\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void

    .line 83
    :cond_d
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6821\u51c6\u4e0a\u4f20\u8df3\u8fc7\uff1a\u6587\u4ef6\u4e0d\u5b58\u5728 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method private uploadPacket(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;Ljava/io/File;)V
    .locals 7

    move-object/from16 v0, p13

    move-object/from16 v1, p14

    if-eqz v1, :cond_3

    .line 163
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 167
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v2

    .line 168
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qianhe/yct/db/UserSession;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 170
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app=2.0.2609.109 brand="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->resolveBrand(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " platform=android"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 174
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 175
    const-string/jumbo v5, "token"

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v5, 0x0

    .line 177
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "app_type"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v5, "device_id"

    invoke-static {v3}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v3, "device_sn"

    invoke-static {p6}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-interface {v4, v3, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string p6, "flow"

    invoke-interface {v4, p6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string p3, "method"

    invoke-static {p4}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v4, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string p3, "algo_provider"

    invoke-interface {v4, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string p3, "excavator_name"

    invoke-static {p7}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v4, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string p3, "calib_params_id"

    invoke-static {p8}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v4, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string/jumbo p4, "started_at"

    invoke-interface {v4, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "ended_at"

    invoke-interface {v4, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-wide p3, v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->accuracy:D

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const-string p4, "accuracy"

    invoke-interface {v4, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string p3, "accuracy_type"

    iget-object p4, v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->accuracyType:Ljava/lang/String;

    invoke-interface {v4, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-wide p3, v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->accuracy2:D

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const-string p4, "accuracy_2"

    invoke-interface {v4, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget p3, v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->passed:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "passed"

    invoke-interface {v4, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string p3, "accuracy_json"

    iget-object p4, v0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->accuracyJson:Ljava/lang/String;

    invoke-interface {v4, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string p3, "file_name"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v4, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "file_size"

    invoke-interface {v4, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/qianhe/baselib/utils/FileUtil;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "file_md5"

    invoke-interface {v4, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string p3, "remark"

    invoke-interface {v4, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance p3, Lcom/qianhe/yct/utils/CalibrateUploadHelper$1;

    invoke-direct {p3, p0, v1, p1, p2}, Lcom/qianhe/yct/utils/CalibrateUploadHelper$1;-><init>(Lcom/qianhe/yct/utils/CalibrateUploadHelper;Ljava/io/File;Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;)V

    invoke-virtual {p1, v4, p3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->applyCalibPacketUpload(Ljava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V

    return-void

    .line 164
    :cond_3
    :goto_0
    const-string/jumbo p1, "\u6821\u51c6\u6570\u636e\u5305 17020 \u8df3\u8fc7\uff1a\u65e0 zip"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public enqueue(Ljava/lang/String;)V
    .locals 2

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qianhe/yct/utils/CalibrateUploadHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/utils/CalibrateUploadHelper$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/utils/CalibrateUploadHelper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
