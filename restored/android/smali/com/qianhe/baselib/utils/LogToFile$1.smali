.class Lcom/qianhe/baselib/utils/LogToFile$1;
.super Ljava/lang/Object;
.source "LogToFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/baselib/utils/LogToFile;->writeToFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$toWrite:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 430
    iput-object p1, p0, Lcom/qianhe/baselib/utils/LogToFile$1;->val$toWrite:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 435
    const-string/jumbo v0, "\u65e5\u5fd7\u5199\u5165\u5931\u8d25\uff1a"

    const-string v1, "\n"

    const-string v2, "LogToFile"

    :try_start_0
    invoke-static {}, Lcom/qianhe/baselib/utils/LogToFile;->-$$Nest$sfgetdebug()Z

    move-result v3

    if-nez v3, :cond_1

    .line 437
    iget-object v3, p0, Lcom/qianhe/baselib/utils/LogToFile$1;->val$toWrite:Ljava/lang/String;

    invoke-static {v3}, Lcom/qianhe/baselib/utils/AESCrypto;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 438
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 439
    const-string v3, "AES encrypt returned empty, fallback plaintext"

    nop

    nop

    nop

    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/qianhe/baselib/utils/LogToFile$1;->val$toWrite:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_0

    .line 442
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 445
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/qianhe/baselib/utils/LogToFile$1;->val$toWrite:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 452
    :goto_0
    const-string v4, "AES encrypt failed, fallback plaintext"

    nop

    nop

    nop

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/qianhe/baselib/utils/LogToFile$1;->val$toWrite:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 456
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/qianhe/baselib/utils/LogToFile;->-$$Nest$sfgetfileAppender()Lcom/qianhe/baselib/utils/LogIo$Appender;

    move-result-object v3

    invoke-static {}, Lcom/qianhe/baselib/utils/LogToFile;->-$$Nest$sfgetfileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/qianhe/baselib/utils/LogIo$Appender;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    sget-wide v3, Lcom/qianhe/baselib/utils/LogToFile;->beginTime:J

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3e8

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v7

    sput-wide v3, Lcom/qianhe/baselib/utils/LogToFile;->beginTime:J

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_4

    .line 458
    :cond_2
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v7

    sput-wide v3, Lcom/qianhe/baselib/utils/LogToFile;->endTime:J
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 466
    :goto_3
    invoke-static {}, Lcom/qianhe/baselib/utils/LogToFile;->-$$Nest$sfgetfileAppender()Lcom/qianhe/baselib/utils/LogIo$Appender;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qianhe/baselib/utils/LogIo$Appender;->closeQuietly()V

    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    .line 468
    invoke-static {}, Lcom/qianhe/baselib/utils/LogToFile;->-$$Nest$smmkLogDirs()V

    goto :goto_5

    .line 462
    :goto_4
    invoke-static {}, Lcom/qianhe/baselib/utils/LogToFile;->-$$Nest$sfgetfileAppender()Lcom/qianhe/baselib/utils/LogIo$Appender;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qianhe/baselib/utils/LogIo$Appender;->closeQuietly()V

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    .line 464
    invoke-static {}, Lcom/qianhe/baselib/utils/LogToFile;->-$$Nest$smmkLogDirs()V

    goto :goto_5

    .line 460
    :catch_2
    invoke-static {}, Lcom/qianhe/baselib/utils/LogToFile;->-$$Nest$sfgetfileAppender()Lcom/qianhe/baselib/utils/LogIo$Appender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/utils/LogIo$Appender;->closeQuietly()V

    :goto_5
    return-void

    .line 448
    :catch_3
    invoke-static {}, Lcom/qianhe/baselib/utils/LogToFile;->-$$Nest$sfgetfileAppender()Lcom/qianhe/baselib/utils/LogIo$Appender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/utils/LogIo$Appender;->closeQuietly()V

    return-void
.end method
