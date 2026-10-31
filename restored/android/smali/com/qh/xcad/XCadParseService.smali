.class public final Lcom/qh/xcad/XCadParseService;
.super Landroid/app/Service;
.source "XCadParseService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XCadParseService"


# instance fields
.field private final binder:Lcom/qh/xcad/IXCadParseService$Stub;


# direct methods
.method static bridge synthetic -$$Nest$smdoParse(Landroid/content/Context;Ljava/lang/String;)Lcom/qh/xcad/ParseReply;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/qh/xcad/XCadParseService;->doParse(Landroid/content/Context;Ljava/lang/String;)Lcom/qh/xcad/ParseReply;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    new-instance v0, Lcom/qh/xcad/XCadParseService$1;

    invoke-direct {v0, p0}, Lcom/qh/xcad/XCadParseService$1;-><init>(Lcom/qh/xcad/XCadParseService;)V

    iput-object v0, p0, Lcom/qh/xcad/XCadParseService;->binder:Lcom/qh/xcad/IXCadParseService$Stub;

    return-void
.end method

.method private static doParse(Landroid/content/Context;Ljava/lang/String;)Lcom/qh/xcad/ParseReply;
    .locals 7

    .line 37
    const-string v0, "XCadParseService"

    new-instance v1, Lcom/qh/xcad/ParseReply;

    invoke-direct {v1}, Lcom/qh/xcad/ParseReply;-><init>()V

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v3, 0x2

    .line 46
    :try_start_0
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".dxf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    invoke-static {p1}, Lcom/qh/xcad/XCad;->parseDxf(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    invoke-static {p1}, Lcom/qh/xcad/XCad;->parseDwg(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez p1, :cond_3

    .line 60
    iput v2, v1, Lcom/qh/xcad/ParseReply;->status:I

    .line 62
    invoke-static {}, Lcom/qh/xcad/XCad;->getLastError()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "\u89e3\u6790\u5931\u8d25"

    :goto_1
    iput-object p0, v1, Lcom/qh/xcad/ParseReply;->error:Ljava/lang/String;

    return-object v1

    .line 70
    :cond_3
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "xcad-parse-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/qh/xcad/Shm;->toAshmem(Ljava/lang/String;[B)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    .line 73
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ashmem \u4e0d\u53ef\u7528\uff0c\u56de\u9000\u4e34\u65f6\u6587\u4ef6: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/qh/xcad/Shm;->toTempFile(Ljava/io/File;[B)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    :goto_2
    const/4 v0, 0x0

    .line 76
    iput v0, v1, Lcom/qh/xcad/ParseReply;->status:I

    .line 77
    iput-object p0, v1, Lcom/qh/xcad/ParseReply;->pfd:Landroid/os/ParcelFileDescriptor;

    .line 78
    array-length p0, p1

    int-to-long p0, p0

    iput-wide p0, v1, Lcom/qh/xcad/ParseReply;->length:J
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v1

    :catchall_2
    move-exception p0

    .line 85
    iput v2, v1, Lcom/qh/xcad/ParseReply;->status:I

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u7ed3\u679c\u4f20\u8f93\u5931\u8d25: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/qh/xcad/ParseReply;->error:Ljava/lang/String;

    return-object v1

    .line 81
    :catch_0
    iput v3, v1, Lcom/qh/xcad/ParseReply;->status:I

    .line 82
    const-string/jumbo p0, "\u5185\u5b58\u4e0d\u8db3(\u7ed3\u679c\u4f20\u8f93\u9636\u6bb5)"

    iput-object p0, v1, Lcom/qh/xcad/ParseReply;->error:Ljava/lang/String;

    return-object v1

    .line 54
    :goto_3
    iput v2, v1, Lcom/qh/xcad/ParseReply;->status:I

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u89e3\u6790\u5f02\u5e38: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/qh/xcad/ParseReply;->error:Ljava/lang/String;

    return-object v1

    .line 49
    :catch_1
    iput v3, v1, Lcom/qh/xcad/ParseReply;->status:I

    .line 50
    const-string/jumbo p0, "\u5185\u5b58\u4e0d\u8db3(native \u89e3\u6790\u9636\u6bb5)"

    iput-object p0, v1, Lcom/qh/xcad/ParseReply;->error:Ljava/lang/String;

    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OOM during native parse: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    return-object v1

    .line 39
    :cond_4
    :goto_4
    iput v2, v1, Lcom/qh/xcad/ParseReply;->status:I

    .line 40
    const-string/jumbo p0, "\u7a7a\u8def\u5f84"

    iput-object p0, v1, Lcom/qh/xcad/ParseReply;->error:Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/qh/xcad/XCadParseService;->binder:Lcom/qh/xcad/IXCadParseService$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 93
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x0

    .line 96
    :try_start_0
    invoke-static {v0}, Lcom/qh/xcad/XCad;->setupLogger(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 108
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 111
    const-string v0, "XCadParseService"

    const-string v1, ":parse \u9000\u51fa\u4ee5\u91ca\u653e\u5730\u5740\u7a7a\u95f4(\u4e0b\u6b21\u89e3\u6790\u5168\u65b0\u8fdb\u7a0b)"

    nop

    nop

    nop

    .line 112
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
