.class public Lcom/qianhe/yct/service/BluetoothConnectService;
.super Landroid/app/Service;
.source "BluetoothConnectService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/service/BluetoothConnectService$LocalBinder;
    }
.end annotation


# instance fields
.field private appConfig:Lcom/qianhe/yct/bean/AppConfig;

.field private final bluetoothStateReceiver:Landroid/content/BroadcastReceiver;

.field private clientSocket:Ljava/net/Socket;

.field private diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

.field private diffExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private diffFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private featuresAnswer:Z

.field private final flushScanListUiRunnable:Ljava/lang/Runnable;

.field private fmwFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private fmwVersionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private ggaEntity:Lcom/qianhe/baselib/bean/GGAEntity;

.field private ggaExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private ggaFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private hasExpiredate:Z

.field private hasRtkInfo:Z

.field private isAppVersionCheckEnd:Z

.field private isAutoConnect:Z

.field private isBaseDataAnswer:Z

.field private isH5DataAnswer:Z

.field private volatile isTcpServerRunning:Z

.field private lastScantime:J

.field private final localBinder:Lcom/qianhe/yct/service/BluetoothConnectService$LocalBinder;

.field private final localeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothBaseClient:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

.field private mBluetoothH5Client:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

.field private mCurrentBaseDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

.field private mCurrentDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

.field private final mDevideList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mDiffClient:Lcom/qianhe/ntripclientlib/base/DiffClientImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mMode:I

.field private mRoughCoords:Ljava/lang/String;

.field private mServerSocket:Ljava/net/ServerSocket;

.field private final mSimulatorOutputLock:Ljava/lang/Object;

.field private volatile mSimulatorOutputStream:Ljava/io/OutputStream;

.field private mSp:Landroid/content/SharedPreferences;

.field private final mTcpServerLock:Ljava/lang/Object;

.field private mTcpThreadPool:Ljava/util/concurrent/ExecutorService;

.field private multiBluetoothManager:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

.field private final pendingScanUiDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private requestSerial:Z

.field private final scanExecutor:Ljava/util/concurrent/ExecutorService;

.field private final scanListUiHandler:Landroid/os/Handler;

.field private final scanListener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;

.field private scanPageIndex:I

.field private final scanUiNotifiedAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private skipBaseAutoReconnect:Z

.field private skipH5AutoReconnect:Z

.field private startCheckBase:Z

.field private startCheckFmw:Z

.field private startCheckH5:Z

.field private startGnssUpgrade:Z

.field private supportH5Ntrip:Ljava/lang/Boolean;

.field private volatile tcpServerGeneration:I

.field private timerCount:I

.field private workExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private workFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4F3T0qDLBebK8x7ORmtitc8dUzQ(Lcom/qianhe/yct/service/BluetoothConnectService;[BZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/service/BluetoothConnectService;->sendDataToSimulator([BZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$EVOlvESWeHBDRE_4nlf1WkG53_A(Lcom/qianhe/yct/service/BluetoothConnectService;Z[B)V
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSimulatorOutputLock:Ljava/lang/Object;

    .line 399
    monitor-enter v0

    .line 400
    :try_start_0
    iget-object p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSimulatorOutputStream:Ljava/io/OutputStream;

    if-nez p0, :cond_0

    .line 401
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_1

    .line 404
    :try_start_1
    array-length p1, p2

    add-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    .line 405
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    array-length v1, p2

    const/16 v2, 0xd

    aput-byte v2, p1, v1

    .line 407
    array-length p2, p2

    add-int/lit8 p2, p2, 0x1

    const/16 v1, 0xa

    aput-byte v1, p1, p2

    .line 408
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 410
    :cond_1
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 412
    :goto_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 414
    :goto_1
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TCP\u53d1\u9001\u6a21\u62df\u5668\u6570\u636e\u5931\u8d25: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 416
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static synthetic $r8$lambda$MddLUpyr7eKL08eaeFoAw6DCOZU(Lcom/qianhe/yct/service/BluetoothConnectService;I)V
    .locals 0

    .line 278
    invoke-direct {p0, p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->runTcpServer(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ch-yn4OsSlLBQOpVtIS1gfkzS5M(Lcom/qianhe/yct/service/BluetoothConnectService;Ljava/net/Socket;)V
    .locals 0

    .line 325
    invoke-direct {p0, p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->handleClientRequest(Ljava/net/Socket;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jJnawggXfH5T0CypAZROt-cNr1A(Lcom/qianhe/yct/service/BluetoothConnectService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->flushPendingScanListUi()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetappConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/yct/bean/AppConfig;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/baselib/base/BaseConfig;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfeaturesAnswer(Lcom/qianhe/yct/service/BluetoothConnectService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->featuresAnswer:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethasExpiredate(Lcom/qianhe/yct/service/BluetoothConnectService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->hasExpiredate:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethasRtkInfo(Lcom/qianhe/yct/service/BluetoothConnectService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->hasRtkInfo:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisAppVersionCheckEnd(Lcom/qianhe/yct/service/BluetoothConnectService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isAppVersionCheckEnd:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisAutoConnect(Lcom/qianhe/yct/service/BluetoothConnectService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isAutoConnect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisBaseDataAnswer(Lcom/qianhe/yct/service/BluetoothConnectService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isBaseDataAnswer:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisH5DataAnswer(Lcom/qianhe/yct/service/BluetoothConnectService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isH5DataAnswer:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothBaseClient(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mBluetoothBaseClient:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothH5Client(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mBluetoothH5Client:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mCurrentBaseDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mCurrentDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevideList(Lcom/qianhe/yct/service/BluetoothConnectService;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mDevideList:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDiffClient(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/ntripclientlib/base/DiffClientImpl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mDiffClient:Lcom/qianhe/ntripclientlib/base/DiffClientImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMode(Lcom/qianhe/yct/service/BluetoothConnectService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoughCoords(Lcom/qianhe/yct/service/BluetoothConnectService;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mRoughCoords:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSp(Lcom/qianhe/yct/service/BluetoothConnectService;)Landroid/content/SharedPreferences;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmultiBluetoothManager(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->multiBluetoothManager:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscanListener(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->scanListener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscanPageIndex(Lcom/qianhe/yct/service/BluetoothConnectService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->scanPageIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetskipH5AutoReconnect(Lcom/qianhe/yct/service/BluetoothConnectService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->skipH5AutoReconnect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstartCheckBase(Lcom/qianhe/yct/service/BluetoothConnectService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->startCheckBase:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstartCheckH5(Lcom/qianhe/yct/service/BluetoothConnectService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->startCheckH5:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsupportH5Ntrip(Lcom/qianhe/yct/service/BluetoothConnectService;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->supportH5Ntrip:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettimerCount(Lcom/qianhe/yct/service/BluetoothConnectService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->timerCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputappConfig(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/yct/bean/AppConfig;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/baselib/base/BaseConfig;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdiffExecutor(Lcom/qianhe/yct/service/BluetoothConnectService;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->diffExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisAppVersionCheckEnd(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isAppVersionCheckEnd:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisAutoConnect(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isAutoConnect:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisBaseDataAnswer(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isBaseDataAnswer:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisH5DataAnswer(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isH5DataAnswer:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothBaseClient(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mBluetoothBaseClient:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothH5Client(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mBluetoothH5Client:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mCurrentBaseDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mCurrentDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDiffClient(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/ntripclientlib/base/DiffClientImpl;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mDiffClient:Lcom/qianhe/ntripclientlib/base/DiffClientImpl;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRoughCoords(Lcom/qianhe/yct/service/BluetoothConnectService;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mRoughCoords:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrequestSerial(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->requestSerial:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputskipBaseAutoReconnect(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->skipBaseAutoReconnect:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputskipH5AutoReconnect(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->skipH5AutoReconnect:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartCheckBase(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->startCheckBase:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartCheckFmw(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->startCheckFmw:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartCheckH5(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->startCheckH5:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartGnssUpgrade(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->startGnssUpgrade:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsupportH5Ntrip(Lcom/qianhe/yct/service/BluetoothConnectService;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->supportH5Ntrip:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtimerCount(Lcom/qianhe/yct/service/BluetoothConnectService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->timerCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyRoughCoords(Lcom/qianhe/yct/service/BluetoothConnectService;DDDLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/qianhe/yct/service/BluetoothConnectService;->applyRoughCoords(DDDLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearScanListUiBatch(Lcom/qianhe/yct/service/BluetoothConnectService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->clearScanListUiBatch()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconnect(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->connect(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindScannedDevice(Lcom/qianhe/yct/service/BluetoothConnectService;Ljava/lang/String;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->findScannedDevice(Ljava/lang/String;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mflushPendingScanListUi(Lcom/qianhe/yct/service/BluetoothConnectService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->flushPendingScanListUi()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misDeviceManagementForeground(Lcom/qianhe/yct/service/BluetoothConnectService;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->isDeviceManagementForeground()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mqueueScanListUiUpdate(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->queueScanListUiUpdate(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreconnectBase(Lcom/qianhe/yct/service/BluetoothConnectService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->reconnectBase()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreconnectH5(Lcom/qianhe/yct/service/BluetoothConnectService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->reconnectH5()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseDiffClient(Lcom/qianhe/yct/service/BluetoothConnectService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->releaseDiffClient(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestRoughNetworkLocation(Lcom/qianhe/yct/service/BluetoothConnectService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->requestRoughNetworkLocation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartBlueCheckTimer(Lcom/qianhe/yct/service/BluetoothConnectService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->startBlueCheckTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartScan(Lcom/qianhe/yct/service/BluetoothConnectService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->startScan()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartWorkTimer(Lcom/qianhe/yct/service/BluetoothConnectService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->startWorkTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopFmwVersionTimer(Lcom/qianhe/yct/service/BluetoothConnectService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->stopFmwVersionTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopScan(Lcom/qianhe/yct/service/BluetoothConnectService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->stopScan(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopWorkTimer(Lcom/qianhe/yct/service/BluetoothConnectService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->stopWorkTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/baselib/enums/DeviceType;Landroid/bluetooth/BluetoothDevice;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/service/BluetoothConnectService;->syncCurrentDevice(Lcom/qianhe/baselib/enums/DeviceType;Landroid/bluetooth/BluetoothDevice;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateForegroundNotification(Lcom/qianhe/yct/service/BluetoothConnectService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->updateForegroundNotification()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 123
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mDevideList:Ljava/util/Map;

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isAutoConnect:Z

    .line 138
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->scanListUiHandler:Landroid/os/Handler;

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->pendingScanUiDevices:Ljava/util/List;

    .line 141
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->scanUiNotifiedAddresses:Ljava/util/Set;

    .line 142
    new-instance v1, Lcom/qianhe/yct/service/BluetoothConnectService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/service/BluetoothConnectService$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    iput-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->flushScanListUiRunnable:Ljava/lang/Runnable;

    .line 143
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->workExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 145
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->ggaExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 146
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->scanExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    .line 160
    iput-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->supportH5Ntrip:Ljava/lang/Boolean;

    .line 163
    iput-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->startCheckH5:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->startCheckBase:Z

    .line 177
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSimulatorOutputLock:Ljava/lang/Object;

    .line 178
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mTcpServerLock:Ljava/lang/Object;

    .line 179
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mTcpThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 180
    iput-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isTcpServerRunning:Z

    .line 181
    iput v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->tcpServerGeneration:I

    .line 193
    new-instance v0, Lcom/qianhe/yct/service/BluetoothConnectService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/service/BluetoothConnectService$LocalBinder;-><init>(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->localBinder:Lcom/qianhe/yct/service/BluetoothConnectService$LocalBinder;

    .line 474
    new-instance v0, Lcom/qianhe/yct/service/BluetoothConnectService$2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/service/BluetoothConnectService$2;-><init>(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->localeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1022
    new-instance v0, Lcom/qianhe/yct/service/BluetoothConnectService$8;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/service/BluetoothConnectService$8;-><init>(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->bluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1199
    new-instance v0, Lcom/qianhe/yct/service/BluetoothConnectService$10;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/service/BluetoothConnectService$10;-><init>(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->scanListener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;

    return-void
.end method

.method private applyRoughCoords(DDDLjava/lang/String;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    cmpl-double v2, p3, v0

    if-nez v2, :cond_0

    return-void

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 264
    iget-object p2, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "current_coords"

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 265
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "\u5f53\u524d\u8bbe\u5907\u5750\u6807("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private buildForegroundNotification()Landroid/app/Notification;
    .locals 3

    .line 458
    invoke-static {p0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->wrapContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 460
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 461
    const-string v1, "BluetoothConnectService"

    invoke-static {p0, v1}, Lcom/qianhe/yct/service/BluetoothConnectService$$ExternalSyntheticApiModelOutline1;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    goto :goto_0

    .line 463
    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 465
    :goto_0
    sget v2, Lcom/qianhe/yct/R$string;->service_running:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->using_bluetooth_device:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_about_app_zh:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private checkFmwUpgrade(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 8

    .line 1342
    iget-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->startCheckFmw:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mCurrentDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mCurrentBaseDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v0, :cond_3

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 1343
    iput-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->startCheckFmw:Z

    const/4 v0, 0x0

    .line 1344
    iput-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->hasRtkInfo:Z

    .line 1345
    iput-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->hasExpiredate:Z

    .line 1346
    iput-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->featuresAnswer:Z

    .line 1347
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->fmwVersionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->fmwVersionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1348
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->fmwVersionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/qianhe/yct/service/BluetoothConnectService$12;

    invoke-direct {v2, p0, p1}, Lcom/qianhe/yct/service/BluetoothConnectService$12;-><init>(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/baselib/enums/DeviceType;)V

    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->fmwFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_3
    return-void
.end method

.method private clearScanListUiBatch()V
    .locals 2

    .line 1124
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->scanListUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->flushScanListUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1125
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->pendingScanUiDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1126
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->scanUiNotifiedAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private closeQuietly(Ljava/net/ServerSocket;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 374
    invoke-virtual {p1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 378
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5173\u95edTCP\u670d\u52a1\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private closeQuietly(Ljava/net/Socket;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 385
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5173\u95edTCP\u5ba2\u6237\u7aef\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private closeServerSocket()V
    .locals 2

    .line 1831
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mTcpServerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1832
    :try_start_0
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->stopTcpServerInternal()V

    .line 1833
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private connect(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 6

    if-eqz p1, :cond_d

    .line 508
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 511
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->resolveBondedDeviceByAddress(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 513
    iput-object v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 515
    :cond_1
    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f00\u59cb\u8fde\u63a5\u84dd\u7259\u8bbe\u5907\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    if-eqz v0, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\uff08\u5df2\u914d\u5bf9\u5730\u5740\u76f4\u8fde "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\uff09"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 517
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 520
    :cond_3
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-eqz v0, :cond_4

    .line 521
    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->NONE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v2, :cond_5

    .line 522
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->multiBluetoothManager:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-virtual {v0, v1, v3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getDeviceType(Ljava/lang/String;Ljava/lang/String;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_c

    .line 524
    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->NONE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v2, :cond_6

    goto/16 :goto_2

    .line 528
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bbe\u5907\u7c7b\u578b\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->multiBluetoothManager:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-virtual {v1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getBluetoothClient(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    move-result-object v1

    .line 530
    iget-object v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->multiBluetoothManager:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-virtual {v2, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getConnectedDevice(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 531
    iget-object v3, v2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isSocketConnected()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u8bbe\u5907\u5df2\u8fde\u63a5\uff0c\u8df3\u8fc7\u91cd\u590d connect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 533
    sget-object p1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {p1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result p1

    iput p1, v2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 534
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    invoke-direct {v0, v2}, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 537
    :cond_7
    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_8

    .line 538
    const-string/jumbo v2, "\u5207\u6362\u627e\u5e73\u4eea"

    invoke-direct {p0, v2}, Lcom/qianhe/yct/service/BluetoothConnectService;->releaseDiffClient(Ljava/lang/String;)V

    .line 540
    :cond_8
    sget-object v2, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->STARTCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v3

    iput v3, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 541
    iput-object v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_9

    .line 544
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mCurrentDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v1, :cond_a

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v2

    iput v2, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    goto :goto_1

    .line 545
    :cond_9
    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_a

    .line 546
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mCurrentBaseDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v1, :cond_a

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v2

    iput v2, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 550
    :cond_a
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->multiBluetoothManager:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    new-instance v2, Lcom/qianhe/yct/service/BluetoothConnectService$3;

    invoke-direct {v2, p0, v0}, Lcom/qianhe/yct/service/BluetoothConnectService$3;-><init>(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->connectDevice(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;Lcom/qianhe/baselib/enums/DeviceType;Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;)V

    .line 752
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->multiBluetoothManager:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-virtual {v1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getBluetoothClient(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 753
    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isSocketConnected()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 754
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->multiBluetoothManager:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-virtual {v1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getConnectedDevice(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 756
    sget-object p1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {p1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result p1

    iput p1, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 757
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    invoke-direct {v1, v0}, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 761
    :cond_b
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    invoke-direct {v1, p1}, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 525
    :cond_c
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u65e0\u6cd5\u8bc6\u522b\u8bbe\u5907\u7c7b\u578b\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_d
    :goto_3
    return-void
.end method

.method private createReuseServerSocket(I)Ljava/net/ServerSocket;
    .locals 2

    .line 362
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    const/4 v1, 0x1

    .line 363
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 364
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method private diffClientDisconnect()V
    .locals 2

    .line 963
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mDiffClient:Lcom/qianhe/ntripclientlib/base/DiffClientImpl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qianhe/ntripclientlib/base/DiffClientImpl;->disconnect()V

    :cond_0
    const/4 v0, 0x0

    .line 964
    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mDiffClient:Lcom/qianhe/ntripclientlib/base/DiffClientImpl;

    .line 965
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/application/YCTApplication;->setBaseStatus(Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;)V

    return-void
.end method

.method private ensureTcpThreadPool()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mTcpThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 284
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mTcpThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private findScannedDevice(Ljava/lang/String;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;
    .locals 4

    .line 1188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mDevideList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v2, :cond_1

    .line 1192
    iget-object v3, v2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method private flushPendingScanListUi()V
    .locals 5

    .line 1130
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->pendingScanUiDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1133
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->pendingScanUiDevices:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1134
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->pendingScanUiDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    .line 1136
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/event/BluetoothScanStateEvent;

    iget v4, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->scanPageIndex:I

    invoke-direct {v3, v1, v4}, Lcom/qianhe/yct/event/BluetoothScanStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private handleClientRequest(Ljava/net/Socket;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 423
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v3, 0x400

    .line 424
    :try_start_1
    new-array v3, v3, [B

    .line 426
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 427
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/qh/yctdevice/YctDevice;->inputStream([BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_2

    .line 432
    :cond_0
    iget-object v3, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSimulatorOutputLock:Ljava/lang/Object;

    monitor-enter v3

    .line 433
    :try_start_2
    iput-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSimulatorOutputStream:Ljava/io/OutputStream;

    .line 434
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 436
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 440
    :catch_1
    :try_start_4
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 443
    :catch_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v2, Lcom/qianhe/yct/event/TcpClientEvent;

    invoke-direct {v2, v0, v1}, Lcom/qianhe/yct/event/TcpClientEvent;-><init>(ZLjava/lang/String;)V

    :goto_1
    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 434
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :catchall_2
    move-exception v3

    move-object v2, v1

    goto :goto_4

    :catch_3
    move-exception v3

    move-object v2, v1

    .line 430
    :goto_2
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TCP\u5ba2\u6237\u7aef\u8fde\u63a5\u4e22\u5931: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 432
    iget-object v3, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSimulatorOutputLock:Ljava/lang/Object;

    monitor-enter v3

    .line 433
    :try_start_7
    iput-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSimulatorOutputStream:Ljava/io/OutputStream;

    .line 434
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v2, :cond_1

    .line 436
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 440
    :catch_4
    :cond_1
    :try_start_9
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 443
    :catch_5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v2, Lcom/qianhe/yct/event/TcpClientEvent;

    invoke-direct {v2, v0, v1}, Lcom/qianhe/yct/event/TcpClientEvent;-><init>(ZLjava/lang/String;)V

    goto :goto_1

    :goto_3
    return-void

    :catchall_3
    move-exception p1

    .line 434
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw p1

    .line 432
    :goto_4
    iget-object v4, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSimulatorOutputLock:Ljava/lang/Object;

    monitor-enter v4

    .line 433
    :try_start_b
    iput-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSimulatorOutputStream:Ljava/io/OutputStream;

    .line 434
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v2, :cond_2

    .line 436
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 440
    :catch_6
    :cond_2
    :try_start_d
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 443
    :catch_7
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v2, Lcom/qianhe/yct/event/TcpClientEvent;

    invoke-direct {v2, v0, v1}, Lcom/qianhe/yct/event/TcpClientEvent;-><init>(ZLjava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 444
    throw v3

    :catchall_4
    move-exception p1

    .line 434
    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw p1
.end method

.method private initDiffClient(Lcom/qianhe/yct/enums/DiffActionEnum;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 888
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->diffExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->supportH5Ntrip:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 889
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->diffExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 890
    new-instance v1, Lcom/qianhe/yct/service/BluetoothConnectService$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/qianhe/yct/service/BluetoothConnectService$6;-><init>(Lcom/qianhe/yct/service/BluetoothConnectService;Ljava/lang/String;Lcom/qianhe/yct/enums/DiffActionEnum;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->diffFuture:Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method private isAddressInUse(Ljava/io/IOException;)Z
    .locals 1

    .line 369
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 370
    const-string v0, "EADDRINUSE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Address already in use"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isDeviceManagementForeground()Z
    .locals 1

    .line 1060
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1061
    :goto_0
    instance-of v0, v0, Lcom/qianhe/yct/activity/BluetoothActivity;

    return v0
.end method

.method private loadPacketOutput(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 4

    .line 776
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v2, "GET,SERIAL"

    invoke-direct {v1, p1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 777
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v2, "CALIBRATE,,GET_PARAM"

    invoke-direct {v1, p1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 778
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LOG,INS.NAVI,ONTIME,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->ins_interval:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 779
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LOG,GGA,ONTIME,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->gga_interval:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 780
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LOG,BESTPOS,ONTIME,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->bestpos_interval:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 781
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LOG,GST,ONTIME,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->gst_interval:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 782
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LOG,EXTSENSOR-1,ONTIME,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->extsensor_1:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 783
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v2, "LOG,BASEINFO,ONTIME,10"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 784
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v2, "GET,ANTENNA"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private openBluetooth()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mBluetoothH5Client:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mBluetoothH5Client:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->openBluetooth(Landroid/content/Context;)V

    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "latestDeviceAddress"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->startScan()V

    :cond_1
    return-void
.end method

.method private queueScanListUiUpdate(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1141
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1144
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1145
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->scanUiNotifiedAddresses:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1148
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->pendingScanUiDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->scanListUiHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->flushScanListUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1151
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->pendingScanUiDevices:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1152
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->scanListUiHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->flushScanListUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1154
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->scanListUiHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->flushScanListUiRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private reconnectBase()V
    .locals 1

    .line 1318
    iget-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->skipBaseAutoReconnect:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1319
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mCurrentBaseDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->connect(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private reconnectH5()V
    .locals 1

    .line 1312
    iget-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->skipH5AutoReconnect:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1313
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mCurrentDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->connect(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private releaseDiffClient(Ljava/lang/String;)V
    .locals 2

    .line 946
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mDiffClient:Lcom/qianhe/ntripclientlib/base/DiffClientImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->diffExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    if-nez v0, :cond_0

    return-void

    .line 949
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5173\u95ed\u5dee\u5206\u8fde\u63a5: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 950
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->diffFuture:Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 951
    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 952
    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->diffFuture:Ljava/util/concurrent/Future;

    .line 954
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->diffExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p1, :cond_2

    .line 955
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 956
    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->diffExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 958
    :cond_2
    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    .line 959
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->diffClientDisconnect()V

    return-void
.end method

.method private requestRoughNetworkLocation()V
    .locals 2

    .line 246
    invoke-static {}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->getInstance()Lcom/qianhe/yct/provider/NetworkLocationProvider;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/service/BluetoothConnectService$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/service/BluetoothConnectService$1;-><init>(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    invoke-virtual {v0, p0, v1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->getNetworkLocation(Landroid/content/Context;Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;)V

    return-void
.end method

.method private resolveBondedDeviceByAddress(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 4

    .line 1636
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1639
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 1643
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 1647
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_3

    .line 1648
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    :cond_4
    return-object v1
.end method

.method private resolveConnectTarget(Lcom/qianhe/yct/event/BluetoothConnectActionEvent;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1660
    :cond_0
    iget-object v1, p1, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;->deviceAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1661
    iget-object v1, p1, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->resolveBondedDeviceByAddress(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1663
    new-instance v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object v2, p1, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v0, v1, v2}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 1664
    iget-object v1, p1, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;->deviceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1665
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;->deviceName:Ljava/lang/String;

    iput-object p1, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceName:Ljava/lang/String;

    :cond_1
    return-object v0

    .line 1669
    :cond_2
    iget-object v1, p1, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->findScannedDevice(Ljava/lang/String;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    .line 1674
    :cond_3
    iget-object v1, p1, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;->deviceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1675
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mDevideList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v2, :cond_4

    .line 1676
    iget-object v3, p1, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;->deviceName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v2

    :cond_5
    return-object v0
.end method

.method private runTcpServer(I)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x5

    if-gt v1, v2, :cond_7

    .line 290
    iget v3, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->tcpServerGeneration:I

    if-eq p1, v3, :cond_0

    goto/16 :goto_8

    :cond_0
    const/16 v3, 0x4d2

    const/4 v4, 0x0

    .line 295
    :try_start_0
    invoke-direct {p0, v3}, Lcom/qianhe/yct/service/BluetoothConnectService;->createReuseServerSocket(I)Ljava/net/ServerSocket;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 296
    :try_start_1
    iget-object v5, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mTcpServerLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    :try_start_2
    iget v6, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->tcpServerGeneration:I

    if-eq p1, v6, :cond_1

    .line 298
    invoke-direct {p0, v3}, Lcom/qianhe/yct/service/BluetoothConnectService;->closeQuietly(Ljava/net/ServerSocket;)V

    .line 299
    monitor-exit v5

    goto/16 :goto_8

    :catchall_0
    move-exception v6

    goto/16 :goto_4

    .line 301
    :cond_1
    iput-object v3, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mServerSocket:Ljava/net/ServerSocket;

    .line 302
    iput-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isTcpServerRunning:Z

    .line 303
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    :try_start_3
    const-string v5, "TCP\u670d\u52a1\u542f\u52a8: 1234"

    invoke-static {v5}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 305
    :goto_1
    iget-boolean v5, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isTcpServerRunning:Z

    if-eqz v5, :cond_7

    invoke-virtual {v3}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v5, :cond_7

    .line 307
    :try_start_4
    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v5

    .line 308
    iget-object v6, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mTcpServerLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 309
    :try_start_5
    iget-object v7, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->clientSocket:Ljava/net/Socket;

    invoke-direct {p0, v7}, Lcom/qianhe/yct/service/BluetoothConnectService;->closeQuietly(Ljava/net/Socket;)V

    .line 310
    iput-object v5, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->clientSocket:Ljava/net/Socket;

    .line 311
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 312
    :try_start_6
    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 313
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TCP\u5ba2\u6237\u7aef\u5df2\u8fde\u63a5: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v7

    new-instance v8, Lcom/qianhe/yct/event/TcpClientEvent;

    invoke-direct {v8, v0, v6}, Lcom/qianhe/yct/event/TcpClientEvent;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v7, v8}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 315
    iget-object v6, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSimulatorOutputLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 316
    :try_start_7
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    iput-object v7, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSimulatorOutputStream:Ljava/io/OutputStream;

    .line 317
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 318
    :try_start_8
    iget-object v6, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->multiBluetoothManager:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    sget-object v7, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v6, v7}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getBluetoothClient(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    move-result-object v6

    new-instance v7, Lcom/qianhe/yct/service/BluetoothConnectService$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Lcom/qianhe/yct/service/BluetoothConnectService$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    invoke-virtual {v6, v7}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->receiveSimulatorData(Lcom/qianhe/rtkclientlib/client/BluetoothClient$SimulatorSendCallback;)V

    .line 319
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qianhe/yct/utils/DemoDataManager;->release()V

    .line 320
    iget-object v6, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    if-nez v6, :cond_2

    .line 321
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v6

    iput-object v6, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    .line 322
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v6

    iget-object v7, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    invoke-virtual {v6, v7}, Lcom/qianhe/yct/application/YCTApplication;->setAppConfig(Lcom/qianhe/yct/bean/AppConfig;)V

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_3

    .line 324
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->ensureTcpThreadPool()V

    .line 325
    iget-object v6, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mTcpThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/qianhe/yct/service/BluetoothConnectService$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0, v5}, Lcom/qianhe/yct/service/BluetoothConnectService$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/service/BluetoothConnectService;Ljava/net/Socket;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    :catchall_1
    move-exception v5

    .line 317
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v5
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catchall_2
    move-exception v5

    .line 311
    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v5
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    .line 327
    :goto_3
    :try_start_d
    iget-boolean v6, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isTcpServerRunning:Z

    if-eqz v6, :cond_7

    invoke-virtual {v3}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_8

    .line 330
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TCP accept\u5f02\u5e38: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v5

    goto :goto_5

    .line 303
    :goto_4
    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    throw v6
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1

    :catch_2
    move-exception v5

    move-object v3, v4

    .line 335
    :goto_5
    invoke-direct {p0, v3}, Lcom/qianhe/yct/service/BluetoothConnectService;->closeQuietly(Ljava/net/ServerSocket;)V

    .line 336
    iget-object v6, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mTcpServerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 337
    :try_start_10
    iget-object v7, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mServerSocket:Ljava/net/ServerSocket;

    if-ne v7, v3, :cond_4

    .line 338
    iput-object v4, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mServerSocket:Ljava/net/ServerSocket;

    goto :goto_6

    :catchall_3
    move-exception p1

    goto :goto_7

    :cond_4
    :goto_6
    const/4 v3, 0x0

    .line 340
    iput-boolean v3, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isTcpServerRunning:Z

    .line 341
    monitor-exit v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 342
    iget v3, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->tcpServerGeneration:I

    if-eq p1, v3, :cond_5

    goto :goto_8

    .line 345
    :cond_5
    invoke-direct {p0, v5}, Lcom/qianhe/yct/service/BluetoothConnectService;->isAddressInUse(Ljava/io/IOException;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-ge v1, v2, :cond_6

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TCP\u7aef\u53e3\u5360\u7528\uff0c500ms\u540e\u91cd\u8bd5("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    .line 348
    :try_start_11
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_3

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 350
    :catch_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void

    .line 354
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TCP\u670d\u52a1\u5f02\u5e38: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void

    .line 341
    :goto_7
    :try_start_12
    monitor-exit v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    throw p1

    :cond_7
    :goto_8
    return-void
.end method

.method private sendDataToSimulator([BZ)V
    .locals 2

    if-eqz p1, :cond_2

    .line 396
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mTcpThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mTcpThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qianhe/yct/service/BluetoothConnectService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, p1}, Lcom/qianhe/yct/service/BluetoothConnectService$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/service/BluetoothConnectService;Z[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private shutdownTcpThreadPool()V
    .locals 1

    .line 1852
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mTcpThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 1853
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    .line 1854
    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mTcpThreadPool:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method private startBlueCheckTimer()V
    .locals 8

    .line 1267
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->ggaFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->ggaExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->startCheckH5:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->startCheckBase:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 1268
    :cond_2
    :goto_0
    const-string/jumbo v0, "\u542f\u52a8\u65ad\u8fde\u68c0\u6d4b -> startBlueCheckTimer()"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1269
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->ggaExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1270
    new-instance v2, Lcom/qianhe/yct/service/BluetoothConnectService$11;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/service/BluetoothConnectService$11;-><init>(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->ggaFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private startScan()V
    .locals 5

    .line 1065
    iget-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isAutoConnect:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->isDeviceManagementForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    const-string/jumbo v0, "\u8bbe\u5907\u7ba1\u7406\u9875\u5728\u524d\u53f0\uff0c\u8df3\u8fc7\u81ea\u52a8\u8fde\u63a5\uff0c\u6539\u4e3a\u626b\u63cf"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1067
    iput-boolean v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isAutoConnect:Z

    .line 1069
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isAutoConnect:Z

    if-eqz v0, :cond_2

    .line 1070
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "latestDeviceAddress"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1073
    iget-boolean v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->skipH5AutoReconnect:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1074
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/event/BluetoothConnectActionByMacEvent;

    sget-object v3, Lcom/qianhe/yct/enums/BluetoothActionEnum;->CONNECT:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    invoke-direct {v2, v3, v0}, Lcom/qianhe/yct/event/BluetoothConnectActionByMacEvent;-><init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1078
    :cond_1
    iget-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->skipBaseAutoReconnect:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mCurrentBaseDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_4

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 1079
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/BluetoothConnectActionByMacEvent;

    sget-object v2, Lcom/qianhe/yct/enums/BluetoothActionEnum;->CONNECT:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    iget-object v3, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mCurrentBaseDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object v3, v3, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/event/BluetoothConnectActionByMacEvent;-><init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 1083
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_3

    .line 1084
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1085
    const-string/jumbo v0, "\u672a\u83b7\u53d6\u6743\u9650 BLUETOOTH_SCAN"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1089
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->lastScantime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_5

    :cond_4
    return-void

    .line 1091
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->lastScantime:J

    .line 1093
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->scanExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qianhe/yct/service/BluetoothConnectService$9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/service/BluetoothConnectService$9;-><init>(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private startTcpServer()V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mTcpServerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    iget-boolean v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isTcpServerRunning:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    const-string v1, "TCP\u670d\u52a1\u5df2\u5728\u8fd0\u884c: 1234"

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 273
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->stopTcpServerInternal()V

    .line 276
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->ensureTcpThreadPool()V

    .line 277
    iget v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->tcpServerGeneration:I

    .line 278
    iget-object v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mTcpThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/qianhe/yct/service/BluetoothConnectService$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lcom/qianhe/yct/service/BluetoothConnectService$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/service/BluetoothConnectService;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 279
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startWorkTimer()V
    .locals 8

    .line 970
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->workFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    .line 971
    const-string/jumbo v0, "\u5f00\u542f\u5b9a\u65f6\u5668(service)-\u5fc3\u8df3\u3001\u7535\u91cf\u3001\u89d2\u5ea6\u7b49"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 972
    iput v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->timerCount:I

    .line 973
    iput-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->featuresAnswer:Z

    .line 974
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->workExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->workExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 977
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->workExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/qianhe/yct/service/BluetoothConnectService$7;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/service/BluetoothConnectService$7;-><init>(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->workFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method private stopBlueCheckTimer()V
    .locals 2

    .line 1304
    const-string/jumbo v0, "\u505c\u6b62\u65ad\u8fde\u68c0\u6d4b -> stopBlueCheckTimer()"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->ggaFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 1306
    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->ggaFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1307
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->ggaExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void
.end method

.method private stopFmwVersionTimer()V
    .locals 2

    const/4 v0, 0x0

    .line 1420
    iput-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->startCheckFmw:Z

    .line 1421
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->fmwFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1422
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->fmwVersionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    const/4 v0, 0x0

    .line 1423
    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->fmwVersionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private stopScan(I)V
    .locals 2

    .line 1778
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 1779
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1783
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u505c\u6b62\u626b\u63cf\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1784
    iput-wide v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->lastScantime:J

    if-nez p1, :cond_1

    .line 1786
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mBluetoothH5Client:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScan()V

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1788
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mBluetoothBaseClient:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScan()V

    return-void

    .line 1790
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mBluetoothH5Client:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScan()V

    .line 1791
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mBluetoothBaseClient:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScan()V

    :cond_4
    :goto_0
    return-void
.end method

.method private stopTcpServerInternal()V
    .locals 2

    .line 1837
    const-string v0, "===closeServerSocket()==="

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1838
    iget v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->tcpServerGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->tcpServerGeneration:I

    const/4 v0, 0x0

    .line 1839
    iput-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isTcpServerRunning:Z

    .line 1840
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSimulatorOutputLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1841
    :try_start_0
    iput-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSimulatorOutputStream:Ljava/io/OutputStream;

    .line 1842
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1843
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mServerSocket:Ljava/net/ServerSocket;

    .line 1844
    iput-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mServerSocket:Ljava/net/ServerSocket;

    .line 1845
    invoke-direct {p0, v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->closeQuietly(Ljava/net/ServerSocket;)V

    .line 1846
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->clientSocket:Ljava/net/Socket;

    .line 1847
    iput-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->clientSocket:Ljava/net/Socket;

    .line 1848
    invoke-direct {p0, v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->closeQuietly(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception v1

    .line 1842
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private stopWorkTimer()V
    .locals 2

    .line 1015
    const-string/jumbo v0, "\u5173\u95ed\u5b9a\u65f6\u5668(\u5fc3\u8df3\u3001\u7535\u91cf\u3001\u89d2\u5ea6\u7b49)"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->workFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 1017
    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->workFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1018
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->workExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method private syncCurrentDevice(Lcom/qianhe/baselib/enums/DeviceType;Landroid/bluetooth/BluetoothDevice;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;
    .locals 3

    .line 1161
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v0, :cond_1

    .line 1162
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mCurrentDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-nez v0, :cond_0

    .line 1163
    new-instance v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-direct {v0, p2, p1}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/baselib/enums/DeviceType;)V

    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mCurrentDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mCurrentDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    goto :goto_0

    .line 1167
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mCurrentBaseDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-nez v0, :cond_2

    .line 1168
    new-instance v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-direct {v0, p2, p1}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/baselib/enums/DeviceType;)V

    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mCurrentBaseDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    .line 1170
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mCurrentBaseDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    :goto_0
    if-eqz p2, :cond_4

    .line 1173
    invoke-virtual {v0, p2}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->assignBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 1174
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/qianhe/yct/service/BluetoothConnectService;->findScannedDevice(Ljava/lang/String;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1176
    invoke-virtual {v0, p2}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->mergeDisplayNameFrom(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 1177
    iget-object v1, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-eqz v1, :cond_3

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->NONE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v1, v2, :cond_4

    .line 1178
    :cond_3
    iget-object p2, p2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iput-object p2, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 1182
    :cond_4
    iput-object p1, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    return-object v0
.end method

.method private updateForegroundNotification()V
    .locals 2

    .line 469
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0x3e9

    .line 470
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->buildForegroundNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 197
    invoke-static {p1}, Lcom/qianhe/baselib/utils/LanguagePrefs;->wrapContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getMultiBluetoothManager()Lcom/qianhe/rtkclientlib/MultiBluetoothManager;
    .locals 1

    .line 1799
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->multiBluetoothManager:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 202
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->localBinder:Lcom/qianhe/yct/service/BluetoothConnectService$LocalBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 207
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 208
    const-string v0, "================BluetoothConnectService onCreate()=================="

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 211
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 212
    const-string v0, "Service Channel"

    const/4 v1, 0x4

    const-string v2, "BluetoothConnectService"

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/util/NotificationUtil$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 213
    const-class v1, Landroid/app/NotificationManager;

    invoke-static {p0, v1}, Lcom/qianhe/yct/service/BluetoothConnectService$$ExternalSyntheticApiModelOutline0;->m(Lcom/qianhe/yct/service/BluetoothConnectService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 214
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/NotificationUtil$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->updateForegroundNotification()V

    .line 217
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->localeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    const-string/jumbo v0, "sp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSp:Landroid/content/SharedPreferences;

    .line 221
    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v2

    const-string v3, "mode"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mMode:I

    .line 222
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->multiBluetoothManager:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    .line 223
    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getBluetoothClient(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mBluetoothH5Client:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    .line 224
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->multiBluetoothManager:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getBluetoothClient(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mBluetoothBaseClient:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    .line 225
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->bluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    iget v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mMode:I

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 228
    const-string v0, "<\u2014\u2014\u2014\u2014\u2014\u2014\u2014\u2014 \u84dd\u7259\u6a21\u5f0f \u2014\u2014\u2014\u2014\u2014\u2014\u2014\u2014>"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->openBluetooth()V

    goto :goto_0

    .line 230
    :cond_1
    iget v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mMode:I

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->DEMO:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 231
    const-string v0, "<\u2014\u2014\u2014\u2014\u2014\u2014\u2014\u2014 \u5f00\u542f\u6f14\u793a\u6a21\u5f0f \u2014\u2014\u2014\u2014\u2014\u2014\u2014\u2014>"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 233
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->ensureLocalDefaultEngineering()Z

    .line 234
    const-string/jumbo v0, "\u8bfb\u53d6\u914d\u7f6e\u6587\u4ef6"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    .line 236
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/utils/DemoDataManager;->startDemoExtcutor(I)V

    .line 237
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->setIsH5ProDemo(Z)V

    .line 239
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->startTcpServer()V

    .line 241
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->requestRoughNetworkLocation()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1804
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1805
    const-string v0, "================BluetoothConnectService onDestroy()=================="

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1806
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 1807
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/DemoDataManager;->release()V

    .line 1808
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->stopWorkTimer()V

    const/4 v0, -0x1

    .line 1809
    invoke-direct {p0, v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->stopScan(I)V

    .line 1810
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->bluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1812
    :try_start_0
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->localeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1815
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mBluetoothH5Client:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->release()V

    .line 1816
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mBluetoothBaseClient:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->release()V

    .line 1817
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->diffClientDisconnect()V

    .line 1818
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1819
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/DemoDataManager;->stopDemoExecutor()V

    .line 1820
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->closeServerSocket()V

    .line 1821
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->stopBlueCheckTimer()V

    .line 1822
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->stopFmwVersionTimer()V

    .line 1823
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->diffExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1824
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->diffFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1825
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->scanExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1826
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->multiBluetoothManager:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->disconnectAll()V

    .line 1827
    :cond_5
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->shutdownTcpThreadPool()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/base/BaseConfig;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 861
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->ggaEntity:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v0, :cond_3

    iget v0, v0, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    if-lez v0, :cond_3

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseConfig -> ntrip\u65ad\u5f00\u91cd\u8fde("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    sget-object v2, Lcom/qianhe/baselib/enums/NtripTypeEnum;->SDK:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string v1, "SDK"

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    sget-object v2, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_1

    const-string v1, "NTRIP"

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/qianhe/baselib/base/BaseConfig;->mount_point:Ljava/lang/String;

    const-string v2, "AUTO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ACC"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "\u81ea\u5b9a\u4e49CROS"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 863
    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->diffExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 864
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    .line 865
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->diffClientDisconnect()V

    .line 866
    sget-object p1, Lcom/qianhe/yct/enums/DiffActionEnum;->UPGRADE:Lcom/qianhe/yct/enums/DiffActionEnum;

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->ggaEntity:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/GGAEntity;->ggaStr:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->initDiffClient(Lcom/qianhe/yct/enums/DiffActionEnum;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_4

    .line 1481
    iget-object v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 1482
    :cond_0
    iget-object v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->ggaStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->ggaEntity:Lcom/qianhe/baselib/bean/GGAEntity;

    .line 1483
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "obtain_difference_type"

    const-string v2, "bluetooth"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1484
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1485
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->ggaEntity:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    if-lez v0, :cond_2

    sget-object v0, Lcom/qianhe/yct/enums/DiffActionEnum;->INIT:Lcom/qianhe/yct/enums/DiffActionEnum;

    iget-object v1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->ggaStr:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->initDiffClient(Lcom/qianhe/yct/enums/DiffActionEnum;Ljava/lang/String;)V

    .line 1486
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->diffExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_3

    .line 1487
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mDiffClient:Lcom/qianhe/ntripclientlib/base/DiffClientImpl;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->ggaEntity:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v1, :cond_3

    iget v1, v1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    if-lez v1, :cond_3

    .line 1488
    iget-object v1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->ggaStr:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/qianhe/ntripclientlib/base/DiffClientImpl;->updateGgaData(Ljava/lang/String;)V

    .line 1492
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mRoughCoords:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_4

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->latitude:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_4

    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/GGAEntity;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->elevation:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mRoughCoords:Ljava/lang/String;

    .line 1494
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "current_coords"

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mRoughCoords:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1495
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u5f53\u524d\u8bbe\u5907\u5750\u6807\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mRoughCoords:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/OrderBean;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1449
    iget-object v0, p1, Lcom/qianhe/baselib/bean/OrderBean;->str:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/qianhe/baselib/bean/OrderBean;->array:[B

    if-nez v0, :cond_0

    return-void

    .line 1450
    :cond_0
    iget-object v0, p1, Lcom/qianhe/baselib/bean/OrderBean;->str:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/qianhe/baselib/bean/OrderBean;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/qianhe/baselib/bean/OrderBean;->array:[B

    .line 1451
    :goto_0
    iget-object v1, p1, Lcom/qianhe/baselib/bean/OrderBean;->str:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1452
    const-string v1, "XWQ"

    iget-object v2, p1, Lcom/qianhe/baselib/bean/OrderBean;->str:Ljava/lang/String;

    nop

    nop

    nop

    .line 1453
    iget-object v1, p1, Lcom/qianhe/baselib/bean/OrderBean;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "\n"

    if-ne v1, v2, :cond_2

    .line 1454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/qianhe/baselib/bean/OrderBean;->str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/BaseBleLogCache;->writeToFile(Ljava/lang/String;)V

    goto :goto_1

    .line 1455
    :cond_2
    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v1, v2, :cond_3

    .line 1456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/qianhe/baselib/bean/OrderBean;->str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/BleLogCache;->writeToFile(Ljava/lang/String;)V

    goto :goto_1

    .line 1458
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/qianhe/baselib/bean/OrderBean;->str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/BaseBleLogCache;->writeToFile(Ljava/lang/String;)V

    .line 1459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/qianhe/baselib/bean/OrderBean;->str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/BleLogCache;->writeToFile(Ljava/lang/String;)V

    .line 1462
    :cond_4
    :goto_1
    iget-object p1, p1, Lcom/qianhe/baselib/bean/OrderBean;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v1, :cond_5

    .line 1463
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceBase()Lcom/qh/yctdevice/YctDevice;

    move-result-object p1

    array-length v1, v0

    invoke-virtual {p1, v0, v1}, Lcom/qh/yctdevice/YctDevice;->sendToDevice([BI)V

    return-void

    .line 1464
    :cond_5
    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v1, :cond_6

    .line 1465
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object p1

    array-length v1, v0

    invoke-virtual {p1, v0, v1}, Lcom/qh/yctdevice/YctDevice;->sendToDevice([BI)V

    return-void

    .line 1467
    :cond_6
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceBase()Lcom/qh/yctdevice/YctDevice;

    move-result-object p1

    array-length v1, v0

    invoke-virtual {p1, v0, v1}, Lcom/qh/yctdevice/YctDevice;->sendToDevice([BI)V

    .line 1468
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object p1

    array-length v1, v0

    invoke-virtual {p1, v0, v1}, Lcom/qh/yctdevice/YctDevice;->sendToDevice([BI)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/ntripclientlib/bean/AuthResult;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 872
    iget v0, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->result:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 873
    iget-object p1, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    .line 874
    const-string p1, "---\u8bf7\u6c42acc\u8d26\u6237\u5931\u8d25\uff0c\u5207\u6362\u4e3asdk\u6a21\u5f0f---"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 875
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->diffClientDisconnect()V

    const/4 p1, 0x0

    .line 876
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->diffExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 877
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->ggaEntity:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    if-lez v0, :cond_1

    sget-object v0, Lcom/qianhe/yct/enums/DiffActionEnum;->UPGRADE:Lcom/qianhe/yct/enums/DiffActionEnum;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->ggaStr:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->initDiffClient(Lcom/qianhe/yct/enums/DiffActionEnum;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 879
    iget-object p1, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    .line 880
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "SET,DATALINK,BLUETOOTH"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 881
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "obtain_difference_type"

    const-string v1, "bluetooth"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/AntennaParams;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 790
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/AntennaParams;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    .line 791
    iget v0, p1, Lcom/qianhe/rtkclientlib/event/AntennaParams;->h:F

    iget v1, p1, Lcom/qianhe/rtkclientlib/event/AntennaParams;->HL1:F

    add-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 792
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "zpy_antennaheight"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5929\u7ebf\u53c2\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/event/AntennaParams;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\uff0c\u76f8\u4f4d\u4e2d\u5fc3\u5230\u8bbe\u5907\u5e95\u90e8\u9ad8\uff1a"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\u7c73"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    .line 804
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 805
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/application/YCTApplication;->setBaseStatus(Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/BlueData;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1474
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/BlueData;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isH5DataAnswer:Z

    .line 1475
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v0, :cond_1

    iput-boolean v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isBaseDataAnswer:Z

    :cond_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/Expiredate;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x1

    .line 1416
    iput-boolean p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->hasExpiredate:Z

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/FeaturesEvent;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x1

    .line 1502
    iput-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->featuresAnswer:Z

    .line 1504
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v1, v2, :cond_1

    .line 1505
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    const-string v2, "NO_NTRIP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "SUPPORT_NTRIP"

    if-eqz v1, :cond_0

    .line 1507
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/NtripTypeEnum;->SDK:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/manage/AppConfigManager;->setNtriptype(I)V

    .line 1508
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->supportH5Ntrip:Ljava/lang/Boolean;

    .line 1509
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1512
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->supportH5Ntrip:Ljava/lang/Boolean;

    .line 1513
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1515
    :goto_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    const-string v2, "RADIO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->setH5SupportRadio(Z)V

    .line 1518
    :cond_1
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->NONE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "EXCAVATOR2"

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mMode:I

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 1519
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentBaseDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    :goto_1
    iget-object v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    goto :goto_1

    .line 1520
    :goto_2
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qianhe/yct/db/DatabaseManager;->isDeviceSnExists(Ljava/lang/String;)Z

    move-result v3

    .line 1522
    iget-object v4, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v4, v1, :cond_3

    .line 1523
    const-string v1, "base"

    goto :goto_3

    .line 1525
    :cond_3
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "h5pro"

    goto :goto_3

    :cond_4
    const-string v1, "h5"

    :goto_3
    if-nez v3, :cond_5

    .line 1528
    new-instance v3, Lcom/qianhe/yct/bean/DeviceInfo;

    invoke-direct {v3}, Lcom/qianhe/yct/bean/DeviceInfo;-><init>()V

    .line 1529
    iput-object v0, v3, Lcom/qianhe/yct/bean/DeviceInfo;->sn:Ljava/lang/String;

    .line 1530
    iput-object v1, v3, Lcom/qianhe/yct/bean/DeviceInfo;->type:Ljava/lang/String;

    .line 1531
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/qianhe/yct/db/DatabaseManager;->insertDeviceInfo(Lcom/qianhe/yct/bean/DeviceInfo;)J

    goto :goto_4

    .line 1533
    :cond_5
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryDeviceInfo(Ljava/lang/String;)Lcom/qianhe/yct/bean/DeviceInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/qianhe/yct/bean/DeviceInfo;->updateTime:J

    .line 1536
    iput-object v0, v3, Lcom/qianhe/yct/bean/DeviceInfo;->sn:Ljava/lang/String;

    .line 1537
    iput-object v1, v3, Lcom/qianhe/yct/bean/DeviceInfo;->type:Ljava/lang/String;

    .line 1538
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/qianhe/yct/db/DatabaseManager;->updateDeviceInfo(Lcom/qianhe/yct/bean/DeviceInfo;)I

    .line 1542
    :cond_6
    :goto_4
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/application/YCTApplication;->setIsH5ProDemo(Z)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/GnssInfo;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 840
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/Constant;->GNSS_FWM_VERSION:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/GnssInfo;->gnssVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 841
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GnssInfo;->gnssVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qianhe/yct/service/BluetoothConnectService$5;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/service/BluetoothConnectService$5;-><init>(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/rtkclientlib/event/GnssInfo;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 849
    :cond_0
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GnssInfo;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->NONE:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mMode:I

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 850
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GnssInfo;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentBaseDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    :goto_0
    iget-object v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    goto :goto_0

    .line 851
    :goto_1
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryDeviceInfo(Ljava/lang/String;)Lcom/qianhe/yct/bean/DeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 853
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GnssInfo;->gnssVersion:Ljava/lang/String;

    iput-object p1, v0, Lcom/qianhe/yct/bean/DeviceInfo;->gnssVersion:Ljava/lang/String;

    .line 854
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->updateDeviceInfo(Lcom/qianhe/yct/bean/DeviceInfo;)I

    :cond_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/RtkInfo;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1378
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/RtkInfo;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    .line 1379
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/application/YCTApplication;->setBaseInfo(Lcom/qianhe/rtkclientlib/event/RtkInfo;)V

    goto :goto_0

    .line 1381
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/application/YCTApplication;->setRtkInfo(Lcom/qianhe/rtkclientlib/event/RtkInfo;)V

    .line 1383
    :goto_0
    iget-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->hasRtkInfo:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1384
    iput-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->hasRtkInfo:Z

    .line 1386
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v3, p1, Lcom/qianhe/rtkclientlib/event/RtkInfo;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v4, "GET,GNSS.INFO"

    invoke-direct {v2, v3, v4}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1387
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/RtkInfo;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v2, :cond_1

    .line 1389
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/RtkInfo;->firmwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->notifyUsedDevice(Ljava/lang/String;)V

    .line 1393
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "hardwareversionh5"

    iget-object v3, p1, Lcom/qianhe/rtkclientlib/event/RtkInfo;->hardwareVersion:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1395
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/rtkclientlib/event/DeviceModelEvent;

    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getDeviceModel()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/qianhe/rtkclientlib/event/DeviceModelEvent;-><init>(I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1397
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/RtkInfo;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->NONE:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mMode:I

    sget-object v2, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 1398
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/RtkInfo;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentBaseDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    :goto_1
    iget-object v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    goto :goto_1

    .line 1399
    :goto_2
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryDeviceInfo(Ljava/lang/String;)Lcom/qianhe/yct/bean/DeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1401
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/RtkInfo;->hardwareVersion:Ljava/lang/String;

    iput-object v0, v1, Lcom/qianhe/yct/bean/DeviceInfo;->pnVersion:Ljava/lang/String;

    .line 1402
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/RtkInfo;->firmwareVersion:Ljava/lang/String;

    iput-object p1, v1, Lcom/qianhe/yct/bean/DeviceInfo;->fmwVersion:Ljava/lang/String;

    .line 1403
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateDeviceInfo(Lcom/qianhe/yct/bean/DeviceInfo;)I

    return-void

    .line 1405
    :cond_3
    new-instance v1, Lcom/qianhe/yct/bean/DeviceInfo;

    invoke-direct {v1}, Lcom/qianhe/yct/bean/DeviceInfo;-><init>()V

    .line 1406
    iput-object v0, v1, Lcom/qianhe/yct/bean/DeviceInfo;->sn:Ljava/lang/String;

    .line 1407
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/RtkInfo;->hardwareVersion:Ljava/lang/String;

    iput-object v0, v1, Lcom/qianhe/yct/bean/DeviceInfo;->pnVersion:Ljava/lang/String;

    .line 1408
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/RtkInfo;->firmwareVersion:Ljava/lang/String;

    iput-object p1, v1, Lcom/qianhe/yct/bean/DeviceInfo;->fmwVersion:Ljava/lang/String;

    .line 1409
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/db/DatabaseManager;->insertDeviceInfo(Lcom/qianhe/yct/bean/DeviceInfo;)J

    :cond_4
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 799
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/application/YCTApplication;->setSensorInfo(Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/Serial;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 811
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->requestSerial:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/Serial;->sn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 812
    iput-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->requestSerial:Z

    .line 813
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSp:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v2

    const-string v3, "mode"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 814
    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 815
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/Serial;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_1

    .line 816
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deviceSn"

    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/Serial;->sn:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u67e5\u8be2H5\u4e3b\u673a\u53f7-\u4fdd\u5b58\u5230\u672c\u5730\u5b8c\u6210 \u2014\u2014> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/Serial;->sn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 818
    :cond_1
    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_2

    .line 819
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "base_deviceSn"

    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/Serial;->sn:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u67e5\u8be2BASE\u4e3b\u673a\u53f7-\u4fdd\u5b58\u5230\u672c\u5730\u5b8c\u6210 \u2014\u2014> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/Serial;->sn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 824
    :cond_2
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/Serial;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "GET,EXPIREDATE"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 825
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qianhe/yct/service/BluetoothConnectService$4;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/service/BluetoothConnectService$4;-><init>(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/rtkclientlib/event/Serial;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/AppVersionCheckEndEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x1

    .line 1711
    iput-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isAppVersionCheckEnd:Z

    .line 1712
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/application/YCTApplication;->setAppVersionCheckedComplete(Z)V

    .line 1713
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->setCheckFmwUpgrade(Z)V

    .line 1714
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->resetFmwListRequestState()V

    .line 1715
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->stopFmwVersionTimer()V

    .line 1716
    iput-boolean v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->featuresAnswer:Z

    .line 1718
    iget-object p1, p1, Lcom/qianhe/yct/event/AppVersionCheckEndEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->checkFmwUpgrade(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectActionByMacEvent;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1581
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectActionByMacEvent;->mac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1582
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectActionByMacEvent;->mac:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->resolveBondedDeviceByAddress(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1583
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mBluetoothH5Client:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mBluetoothH5Client:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p1, Lcom/qianhe/yct/event/BluetoothConnectActionByMacEvent;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 1589
    :cond_1
    new-instance v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-direct {v1, v0}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 1590
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->multiBluetoothManager:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getDeviceType(Ljava/lang/String;Ljava/lang/String;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v0

    .line 1591
    iput-object v0, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 1592
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getConnectedDevice(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1593
    iget v3, v2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v4, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v5

    if-ne v3, v5, :cond_3

    iget-object v3, v2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectActionByMacEvent;->mac:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 1598
    :cond_2
    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result p1

    iput p1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 1599
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    invoke-direct {v0, v1}, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1600
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u8bbe\u5907\u5df2\u8fde\u63a5(NFC): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 1595
    :cond_3
    :goto_0
    sget-object p1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, p1, :cond_4

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "activeDisconnect"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1596
    :cond_4
    invoke-direct {p0, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->connect(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectActionEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1609
    iget v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mMode:I

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 1610
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;->action:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    sget-object v1, Lcom/qianhe/yct/enums/BluetoothActionEnum;->CONNECT:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    if-ne v0, v1, :cond_5

    .line 1611
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mBluetoothH5Client:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mBluetoothH5Client:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->openBluetooth(Landroid/content/Context;)V

    .line 1612
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->resolveConnectTarget(Lcom/qianhe/yct/event/BluetoothConnectActionEvent;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1614
    invoke-direct {p0, v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->connect(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    return-void

    .line 1615
    :cond_1
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;->deviceAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1616
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->resolveBondedDeviceByAddress(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1618
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mBluetoothH5Client:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p1, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1620
    :cond_2
    new-instance v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object v2, p1, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v1, v0, v2}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 1621
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1622
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;->deviceName:Ljava/lang/String;

    iput-object p1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceName:Ljava/lang/String;

    .line 1624
    :cond_3
    invoke-direct {p0, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->connect(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    return-void

    .line 1625
    :cond_4
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;->deviceName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1626
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/BluetoothScanActionEvent;

    sget-object v1, Lcom/qianhe/yct/enums/BluetoothActionEnum;->STARTSCAN:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/event/BluetoothScanActionEvent;-><init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;Z)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 1628
    :cond_5
    sget-object v1, Lcom/qianhe/yct/enums/BluetoothActionEnum;->DISCONNECT:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    if-ne v0, v1, :cond_6

    .line 1629
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->multiBluetoothManager:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->disconnectDevice(Lcom/qianhe/baselib/enums/DeviceType;)V

    :cond_6
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1326
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1327
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    .line 1328
    const-string/jumbo v0, "\u627e\u5e73\u4eea\u5df2\u8fde\u63a5\uff0c\u91cd\u7f6e\u5dee\u5206"

    invoke-direct {p0, v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->releaseDiffClient(Ljava/lang/String;)V

    .line 1330
    :cond_0
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->checkFmwUpgrade(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void

    .line 1331
    :cond_1
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v0, :cond_3

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1332
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v0, :cond_2

    .line 1334
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/application/YCTApplication;->setCheckApkList(Z)V

    .line 1336
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothScanActionEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1549
    iget v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mMode:I

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1550
    iget-boolean v0, p1, Lcom/qianhe/yct/event/BluetoothScanActionEvent;->isAutoConnect:Z

    iput-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isAutoConnect:Z

    .line 1551
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothScanActionEvent;->action:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    sget-object v1, Lcom/qianhe/yct/enums/BluetoothActionEnum;->STARTSCAN:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    if-ne v0, v1, :cond_0

    .line 1552
    iget p1, p1, Lcom/qianhe/yct/event/BluetoothScanActionEvent;->pageIndex:I

    iput p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->scanPageIndex:I

    .line 1553
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->startScan()V

    return-void

    .line 1554
    :cond_0
    sget-object v1, Lcom/qianhe/yct/enums/BluetoothActionEnum;->STOPSCAN:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    if-ne v0, v1, :cond_1

    .line 1555
    iget v0, p1, Lcom/qianhe/yct/event/BluetoothScanActionEvent;->pageIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->scanPageIndex:I

    .line 1556
    iget p1, p1, Lcom/qianhe/yct/event/BluetoothScanActionEvent;->pageIndex:I

    invoke-direct {p0, p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->stopScan(I)V

    :cond_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothSensorScanEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1565
    iget v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mMode:I

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1566
    iget-boolean v0, p1, Lcom/qianhe/yct/event/BluetoothSensorScanEvent;->isAutoConnect:Z

    iput-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isAutoConnect:Z

    .line 1567
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothSensorScanEvent;->action:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    sget-object v1, Lcom/qianhe/yct/enums/BluetoothActionEnum;->STARTSCAN:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    if-ne v0, v1, :cond_0

    .line 1568
    iget p1, p1, Lcom/qianhe/yct/event/BluetoothSensorScanEvent;->pageIndex:I

    iput p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->scanPageIndex:I

    .line 1569
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->startScan()V

    return-void

    .line 1570
    :cond_0
    sget-object v1, Lcom/qianhe/yct/enums/BluetoothActionEnum;->STOPSCAN:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    if-ne v0, v1, :cond_1

    .line 1571
    iget v0, p1, Lcom/qianhe/yct/event/BluetoothSensorScanEvent;->pageIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->scanPageIndex:I

    .line 1572
    iget p1, p1, Lcom/qianhe/yct/event/BluetoothSensorScanEvent;->pageIndex:I

    invoke-direct {p0, p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->stopScan(I)V

    :cond_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/ReloadAppConfigEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 767
    iget-object v0, p1, Lcom/qianhe/yct/event/ReloadAppConfigEvent;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    if-nez v0, :cond_0

    .line 768
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    .line 769
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u91cd\u65b0\u4f7f\u7528\u914d\u7f6e(BluetoothConnectService)\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/qianhe/yct/event/ReloadAppConfigEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->setAppConfig(Lcom/qianhe/yct/bean/AppConfig;)V

    .line 771
    iget-object p1, p1, Lcom/qianhe/yct/event/ReloadAppConfigEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->loadPacketOutput(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/RequestINSEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 496
    iget v0, p1, Lcom/qianhe/yct/event/RequestINSEvent;->interval:F

    sget-object v1, Lcom/qianhe/baselib/enums/FrequencyEnum;->AUTO:Lcom/qianhe/baselib/enums/FrequencyEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/FrequencyEnum;->getFrequency()F

    move-result v1

    const-string v2, "LOG,INS.NAVI,ONTIME,"

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 498
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v3, p1, Lcom/qianhe/yct/event/RequestINSEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/qianhe/yct/event/RequestINSEvent;->interval:F

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 500
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v3, p1, Lcom/qianhe/yct/event/RequestINSEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/qianhe/baselib/enums/FrequencyEnum;->HZ_5:Lcom/qianhe/baselib/enums/FrequencyEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/FrequencyEnum;->getFrequency()F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 502
    :goto_0
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    iget v1, p1, Lcom/qianhe/yct/event/RequestINSEvent;->interval:F

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/manage/AppConfigManager;->setInsInterval(F)V

    .line 503
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget p1, p1, Lcom/qianhe/yct/event/RequestINSEvent;->interval:F

    div-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float v1, v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/manage/AppConfigManager;->setInsUnavailableCount(I)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/StartDemo;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1686
    sget-object v0, Lcom/qianhe/baselib/enums/ConnectModeEnum;->DEMO:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mMode:I

    .line 1687
    const-string/jumbo v0, "\u5f00\u542f\u6f14\u793a\u6a21\u5f0f"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1689
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->ensureLocalDefaultEngineering()Z

    .line 1690
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mBluetoothH5Client:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->disconnect()V

    .line 1691
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mBluetoothBaseClient:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->disconnect()V

    .line 1692
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v0

    iget p1, p1, Lcom/qianhe/yct/event/StartDemo;->type:I

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/utils/DemoDataManager;->startDemoExtcutor(I)V

    .line 1694
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->startTcpServer()V

    .line 1695
    const-string/jumbo p1, "\u6f14\u793a\u6a21\u5f0f\u5df2\u5f00\u542f"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/StopDemo;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x1

    .line 1700
    iput-boolean p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isAutoConnect:Z

    .line 1701
    const-string p1, ""

    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mRoughCoords:Ljava/lang/String;

    .line 1702
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "current_coords"

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mRoughCoords:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1703
    sget-object p1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {p1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mMode:I

    .line 1704
    const-string/jumbo p1, "\u505c\u6b62\u6f14\u793a\u6a21\u5f0f"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1705
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/utils/DemoDataManager;->release()V

    .line 1706
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->closeServerSocket()V

    return-void
.end method

.method public onEventMessage(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1724
    const-string v0, "debug"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mMode:I

    sget-object v2, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1725
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    .line 1726
    :cond_0
    const-string v1, "activeDisconnect"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 1731
    :cond_1
    const-string v0, "activeDisconnect_base"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1733
    iget-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->startGnssUpgrade:Z

    if-nez v0, :cond_c

    .line 1734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u505c\u6b62BASE\u65ad\u8fde\u68c0\u6d4b\uff1aevent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1735
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->stopBlueCheckTimer()V

    return-void

    .line 1737
    :cond_2
    const-string v0, "pairingListCleared_zpy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 1738
    iput-boolean v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->skipH5AutoReconnect:Z

    .line 1739
    iput-boolean v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->startCheckH5:Z

    .line 1740
    iput-boolean v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->isAutoConnect:Z

    .line 1741
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "latestDeviceAddress"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1742
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->multiBluetoothManager:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->stopAutoReconnect()V

    .line 1743
    iget-boolean p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->startGnssUpgrade:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->startCheckBase:Z

    if-nez p1, :cond_3

    .line 1744
    const-string/jumbo p1, "\u6e05\u7a7a\u627e\u5e73\u4eea\u914d\u5bf9\u5217\u8868\uff0c\u505c\u6b62\u81ea\u52a8\u91cd\u8fde"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1745
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->stopBlueCheckTimer()V

    return-void

    .line 1747
    :cond_3
    const-string/jumbo p1, "\u6e05\u7a7a\u627e\u5e73\u4eea\u914d\u5bf9\u5217\u8868\uff0c\u8df3\u8fc7H5\u81ea\u52a8\u91cd\u8fde"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 1749
    :cond_4
    const-string v0, "pairingListCleared_base"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1750
    iput-boolean v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->skipBaseAutoReconnect:Z

    .line 1751
    iput-boolean v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->startCheckBase:Z

    .line 1752
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->multiBluetoothManager:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->stopAutoReconnect()V

    .line 1753
    iget-boolean p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->startGnssUpgrade:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->startCheckH5:Z

    if-nez p1, :cond_5

    .line 1754
    const-string/jumbo p1, "\u6e05\u7a7a\u57fa\u7ad9\u914d\u5bf9\u5217\u8868\uff0c\u505c\u6b62\u81ea\u52a8\u91cd\u8fde"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1755
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->stopBlueCheckTimer()V

    return-void

    .line 1757
    :cond_5
    const-string/jumbo p1, "\u6e05\u7a7a\u57fa\u7ad9\u914d\u5bf9\u5217\u8868\uff0c\u8df3\u8fc7BASE\u81ea\u52a8\u91cd\u8fde"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 1759
    :cond_6
    const-string v0, "diffClientDisconnect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1760
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->diffClientDisconnect()V

    return-void

    .line 1761
    :cond_7
    const-string/jumbo v0, "startGnssUpgrade"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1762
    iput-boolean v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->startGnssUpgrade:Z

    .line 1763
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->stopWorkTimer()V

    .line 1764
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->stopBlueCheckTimer()V

    return-void

    .line 1765
    :cond_8
    const-string v0, "restoreConnectCheck"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1766
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->startWorkTimer()V

    .line 1767
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->startBlueCheckTimer()V

    return-void

    .line 1768
    :cond_9
    const-string/jumbo v0, "stopWorkTimer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1769
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->stopWorkTimer()V

    .line 1770
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->stopBlueCheckTimer()V

    return-void

    .line 1771
    :cond_a
    const-string/jumbo v0, "startWorkTimer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1772
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->startWorkTimer()V

    .line 1773
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->startBlueCheckTimer()V

    return-void

    .line 1727
    :cond_b
    :goto_0
    iget-boolean v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService;->startGnssUpgrade:Z

    if-nez v0, :cond_c

    .line 1728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u505c\u6b62H5\u65ad\u8fde\u68c0\u6d4b\uff1aevent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1729
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->stopBlueCheckTimer()V

    :cond_c
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 453
    invoke-direct {p0}, Lcom/qianhe/yct/service/BluetoothConnectService;->updateForegroundNotification()V

    const/4 p1, 0x1

    return p1
.end method
