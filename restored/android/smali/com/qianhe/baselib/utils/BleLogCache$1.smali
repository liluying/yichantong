.class Lcom/qianhe/baselib/utils/BleLogCache$1;
.super Ljava/lang/Object;
.source "BleLogCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/baselib/utils/BleLogCache;->writeToFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$line:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/qianhe/baselib/utils/BleLogCache$1;->val$line:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 156
    :try_start_0
    invoke-static {}, Lcom/qianhe/baselib/utils/BleLogCache;->-$$Nest$sfgetfileAppender()Lcom/qianhe/baselib/utils/LogIo$Appender;

    move-result-object v0

    invoke-static {}, Lcom/qianhe/baselib/utils/BleLogCache;->-$$Nest$sfgetfileName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/baselib/utils/BleLogCache$1;->val$line:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/baselib/utils/LogIo$Appender;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-wide v0, Lcom/qianhe/baselib/utils/LogToFile;->beginTime:J

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    sput-wide v0, Lcom/qianhe/baselib/utils/LogToFile;->beginTime:J

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 158
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    sput-wide v0, Lcom/qianhe/baselib/utils/LogToFile;->endTime:J
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 162
    :goto_1
    invoke-static {}, Lcom/qianhe/baselib/utils/BleLogCache;->-$$Nest$sfgetfileAppender()Lcom/qianhe/baselib/utils/LogIo$Appender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/baselib/utils/LogIo$Appender;->closeQuietly()V

    .line 163
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    invoke-static {}, Lcom/qianhe/baselib/utils/BleLogCache;->-$$Nest$sfgetcontext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/qianhe/baselib/utils/BleLogCache;->-$$Nest$sfgetcontext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/FileUtil;->mkBLueLogFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/BleLogCache;->-$$Nest$sfputfileName(Ljava/lang/String;)V

    goto :goto_2

    .line 160
    :catch_1
    invoke-static {}, Lcom/qianhe/baselib/utils/BleLogCache;->-$$Nest$sfgetfileAppender()Lcom/qianhe/baselib/utils/LogIo$Appender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/utils/LogIo$Appender;->closeQuietly()V

    :cond_1
    :goto_2
    return-void
.end method
