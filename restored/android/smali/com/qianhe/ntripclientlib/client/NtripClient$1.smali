.class Lcom/qianhe/ntripclientlib/client/NtripClient$1;
.super Ljava/util/TimerTask;
.source "NtripClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/ntripclientlib/client/NtripClient;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;


# direct methods
.method constructor <init>(Lcom/qianhe/ntripclientlib/client/NtripClient;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-static {v0}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$fgettimerCount(Lcom/qianhe/ntripclientlib/client/NtripClient;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 66
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-static {v0}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$mstartConnectNtrip(Lcom/qianhe/ntripclientlib/client/NtripClient;)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-static {v0}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$fgettimerCount(Lcom/qianhe/ntripclientlib/client/NtripClient;)J

    move-result-wide v0

    const-wide/16 v4, 0x3

    rem-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 68
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-static {v0}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$fgetmSocket(Lcom/qianhe/ntripclientlib/client/NtripClient;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-static {v0}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$fgetmSocket(Lcom/qianhe/ntripclientlib/client/NtripClient;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-static {v0}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$fgetmSocket(Lcom/qianhe/ntripclientlib/client/NtripClient;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-static {v0}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$fgetconnectSuccess(Lcom/qianhe/ntripclientlib/client/NtripClient;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    :cond_1
    const-string v0, "============ntrip\u91cd\u8fde==========="

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-static {v0}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$mstartConnectNtrip(Lcom/qianhe/ntripclientlib/client/NtripClient;)V

    .line 74
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-static {v0}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$fgettimerCount(Lcom/qianhe/ntripclientlib/client/NtripClient;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-static {v0}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$fgettimerCount(Lcom/qianhe/ntripclientlib/client/NtripClient;)J

    move-result-wide v0

    iget-object v4, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-static {v4}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$fgetmConfig(Lcom/qianhe/ntripclientlib/client/NtripClient;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object v4

    iget v4, v4, Lcom/qianhe/baselib/base/BaseConfig;->updateGGA_period:I

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    rem-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 75
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-static {v0}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$fgetmGGA(Lcom/qianhe/ntripclientlib/client/NtripClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$mwriteData(Lcom/qianhe/ntripclientlib/client/NtripClient;Ljava/lang/String;)V

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/NtripClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-static {v0}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$fgettimerCount(Lcom/qianhe/ntripclientlib/client/NtripClient;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/qianhe/ntripclientlib/client/NtripClient;->-$$Nest$fputtimerCount(Lcom/qianhe/ntripclientlib/client/NtripClient;J)V

    return-void
.end method
