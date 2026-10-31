.class public Lcom/qianhe/baselib/utils/DebugLogCache;
.super Ljava/lang/Object;
.source "DebugLogCache.java"


# static fields
.field public static final BESTPOSA:Ljava/lang/String; = "#BESTPOSA,"

.field public static final FILETAG:Ljava/lang/String; = "deubg-"

.field public static final GPGST:Ljava/lang/String; = "$GPGST,"

.field public static final GPSNR:Ljava/lang/String; = "$GPSNR,"

.field public static final INS:Ljava/lang/String; = "$INS.NAVI,"

.field private static final TAG:Ljava/lang/String; = "DebugLogCache"

.field private static context:Landroid/content/Context;

.field private static final dateFormatM:Ljava/text/SimpleDateFormat;

.field private static executors:Ljava/util/concurrent/ExecutorService;

.field private static final fileAppender:Lcom/qianhe/baselib/utils/LogIo$Appender;

.field private static fileName:Ljava/lang/String;

.field private static final filterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static startWrite:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetfileAppender()Lcom/qianhe/baselib/utils/LogIo$Appender;
    .locals 1

    .line 0
    sget-object v0, Lcom/qianhe/baselib/utils/DebugLogCache;->fileAppender:Lcom/qianhe/baselib/utils/LogIo$Appender;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetfileName()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/qianhe/baselib/utils/DebugLogCache;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetfilterList()Ljava/util/List;
    .locals 1

    .line 0
    sget-object v0, Lcom/qianhe/baselib/utils/DebugLogCache;->filterList:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetstartWrite()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/qianhe/baselib/utils/DebugLogCache;->startWrite:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/qianhe/baselib/utils/DebugLogCache;->dateFormatM:Ljava/text/SimpleDateFormat;

    .line 35
    new-instance v0, Lcom/qianhe/baselib/utils/LogIo$Appender;

    invoke-direct {v0}, Lcom/qianhe/baselib/utils/LogIo$Appender;-><init>()V

    sput-object v0, Lcom/qianhe/baselib/utils/DebugLogCache;->fileAppender:Lcom/qianhe/baselib/utils/LogIo$Appender;

    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/qianhe/baselib/utils/DebugLogCache;->startWrite:Z

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qianhe/baselib/utils/DebugLogCache;->filterList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkPermissions(Landroid/content/Context;)Z
    .locals 2

    .line 45
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 4

    .line 125
    const-class v0, Lcom/qianhe/baselib/utils/DebugLogCache;

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->stackInfo(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/qianhe/baselib/utils/DebugLogCache;->dateFormatM:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] [DEBUG] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 127
    const-string v0, "XWQ"

    nop

    nop

    nop

    return-void
.end method

.method public static deleteFolderFile(Ljava/lang/String;Z)Z
    .locals 5

    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 103
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v3, 0x0

    .line 106
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 107
    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/qianhe/baselib/utils/DebugLogCache;->deleteFolderFile(Ljava/lang/String;Z)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    .line 110
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return v2

    .line 117
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return v1
.end method

.method public static e(Ljava/lang/String;)V
    .locals 4

    .line 147
    const-class v0, Lcom/qianhe/baselib/utils/DebugLogCache;

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->stackInfo(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/qianhe/baselib/utils/DebugLogCache;->dateFormatM:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] [ERROR] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 149
    const-string v0, "XWQ"

    nop

    nop

    nop

    .line 150
    invoke-static {p0}, Lcom/qianhe/baselib/utils/DebugLogCache;->writeToFile(Ljava/lang/String;)V

    return-void
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .locals 5

    const-wide/16 v0, 0x0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v2, 0x0

    .line 83
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 84
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/qianhe/baselib/utils/DebugLogCache;->getFolderSize(Ljava/io/File;)J

    move-result-wide v3

    :goto_1
    add-long/2addr v0, v3

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    .line 85
    :cond_0
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0

    .line 89
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-wide v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 4

    .line 133
    const-class v0, Lcom/qianhe/baselib/utils/DebugLogCache;

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->stackInfo(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/qianhe/baselib/utils/DebugLogCache;->dateFormatM:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] [INFO] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 135
    const-string v0, "XWQ"

    nop

    nop

    nop

    .line 136
    invoke-static {p0}, Lcom/qianhe/baselib/utils/DebugLogCache;->writeToFile(Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    sput-object p0, Lcom/qianhe/baselib/utils/DebugLogCache;->context:Landroid/content/Context;

    .line 58
    sget-object v0, Lcom/qianhe/baselib/utils/DebugLogCache;->filterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    const-string p1, "debug-log"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogIo;->newSingleWriter(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    sput-object p1, Lcom/qianhe/baselib/utils/DebugLogCache;->executors:Ljava/util/concurrent/ExecutorService;

    .line 61
    invoke-static {p0}, Lcom/qianhe/baselib/utils/FileUtil;->mkBLueDebugFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/qianhe/baselib/utils/DebugLogCache;->fileName:Ljava/lang/String;

    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 63
    const-string p0, "fileName == null \uff0c\u672a\u521d\u59cb\u5316DebugLogCache"

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setFilter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 196
    sget-object v0, Lcom/qianhe/baselib/utils/DebugLogCache;->filterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 197
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static start()V
    .locals 1

    const/4 v0, 0x1

    .line 68
    sput-boolean v0, Lcom/qianhe/baselib/utils/DebugLogCache;->startWrite:Z

    return-void
.end method

.method public static stop()V
    .locals 1

    .line 201
    sget-object v0, Lcom/qianhe/baselib/utils/DebugLogCache;->fileAppender:Lcom/qianhe/baselib/utils/LogIo$Appender;

    invoke-virtual {v0}, Lcom/qianhe/baselib/utils/LogIo$Appender;->closeQuietly()V

    .line 202
    sget-object v0, Lcom/qianhe/baselib/utils/DebugLogCache;->executors:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    .line 203
    sput-boolean v0, Lcom/qianhe/baselib/utils/DebugLogCache;->startWrite:Z

    const/4 v0, 0x0

    .line 204
    sput-object v0, Lcom/qianhe/baselib/utils/DebugLogCache;->executors:Ljava/util/concurrent/ExecutorService;

    .line 205
    sput-object v0, Lcom/qianhe/baselib/utils/DebugLogCache;->context:Landroid/content/Context;

    .line 206
    const-string v0, ""

    sput-object v0, Lcom/qianhe/baselib/utils/DebugLogCache;->fileName:Ljava/lang/String;

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 4

    .line 140
    const-class v0, Lcom/qianhe/baselib/utils/DebugLogCache;

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->stackInfo(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/qianhe/baselib/utils/DebugLogCache;->dateFormatM:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] [WARN] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 142
    const-string v0, "XWQ"

    nop

    nop

    nop

    .line 143
    invoke-static {p0}, Lcom/qianhe/baselib/utils/DebugLogCache;->writeToFile(Ljava/lang/String;)V

    return-void
.end method

.method public static writeToFile(Ljava/lang/String;)V
    .locals 2

    .line 159
    sget-object v0, Lcom/qianhe/baselib/utils/DebugLogCache;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/DebugLogCache;->checkPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const-string p0, "loglog"

    const-string/jumbo v0, "\u672a\u83b7\u53d6\u6743\u9650!"

    nop

    nop

    nop

    .line 161
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    const-string/jumbo v0, "\u672a\u83b7\u53d6\u6743\u9650"

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 164
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/utils/DebugLogCache;->executors:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/qianhe/baselib/utils/DebugLogCache;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    sget-object v0, Lcom/qianhe/baselib/utils/DebugLogCache;->executors:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qianhe/baselib/utils/DebugLogCache$1;

    invoke-direct {v1, p0}, Lcom/qianhe/baselib/utils/DebugLogCache$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/qianhe/baselib/utils/LogIo;->execute(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
