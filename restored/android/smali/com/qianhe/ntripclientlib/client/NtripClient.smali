.class public Lcom/qianhe/ntripclientlib/client/NtripClient;
.super Ljava/lang/Object;
.source "NtripClient.java"

# interfaces
.implements Lcom/qianhe/ntripclientlib/base/DiffClientImpl;


# instance fields
.field private authSuccess:Z

.field private bufferedReader:Ljava/io/BufferedReader;

.field private connectSuccess:Z

.field private executorRead:Ljava/util/concurrent/ExecutorService;

.field private inputStream:Ljava/io/InputStream;

.field private mConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

.field private mContext:Landroid/content/Context;

.field private mGGA:Ljava/lang/String;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mSocket:Ljava/net/Socket;

.field private mTimer:Ljava/util/Timer;

.field private final mTimerTask:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/TimerTask;",
            ">;"
        }
    .end annotation
.end field

.field private timerCount:J


# direct methods
.method public static synthetic $r8$lambda$1TXQ4MTcyzHCr3H6znzw6egMA90(Lcom/qianhe/ntripclientlib/client/NtripClient;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->inputStream:Ljava/io/InputStream;

    const/16 v0, 0x400

    .line 179
    new-array v0, v0, [B

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 183
    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 184
    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    invoke-direct {v2, v1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>([B)V

    .line 185
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 189
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Socket closed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readData()\u5f02\u5e38 - >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbufferedReader(Lcom/qianhe/ntripclientlib/client/NtripClient;)Ljava/io/BufferedReader;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->bufferedReader:Ljava/io/BufferedReader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetconnectSuccess(Lcom/qianhe/ntripclientlib/client/NtripClient;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->connectSuccess:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfig(Lcom/qianhe/ntripclientlib/client/NtripClient;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGGA(Lcom/qianhe/ntripclientlib/client/NtripClient;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mGGA:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOutputStream(Lcom/qianhe/ntripclientlib/client/NtripClient;)Ljava/io/OutputStream;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mOutputStream:Ljava/io/OutputStream;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSocket(Lcom/qianhe/ntripclientlib/client/NtripClient;)Ljava/net/Socket;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mSocket:Ljava/net/Socket;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettimerCount(Lcom/qianhe/ntripclientlib/client/NtripClient;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->timerCount:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputbufferedReader(Lcom/qianhe/ntripclientlib/client/NtripClient;Ljava/io/BufferedReader;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->bufferedReader:Ljava/io/BufferedReader;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOutputStream(Lcom/qianhe/ntripclientlib/client/NtripClient;Ljava/io/OutputStream;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mOutputStream:Ljava/io/OutputStream;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSocket(Lcom/qianhe/ntripclientlib/client/NtripClient;Ljava/net/Socket;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mSocket:Ljava/net/Socket;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtimerCount(Lcom/qianhe/ntripclientlib/client/NtripClient;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->timerCount:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuildParam(Lcom/qianhe/ntripclientlib/client/NtripClient;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/ntripclientlib/client/NtripClient;->buildParam(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartConnectNtrip(Lcom/qianhe/ntripclientlib/client/NtripClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/ntripclientlib/client/NtripClient;->startConnectNtrip()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteData(Lcom/qianhe/ntripclientlib/client/NtripClient;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/ntripclientlib/client/NtripClient;->writeData(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mTimerTask:Ljava/util/concurrent/atomic/AtomicReference;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->timerCount:J

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->connectSuccess:Z

    iput-boolean v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->authSuccess:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;Ljava/lang/String;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mTimerTask:Ljava/util/concurrent/atomic/AtomicReference;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->timerCount:J

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->connectSuccess:Z

    iput-boolean v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->authSuccess:Z

    .line 51
    iput-object p1, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    .line 54
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, p3}, Lcom/qianhe/ntripclientlib/client/NtripClient;->updateGgaData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private buildParam(I)Ljava/lang/String;
    .locals 5

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v2, v2, Lcom/qianhe/baselib/base/BaseConfig;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v3, v3, Lcom/qianhe/baselib/base/BaseConfig;->password:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET /"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseConfig;->mount_point:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " HTTP/1.1\r\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Host: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v3, v3, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget v2, v2, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authorization: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "User-Agent: NTRIP 1.00.250708.DecoderGNSS.G992F732000000129502\r\n"

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isConnected()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->connectSuccess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->authSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private readData()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mSocket:Ljava/net/Socket;

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->executorRead:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->executorRead:Ljava/util/concurrent/ExecutorService;

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->executorRead:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qianhe/ntripclientlib/client/NtripClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/ntripclientlib/client/NtripClient$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/ntripclientlib/client/NtripClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private startConnectNtrip()V
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 108
    :try_start_0
    iput-boolean v2, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->connectSuccess:Z

    .line 109
    iput-boolean v2, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->authSuccess:Z

    .line 110
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    iput-object v3, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mSocket:Ljava/net/Socket;

    .line 111
    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v6, v5, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    iget v5, v5, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    invoke-direct {v4, v6, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 112
    iget-object v3, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mOutputStream:Ljava/io/OutputStream;

    .line 113
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v3, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->bufferedReader:Ljava/io/BufferedReader;

    .line 114
    iget-object v3, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mOutputStream:Ljava/io/OutputStream;

    invoke-direct {p0, v2}, Lcom/qianhe/ntripclientlib/client/NtripClient;->buildParam(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 115
    iget-object v3, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    const/4 v3, 0x1

    .line 116
    iput-boolean v3, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->connectSuccess:Z

    .line 117
    iget-object v4, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "response\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    .line 119
    const-string v5, "OK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ntrip\u8ba4\u8bc1\u6210\u529f\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u2014\u2014> "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v4, v4, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget v4, v4, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 121
    iput-boolean v3, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->authSuccess:Z

    .line 122
    iget-object v4, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mGGA:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/qianhe/ntripclientlib/client/NtripClient;->writeData(Ljava/lang/String;)V

    .line 123
    new-instance v4, Lcom/qianhe/ntripclientlib/bean/AuthResult;

    invoke-direct {v4, v3}, Lcom/qianhe/ntripclientlib/bean/AuthResult;-><init>(I)V

    .line 124
    iget-object v5, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-boolean v5, v5, Lcom/qianhe/baselib/base/BaseConfig;->isInit:Z

    invoke-virtual {v4, v5}, Lcom/qianhe/ntripclientlib/bean/AuthResult;->setIsInit(Z)V

    .line 125
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 126
    iget-object v4, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    invoke-virtual {v4, v3}, Lcom/qianhe/baselib/base/BaseConfig;->setIsInit(Z)V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    .line 128
    :cond_0
    new-instance v5, Lcom/qianhe/ntripclientlib/bean/AuthResult;

    invoke-direct {v5, v2, v0, v1, v4}, Lcom/qianhe/ntripclientlib/bean/AuthResult;-><init>(IJLjava/lang/String;)V

    .line 129
    iget-object v6, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-boolean v6, v6, Lcom/qianhe/baselib/base/BaseConfig;->isInit:Z

    invoke-virtual {v5, v6}, Lcom/qianhe/ntripclientlib/bean/AuthResult;->setIsInit(Z)V

    .line 130
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ntrip\u8ba4\u8bc1\u5931\u8d25\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u2014\u2014>"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    invoke-virtual {v4}, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 132
    iget-object v4, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    invoke-virtual {v4, v3}, Lcom/qianhe/baselib/base/BaseConfig;->setIsInit(Z)V

    .line 134
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/ntripclientlib/client/NtripClient;->readData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 136
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    iget-boolean v4, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->connectSuccess:Z

    const-string v5, "BaseConfig = null"

    if-nez v4, :cond_2

    .line 138
    new-instance v4, Lcom/qianhe/ntripclientlib/bean/AuthResult;

    const-string/jumbo v6, "\u57df\u540d\u6216\u7aef\u53e3\u9519\u8bef"

    invoke-direct {v4, v2, v0, v1, v6}, Lcom/qianhe/ntripclientlib/bean/AuthResult;-><init>(IJLjava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-boolean v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->isInit:Z

    invoke-virtual {v4, v0}, Lcom/qianhe/ntripclientlib/bean/AuthResult;->setIsInit(Z)V

    .line 140
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ntrip\u8fde\u63a5\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-static {v5}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 143
    :cond_2
    iget-boolean v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->authSuccess:Z

    if-nez v0, :cond_4

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ntrip\u8ba4\u8bc1\u5f02\u5e38 \u2014\u2014> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-static {v5}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 147
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startConnectNtrip()\u5f02\u5e38 \u2014\u2014> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 149
    :goto_2
    invoke-virtual {p0}, Lcom/qianhe/ntripclientlib/client/NtripClient;->disconnect()V

    return-void
.end method

.method private writeData(Ljava/lang/String;)V
    .locals 3

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/qianhe/ntripclientlib/client/NtripClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mOutputStream:Ljava/io/OutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 95
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===========NtripClient -> updateGGA() ============"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 98
    :cond_1
    const-string p1, "sendGGA\uff1asocket\u672a\u8fde\u63a5"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 101
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateGGA\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->connectSuccess:Z

    :goto_1
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 8

    .line 60
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mTimer:Ljava/util/Timer;

    .line 62
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mTimerTask:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/qianhe/ntripclientlib/client/NtripClient$1;

    invoke-direct {v1, p0}, Lcom/qianhe/ntripclientlib/client/NtripClient$1;-><init>(Lcom/qianhe/ntripclientlib/client/NtripClient;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 80
    iget-object v2, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mTimerTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/TimerTask;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void

    .line 82
    :cond_0
    const-string v0, "connect() \u2014\u2014> mTimer != null || mConfig == null"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mTimer:Ljava/util/Timer;

    .line 201
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->bufferedReader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->executorRead:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_4
    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->connectSuccess:Z

    .line 206
    iput-boolean v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->authSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 208
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public getMountPoints(Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;)V
    .locals 2

    .line 214
    iput-object p1, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mConfig:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    .line 215
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qianhe/ntripclientlib/client/NtripClient$2;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/ntripclientlib/client/NtripClient$2;-><init>(Lcom/qianhe/ntripclientlib/client/NtripClient;Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 247
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public updateGgaData(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/qianhe/ntripclientlib/client/NtripClient;->mGGA:Ljava/lang/String;

    return-void
.end method
