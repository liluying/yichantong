.class Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;
.super Ljava/lang/Thread;
.source "BluetoothClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveDataThread"
.end annotation


# instance fields
.field private final mmInStream:Ljava/io/InputStream;

.field private final sessionId:J

.field final synthetic this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;


# direct methods
.method public constructor <init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothSocket;)V
    .locals 2

    .line 2104
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2105
    invoke-static {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectSessionId(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->sessionId:J

    .line 2108
    :try_start_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u83b7\u53d6\u8f93\u5165\u6d41\u5931\u8d25("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmDeviceType(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 2113
    :goto_0
    iput-object p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->mmInStream:Ljava/io/InputStream;

    .line 2117
    invoke-static {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmDeviceType(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object p2

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p2, v0, :cond_0

    .line 2118
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object p2

    new-instance v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread$1;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread$1;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V

    invoke-virtual {p2, v0}, Lcom/qh/yctdevice/YctDevice;->setListener(Lcom/qh/yctdevice/YctDevice$Listener;)Z

    goto :goto_1

    .line 2146
    :cond_0
    invoke-static {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmDeviceType(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object p2

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p2, v0, :cond_1

    .line 2147
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceBase()Lcom/qh/yctdevice/YctDevice;

    move-result-object p2

    new-instance v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread$2;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread$2;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V

    invoke-virtual {p2, v0}, Lcom/qh/yctdevice/YctDevice;->setListener(Lcom/qh/yctdevice/YctDevice$Listener;)Z

    :cond_1
    :goto_1
    return-void
.end method

.method private cleanupResources()V
    .locals 3

    .line 2216
    :try_start_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->mmInStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2217
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5173\u95ed\u8f93\u5165\u6d41\u5f02\u5e38("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmDeviceType(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2169
    const-string v0, ")\uff1a"

    const/high16 v1, 0x100000

    new-array v1, v1, [B

    .line 2172
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    .line 2175
    :try_start_0
    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 2181
    :cond_1
    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->mmInStream:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_3

    .line 2184
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmDeviceType(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v4

    sget-object v5, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v4, v5, :cond_2

    .line 2185
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/qh/yctdevice/YctDevice;->inputStream([BI)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    .line 2187
    :cond_2
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceBase()Lcom/qh/yctdevice/YctDevice;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/qh/yctdevice/YctDevice;->inputStream([BI)V

    goto :goto_0

    :cond_3
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 2190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket\u8fdc\u7aef\u5173\u95ed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmDeviceType(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_4

    .line 2176
    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket\u5df2\u5173\u95ed\u6216\u672a\u8fde\u63a5("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmDeviceType(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmDeviceType(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2195
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u8bfb\u53d6\u6570\u636e\u5f02\u5e38("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmDeviceType(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 2202
    :goto_4
    iget-wide v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->sessionId:J

    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectSessionId(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_6

    .line 2203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u65e7\u8fde\u63a5\u8bfb\u7ebf\u7a0b\u9000\u51fa("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmDeviceType(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->sessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectSessionId(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    :cond_6
    if-eqz v0, :cond_7

    .line 2207
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0, v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputsocketClosed(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V

    .line 2208
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->disconnect()V

    goto :goto_5

    .line 2209
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2210
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->cleanupResources()V

    :cond_8
    :goto_5
    return-void
.end method
