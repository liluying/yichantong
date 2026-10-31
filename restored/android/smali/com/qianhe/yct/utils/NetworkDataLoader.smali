.class public Lcom/qianhe/yct/utils/NetworkDataLoader;
.super Ljava/lang/Object;
.source "NetworkDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;,
        Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressResponseBody;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/qianhe/yct/utils/NetworkDataLoader; = null

.field private static URL:Ljava/lang/String; = "https://dinfo.wanknox.com/api/request"


# instance fields
.field private apkDownloadCall:Lokhttp3/Call;

.field private failCount:I

.field private fmwDownloadCall:Lokhttp3/Call;

.field private fmwListCall:Lokhttp3/Call;

.field private final mClient:Lokhttp3/OkHttpClient;

.field private final mSp:Landroid/content/SharedPreferences;

.field private requestApkList:Z

.field private startDownLoad:Z


# direct methods
.method public static synthetic $r8$lambda$A1SRyj5l-2WEQinj20tg3YvZGNw(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    .line 161
    const-string v1, "OkHttp"

    invoke-static {v0, v1, p0}, Lcom/qianhe/baselib/utils/LogToFile;->logcat(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetapkDownloadCall(Lcom/qianhe/yct/utils/NetworkDataLoader;)Lokhttp3/Call;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->apkDownloadCall:Lokhttp3/Call;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->failCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSp(Lcom/qianhe/yct/utils/NetworkDataLoader;)Landroid/content/SharedPreferences;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->mSp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstartDownLoad(Lcom/qianhe/yct/utils/NetworkDataLoader;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->startDownLoad:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputapkDownloadCall(Lcom/qianhe/yct/utils/NetworkDataLoader;Lokhttp3/Call;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->apkDownloadCall:Lokhttp3/Call;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfailCount(Lcom/qianhe/yct/utils/NetworkDataLoader;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->failCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrequestApkList(Lcom/qianhe/yct/utils/NetworkDataLoader;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->requestApkList:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartDownLoad(Lcom/qianhe/yct/utils/NetworkDataLoader;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->startDownLoad:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    const-string/jumbo v1, "sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->mSp:Landroid/content/SharedPreferences;

    .line 105
    invoke-static {}, Lcom/qianhe/yct/utils/ServerEnvHelper;->isTestEnv()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getUnsafeOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->mClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private buildRequestBody(IILjava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 732
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 733
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 734
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v3, "task"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "task_num"

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo v0, "timestamp"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    invoke-interface {v2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 738
    invoke-direct {p0, v2}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getSha256(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 739
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 741
    :try_start_0
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 742
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 743
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 744
    const-string/jumbo p2, "sign"

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 745
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 746
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 747
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 749
    :cond_0
    const-string p2, "req_param"

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 751
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static declared-synchronized getInstance()Lcom/qianhe/yct/utils/NetworkDataLoader;
    .locals 3

    const-class v0, Lcom/qianhe/yct/utils/NetworkDataLoader;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lcom/qianhe/yct/utils/NetworkDataLoader;->INSTANCE:Lcom/qianhe/yct/utils/NetworkDataLoader;

    if-nez v1, :cond_0

    .line 83
    const-string v1, "https://dinfo.wanknox.com/api/request"

    invoke-static {v1}, Lcom/qianhe/yct/utils/ServerEnvHelper;->resolveApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/qianhe/yct/utils/NetworkDataLoader;->URL:Ljava/lang/String;

    .line 84
    new-instance v1, Lcom/qianhe/yct/utils/NetworkDataLoader;

    invoke-direct {v1}, Lcom/qianhe/yct/utils/NetworkDataLoader;-><init>()V

    sput-object v1, Lcom/qianhe/yct/utils/NetworkDataLoader;->INSTANCE:Lcom/qianhe/yct/utils/NetworkDataLoader;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/qianhe/yct/utils/NetworkDataLoader;->URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 87
    :cond_0
    :goto_0
    sget-object v1, Lcom/qianhe/yct/utils/NetworkDataLoader;->INSTANCE:Lcom/qianhe/yct/utils/NetworkDataLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getSha256(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 759
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 760
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 764
    :cond_0
    :try_start_0
    const-string p1, "SHA-256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 765
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 768
    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    .line 769
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 770
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v1, :cond_1

    const/16 v5, 0x30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    .line 771
    :cond_1
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 773
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 775
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSha256\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 776
    const-string p1, ""

    return-object p1
.end method

.method public static getUnsafeOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 5

    const/4 v0, 0x0

    .line 115
    :try_start_0
    new-instance v1, Lcom/qianhe/yct/utils/NetworkDataLoader$1;

    invoke-direct {v1}, Lcom/qianhe/yct/utils/NetworkDataLoader$1;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    aput-object v1, v2, v0

    .line 139
    const-string v1, "SSL"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 140
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 143
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 146
    new-instance v3, Lcom/qianhe/yct/utils/NetworkDataLoader$2;

    invoke-direct {v3}, Lcom/qianhe/yct/utils/NetworkDataLoader$2;-><init>()V

    .line 154
    new-instance v4, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v4}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 156
    aget-object v0, v2, v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v4, v1, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 157
    invoke-virtual {v4, v3}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 160
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    new-instance v1, Lcom/qianhe/yct/utils/NetworkDataLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/qianhe/yct/utils/NetworkDataLoader$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 162
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 163
    invoke-virtual {v4, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 166
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v4, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 167
    invoke-virtual {v4, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 168
    invoke-virtual {v4, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 170
    invoke-virtual {v4}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u521b\u5efa\u5ffd\u7565SSL\u7684OkHttpClient\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public cancelDownload()V
    .locals 1

    const/4 v0, 0x0

    .line 726
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->startDownLoad:Z

    .line 727
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->apkDownloadCall:Lokhttp3/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->fmwDownloadCall:Lokhttp3/Call;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_1
    return-void
.end method

.method public cancelRequest()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->fmwDownloadCall:Lokhttp3/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->fmwListCall:Lokhttp3/Call;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 93
    sput-object v0, Lcom/qianhe/yct/utils/NetworkDataLoader;->INSTANCE:Lcom/qianhe/yct/utils/NetworkDataLoader;

    return-void
.end method

.method public downloadApkWithProgress(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;)V
    .locals 2

    .line 684
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qianhe/yct/utils/NetworkDataLoader$10;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/qianhe/yct/utils/NetworkDataLoader$10;-><init>(Lcom/qianhe/yct/utils/NetworkDataLoader;Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 722
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public downloadFirmwareWithProgress(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;)V
    .locals 2

    .line 481
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 483
    :try_start_0
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->startDownLoad:Z

    .line 484
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 485
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 486
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->fmwDownloadCall:Lokhttp3/Call;

    .line 487
    new-instance v0, Lcom/qianhe/yct/utils/NetworkDataLoader$7;

    invoke-direct {v0, p0, p3, p2}, Lcom/qianhe/yct/utils/NetworkDataLoader$7;-><init>(Lcom/qianhe/yct/utils/NetworkDataLoader;Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 514
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 515
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u4e0b\u8f7d\u56fa\u4ef6\u5931\u8d25\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 516
    iget-boolean p1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->startDownLoad:Z

    if-eqz p1, :cond_1

    invoke-interface {p3}, Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;->onError()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getApkDownloadUrl(ILcom/qianhe/yct/utils/AppUpgrader$OnDownloadInfoResponseListioner;)V
    .locals 4

    .line 613
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "deviceSn"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 615
    const-string/jumbo v2, "sn"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "apk_id"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2faa

    const/16 v2, 0xd

    .line 617
    invoke-direct {p0, v0, v2, v1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->buildRequestBody(IILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 619
    :try_start_0
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 620
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v3, Lcom/qianhe/yct/utils/NetworkDataLoader;->URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f00\u59cb\u8bf7\u6c42 apk\u4e0b\u8f7d\u5730\u5740\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/utils/NetworkDataLoader$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/qianhe/yct/utils/NetworkDataLoader$9;-><init>(Lcom/qianhe/yct/utils/NetworkDataLoader;ILcom/qianhe/yct/utils/AppUpgrader$OnDownloadInfoResponseListioner;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 674
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApkDownloadUrl()\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 676
    new-instance v0, Lcom/qianhe/yct/event/ApkDownloadUrlResponse;

    invoke-direct {v0}, Lcom/qianhe/yct/event/ApkDownloadUrlResponse;-><init>()V

    .line 677
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/qianhe/yct/event/ApkDownloadUrlResponse;->err_msg:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 679
    invoke-interface {p2, v0}, Lcom/qianhe/yct/utils/AppUpgrader$OnDownloadInfoResponseListioner;->onDownloadInfo(Lcom/qianhe/yct/event/ApkDownloadUrlResponse;)V

    :cond_0
    return-void
.end method

.method public getApkList(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/utils/AppUpgrader$OnCheckResponseListioner;)V
    .locals 10

    .line 521
    iget-boolean v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->requestApkList:Z

    if-eqz v0, :cond_0

    move-object v4, p0

    goto/16 :goto_3

    .line 522
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->cancelRequest()V

    const/4 v0, 0x1

    .line 523
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->requestApkList:Z

    .line 524
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "deviceSn"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 533
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "sn"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    :cond_1
    const-string v0, "pkg_name"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string/jumbo v0, "version"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "arm64-v8a"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v3, "armeabi-v7"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v3, "armeabi"

    :goto_0
    const-string v0, "abi"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2faa

    const/16 v2, 0xb

    .line 537
    invoke-direct {p0, v0, v2, v1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->buildRequestBody(IILjava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 539
    :try_start_0
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v8, v0}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v9

    .line 540
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v1, Lcom/qianhe/yct/utils/NetworkDataLoader;->URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5f00\u59cb\u8bf7\u6c42 apk\u66f4\u65b0\u5217\u8868\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v3, Lcom/qianhe/yct/utils/NetworkDataLoader$8;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    :try_start_1
    invoke-direct/range {v3 .. v9}, Lcom/qianhe/yct/utils/NetworkDataLoader$8;-><init>(Lcom/qianhe/yct/utils/NetworkDataLoader;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/utils/AppUpgrader$OnCheckResponseListioner;Ljava/lang/String;Lokhttp3/RequestBody;)V

    invoke-interface {v0, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, p0

    move-object v7, p3

    goto :goto_1

    .line 602
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p2, 0x0

    .line 603
    iput-boolean p2, v4, Lcom/qianhe/yct/utils/NetworkDataLoader;->requestApkList:Z

    .line 604
    new-instance p2, Lcom/qianhe/yct/event/ApkListResponse;

    invoke-direct {p2}, Lcom/qianhe/yct/event/ApkListResponse;-><init>()V

    const/4 p3, -0x1

    .line 605
    iput p3, p2, Lcom/qianhe/yct/event/ApkListResponse;->state:I

    .line 606
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/qianhe/yct/event/ApkListResponse;->err_msg:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 607
    invoke-interface {v7, p2}, Lcom/qianhe/yct/utils/AppUpgrader$OnCheckResponseListioner;->onError(Lcom/qianhe/yct/event/ApkListResponse;)V

    .line 608
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getApkList()\u5f02\u5e38\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public getDealerList()V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "deviceSn"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 256
    const-string/jumbo v2, "sn"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2faa

    const/4 v2, 0x1

    .line 257
    invoke-direct {p0, v0, v2, v1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->buildRequestBody(IILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 259
    :try_start_0
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 260
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v2, Lcom/qianhe/yct/utils/NetworkDataLoader;->URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 261
    const-string/jumbo v1, "\u5f00\u59cb\u8bf7\u6c42 getDealerList()"

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/utils/NetworkDataLoader$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/utils/NetworkDataLoader$4;-><init>(Lcom/qianhe/yct/utils/NetworkDataLoader;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDealerList()\u5f02\u5e38\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public getFirmwareDownloadUrl(ILcom/qianhe/baselib/enums/DeviceType;)V
    .locals 4

    .line 410
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v1, ""

    if-ne p2, v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "base_deviceSn"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "deviceSn"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 416
    const-string/jumbo v2, "sn"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "fmw_id"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2faa

    const/4 v2, 0x7

    .line 418
    invoke-direct {p0, v0, v2, v1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->buildRequestBody(IILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 420
    :try_start_0
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 421
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v3, Lcom/qianhe/yct/utils/NetworkDataLoader;->URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f00\u59cb\u8bf7\u6c42 getFirmwareDownloadUrl()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/utils/NetworkDataLoader$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/qianhe/yct/utils/NetworkDataLoader$6;-><init>(Lcom/qianhe/yct/utils/NetworkDataLoader;ILcom/qianhe/baselib/enums/DeviceType;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 475
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 476
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFirmwareDownloadUrl()\u5f02\u5e38\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public getFirmwareList(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    .line 319
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v1, ""

    if-ne p1, v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "base_deviceSn"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "deviceSn"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    new-instance p1, Lcom/qianhe/yct/event/FirmwareResponse;

    invoke-direct {p1}, Lcom/qianhe/yct/event/FirmwareResponse;-><init>()V

    .line 326
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p2

    sget p3, Lcom/qianhe/yct/R$string;->deviceSn_empty:I

    invoke-static {p2, p3}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/qianhe/yct/event/FirmwareResponse;->err_msg:Ljava/lang/String;

    .line 327
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 330
    :cond_1
    invoke-virtual {p1}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    const/4 v1, 0x0

    .line 331
    iput v1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->failCount:I

    .line 332
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->fmwListCall:Lokhttp3/Call;

    if-eqz v1, :cond_2

    .line 333
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    const/4 v1, 0x0

    .line 334
    iput-object v1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->fmwListCall:Lokhttp3/Call;

    .line 336
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 337
    const-string/jumbo v2, "sn"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v0, "pn_list"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string/jumbo v0, "version_list"

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "unpacked_fmw"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2faa

    const/4 v2, 0x5

    .line 341
    invoke-direct {p0, v0, v2, v1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->buildRequestBody(IILjava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 343
    :try_start_0
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v9, v0}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 344
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v2, Lcom/qianhe/yct/utils/NetworkDataLoader;->URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5f00\u59cb\u8bf7\u6c42 getFirmwareList()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->fmwListCall:Lokhttp3/Call;

    .line 347
    new-instance v3, Lcom/qianhe/yct/utils/NetworkDataLoader$5;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/qianhe/yct/utils/NetworkDataLoader$5;-><init>(Lcom/qianhe/yct/utils/NetworkDataLoader;Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v0, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 403
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 404
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getFirmwareList()\u5f02\u5e38\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public getRegisterInfo(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V
    .locals 4

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 181
    const-string/jumbo v1, "sn"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2faa

    const/4 v2, 0x3

    .line 182
    invoke-direct {p0, v1, v2, v0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->buildRequestBody(IILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 184
    :try_start_0
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 185
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v3, Lcom/qianhe/yct/utils/NetworkDataLoader;->URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f00\u59cb\u8bf7\u6c42 \u6ce8\u518c\u7801\u4fe1\u606f "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/utils/NetworkDataLoader$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/qianhe/yct/utils/NetworkDataLoader$3;-><init>(Lcom/qianhe/yct/utils/NetworkDataLoader;Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 248
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 249
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRegisterInfo()\u5f02\u5e38\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public resetFmwListRequestState()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->fmwListCall:Lokhttp3/Call;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->fmwListCall:Lokhttp3/Call;

    :cond_0
    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/qianhe/yct/utils/NetworkDataLoader;->failCount:I

    return-void
.end method
