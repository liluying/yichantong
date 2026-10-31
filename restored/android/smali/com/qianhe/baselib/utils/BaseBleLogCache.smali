.class public Lcom/qianhe/baselib/utils/BaseBleLogCache;
.super Ljava/lang/Object;
.source "BaseBleLogCache.java"


# static fields
.field public static final FILETAG:Ljava/lang/String; = "ble-base-"

.field private static final TAG:Ljava/lang/String; = "BaseBleLogCache"

.field private static context:Landroid/content/Context;

.field private static final dateFormatM:Ljava/text/SimpleDateFormat;

.field private static executors:Ljava/util/concurrent/ExecutorService;

.field private static final fileAppender:Lcom/qianhe/baselib/utils/LogIo$Appender;

.field private static fileName:Ljava/lang/String;

.field private static init:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetcontext()Landroid/content/Context;
    .locals 1

    .line 0
    sget-object v0, Lcom/qianhe/baselib/utils/BaseBleLogCache;->context:Landroid/content/Context;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetfileAppender()Lcom/qianhe/baselib/utils/LogIo$Appender;
    .locals 1

    .line 0
    sget-object v0, Lcom/qianhe/baselib/utils/BaseBleLogCache;->fileAppender:Lcom/qianhe/baselib/utils/LogIo$Appender;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetfileName()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/qianhe/baselib/utils/BaseBleLogCache;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputfileName(Ljava/lang/String;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/qianhe/baselib/utils/BaseBleLogCache;->fileName:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/qianhe/baselib/utils/BaseBleLogCache;->dateFormatM:Ljava/text/SimpleDateFormat;

    .line 33
    new-instance v0, Lcom/qianhe/baselib/utils/LogIo$Appender;

    invoke-direct {v0}, Lcom/qianhe/baselib/utils/LogIo$Appender;-><init>()V

    sput-object v0, Lcom/qianhe/baselib/utils/BaseBleLogCache;->fileAppender:Lcom/qianhe/baselib/utils/LogIo$Appender;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkPermissions(Landroid/content/Context;)Z
    .locals 2

    .line 42
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 4

    .line 117
    const-class v0, Lcom/qianhe/baselib/utils/BaseBleLogCache;

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->stackInfo(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/qianhe/baselib/utils/BaseBleLogCache;->dateFormatM:Ljava/text/SimpleDateFormat;

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

    .line 119
    const-string v0, "XWQ"

    nop

    nop

    nop

    return-void
.end method

.method public static deleteFolderFile(Ljava/lang/String;Z)Z
    .locals 5

    .line 93
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 95
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v3, 0x0

    .line 98
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 99
    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/qianhe/baselib/utils/BaseBleLogCache;->deleteFolderFile(Ljava/lang/String;Z)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    .line 102
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    .line 103
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 105
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

    .line 109
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return v1
.end method

.method public static e(Ljava/lang/String;)V
    .locals 4

    .line 139
    const-class v0, Lcom/qianhe/baselib/utils/BaseBleLogCache;

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->stackInfo(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/qianhe/baselib/utils/BaseBleLogCache;->dateFormatM:Ljava/text/SimpleDateFormat;

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

    .line 141
    const-string v0, "XWQ"

    nop

    nop

    nop

    .line 142
    invoke-static {p0}, Lcom/qianhe/baselib/utils/BaseBleLogCache;->writeToFile(Ljava/lang/String;)V

    return-void
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .locals 5

    const-wide/16 v0, 0x0

    .line 73
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v2, 0x0

    .line 75
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 76
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/qianhe/baselib/utils/BaseBleLogCache;->getFolderSize(Ljava/io/File;)J

    move-result-wide v3

    :goto_1
    add-long/2addr v0, v3

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    .line 77
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

    .line 81
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-wide v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 4

    .line 125
    const-class v0, Lcom/qianhe/baselib/utils/BaseBleLogCache;

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->stackInfo(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/qianhe/baselib/utils/BaseBleLogCache;->dateFormatM:Ljava/text/SimpleDateFormat;

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

    .line 127
    const-string v0, "XWQ"

    nop

    nop

    nop

    .line 128
    invoke-static {p0}, Lcom/qianhe/baselib/utils/BaseBleLogCache;->writeToFile(Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 53
    sput-object p0, Lcom/qianhe/baselib/utils/BaseBleLogCache;->context:Landroid/content/Context;

    .line 54
    sget-boolean v0, Lcom/qianhe/baselib/utils/BaseBleLogCache;->init:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 55
    sput-boolean v0, Lcom/qianhe/baselib/utils/BaseBleLogCache;->init:Z

    .line 56
    const-string v0, "base-ble-log"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogIo;->newSingleWriter(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/qianhe/baselib/utils/BaseBleLogCache;->executors:Ljava/util/concurrent/ExecutorService;

    .line 57
    invoke-static {p0}, Lcom/qianhe/baselib/utils/FileUtil;->mkBaseBLueLogFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/qianhe/baselib/utils/BaseBleLogCache;->fileName:Ljava/lang/String;

    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 59
    const-string p0, "blePath == null \uff0c\u672a\u521d\u59cb\u5316BaseBleLogCache"

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static isInit()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/qianhe/baselib/utils/BaseBleLogCache;->init:Z

    return v0
.end method

.method public static w(Ljava/lang/String;)V
    .locals 4

    .line 132
    const-class v0, Lcom/qianhe/baselib/utils/BaseBleLogCache;

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->stackInfo(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/qianhe/baselib/utils/BaseBleLogCache;->dateFormatM:Ljava/text/SimpleDateFormat;

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

    .line 134
    const-string v0, "XWQ"

    nop

    nop

    nop

    .line 135
    invoke-static {p0}, Lcom/qianhe/baselib/utils/BaseBleLogCache;->writeToFile(Ljava/lang/String;)V

    return-void
.end method

.method public static writeToFile(Ljava/lang/String;)V
    .locals 2

    .line 151
    sget-object v0, Lcom/qianhe/baselib/utils/BaseBleLogCache;->executors:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/qianhe/baselib/utils/BaseBleLogCache;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/utils/BaseBleLogCache;->executors:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qianhe/baselib/utils/BaseBleLogCache$1;

    invoke-direct {v1, p0}, Lcom/qianhe/baselib/utils/BaseBleLogCache$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/qianhe/baselib/utils/LogIo;->execute(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
