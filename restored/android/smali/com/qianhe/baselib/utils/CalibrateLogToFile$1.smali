.class Lcom/qianhe/baselib/utils/CalibrateLogToFile$1;
.super Ljava/lang/Object;
.source "CalibrateLogToFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/baselib/utils/CalibrateLogToFile;->writeJsonFile(Ljava/lang/String;ILcom/google/gson/JsonObject;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$nameFlow:Ljava/lang/String;

.field final synthetic val$onWritten:Ljava/lang/Runnable;

.field final synthetic val$root:Lcom/google/gson/JsonObject;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/gson/JsonObject;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 628
    iput-object p1, p0, Lcom/qianhe/baselib/utils/CalibrateLogToFile$1;->val$nameFlow:Ljava/lang/String;

    iput-object p2, p0, Lcom/qianhe/baselib/utils/CalibrateLogToFile$1;->val$root:Lcom/google/gson/JsonObject;

    iput-object p3, p0, Lcom/qianhe/baselib/utils/CalibrateLogToFile$1;->val$onWritten:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 631
    const-string/jumbo v0, "\u6821\u51c6\u4f1a\u8bdd\u4e0a\u4f20\u56de\u8c03\u5931\u8d25\uff1a"

    const-string/jumbo v1, "\u6821\u51c6\u65e5\u5fd7\u5199\u5165\u5931\u8d25\uff1a"

    const-string/jumbo v2, "\u6821\u51c6\u65e5\u5fd7\u6d41\u5173\u95ed\u5931\u8d25\uff1a"

    const-string v3, "CalibrateLogToFile"

    const/4 v4, 0x0

    .line 633
    :try_start_0
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->-$$Nest$sfgetapplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/qianhe/baselib/utils/CalibrateLogToFile$1;->val$nameFlow:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/qianhe/baselib/utils/FileUtil;->mkCalibrateLogFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 634
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 635
    const-string/jumbo v1, "\u6821\u51c6\u65e5\u5fd7\u8def\u5f84\u4e3a\u7a7a"

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    iget-object v0, p0, Lcom/qianhe/baselib/utils/CalibrateLogToFile$1;->val$onWritten:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 674
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 676
    :cond_0
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->-$$Nest$sfgetsessionWrittenListener()Lcom/qianhe/baselib/utils/CalibrateLogToFile$OnSessionWrittenListener;

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_a

    .line 638
    :cond_1
    :try_start_1
    invoke-static {v5}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->-$$Nest$sfputlatestLogPath(Ljava/lang/String;)V

    .line 639
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->-$$Nest$sfgetGSON()Lcom/google/gson/Gson;

    move-result-object v6

    iget-object v7, p0, Lcom/qianhe/baselib/utils/CalibrateLogToFile$1;->val$root:Lcom/google/gson/JsonObject;

    invoke-virtual {v6, v7}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x0

    .line 643
    :try_start_2
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 646
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    :catchall_1
    move-exception v1

    goto/16 :goto_8

    :catch_0
    move-exception v5

    goto :goto_3

    :catch_1
    move-exception v5

    goto/16 :goto_4

    .line 648
    :cond_2
    :goto_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 649
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v8, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 650
    :try_start_3
    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 651
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 653
    sget-wide v6, Lcom/qianhe/baselib/utils/LogToFile;->beginTime:J

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x3e8

    cmp-long v12, v6, v8

    if-nez v12, :cond_3

    .line 654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v10

    sput-wide v6, Lcom/qianhe/baselib/utils/LogToFile;->beginTime:J

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v7, v5

    goto/16 :goto_8

    :catch_2
    move-exception v6

    move-object v7, v5

    move-object v5, v6

    goto :goto_3

    :catch_3
    move-exception v6

    move-object v7, v5

    move-object v5, v6

    goto :goto_4

    :catch_4
    move-object v7, v5

    goto/16 :goto_5

    .line 656
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v10

    sput-wide v6, Lcom/qianhe/baselib/utils/LogToFile;->endTime:J
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 666
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    :catch_5
    move-exception v1

    .line 669
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_6

    .line 662
    :goto_3
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v7, :cond_4

    .line 666
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    :catch_6
    move-exception v1

    .line 669
    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 660
    :goto_4
    :try_start_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v7, :cond_4

    .line 666
    :try_start_a
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    :catch_7
    move-exception v1

    .line 669
    :try_start_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    .line 658
    :catch_8
    :goto_5
    :try_start_c
    const-string/jumbo v1, "\u6821\u51c6\u65e5\u5fd7\u5199\u5165 OOM\uff0c\u5df2\u4e22\u5f03"

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v7, :cond_4

    .line 666
    :try_start_d
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_6

    :catch_9
    move-exception v1

    .line 669
    :try_start_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_2

    .line 673
    :cond_4
    :goto_6
    iget-object v1, p0, Lcom/qianhe/baselib/utils/CalibrateLogToFile$1;->val$onWritten:Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    .line 674
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 676
    :cond_5
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->-$$Nest$sfgetsessionWrittenListener()Lcom/qianhe/baselib/utils/CalibrateLogToFile$OnSessionWrittenListener;

    move-result-object v1

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    .line 677
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->-$$Nest$sfgetlatestLogPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 679
    :try_start_f
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->-$$Nest$sfgetlatestLogPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile$OnSessionWrittenListener;->onSessionWritten(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v1

    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    :cond_6
    :goto_7
    return-void

    :goto_8
    if-eqz v7, :cond_7

    .line 666
    :try_start_10
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_9

    :catch_a
    move-exception v5

    .line 669
    :try_start_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    .line 671
    :cond_7
    :goto_9
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 673
    :goto_a
    iget-object v2, p0, Lcom/qianhe/baselib/utils/CalibrateLogToFile$1;->val$onWritten:Ljava/lang/Runnable;

    if-eqz v2, :cond_8

    .line 674
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 676
    :cond_8
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->-$$Nest$sfgetsessionWrittenListener()Lcom/qianhe/baselib/utils/CalibrateLogToFile$OnSessionWrittenListener;

    move-result-object v2

    if-eqz v4, :cond_9

    if-eqz v2, :cond_9

    .line 677
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->-$$Nest$sfgetlatestLogPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 679
    :try_start_12
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->-$$Nest$sfgetlatestLogPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/qianhe/baselib/utils/CalibrateLogToFile$OnSessionWrittenListener;->onSessionWritten(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    goto :goto_b

    :catchall_4
    move-exception v2

    .line 681
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    .line 684
    :cond_9
    :goto_b
    throw v1
.end method
