.class Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;
.super Ljava/lang/Thread;
.source "BluetoothClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectThread"
.end annotation


# instance fields
.field private final sessionId:J

.field final synthetic this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;


# direct methods
.method static bridge synthetic -$$Nest$fgetsessionId(Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->sessionId:J

    return-wide v0
.end method

.method public constructor <init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 2704
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2705
    invoke-static {p1, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mresolveConnectDeviceByAddress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p2, v0

    .line 2706
    :cond_0
    invoke-static {p1, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputmmDevice(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V

    .line 2707
    invoke-static {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectSessionId(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->sessionId:J

    return-void
.end method

.method private notifyConnectFailed(Ljava/lang/String;Z)V
    .locals 5

    .line 2820
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmmDevice(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mtryRepairStaleBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "): "

    if-eqz v0, :cond_0

    .line 2821
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u8fde\u63a5\u5931\u8d25\u5df2\u8f6c\u5165\u9648\u65e7\u914d\u5bf9\u4fee\u590d("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmDeviceType(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 2824
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectionListener(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-wide v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->sessionId:J

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmmDevice(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$misConnectAttemptActive(Lcom/qianhe/rtkclientlib/client/BluetoothClient;JLandroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2828
    :cond_1
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmHandler(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2825
    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u5ffd\u7565\u5df2\u53d6\u6d88\u7684\u8fde\u63a5\u5931\u8d25\u56de\u8c03("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmDeviceType(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2712
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmmDevice(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$misDeviceBonded(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectThread: \u672a\u914d\u5bf9\uff0c\u6539\u8d70\u914d\u5bf9\u6d41\u7a0b -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmmDevice(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmmDevice(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2714
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmHandler(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$1;

    invoke-direct {v1, p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$1;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2724
    :cond_1
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmmDevice(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mshouldProbeStaleBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2726
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputbondedProbeStartedAt(Lcom/qianhe/rtkclientlib/client/BluetoothClient;J)V

    .line 2727
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mensurePresenceScanForBondProbe(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V

    goto :goto_1

    .line 2730
    :cond_2
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScan()V

    .line 2732
    :goto_1
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbluetoothAdapter(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2734
    :try_start_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbluetoothAdapter(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2735
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbluetoothAdapter(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 2738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelDiscovery \u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_3
    :goto_2
    const/4 v0, 0x1

    .line 2743
    :try_start_1
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmmDevice(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const-string v2, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2752
    :try_start_2
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputconnectingSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothSocket;)V

    .line 2753
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-wide v5, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->sessionId:J

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmmDevice(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$misConnectAttemptActive(Lcom/qianhe/rtkclientlib/client/BluetoothClient;JLandroid/bluetooth/BluetoothDevice;)Z

    move-result v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_5

    .line 2808
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mcancelBondedRfcommTimeout(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V

    .line 2809
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0, v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputisConnecting(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V

    .line 2810
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectingSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    if-ne v0, v1, :cond_4

    .line 2811
    :goto_3
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputconnectingSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothSocket;)V

    .line 2814
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mcloseQuietly(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/AutoCloseable;)V

    goto/16 :goto_8

    .line 2756
    :cond_5
    :try_start_3
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputisConnecting(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V

    .line 2757
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-wide v5, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->sessionId:J

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmmDevice(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-static {v4, v1, v5, v6, v7}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mscheduleBondedRfcommTimeout(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothSocket;JLandroid/bluetooth/BluetoothDevice;)V

    .line 2758
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 2759
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mcancelBondedRfcommTimeout(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V

    .line 2760
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectingSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v4

    if-ne v4, v1, :cond_6

    .line 2761
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputconnectingSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothSocket;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    const/4 v4, 0x0

    goto/16 :goto_9

    :catch_1
    move-exception v0

    const/4 v4, 0x0

    goto/16 :goto_7

    .line 2763
    :cond_6
    :goto_5
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-wide v5, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->sessionId:J

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmmDevice(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$misConnectAttemptActive(Lcom/qianhe/rtkclientlib/client/BluetoothClient;JLandroid/bluetooth/BluetoothDevice;)Z

    move-result v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_7

    .line 2808
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mcancelBondedRfcommTimeout(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V

    .line 2809
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0, v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputisConnecting(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V

    .line 2810
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectingSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    if-ne v0, v1, :cond_4

    goto :goto_3

    .line 2766
    :cond_7
    :try_start_4
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputmSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothSocket;)V

    .line 2767
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputoutputStream(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/io/OutputStream;)V

    .line 2768
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputinputStream(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/io/InputStream;)V

    .line 2769
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4, v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputisConnecting(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V

    .line 2770
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4, v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputbondingInProgress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V

    .line 2772
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmmDevice(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetpendingConnectAddress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetpendingConnectAddress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v5}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmmDevice(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    .line 2773
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2774
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputpendingConnectAddress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;)V

    .line 2776
    :cond_8
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-wide v5, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->sessionId:J

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmmDevice(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$misConnectAttemptActive(Lcom/qianhe/rtkclientlib/client/BluetoothClient;JLandroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 2777
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputmSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothSocket;)V

    .line 2778
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputinputStream(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/io/InputStream;)V

    .line 2779
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputoutputStream(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2808
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mcancelBondedRfcommTimeout(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V

    .line 2809
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0, v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputisConnecting(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V

    .line 2810
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectingSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    if-ne v0, v1, :cond_4

    goto/16 :goto_3

    .line 2783
    :cond_9
    :try_start_5
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mresetStaleBondRepairState(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V

    .line 2784
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4, v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mstopScanInternal(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V

    .line 2785
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4, v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputpresenceScanForBondProbe(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V

    .line 2786
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectionListener(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 2787
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmHandler(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$2;

    invoke-direct {v5, p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$2;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :catchall_1
    move-exception v4

    move-object v0, v4

    const/4 v4, 0x1

    goto/16 :goto_9

    :catch_2
    move-exception v4

    move-object v0, v4

    const/4 v4, 0x1

    goto :goto_7

    .line 2799
    :cond_a
    :goto_6
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmReceiveDataThread(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmReceiveDataThread(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_b

    .line 2800
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmReceiveDataThread(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 2803
    :cond_b
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    new-instance v5, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothSocket;)V

    invoke-static {v4, v5}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputmReceiveDataThread(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;)V

    .line 2804
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmReceiveDataThread(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2808
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mcancelBondedRfcommTimeout(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V

    .line 2809
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0, v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputisConnecting(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V

    .line 2810
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectingSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    if-ne v0, v1, :cond_d

    .line 2811
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputconnectingSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothSocket;)V

    goto :goto_8

    .line 2806
    :goto_7
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->notifyConnectFailed(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2808
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mcancelBondedRfcommTimeout(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V

    .line 2809
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0, v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputisConnecting(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V

    .line 2810
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectingSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    if-ne v0, v1, :cond_c

    .line 2811
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputconnectingSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothSocket;)V

    :cond_c
    if-nez v4, :cond_d

    goto/16 :goto_4

    :cond_d
    :goto_8
    return-void

    :catchall_2
    move-exception v0

    .line 2808
    :goto_9
    iget-object v5, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v5}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mcancelBondedRfcommTimeout(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V

    .line 2809
    iget-object v5, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v5, v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputisConnecting(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V

    .line 2810
    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectingSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v3

    if-ne v3, v1, :cond_e

    .line 2811
    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v3, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputconnectingSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothSocket;)V

    :cond_e
    if-nez v4, :cond_f

    .line 2814
    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v2, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mcloseQuietly(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/AutoCloseable;)V

    .line 2816
    :cond_f
    throw v0

    :catch_3
    move-exception v1

    .line 2745
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u84dd\u7259\u8fde\u63a5\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\uff0c socketClosed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmDeviceType(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetsocketClosed(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 2746
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->notifyConnectFailed(Ljava/lang/String;Z)V

    return-void
.end method
