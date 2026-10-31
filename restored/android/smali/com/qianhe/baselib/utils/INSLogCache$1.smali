.class Lcom/qianhe/baselib/utils/INSLogCache$1;
.super Ljava/lang/Object;
.source "INSLogCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/baselib/utils/INSLogCache;->writeToFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/qianhe/baselib/utils/INSLogCache$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/qianhe/baselib/utils/INSLogCache;->dateFormatD:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/baselib/utils/INSLogCache$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    :try_start_0
    invoke-static {}, Lcom/qianhe/baselib/utils/INSLogCache;->-$$Nest$sfgetfileAppender()Lcom/qianhe/baselib/utils/LogIo$Appender;

    move-result-object v1

    invoke-static {}, Lcom/qianhe/baselib/utils/INSLogCache;->-$$Nest$sfgetfileName()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v3, 0x3200000

    invoke-virtual {v1, v2, v3, v4}, Lcom/qianhe/baselib/utils/LogIo$Appender;->rotateIfTooLarge(Ljava/lang/String;J)V

    .line 156
    invoke-static {}, Lcom/qianhe/baselib/utils/INSLogCache;->-$$Nest$sfgetfileAppender()Lcom/qianhe/baselib/utils/LogIo$Appender;

    move-result-object v1

    invoke-static {}, Lcom/qianhe/baselib/utils/INSLogCache;->-$$Nest$sfgetfileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/qianhe/baselib/utils/LogIo$Appender;->append(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 160
    invoke-static {}, Lcom/qianhe/baselib/utils/INSLogCache;->-$$Nest$sfgetfileAppender()Lcom/qianhe/baselib/utils/LogIo$Appender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/baselib/utils/LogIo$Appender;->closeQuietly()V

    .line 161
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====5====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :catch_1
    invoke-static {}, Lcom/qianhe/baselib/utils/INSLogCache;->-$$Nest$sfgetfileAppender()Lcom/qianhe/baselib/utils/LogIo$Appender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/utils/LogIo$Appender;->closeQuietly()V

    :goto_0
    return-void
.end method
