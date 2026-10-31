.class Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;
.super Ljava/lang/Object;
.source "QhSdkClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/ntripclientlib/client/QhSdkClient;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/ntripclientlib/client/QhSdkClient;

.field timerCount:J


# direct methods
.method constructor <init>(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)V
    .locals 2

    .line 75
    iput-object p1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/QhSdkClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 76
    iput-wide v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->timerCount:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 80
    iget-wide v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->timerCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/QhSdkClient;

    invoke-static {v0}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->-$$Nest$fgetmSocket(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)Ljava/net/Socket;

    move-result-object v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/QhSdkClient;

    invoke-static {v0}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->-$$Nest$mstartConnectNtrip(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-wide v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->timerCount:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/QhSdkClient;

    invoke-static {v4}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->-$$Nest$fgetreconnect_period(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)J

    move-result-wide v4

    rem-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 83
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/QhSdkClient;

    invoke-static {v0}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->-$$Nest$fgetmSocket(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/QhSdkClient;

    invoke-static {v0}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->-$$Nest$fgetmSocket(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/QhSdkClient;

    invoke-static {v0}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->-$$Nest$fgetmSocket(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/QhSdkClient;

    invoke-static {v0}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->-$$Nest$fgetconnectSuccess(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    :cond_1
    const-string v0, "============ntrip\u91cd\u8fde==========="

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 85
    iput-wide v2, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->timerCount:J

    .line 86
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/QhSdkClient;

    invoke-static {v0}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->-$$Nest$mstartConnectNtrip(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)V

    .line 90
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->timerCount:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/QhSdkClient;

    invoke-static {v4}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->-$$Nest$fgetmConfig(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    move-result-object v4

    iget v4, v4, Lcom/qianhe/baselib/base/BaseConfig;->updateGGA_period:I

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    rem-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 91
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/QhSdkClient;

    invoke-static {v1}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->-$$Nest$fgetmGGA(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/baselib/utils/parser/GGAParser;->parseGGA(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)Lcom/qianhe/baselib/bean/GGAEntity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 93
    iget v0, v0, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/QhSdkClient;

    invoke-static {v0}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->-$$Nest$fgetmGGA(Lcom/qianhe/ntripclientlib/client/QhSdkClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->-$$Nest$mwriteData(Lcom/qianhe/ntripclientlib/client/QhSdkClient;Ljava/lang/String;)V

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/QhSdkClient;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->-$$Nest$mjudgeNtripConnect(Lcom/qianhe/ntripclientlib/client/QhSdkClient;J)V

    .line 96
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/QhSdkClient;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->-$$Nest$mjudgeNetwork(Lcom/qianhe/ntripclientlib/client/QhSdkClient;J)V

    .line 97
    iget-object v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->this$0:Lcom/qianhe/ntripclientlib/client/QhSdkClient;

    iget-wide v1, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->timerCount:J

    invoke-static {v0, v1, v2}, Lcom/qianhe/ntripclientlib/client/QhSdkClient;->-$$Nest$mjudgeAuth(Lcom/qianhe/ntripclientlib/client/QhSdkClient;J)V

    .line 98
    iget-wide v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->timerCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/qianhe/ntripclientlib/client/QhSdkClient$1;->timerCount:J

    return-void
.end method
