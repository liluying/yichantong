.class public abstract Lcom/qianhe/baselib/utils/INSLogCache;
.super Ljava/lang/Object;
.source "INSLogCache.java"


# static fields
.field public static final dateFormatD:Ljava/text/SimpleDateFormat;

.field private static final dateFormatT:Ljava/text/SimpleDateFormat;

.field private static executors:Ljava/util/concurrent/ExecutorService;

.field private static final fileAppender:Lcom/qianhe/baselib/utils/LogIo$Appender;

.field private static fileName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetfileAppender()Lcom/qianhe/baselib/utils/LogIo$Appender;
    .locals 1

    .line 0
    sget-object v0, Lcom/qianhe/baselib/utils/INSLogCache;->fileAppender:Lcom/qianhe/baselib/utils/LogIo$Appender;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetfileName()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/qianhe/baselib/utils/INSLogCache;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/qianhe/baselib/utils/INSLogCache;->dateFormatD:Ljava/text/SimpleDateFormat;

    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd_HH_mm_ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/qianhe/baselib/utils/INSLogCache;->dateFormatT:Ljava/text/SimpleDateFormat;

    .line 31
    new-instance v0, Lcom/qianhe/baselib/utils/LogIo$Appender;

    invoke-direct {v0}, Lcom/qianhe/baselib/utils/LogIo$Appender;-><init>()V

    sput-object v0, Lcom/qianhe/baselib/utils/INSLogCache;->fileAppender:Lcom/qianhe/baselib/utils/LogIo$Appender;

    return-void
.end method

.method public static save(Ljava/lang/String;Z)V
    .locals 0

    .line 138
    invoke-static {p0}, Lcom/qianhe/baselib/utils/INSLogCache;->writeToFile(Ljava/lang/String;)V

    return-void
.end method

.method private static writeToFile(Ljava/lang/String;)V
    .locals 2

    .line 147
    sget-object v0, Lcom/qianhe/baselib/utils/INSLogCache;->executors:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/qianhe/baselib/utils/INSLogCache;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/utils/INSLogCache;->executors:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qianhe/baselib/utils/INSLogCache$1;

    invoke-direct {v1, p0}, Lcom/qianhe/baselib/utils/INSLogCache$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/qianhe/baselib/utils/LogIo;->execute(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
