.class public abstract Lcom/qianhe/baselib/utils/NetworkChecker;
.super Ljava/lang/Object;
.source "NetworkChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/baselib/utils/NetworkChecker$NetworkCheckCallback;
    }
.end annotation


# static fields
.field private static executor:Ljava/util/concurrent/ExecutorService;

.field private static volatile sProbeClient:Lokhttp3/OkHttpClient;


# direct methods
.method static bridge synthetic -$$Nest$smisInternetAvailable(Landroid/content/Context;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/qianhe/baselib/utils/NetworkChecker;->isInternetAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 23
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/qianhe/baselib/utils/NetworkChecker;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static checkNetworkAsync(Landroid/content/Context;Lcom/qianhe/baselib/utils/NetworkChecker$NetworkCheckCallback;)V
    .locals 2

    .line 31
    sget-object v0, Lcom/qianhe/baselib/utils/NetworkChecker;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/qianhe/baselib/utils/NetworkChecker;->executor:Ljava/util/concurrent/ExecutorService;

    .line 32
    :cond_1
    sget-object v0, Lcom/qianhe/baselib/utils/NetworkChecker;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qianhe/baselib/utils/NetworkChecker$1;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/baselib/utils/NetworkChecker$1;-><init>(Landroid/content/Context;Lcom/qianhe/baselib/utils/NetworkChecker$NetworkCheckCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static isBusinessServerReachable()Z
    .locals 10

    .line 82
    const-string v0, "ms, "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 83
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    const-string v4, "https://yct-ctrl.xfix-gnss.com/"

    .line 84
    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 90
    :try_start_0
    invoke-static {}, Lcom/qianhe/baselib/utils/NetworkChecker;->probeClient()Lokhttp3/OkHttpClient;

    move-result-object v6

    invoke-virtual {v6, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v5

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-long/2addr v6, v1

    .line 93
    const-string v3, "ms"

    if-eqz v5, :cond_0

    .line 94
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u7f51\u7edc\u63a2\u6d4b\u6210\u529f: code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lokhttp3/Response;->code()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", cost="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    .line 109
    :try_start_2
    invoke-virtual {v5}, Lokhttp3/Response;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return v0

    :catchall_1
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    .line 97
    :cond_0
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u7f51\u7edc\u63a2\u6d4b\u5931\u8d25: response=null, cost="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_1

    .line 109
    :try_start_4
    invoke-virtual {v5}, Lokhttp3/Response;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :cond_1
    return v4

    .line 104
    :goto_0
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u7f51\u7edc\u63a2\u6d4b\u5f02\u5e38: cost="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v5, :cond_2

    .line 109
    :try_start_6
    invoke-virtual {v5}, Lokhttp3/Response;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    :cond_2
    return v4

    :catchall_4
    move-exception v0

    goto :goto_2

    .line 100
    :goto_1
    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u7f51\u7edc\u63a2\u6d4b\u5931\u8d25: cost="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v5, :cond_3

    .line 109
    :try_start_8
    invoke-virtual {v5}, Lokhttp3/Response;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    :cond_3
    return v4

    :goto_2
    if-eqz v5, :cond_4

    :try_start_9
    invoke-virtual {v5}, Lokhttp3/Response;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 113
    :catchall_6
    :cond_4
    throw v0
.end method

.method private static isInternetAvailable(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 48
    :cond_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_1

    .line 50
    const-string/jumbo p0, "\u7f51\u7edc\u63a2\u6d4b\u5931\u8d25: ConnectivityManager=null"

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return v0

    .line 53
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 54
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 59
    :cond_2
    invoke-static {}, Lcom/qianhe/baselib/utils/NetworkChecker;->isBusinessServerReachable()Z

    move-result p0

    return p0

    .line 55
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u7f51\u7edc\u63a2\u6d4b\u5931\u8d25: \u65e0\u5df2\u8fde\u63a5\u7f51\u7edc, info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return v0
.end method

.method private static probeClient()Lokhttp3/OkHttpClient;
    .locals 5

    .line 63
    sget-object v0, Lcom/qianhe/baselib/utils/NetworkChecker;->sProbeClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1

    .line 64
    const-class v0, Lcom/qianhe/baselib/utils/NetworkChecker;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/qianhe/baselib/utils/NetworkChecker;->sProbeClient:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x8

    .line 68
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 69
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 70
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 71
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 72
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 73
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    sput-object v1, Lcom/qianhe/baselib/utils/NetworkChecker;->sProbeClient:Lokhttp3/OkHttpClient;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 76
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 78
    :cond_1
    :goto_2
    sget-object v0, Lcom/qianhe/baselib/utils/NetworkChecker;->sProbeClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static release()V
    .locals 2

    .line 117
    sget-object v0, Lcom/qianhe/baselib/utils/NetworkChecker;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    .line 118
    sput-object v0, Lcom/qianhe/baselib/utils/NetworkChecker;->executor:Ljava/util/concurrent/ExecutorService;

    .line 119
    sget-object v1, Lcom/qianhe/baselib/utils/NetworkChecker;->sProbeClient:Lokhttp3/OkHttpClient;

    .line 120
    sput-object v0, Lcom/qianhe/baselib/utils/NetworkChecker;->sProbeClient:Lokhttp3/OkHttpClient;

    if-eqz v1, :cond_0

    .line 123
    :try_start_0
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 124
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
