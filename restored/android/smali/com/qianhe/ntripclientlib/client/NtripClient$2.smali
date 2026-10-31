.class Lcom/qianhe/ntripclientlib/client/NtripClient$2;
.super Ljava/lang/Object;
.source "NtripClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/ntripclientlib/client/NtripClient;->getMountPoints(Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

.field final synthetic val$config:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;


# direct methods
.method constructor <init>(Lcom/qianhe/ntripclientlib/client/NtripClient;Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$2;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    iput-object p2, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$2;->val$config:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 220
    :try_start_0
    iget-object v2, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$2;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    invoke-static {v2, v3}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$fputmSocket(Lcom/qianhe/ntripclientlib/client/NtripClient;Ljava/net/Socket;)V

    .line 221
    iget-object v2, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$2;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-static {v2}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$fgetmSocket(Lcom/qianhe/ntripclientlib/client/NtripClient;)Ljava/net/Socket;

    move-result-object v2

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$2;->val$config:Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    iget-object v5, v4, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    iget v4, v4, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    invoke-direct {v3, v5, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 222
    iget-object v2, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$2;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-static {v2}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$fgetmSocket(Lcom/qianhe/ntripclientlib/client/NtripClient;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$fputmOutputStream(Lcom/qianhe/ntripclientlib/client/NtripClient;Ljava/io/OutputStream;)V

    .line 223
    iget-object v2, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$2;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$2;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-static {v5}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$fgetmSocket(Lcom/qianhe/ntripclientlib/client/NtripClient;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v2, v3}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$fputbufferedReader(Lcom/qianhe/ntripclientlib/client/NtripClient;Ljava/io/BufferedReader;)V

    .line 224
    iget-object v2, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$2;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-static {v2}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$fgetmOutputStream(Lcom/qianhe/ntripclientlib/client/NtripClient;)Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$2;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-static {v3, v1}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$mbuildParam(Lcom/qianhe/ntripclientlib/client/NtripClient;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 225
    iget-object v2, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$2;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-static {v2}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$fgetmOutputStream(Lcom/qianhe/ntripclientlib/client/NtripClient;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 228
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$2;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-static {v2}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$fgetbufferedReader(Lcom/qianhe/ntripclientlib/client/NtripClient;)Ljava/io/BufferedReader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 229
    const-string v3, "STR;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "CAS;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "NET;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    .line 230
    :cond_1
    :goto_1
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 231
    array-length v3, v2

    if-le v3, v1, :cond_0

    .line 232
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6302\u8f7d\u70b9\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/ntripclientlib/event/MountPointsEvent;

    invoke-direct {v3, v0}, Lcom/qianhe/ntripclientlib/event/MountPointsEvent;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$2;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-static {v0}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$fgetmSocket(Lcom/qianhe/ntripclientlib/client/NtripClient;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 240
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 241
    new-instance v2, Lcom/qianhe/ntripclientlib/bean/AuthResult;

    const-wide/16 v3, 0x0

    const-string/jumbo v5, "\u57df\u540d\u6216\u7aef\u53e3\u9519\u8bef"

    const/4 v6, 0x0

    invoke-direct {v2, v6, v3, v4, v5}, Lcom/qianhe/ntripclientlib/bean/AuthResult;-><init>(IJLjava/lang/String;)V

    .line 242
    invoke-virtual {v2, v1}, Lcom/qianhe/ntripclientlib/bean/AuthResult;->setIsInit(Z)V

    .line 243
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMountPoints\u5f02\u5e38\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method
