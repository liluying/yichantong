.class public Lcom/qianhe/rtkclientlib/MultiBluetoothManager;
.super Ljava/lang/Object;
.source "MultiBluetoothManager.java"


# static fields
.field private static instance:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;


# instance fields
.field private final bluetoothClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/qianhe/baselib/enums/DeviceType;",
            "Lcom/qianhe/rtkclientlib/client/BluetoothClient;",
            ">;"
        }
    .end annotation
.end field

.field private final bondCancelEpoch:Ljava/util/concurrent/atomic/AtomicLong;

.field private final connectedDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/qianhe/baselib/enums/DeviceType;",
            "Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/qianhe/baselib/enums/DeviceType;",
            "Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private isAutoReconnect:Z

.field private final mSp:Landroid/content/SharedPreferences;

.field private pendingConnectRunnable:Ljava/lang/Runnable;

.field private pendingReconnectRunnable:Ljava/lang/Runnable;

.field private volatile suppressBackgroundBondCancelUntil:J


# direct methods
.method public static synthetic $r8$lambda$N0QP4n4phY3J-UCm5ayY2CkXcOQ(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;ZZLjava/lang/String;Lcom/qianhe/rtkclientlib/client/BluetoothClient;Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;)V
    .locals 2

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->pendingConnectRunnable:Ljava/lang/Runnable;

    .line 212
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5f00\u59cb connectToDevice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 216
    const-string/jumbo p2, "\uff08\u5207\u6362\u8bbe\u5907\u5ef6\u8fdf\u540e\uff09"

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 217
    const-string/jumbo p2, "\uff08\u5df2\u914d\u5bf9\u5730\u5740\u76f4\u8fde\uff09"

    goto :goto_0

    :cond_2
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 215
    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const-wide/16 p2, 0x1388

    .line 219
    invoke-virtual {p0, p2, p3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->suppressBackgroundBondCancel(J)V

    .line 220
    iget-object p0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p5, p0, p6}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->connectToDevice(Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetconnectedDevices(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->connectedDevices:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisAutoReconnect(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isAutoReconnect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpendingReconnectRunnable(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->pendingReconnectRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputpendingReconnectRunnable(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->pendingReconnectRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelPendingConnect(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->cancelPendingConnect()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestFinishBondActivity(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->requestFinishBondActivity()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->handler:Landroid/os/Handler;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->bondCancelEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    .line 53
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->context:Landroid/content/Context;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->bluetoothClients:Ljava/util/Map;

    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->connectedDevices:Ljava/util/Map;

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->connectionListeners:Ljava/util/Map;

    .line 57
    const-string/jumbo v1, "sp"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->mSp:Landroid/content/SharedPreferences;

    .line 59
    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v2, Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-direct {v2, p1, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;-><init>(Landroid/content/Context;Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v2, Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-direct {v2, p1, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;-><init>(Landroid/content/Context;Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private cancelPendingConnect()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->pendingConnectRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 275
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->pendingConnectRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;
    .locals 2

    const-class v0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->instance:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-direct {v1, p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->instance:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    sget-object p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->instance:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private requestFinishBondActivity()V
    .locals 3

    .line 310
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.qianhe.yct.action.FINISH_BLUETOOTH_BOND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u53d1\u9001\u5173\u95ed\u914d\u5bf9\u9875\u5e7f\u64ad\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->w(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancelBondingIfNeeded()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->bondCancelEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 292
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->cancelPendingConnect()V

    .line 293
    invoke-virtual {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->stopAutoReconnect()V

    .line 294
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->bluetoothClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBonding()V

    goto :goto_0

    .line 300
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->requestFinishBondActivity()V

    return-void
.end method

.method public connectDevice(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;Lcom/qianhe/baselib/enums/DeviceType;Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;)V
    .locals 10

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v2, p0

    goto/16 :goto_6

    .line 72
    :cond_1
    iput-object p2, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 73
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->bluetoothClients:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    if-eqz v5, :cond_0

    .line 75
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v9, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_2
    move-object v6, v9

    .line 76
    :goto_0
    invoke-virtual {v5}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->getSessionAddress()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 78
    invoke-virtual {v5}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isSocketConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u8bbe\u5907\u5df2\u8fde\u63a5\uff0c\u8df3\u8fc7\u91cd\u590d connectDevice: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 80
    iput-boolean v3, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isAutoReconnect:Z

    .line 81
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->connectionListeners:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 84
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v5}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isBonding()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v5}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 85
    :cond_5
    invoke-virtual {v5}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->getPendingConnectAddress()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u540c\u8bbe\u5907\u914d\u5bf9/\u8fde\u63a5\u8fdb\u884c\u4e2d\uff0c\u8df3\u8fc7\u91cd\u590d connectDevice: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 88
    iput-boolean v3, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isAutoReconnect:Z

    .line 89
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->connectionListeners:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 94
    :cond_6
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->pendingReconnectRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_7

    .line 95
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    iput-object v9, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->pendingReconnectRunnable:Ljava/lang/Runnable;

    .line 98
    :cond_7
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->connectedDevices:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v1, :cond_8

    .line 99
    iget-object v4, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_8

    .line 100
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 101
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_9

    .line 102
    invoke-virtual {v5}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->hasActiveSession()Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v0, :cond_9

    const/4 v1, 0x1

    .line 105
    :cond_9
    invoke-virtual {v5, v6}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isBondedAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v1, :cond_a

    if-nez v0, :cond_a

    const/4 v8, 0x1

    goto :goto_3

    :cond_a
    const/4 v8, 0x0

    :goto_3
    if-eqz v1, :cond_b

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    .line 110
    :goto_4
    invoke-virtual {v5, v6}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->prepareForNewConnection(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v5, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->disconnect(Z)V

    .line 112
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->connectedDevices:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->requestFinishBondActivity()V

    if-eqz v8, :cond_c

    const-wide/16 v1, 0x1f40

    goto :goto_5

    :cond_c
    const-wide/16 v1, 0x1388

    .line 115
    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->suppressBackgroundBondCancel(J)V

    .line 116
    iput-boolean v3, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isAutoReconnect:Z

    .line 117
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->connectionListeners:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v1, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;

    move-object v2, p0

    move-object v7, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;-><init>(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;Lcom/qianhe/baselib/enums/DeviceType;Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    move-object v3, v7

    .line 210
    new-instance p1, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$$ExternalSyntheticLambda0;

    move-object v7, v5

    move v4, v8

    move v5, v0

    move-object v8, v1

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;ZZLjava/lang/String;Lcom/qianhe/rtkclientlib/client/BluetoothClient;Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;)V

    .line 222
    iget-object p1, v2, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->pendingConnectRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_d

    .line 223
    iget-object p2, v2, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 224
    iput-object v9, v2, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->pendingConnectRunnable:Ljava/lang/Runnable;

    :cond_d
    if-eqz v4, :cond_e

    .line 227
    iput-object v1, v2, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->pendingConnectRunnable:Ljava/lang/Runnable;

    .line 228
    iget-object p1, v2, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->handler:Landroid/os/Handler;

    const-wide/16 p2, 0x4b0

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 230
    :cond_e
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_6
    return-void
.end method

.method public disconnectAll()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->bluetoothClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->disconnect()V

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->stopAutoReconnect()V

    .line 259
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->connectedDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public disconnectDevice(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->bluetoothClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    if-eqz v0, :cond_1

    .line 242
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->bluetoothClients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->disconnect()V

    .line 244
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->connectedDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->stopAutoReconnect()V

    return-void
.end method

.method public finishBondActivity()V
    .locals 0

    .line 305
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->requestFinishBondActivity()V

    return-void
.end method

.method public getAllConnectedDevices()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/qianhe/baselib/enums/DeviceType;",
            "Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 385
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->connectedDevices:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getBluetoothClient(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;
    .locals 2

    .line 367
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ATTITUDESENSOR:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v0, :cond_0

    .line 368
    new-instance p1, Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->context:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;-><init>(Landroid/content/Context;Lcom/qianhe/baselib/enums/DeviceType;)V

    return-object p1

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->bluetoothClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    return-object p1
.end method

.method public getBondCancelEpoch()J
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->bondCancelEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getConnectedDevice(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->connectedDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    return-object p1
.end method

.method public getDeviceModel()I
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hardwareversionh5"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    const-string v1, "KE76Lite-PCBA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "KE76-PCBA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method public getDeviceType(Ljava/lang/String;Ljava/lang/String;)Lcom/qianhe/baselib/enums/DeviceType;
    .locals 2

    .line 405
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 407
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/qianhe/baselib/enums/SensorUUidEnum;->TYPE1:Lcom/qianhe/baselib/enums/SensorUUidEnum;

    .line 408
    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/SensorUUidEnum;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/qianhe/baselib/enums/SensorUUidEnum;->TYPE2:Lcom/qianhe/baselib/enums/SensorUUidEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/SensorUUidEnum;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    .line 409
    :cond_0
    :goto_0
    sget-object p1, Lcom/qianhe/baselib/enums/DeviceType;->ATTITUDESENSOR:Lcom/qianhe/baselib/enums/DeviceType;

    return-object p1

    .line 410
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x6

    if-le p2, v0, :cond_4

    const/4 p2, 0x5

    .line 411
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 412
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 413
    const-string v1, "W"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    const-string v1, "7"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    const-string v0, "2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 414
    sget-object p1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    return-object p1

    .line 415
    :cond_2
    const-string p2, "W54206161007895"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 416
    sget-object p1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    return-object p1

    .line 418
    :cond_3
    sget-object p1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    return-object p1

    .line 421
    :cond_4
    sget-object p1, Lcom/qianhe/baselib/enums/DeviceType;->NONE:Lcom/qianhe/baselib/enums/DeviceType;

    return-object p1

    .line 424
    :cond_5
    sget-object p1, Lcom/qianhe/baselib/enums/DeviceType;->NONE:Lcom/qianhe/baselib/enums/DeviceType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 427
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 429
    sget-object p1, Lcom/qianhe/baselib/enums/DeviceType;->NONE:Lcom/qianhe/baselib/enums/DeviceType;

    return-object p1
.end method

.method public isBackgroundBondCancelSuppressed()Z
    .locals 5

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->suppressBackgroundBondCancelUntil:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBaseOrOnlyone(Lcom/qianhe/baselib/enums/DeviceType;)Z
    .locals 2

    .line 437
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getAllConnectedDevices()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public isBondingInProgress()Z
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->bluetoothClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isBonding()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectingInProgress()Z
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->bluetoothClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->connectedDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->connectedDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isH5OrOnlyone(Lcom/qianhe/baselib/enums/DeviceType;)Z
    .locals 2

    .line 433
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getAllConnectedDevices()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public isKe76Pro()Z
    .locals 3

    .line 446
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "hardwareversionh5"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KE76Pro-PCBA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public stopAutoReconnect()V
    .locals 2

    .line 263
    iget-boolean v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isAutoReconnect:Z

    if-eqz v0, :cond_0

    .line 264
    const-string/jumbo v0, "\u505c\u6b62\u84dd\u7259\u81ea\u52a8\u91cd\u8fde\u3002"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isAutoReconnect:Z

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->pendingReconnectRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 268
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->pendingReconnectRunnable:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method public suppressBackgroundBondCancel(J)V
    .locals 4

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->suppressBackgroundBondCancelUntil:J

    return-void
.end method

.method public wasBondCancelledSince(J)Z
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->bondCancelEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
