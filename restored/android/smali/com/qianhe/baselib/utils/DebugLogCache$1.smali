.class Lcom/qianhe/baselib/utils/DebugLogCache$1;
.super Ljava/lang/Object;
.source "DebugLogCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/baselib/utils/DebugLogCache;->writeToFile(Ljava/lang/String;)V
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

    .line 167
    iput-object p1, p0, Lcom/qianhe/baselib/utils/DebugLogCache$1;->val$line:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 171
    invoke-static {}, Lcom/qianhe/baselib/utils/DebugLogCache;->-$$Nest$sfgetfilterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/qianhe/baselib/utils/DebugLogCache$1;->val$line:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 177
    :goto_0
    invoke-static {}, Lcom/qianhe/baselib/utils/DebugLogCache;->-$$Nest$sfgetstartWrite()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_2

    goto :goto_3

    .line 180
    :cond_2
    const-string v0, "debug"

    iget-object v1, p0, Lcom/qianhe/baselib/utils/DebugLogCache$1;->val$line:Ljava/lang/String;

    nop

    nop

    nop

    .line 182
    :try_start_0
    invoke-static {}, Lcom/qianhe/baselib/utils/DebugLogCache;->-$$Nest$sfgetfileAppender()Lcom/qianhe/baselib/utils/LogIo$Appender;

    move-result-object v0

    invoke-static {}, Lcom/qianhe/baselib/utils/DebugLogCache;->-$$Nest$sfgetfileName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/baselib/utils/DebugLogCache$1;->val$line:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/baselib/utils/LogIo$Appender;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-wide v0, Lcom/qianhe/baselib/utils/LogToFile;->beginTime:J

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    cmp-long v6, v0, v2

    if-nez v6, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    sput-wide v0, Lcom/qianhe/baselib/utils/LogToFile;->beginTime:J

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    .line 184
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    sput-wide v0, Lcom/qianhe/baselib/utils/LogToFile;->endTime:J
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 188
    :goto_2
    invoke-static {}, Lcom/qianhe/baselib/utils/DebugLogCache;->-$$Nest$sfgetfileAppender()Lcom/qianhe/baselib/utils/LogIo$Appender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/baselib/utils/LogIo$Appender;->closeQuietly()V

    .line 189
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 186
    :catch_1
    invoke-static {}, Lcom/qianhe/baselib/utils/DebugLogCache;->-$$Nest$sfgetfileAppender()Lcom/qianhe/baselib/utils/LogIo$Appender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/utils/LogIo$Appender;->closeQuietly()V

    :cond_4
    :goto_3
    return-void
.end method
