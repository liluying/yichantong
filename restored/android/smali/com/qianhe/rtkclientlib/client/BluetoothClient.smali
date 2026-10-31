.class public Lcom/qianhe/rtkclientlib/client/BluetoothClient;
.super Ljava/lang/Object;
.source "BluetoothClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;,
        Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;,
        Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;,
        Lcom/qianhe/rtkclientlib/client/BluetoothClient$SimulatorSendCallback;,
        Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;
    }
.end annotation


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bondReceiverRegistered:Z

.field private bondUiFallbackRunnable:Ljava/lang/Runnable;

.field private bondUiReachedBonding:Z

.field private bondUiRequestedAddress:Ljava/lang/String;

.field private bondUiRequestedAt:J

.field private bondWatchRunnable:Ljava/lang/Runnable;

.field private bondWatchSawBonding:Z

.field private bondWatchStartedAt:J

.field private bondedConnectFailAddress:Ljava/lang/String;

.field private bondedConnectFailCount:I

.field private bondedProbeStartedAt:J

.field private bondedRfcommTimeoutRunnable:Ljava/lang/Runnable;

.field private bondingInProgress:Z

.field private clearingBondAddress:Ljava/lang/String;

.field private volatile connectSessionId:J

.field private volatile connectingSocket:Landroid/bluetooth/BluetoothSocket;

.field private connectionListener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

.field private context:Landroid/content/Context;

.field private ensureNewBondUiRunnable:Ljava/lang/Runnable;

.field private errorCount:J

.field private executorSend:Ljava/util/concurrent/ExecutorService;

.field private expectReboot:Z

.field private inputStream:Ljava/io/InputStream;

.field private isConnecting:Z

.field private isScanning:Z

.field private final lastAdvertisedAtByAddress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastBondCompletedAt:J

.field private lastBondDeviceAddress:Ljava/lang/String;

.field private lastScanResultAt:J

.field private lastStaleBondRepairAt:J

.field private mConnectThread:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

.field private final mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field private final mHandler:Landroid/os/Handler;

.field private mReceiveDataThread:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;

.field private final mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private mSocket:Landroid/bluetooth/BluetoothSocket;

.field private mmDevice:Landroid/bluetooth/BluetoothDevice;

.field private outputStream:Ljava/io/OutputStream;

.field private pendingConnectAddress:Ljava/lang/String;

.field private postBondConnectRunnable:Ljava/lang/Runnable;

.field private volatile postBondConnectScheduled:Z

.field private presenceScanForBondProbe:Z

.field private volatile removingStaleBond:Z

.field private repairBondAfterRemovedRunnable:Ljava/lang/Runnable;

.field private final reportedScanAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final scanDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private scanExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private scanListener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;

.field private final scanReceiver:Landroid/content/BroadcastReceiver;

.field private schedule:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private socketClosed:Z

.field private staleBondRemovedAt:J

.field private staleBondRepairAddress:Ljava/lang/String;

.field private staleBondRepairCount:I

.field private final stopScanCallbacks:Ljava/lang/Runnable;

.field private upgradeStart:Z

.field private userCancelledBondAddress:Ljava/lang/String;

.field private userCancelledBondUntilMs:J


# direct methods
.method static bridge synthetic -$$Nest$fgetbluetoothAdapter(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbondUiReachedBonding(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiReachedBonding:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbondWatchSawBonding(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondWatchSawBonding:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbondWatchStartedAt(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondWatchStartedAt:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetbondingInProgress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetconnectSessionId(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->connectSessionId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetconnectingSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothSocket;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->connectingSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetconnectionListener(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->connectionListener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisConnecting(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isConnecting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectThread(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mConnectThread:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceType(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/baselib/enums/DeviceType;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReceiveDataThread(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mReceiveDataThread:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanCallback(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/le/ScanCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothSocket;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmmDevice(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoutputStream(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Ljava/io/OutputStream;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->outputStream:Ljava/io/OutputStream;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpendingConnectAddress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetremovingStaleBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->removingStaleBond:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrepairBondAfterRemovedRunnable(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->repairBondAfterRemovedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscanDevices(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scanDevices:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscanListener(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scanListener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsocketClosed(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->socketClosed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstaleBondRemovedAt(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->staleBondRemovedAt:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetstopScanCallbacks(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScanCallbacks:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbondUiFallbackRunnable(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiFallbackRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbondWatchSawBonding(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondWatchSawBonding:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbondedProbeStartedAt(Lcom/qianhe/rtkclientlib/client/BluetoothClient;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedProbeStartedAt:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbondedRfcommTimeoutRunnable(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedRfcommTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbondingInProgress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputclearingBondAddress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearingBondAddress:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputconnectingSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothSocket;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->connectingSocket:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputensureNewBondUiRunnable(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->ensureNewBondUiRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputexpectReboot(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->expectReboot:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputinputStream(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/io/InputStream;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisConnecting(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isConnecting:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisScanning(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isScanning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReceiveDataThread(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mReceiveDataThread:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothSocket;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mSocket:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmmDevice(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoutputStream(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/io/OutputStream;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->outputStream:Ljava/io/OutputStream;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpendingConnectAddress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpostBondConnectRunnable(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->postBondConnectRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpostBondConnectScheduled(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->postBondConnectScheduled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpresenceScanForBondProbe(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->presenceScanForBondProbe:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrepairBondAfterRemovedRunnable(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->repairBondAfterRemovedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsocketClosed(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->socketClosed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstaleBondRemovedAt(Lcom/qianhe/rtkclientlib/client/BluetoothClient;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->staleBondRemovedAt:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelBondedRfcommTimeout(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBondedRfcommTimeout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelOtherBondProcesses(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelOtherBondProcesses(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseQuietly(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/AutoCloseable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mensurePresenceScanForBondProbe(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->ensurePresenceScanForBondProbe()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleBondBroadcast(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/content/Intent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->handleBondBroadcast(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleBondCancelled(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->handleBondCancelled(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleScanResult(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/le/ScanResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->handleScanResult(Landroid/bluetooth/le/ScanResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAwaitingReplacementBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isAwaitingReplacementBond(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misBondUiRequested(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isBondUiRequested(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misConfirmedStaleBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isConfirmedStaleBond(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misConnectAttemptActive(Lcom/qianhe/rtkclientlib/client/BluetoothClient;JLandroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isConnectAttemptActive(JLandroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misDeviceBonded(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isDeviceBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misOtherDeviceBonding(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isOtherDeviceBonding(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSocketStillConnected(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothSocket;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isSocketStillConnected(Landroid/bluetooth/BluetoothSocket;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misUserCancelledBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isUserCancelledBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlaunchBondActivity(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->launchBondActivity(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyBonding(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->notifyBonding(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshClearingBondState(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->refreshClearingBondState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveStaleBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->removeStaleBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrequestBondUi(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->requestBondUi(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetStaleBondRepairState(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->resetStaleBondRepairState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresolveBondedDevice(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->resolveBondedDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresolveConnectDeviceByAddress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->resolveConnectDeviceByAddress(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msafeCreateBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->safeCreateBond(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleBondUiAfterCleared(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scheduleBondUiAfterCleared(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleBondedRfcommTimeout(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothSocket;JLandroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scheduleBondedRfcommTimeout(Landroid/bluetooth/BluetoothSocket;JLandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleConnectAfterBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scheduleConnectAfterBond(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleEnsureNewBondUi(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scheduleEnsureNewBondUi(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleRepairBondAfterRemoved(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scheduleRepairBondAfterRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleSafeCreateBondWhenStackIdle(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scheduleSafeCreateBondWhenStackIdle(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldProbeStaleBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->shouldProbeStaleBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartBondUiNow(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->startBondUiNow(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartBondWatch(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->startBondWatch(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartConnectThread(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->startConnectThread(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartStaleBondRepair(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->startStaleBondRepair(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopBondWatch(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopBondWatch()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopPresenceScanForBondProbe(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopPresenceScanForBondProbe()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopScanInternal(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScanInternal(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryRepairStaleBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->tryRepairStaleBond(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smcancelBondProcessIfNeeded(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBondProcessIfNeeded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisListedAsBonded(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isListedAsBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 2

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scanDevices:Ljava/util/List;

    .line 184
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->reportedScanAddresses:Ljava/util/Set;

    .line 188
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->executorSend:Ljava/util/concurrent/ExecutorService;

    .line 189
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    .line 227
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastAdvertisedAtByAddress:Ljava/util/Map;

    .line 1824
    new-instance v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$13;

    invoke-direct {v0, p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$13;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V

    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScanCallbacks:Ljava/lang/Runnable;

    .line 2850
    new-instance v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$18;

    invoke-direct {v0, p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$18;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V

    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 2939
    new-instance v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$19;

    invoke-direct {v0, p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$19;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V

    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scanReceiver:Landroid/content/BroadcastReceiver;

    .line 247
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->context:Landroid/content/Context;

    .line 248
    iput-object p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 249
    const-string p2, "bluetooth"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    .line 250
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method private cancelBondProcessForAddress(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1076
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1080
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBondProcessIfNeeded(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelBondProcessForAddress \u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static cancelBondProcessIfNeeded(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1122
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    return v0

    .line 1127
    :cond_1
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isListedAsBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    const-string v4, " -> "

    const-string v5, ", afterState="

    const-string v6, ", beforeState="

    const-string v7, "cancelBondProcess"

    if-eqz v3, :cond_2

    .line 1128
    invoke-static {p0, v7}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->invokeHiddenBoolean(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v0

    .line 1129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelBond skip removeBond(\u5df2\u914d\u5bf9) result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1129
    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return v0

    .line 1134
    :cond_2
    invoke-static {p0, v7}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->invokeHiddenBoolean(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v3

    .line 1136
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v7

    if-eq v7, v2, :cond_5

    .line 1138
    const-string v2, "removeBond"

    invoke-static {p0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->invokeHiddenBoolean(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    move v3, v0

    .line 1140
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelBond result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1140
    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return v3
.end method

.method private cancelBondedRfcommTimeout()V
    .locals 2

    .line 769
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedRfcommTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 770
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 771
    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedRfcommTimeoutRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private cancelOtherBondProcesses(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1089
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1090
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u53d6\u6d88\u4e0a\u4e00\u53f0\u8bbe\u5907\u914d\u5bf9: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1091
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBondProcessForAddress(Ljava/lang/String;)V

    .line 1093
    :cond_1
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1094
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u53d6\u6d88\u5f85\u8fde\u63a5\u8bbe\u5907\u914d\u5bf9: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1095
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBondProcessForAddress(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private cancelPostBondConnect()V
    .locals 2

    .line 890
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->postBondConnectRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 891
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 892
    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->postBondConnectRunnable:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x0

    .line 894
    iput-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->postBondConnectScheduled:Z

    return-void
.end method

.method private cancelRepairBondAfterRemoved()V
    .locals 2

    .line 1446
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->repairBondAfterRemovedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1447
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1448
    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->repairBondAfterRemovedRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private clearBondAttempt(Ljava/lang/String;)V
    .locals 1

    .line 1106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1107
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private clearBondUiRequested()V
    .locals 3

    const/4 v0, 0x0

    .line 1469
    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiRequestedAddress:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 1470
    iput-wide v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiRequestedAt:J

    const/4 v1, 0x0

    .line 1471
    iput-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiReachedBonding:Z

    .line 1472
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiFallbackRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 1473
    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1474
    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiFallbackRunnable:Ljava/lang/Runnable;

    .line 1476
    :cond_0
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->ensureNewBondUiRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 1477
    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1478
    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->ensureNewBondUiRunnable:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method private closeQuietly(Ljava/lang/AutoCloseable;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 3202
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 3204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while disconnecting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static createSppBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    .line 692
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 693
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 694
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 698
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_8

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x3

    const/16 v5, 0xa

    if-ge v3, v4, :cond_5

    .line 706
    :try_start_1
    const-class v4, Landroid/bluetooth/BluetoothDevice;

    const-string v6, "createBond"

    new-array v7, v0, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 707
    invoke-virtual {v4, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 708
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v0, [Ljava/lang/Object;

    aput-object v7, v8, v1

    invoke-virtual {v4, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 709
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createBond(TRANSPORT_BREDR)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " attempt="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    if-nez v4, :cond_3

    .line 710
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v4, v5, :cond_4

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_3

    :cond_3
    :goto_2
    return v0

    .line 715
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createBond(TRANSPORT_BREDR) \u5931\u8d25: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_4
    const-wide/16 v6, 0xc8

    .line 718
    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/2addr v3, v0

    goto :goto_1

    .line 720
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    if-eqz v2, :cond_6

    .line 725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createBond(TRANSPORT_BREDR) \u6700\u7ec8\u5931\u8d25\uff0c\u4e0d\u56de\u9000 createBond() \u4ee5\u514d\u5f39\u51fa PIN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 727
    :cond_6
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0

    if-eq p0, v5, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 700
    :cond_8
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSppBond: \u5df2\u5728\u914d\u5bf9/\u5df2\u914d\u5bf9\uff0c\u4e0d\u518d\u91cd\u590d createBond -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return v0
.end method

.method private disconnectInternal(ZZ)V
    .locals 7

    .line 3113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\uff1aBluetoothClient -> disconnect(), socketClosed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->socketClosed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", notify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", resetBond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 3114
    iget-wide v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->connectSessionId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->connectSessionId:J

    .line 3115
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelPostBondConnect()V

    .line 3121
    monitor-enter p0

    .line 3122
    :try_start_0
    iget-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->socketClosed:Z

    .line 3123
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mSocket:Landroid/bluetooth/BluetoothSocket;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isConnecting:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    .line 3124
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 3126
    :goto_1
    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 3127
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->inputStream:Ljava/io/InputStream;

    .line 3128
    iget-object v5, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->outputStream:Ljava/io/OutputStream;

    const/4 v6, 0x0

    .line 3129
    iput-object v6, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 3130
    iput-object v6, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->inputStream:Ljava/io/InputStream;

    .line 3131
    iput-object v6, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->outputStream:Ljava/io/OutputStream;

    .line 3132
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    .line 3137
    invoke-direct {p0, v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3138
    invoke-direct {p0, v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3139
    invoke-direct {p0, v5}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3142
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->interruptConnectThread()V

    if-eqz p2, :cond_4

    .line 3144
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopBondWatch()V

    .line 3145
    iget-object p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    .line 3146
    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    .line 3147
    iget-boolean v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    .line 3148
    iput-boolean v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    .line 3149
    iput-object v6, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 3152
    invoke-direct {p0, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBondProcessForAddress(Ljava/lang/String;)V

    .line 3153
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 3154
    :cond_3
    invoke-direct {p0, v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBondProcessForAddress(Ljava/lang/String;)V

    .line 3158
    :cond_4
    iget-object p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mReceiveDataThread:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mReceiveDataThread:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 3159
    :cond_5
    iget-object p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->executorSend:Ljava/util/concurrent/ExecutorService;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_6
    if-eqz p1, :cond_8

    .line 3160
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->connectionListener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    if-eqz p1, :cond_8

    if-nez v1, :cond_7

    if-eqz v0, :cond_8

    .line 3161
    :cond_7
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/qianhe/rtkclientlib/client/BluetoothClient$21;

    invoke-direct {p2, p0, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$21;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void

    .line 3132
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private ensureBondReceiverRegistered()V
    .locals 4

    .line 414
    iget-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondReceiverRegistered:Z

    if-nez v0, :cond_1

    .line 415
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 416
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 418
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 419
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 420
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scanReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/gms/internal/base/zao$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    const/4 v0, 0x1

    .line 424
    iput-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondReceiverRegistered:Z

    :cond_1
    return-void
.end method

.method private ensurePresenceScanForBondProbe()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 823
    iget-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isScanning:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 830
    :cond_1
    :try_start_0
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v1, 0x2

    .line 831
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    .line 832
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    .line 833
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    const/4 v0, 0x1

    .line 834
    iput-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isScanning:Z

    .line 835
    iput-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->presenceScanForBondProbe:Z

    .line 836
    const-string/jumbo v0, "\u9648\u65e7\u914d\u5bf9\u63a2\u6d4b\uff1a\u542f\u52a8 BLE \u626b\u63cf\u4ee5\u786e\u8ba4\u8bbe\u5907\u662f\u5426\u5f00\u673a"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u9648\u65e7\u914d\u5bf9\u63a2\u6d4b\u626b\u63cf\u542f\u52a8\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static getBondEventDevice(Landroid/content/Intent;)Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .line 3082
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    if-lt v0, v1, :cond_0

    .line 3083
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0, v2, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$$ExternalSyntheticApiModelOutline2;->m(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    return-object p0

    .line 3085
    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method private getPendingBondDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1070
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1071
    :cond_0
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleBondBroadcast(Landroid/content/Intent;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2957
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2958
    invoke-static {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->getBondEventDevice(Landroid/content/Intent;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 2959
    invoke-direct {p0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->shouldHandleBondEvent(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_5

    .line 2960
    :cond_1
    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getDeviceType(Ljava/lang/String;Ljava/lang/String;)Lcom/qianhe/baselib/enums/DeviceType;

    .line 2961
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2962
    const-string v1, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2963
    const-string v4, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_3

    .line 2965
    invoke-direct {p0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isPendingConnectDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    .line 2966
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 2967
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2968
    :cond_2
    invoke-direct {p0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->onBondCompleted(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_4

    :cond_3
    const/16 v4, 0xa

    const/4 v5, 0x1

    const/16 v6, 0xb

    if-ne v1, v4, :cond_12

    .line 2971
    invoke-direct {p0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isDeviceBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isListedAsBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_1

    :cond_4
    if-ne p1, v6, :cond_7

    .line 2976
    iget-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiReachedBonding:Z

    if-nez v1, :cond_5

    .line 2978
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isBondUiRequested(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2979
    invoke-direct {p0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isPendingConnectDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    if-eqz v1, :cond_7

    .line 2981
    :cond_5
    iget-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->removingStaleBond:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiReachedBonding:Z

    if-eqz v1, :cond_7

    .line 2982
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u7528\u6237\u53d6\u6d88\u7cfb\u7edf\u914d\u5bf9\u6846: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2983
    invoke-direct {p0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->handleBondCancelled(Landroid/bluetooth/BluetoothDevice;)V

    return v0

    .line 2986
    :cond_7
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isAwaitingReplacementBond(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eq p1, v6, :cond_9

    .line 2987
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u9648\u65e7\u914d\u5bf9\u5df2\u6e05\u9664\uff0c\u7b49\u5f85\u91cd\u65b0\u914d\u5bf9: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2988
    iput-boolean v5, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    .line 2989
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2990
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    :cond_8
    return v0

    .line 2994
    :cond_9
    iget-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->removingStaleBond:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiReachedBonding:Z

    if-nez v1, :cond_a

    if-ne p1, v6, :cond_a

    .line 2995
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u62c6\u914d\u540e\u6b8b\u7559\u914d\u5bf9\u7ed3\u675f\uff0c\u7ee7\u7eed\u7b49\u5f85\u65b0\u914d\u5bf9: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2996
    iput-boolean v5, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    return v0

    .line 3000
    :cond_a
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    .line 3001
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 3002
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5ffd\u7565\u65e7\u8bbe\u5907 BOND_NONE\uff08\u5df2\u5207\u6362\u76ee\u6807\uff09: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pending="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 3004
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearBondAttempt(Ljava/lang/String;)V

    .line 3005
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearingBondAddress:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearingBondAddress:Ljava/lang/String;

    .line 3006
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 3007
    iput-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearingBondAddress:Ljava/lang/String;

    :cond_b
    return v0

    .line 3012
    :cond_c
    iget-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3013
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u9759\u9ed8\u5ffd\u7565\u5207\u6362\u6e05\u7406\u4ea7\u751f\u7684 BOND_NONE: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 3014
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearBondAttempt(Ljava/lang/String;)V

    .line 3015
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearingBondAddress:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearingBondAddress:Ljava/lang/String;

    .line 3016
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 3017
    iput-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearingBondAddress:Ljava/lang/String;

    :cond_d
    return v0

    :cond_e
    if-eq p1, v6, :cond_10

    .line 3022
    invoke-direct {p0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isPendingConnectDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-boolean p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    if-eqz p1, :cond_f

    goto :goto_0

    :cond_f
    return v0

    .line 3026
    :cond_10
    :goto_0
    invoke-direct {p0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->handleBondCancelled(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_4

    .line 2972
    :cond_11
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOND_NONE \u65f6\u8bbe\u5907\u4ecd\u5728\u914d\u5bf9\u5217\u8868\uff0c\u6309\u5df2\u914d\u5bf9\u8fde\u63a5: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2973
    invoke-direct {p0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->onBondCompleted(Landroid/bluetooth/BluetoothDevice;)V

    return v0

    :cond_12
    if-ne v1, v6, :cond_1a

    .line 3028
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isBondUiRequested(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3029
    iput-boolean v5, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiReachedBonding:Z

    .line 3031
    :cond_13
    iget-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->removingStaleBond:Z

    if-eqz v1, :cond_14

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isBondUiRequested(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 3032
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u9648\u65e7\u914d\u5bf9\u62c6\u9664\u540e\u51fa\u73b0\u6b8b\u7559 BOND_BONDING\uff0c\u53d6\u6d88\u540e\u7b49\u5f85 BR/EDR \u91cd\u914d: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3033
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3032
    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 3034
    invoke-static {v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBondProcessIfNeeded(Landroid/bluetooth/BluetoothDevice;)Z

    return v0

    .line 3037
    :cond_14
    iget-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->removingStaleBond:Z

    if-eqz v1, :cond_15

    .line 3038
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u9648\u65e7\u914d\u5bf9\u79fb\u9664\u540e\u8fdb\u5165\u91cd\u65b0\u914d\u5bf9: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 3039
    iput-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->removingStaleBond:Z

    .line 3040
    iput-boolean v5, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    .line 3041
    invoke-direct {p0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->startBondWatch(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_2

    :cond_15
    if-eq p1, v3, :cond_19

    .line 3042
    invoke-direct {p0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isDeviceBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_3

    .line 3047
    :cond_16
    :goto_2
    invoke-direct {p0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isUserCancelledBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 3048
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6253\u65ad\u7528\u6237\u53d6\u6d88\u540e\u7684\u8fdf\u5230 BOND_BONDING: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 3049
    invoke-static {v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBondProcessIfNeeded(Landroid/bluetooth/BluetoothDevice;)Z

    .line 3051
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 3052
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/qianhe/rtkclientlib/client/BluetoothClient$20;

    invoke-direct {v2, p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$20;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0

    .line 3067
    :cond_17
    iput-boolean v5, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    .line 3068
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scanListener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;

    if-eqz p1, :cond_18

    .line 3069
    invoke-interface {p1, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;->onBonding(Landroid/bluetooth/BluetoothDevice;)V

    .line 3071
    :cond_18
    invoke-direct {p0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->notifyBonding(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_4

    .line 3043
    :cond_19
    :goto_3
    const-string/jumbo p1, "\u8bbe\u5907\u5df2\u914d\u5bf9\uff0c\u5ffd\u7565 BOND_BONDING \u72b6\u6001"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_1a
    :goto_4
    return v0

    .line 3074
    :cond_1b
    const-string v3, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3075
    invoke-direct {p0, v2, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->handlePairingRequest(Landroid/bluetooth/BluetoothDevice;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_5
    return v0
.end method

.method private handleBondCancelled(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1568
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->getPendingBondDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 1570
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    .line 1571
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5ffd\u7565\u975e\u5f53\u524d\u76ee\u6807\u7684\u914d\u5bf9\u53d6\u6d88: cancelled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearBondAttempt(Ljava/lang/String;)V

    return-void

    .line 1577
    :cond_1
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isDeviceBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isListedAsBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 1583
    :cond_2
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    .line 1584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u914d\u5bf9\u5df2\u53d6\u6d88\u6216\u4e2d\u65ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1585
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->resetStaleBondRepairState()V

    .line 1586
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->markUserCancelledBond(Landroid/bluetooth/BluetoothDevice;)V

    .line 1587
    iget-wide v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->connectSessionId:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->connectSessionId:J

    .line 1588
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopBondWatch()V

    .line 1589
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelPostBondConnect()V

    const/4 v1, 0x0

    .line 1590
    iput-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    const/4 v1, 0x0

    .line 1591
    iput-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 1593
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearBondAttempt(Ljava/lang/String;)V

    goto :goto_1

    .line 1594
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1595
    invoke-direct {p0, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearBondAttempt(Ljava/lang/String;)V

    .line 1597
    :cond_5
    :goto_1
    iput-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    .line 1598
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->interruptConnectThread()V

    .line 1599
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->stopAutoReconnect()V

    .line 1600
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->finishBondActivity()V

    .line 1601
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->connectionListener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    if-eqz v1, :cond_6

    .line 1602
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->notifyBondCancelled(Landroid/bluetooth/BluetoothDevice;)V

    .line 1604
    :cond_6
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scanListener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;

    if-eqz v1, :cond_9

    if-nez p1, :cond_7

    .line 1607
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->getPendingBondDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    :cond_7
    if-nez p1, :cond_8

    .line 1609
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_8

    .line 1610
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    :cond_8
    if-eqz p1, :cond_9

    .line 1613
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scanListener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;

    invoke-interface {v0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;->cancelBond(Landroid/bluetooth/BluetoothDevice;)V

    :cond_9
    return-void

    .line 1578
    :cond_a
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6536\u5230\u914d\u5bf9\u53d6\u6d88\u4f46\u8bbe\u5907\u5df2\u914d\u5bf9\uff0c\u6539\u4e3a\u81ea\u52a8\u8fde\u63a5: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_b

    .line 1579
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_b
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1578
    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    goto :goto_4

    .line 1580
    :cond_c
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->getPendingBondDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    :goto_4
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scheduleConnectAfterBond(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private handlePairingRequest(Landroid/bluetooth/BluetoothDevice;Landroid/content/Intent;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 918
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isPendingConnectDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->staleBondRepairAddress:Ljava/lang/String;

    .line 919
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->staleBondRepairAddress:Ljava/lang/String;

    .line 920
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 921
    :goto_1
    iget-boolean v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->removingStaleBond:Z

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isBondUiRequested(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 922
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u9648\u65e7\u914d\u5bf9\u62c6\u9664\u8fc7\u7a0b\u4e2d\u5ffd\u7565\u6b8b\u7559\u914d\u5bf9\u8bf7\u6c42\uff0c\u7b49\u5f85 BR/EDR \u91cd\u914d: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 923
    invoke-static {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBondProcessIfNeeded(Landroid/bluetooth/BluetoothDevice;)Z

    return v2

    .line 926
    :cond_3
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isDeviceBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    const/16 v4, 0xb

    if-nez v3, :cond_4

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isListedAsBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 927
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    if-eq v3, v4, :cond_7

    if-nez v1, :cond_6

    .line 928
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isBondUiRequested(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    .line 933
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5df2\u914d\u5bf9\u8bbe\u5907\u6536\u5230\u914d\u5bf9\u8bf7\u6c42\uff0c\u5224\u5b9a\u4e3a\u9648\u65e7\u914d\u5bf9\uff0c\u79fb\u9664\u540e\u91cd\u65b0\u914d\u5bf9\uff1a"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 934
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->markStaleBondRepair(Landroid/bluetooth/BluetoothDevice;)V

    .line 935
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->removeStaleBond(Landroid/bluetooth/BluetoothDevice;)Z

    .line 936
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scheduleRepairBondAfterRemoved(Ljava/lang/String;I)V

    return v2

    .line 929
    :cond_6
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u62c6\u914d\u91cd\u914d\u4e2d\u5ffd\u7565\u672a\u8fdb\u5165 BOND_BONDING \u7684\u6b8b\u7559\u914d\u5bf9\u8bf7\u6c42: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 930
    invoke-static {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBondProcessIfNeeded(Landroid/bluetooth/BluetoothDevice;)Z

    return v2

    .line 940
    :cond_7
    const-string v1, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 941
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u6536\u5230\u914d\u5bf9\u8bf7\u6c42 variant="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " device="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", bonded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isDeviceBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 941
    invoke-static {v5}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 943
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isDeviceBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 944
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u8bbe\u5907\u5df2\u914d\u5bf9\uff0c\u5ffd\u7565\u540e\u7eed PIN/\u914d\u5bf9\u8bf7\u6c42\u5e76\u51c6\u5907\u8fde\u63a5: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 945
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isPendingConnectDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-boolean p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    if-eqz p2, :cond_9

    .line 946
    :cond_8
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scheduleConnectAfterBond(Landroid/bluetooth/BluetoothDevice;)V

    :cond_9
    return v2

    :cond_a
    if-eqz v1, :cond_10

    const/4 v5, 0x5

    if-ne v1, v5, :cond_b

    goto/16 :goto_7

    :cond_b
    const/4 v4, 0x3

    if-eq v1, v4, :cond_d

    const/4 v4, 0x2

    if-eq v1, v4, :cond_d

    const/4 v4, 0x4

    if-ne v1, v4, :cond_c

    goto :goto_4

    :cond_c
    if-ne v1, v2, :cond_e

    .line 968
    :try_start_0
    const-string v1, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v3, :cond_e

    .line 970
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    .line 972
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u81ea\u52a8\u5199\u5165\u914d\u5bf9\u5bc6\u94a5 -> "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :goto_3
    const/4 v0, 0x1

    goto :goto_6

    :catch_0
    move-exception p2

    goto :goto_5

    :catch_1
    nop

    goto :goto_6

    .line 964
    :cond_d
    :goto_4
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 966
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u81ea\u52a8\u786e\u8ba4\u914d\u5bf9 variant="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 980
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u81ea\u52a8\u786e\u8ba4\u914d\u5bf9\u5931\u8d25: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 983
    :cond_e
    :goto_6
    iget-boolean p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    if-nez p2, :cond_f

    .line 984
    iput-boolean v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    .line 985
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->notifyBonding(Landroid/bluetooth/BluetoothDevice;)V

    .line 988
    :cond_f
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    const-wide/16 v1, 0x2ee0

    invoke-virtual {p1, v1, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->suppressBackgroundBondCancel(J)V

    return v0

    .line 951
    :cond_10
    :goto_7
    iget-boolean p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiReachedBonding:Z

    if-nez p2, :cond_12

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p2

    if-ne p2, v4, :cond_11

    goto :goto_8

    .line 955
    :cond_11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u62d2\u7edd\u6b8b\u7559 LE/PIN \u914d\u5bf9\u8bf7\u6c42: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 956
    invoke-static {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBondProcessIfNeeded(Landroid/bluetooth/BluetoothDevice;)Z

    return v2

    .line 952
    :cond_12
    :goto_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u7ecf\u5178\u914d\u5bf9\u8fdb\u884c\u4e2d\uff0c\u541e\u6389 LE/PIN \u8bf7\u6c42\uff0c\u4e0d\u53d6\u6d88\u672c\u8f6e\u914d\u5bf9: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return v2
.end method

.method private handleScanResult(Landroid/bluetooth/le/ScanResult;)V
    .locals 5

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 2874
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 2876
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2877
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2878
    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastAdvertisedAtByAddress:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2881
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 2882
    :goto_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2884
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_4

    goto :goto_2

    .line 2886
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2887
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 2889
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    move-object v1, v2

    .line 2894
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2895
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 2896
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 2897
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 2898
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 2899
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 2900
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2902
    :cond_7
    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2906
    :cond_8
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getDeviceType(Ljava/lang/String;Ljava/lang/String;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object p1

    .line 2907
    sget-object v3, Lcom/qianhe/baselib/enums/DeviceType;->ATTITUDESENSOR:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v3, :cond_b

    .line 2908
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    .line 2911
    :cond_9
    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->reportedScanAddresses:Ljava/util/Set;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_4

    .line 2914
    :cond_a
    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scanDevices:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2915
    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scanListener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;

    if-eqz v3, :cond_f

    .line 2916
    new-instance v4, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v0, p1, v2, v1}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;->onDeviceScan(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    return-void

    .line 2919
    :cond_b
    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v3, p1, :cond_c

    goto :goto_4

    .line 2920
    :cond_c
    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isTargetScanDeviceName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_4

    .line 2923
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastScanResultAt:J

    .line 2924
    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->reportedScanAddresses:Ljava/util/Set;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_4

    .line 2927
    :cond_e
    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scanDevices:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2928
    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scanListener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;

    if-eqz v3, :cond_f

    .line 2929
    new-instance v4, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v0, p1, v2, v1}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;->onDeviceScan(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    :cond_f
    :goto_4
    return-void
.end method

.method private interruptConnectThread()V
    .locals 2

    .line 757
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBondedRfcommTimeout()V

    .line 758
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopPresenceScanForBondProbe()V

    .line 759
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mConnectThread:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mConnectThread:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x0

    .line 762
    iput-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isConnecting:Z

    .line 763
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->connectingSocket:Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x0

    .line 764
    iput-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->connectingSocket:Landroid/bluetooth/BluetoothSocket;

    .line 765
    invoke-direct {p0, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method private static invokeHiddenBoolean(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1533
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 1534
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1535
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1537
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 1539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u4e0d\u53ef\u7528: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return v0
.end method

.method private static isAuthOrKeyError(Ljava/lang/String;)Z
    .locals 2

    .line 1216
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1219
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1220
    const-string v0, "auth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pin or key"

    .line 1221
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "key missing"

    .line 1222
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "security"

    .line 1223
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "not encrypted"

    .line 1224
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "encryption"

    .line 1225
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "insufficient authentication"

    .line 1226
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isAwaitingReplacementBond(Ljava/lang/String;)Z
    .locals 2

    .line 1484
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiReachedBonding:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1487
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->removingStaleBond:Z

    if-nez v0, :cond_1

    return v1

    .line 1490
    :cond_1
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->staleBondRepairAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->staleBondRepairAddress:Ljava/lang/String;

    .line 1491
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    .line 1492
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method private isBondUiRequested(Ljava/lang/String;)Z
    .locals 6

    .line 1453
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiRequestedAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1456
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiRequestedAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 1459
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiRequestedAt:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4e20

    cmp-long p1, v2, v4

    if-gez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private isConfirmedStaleBond(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 799
    :cond_0
    invoke-static {p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isAuthOrKeyError(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 800
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u9648\u65e7\u914d\u5bf9\u4f9d\u636e: \u9274\u6743/\u5bc6\u94a5\u9519\u8bef -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return v2

    .line 803
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->wasAdvertisingDuringProbe(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 804
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u9648\u65e7\u914d\u5bf9\u4f9d\u636e: \u63a2\u6d4b\u671f\u95f4\u8bbe\u5907\u4ecd\u5728\u5e7f\u64ad\u4f46\u5df2\u914d\u5bf9\u76f4\u8fde\u5931\u8d25 -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return v2

    :cond_2
    return v0
.end method

.method private isConnectAttemptActive(JLandroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 899
    iget-wide v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->connectSessionId:J

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-eqz v3, :cond_0

    return v2

    .line 902
    :cond_0
    invoke-direct {p0, p3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isUserCancelledBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    if-eqz p3, :cond_2

    .line 905
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    .line 906
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private isDeviceBonded(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 369
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->resolveBondedDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 373
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    const/16 v1, 0xc

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method private static isListedAsBonded(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1150
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 1155
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    .line 1159
    :cond_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    .line 1160
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v0

    .line 1163
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_4

    .line 1164
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_5
    return v0
.end method

.method private isOtherDeviceBonding(Ljava/lang/String;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1713
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1716
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearingBondAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_4

    .line 1717
    aget-object v3, v0, v2

    .line 1718
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1721
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1725
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0xb

    if-ne v3, v4, :cond_3

    const/4 p1, 0x1

    return p1

    :catchall_0
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method private isPendingConnectDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 731
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    .line 732
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isSocketStillConnected(Landroid/bluetooth/BluetoothSocket;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3192
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    return v0
.end method

.method private isStaleBondRepairOnCooldown(Ljava/lang/String;)Z
    .locals 6

    .line 1202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->staleBondRepairAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->staleBondRepairAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 1208
    :cond_1
    iget p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->staleBondRepairCount:I

    if-gtz p1, :cond_2

    return v1

    .line 1211
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastStaleBondRepairAt:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long p1, v2, v4

    if-gez p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method private isStaleTargetBonding(Ljava/lang/String;)Z
    .locals 2

    .line 661
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearingBondAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearingBondAddress:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 668
    :cond_1
    iget-boolean p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    xor-int/2addr p1, v1

    return p1
.end method

.method private static isTargetScanDeviceName(Ljava/lang/String;)Z
    .locals 1

    .line 2935
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^[WZ].*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isUserCancelledBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1560
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->userCancelledBondAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1563
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->userCancelledBondAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private launchBondActivity(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 490
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 492
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v1, v2, v3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->suppressBackgroundBondCancel(J)V

    .line 493
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 494
    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.qianhe.yct.activity.BluetoothBondActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    const-string v2, "bond_device_address"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x24000000

    .line 496
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 498
    invoke-static {}, Lcom/qianhe/rtkclientlib/RtkConstant;->getForegroundActivityProvider()Lcom/qianhe/rtkclientlib/ForegroundActivityProvider;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 500
    invoke-interface {v2}, Lcom/qianhe/rtkclientlib/ForegroundActivityProvider;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_2

    .line 502
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_2

    .line 503
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    const/4 v2, 0x1

    if-eqz v3, :cond_3

    .line 508
    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 509
    invoke-virtual {v3, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_2

    :cond_3
    const/high16 v4, 0x10000000

    .line 511
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 512
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x22

    if-lt v4, v5, :cond_4

    .line 513
    invoke-static {}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$$ExternalSyntheticApiModelOutline0;->m()Landroid/app/ActivityOptions;

    move-result-object v4

    .line 514
    invoke-static {v4, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/ActivityOptions;I)Landroid/app/ActivityOptions;

    .line 515
    iget-object v5, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_2

    .line 517
    :cond_4
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->context:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 520
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u542f\u52a8\u524d\u53f0\u914d\u5bf9\u9875\uff1a"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_5

    const-string p1, " (from host)"

    goto :goto_3

    :cond_5
    const-string p1, " (new task)"

    :goto_3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 523
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u542f\u52a8\u914d\u5bf9 Activity \u5931\u8d25\uff0c\u964d\u7ea7\u4e3a\u540e\u53f0\u914d\u5bf9\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_6
    :goto_5
    return v0
.end method

.method private markBondAttempt(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1100
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1101
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private markBondUiRequested(Ljava/lang/String;)V
    .locals 2

    .line 1463
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiRequestedAddress:Ljava/lang/String;

    .line 1464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiRequestedAt:J

    const/4 p1, 0x0

    .line 1465
    iput-boolean p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiReachedBonding:Z

    return-void
.end method

.method private markStaleBondRepair(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1231
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1234
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 1235
    iput-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->removingStaleBond:Z

    .line 1236
    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->staleBondRepairAddress:Ljava/lang/String;

    .line 1237
    iget v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->staleBondRepairCount:I

    if-ge v2, v1, :cond_1

    .line 1238
    iput v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->staleBondRepairCount:I

    .line 1240
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastStaleBondRepairAt:J

    const/4 v2, 0x0

    .line 1241
    iput v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedConnectFailCount:I

    .line 1242
    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedConnectFailAddress:Ljava/lang/String;

    .line 1243
    iput-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    .line 1244
    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    .line 1245
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->markBondAttempt(Landroid/bluetooth/BluetoothDevice;)V

    .line 1246
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    const-wide/16 v1, 0x2ee0

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->suppressBackgroundBondCancel(J)V

    .line 1247
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->notifyBonding(Landroid/bluetooth/BluetoothDevice;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private markUserCancelledBond(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1546
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1547
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1548
    :cond_0
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1549
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    goto :goto_0

    .line 1550
    :cond_1
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1551
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1553
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1554
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->userCancelledBondAddress:Ljava/lang/String;

    .line 1555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f40

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->userCancelledBondUntilMs:J

    :cond_3
    return-void
.end method

.method private notifyBondCancelled(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 1620
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient$11;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$11;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyBondCompleted(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 1060
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient$7;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$7;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyBonding(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 748
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient$4;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$4;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onBondCompleted(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1773
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scheduleConnectAfterBond(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private parseBaseStationData(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    .line 2541
    iget-object v3, v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isBaseOrOnlyone(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 2542
    :cond_0
    const-string v3, "#SET,ANTENNA_HEIGHT,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x3

    const-string v5, ","

    if-eqz v3, :cond_1

    .line 2543
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2544
    array-length v5, v3

    if-le v5, v4, :cond_17

    .line 2545
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    new-instance v6, Lcom/qianhe/rtkclientlib/event/SetAntennaHeightResponse;

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-direct {v6, v2, v1, v3, v4}, Lcom/qianhe/rtkclientlib/event/SetAntennaHeightResponse;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;D)V

    invoke-virtual {v5, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2547
    :cond_1
    const-string v3, "#GET,ANTENNA_HEIGHT,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v6, "*"

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v3, :cond_2

    .line 2549
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 2551
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v5, Lcom/qianhe/rtkclientlib/event/AntennaHeigthEntity;

    aget-object v6, v1, v9

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-direct {v5, v2, v6, v7, v8}, Lcom/qianhe/rtkclientlib/event/AntennaHeigthEntity;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;D)V

    invoke-virtual {v3, v5}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2552
    :cond_2
    const-string v3, "#GET,WLAN0,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v10, 0x7

    const/4 v11, 0x4

    if-eqz v3, :cond_3

    .line 2555
    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 2556
    array-length v2, v1

    if-le v2, v10, :cond_17

    .line 2557
    new-instance v2, Lcom/qianhe/rtkclientlib/event/Wlan0Entity;

    invoke-direct {v2}, Lcom/qianhe/rtkclientlib/event/Wlan0Entity;-><init>()V

    .line 2558
    aget-object v3, v1, v9

    iput-object v3, v2, Lcom/qianhe/rtkclientlib/event/Wlan0Entity;->role:Ljava/lang/String;

    .line 2559
    aget-object v3, v1, v4

    iput-object v3, v2, Lcom/qianhe/rtkclientlib/event/Wlan0Entity;->wifiName:Ljava/lang/String;

    .line 2560
    aget-object v1, v1, v11

    iput-object v1, v2, Lcom/qianhe/rtkclientlib/event/Wlan0Entity;->wifiPassword:Ljava/lang/String;

    .line 2561
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2563
    :cond_3
    const-string v3, "#SET,WLAN0,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v12, "ERROR"

    const-string v13, "OK"

    if-eqz v3, :cond_5

    .line 2565
    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2566
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v3, Lcom/qianhe/rtkclientlib/event/Wlan0Response;

    invoke-direct {v3, v2, v13}, Lcom/qianhe/rtkclientlib/event/Wlan0Response;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2568
    :cond_4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v3, Lcom/qianhe/rtkclientlib/event/Wlan0Response;

    invoke-direct {v3, v2, v12}, Lcom/qianhe/rtkclientlib/event/Wlan0Response;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2570
    :cond_5
    const-string v3, "#GET,MOBILE,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v14, 0x5

    if-eqz v3, :cond_6

    .line 2572
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 2573
    array-length v3, v1

    if-le v3, v9, :cond_17

    .line 2574
    new-instance v3, Lcom/qianhe/rtkclientlib/event/MobileNetEntity;

    invoke-direct {v3}, Lcom/qianhe/rtkclientlib/event/MobileNetEntity;-><init>()V

    .line 2575
    aget-object v5, v1, v9

    iput-object v5, v3, Lcom/qianhe/rtkclientlib/event/MobileNetEntity;->state:Ljava/lang/String;

    .line 2576
    aget-object v4, v1, v4

    iput-object v4, v3, Lcom/qianhe/rtkclientlib/event/MobileNetEntity;->apnName:Ljava/lang/String;

    .line 2577
    aget-object v4, v1, v11

    iput-object v4, v3, Lcom/qianhe/rtkclientlib/event/MobileNetEntity;->apnUser:Ljava/lang/String;

    .line 2578
    aget-object v1, v1, v14

    iput-object v1, v3, Lcom/qianhe/rtkclientlib/event/MobileNetEntity;->apnPsw:Ljava/lang/String;

    .line 2579
    iput-object v2, v3, Lcom/qianhe/rtkclientlib/event/MobileNetEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 2580
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2582
    :cond_6
    const-string v3, "#SET,MOBILE,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2584
    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2585
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v3, Lcom/qianhe/rtkclientlib/event/MobileNetResponse;

    invoke-direct {v3, v2, v13}, Lcom/qianhe/rtkclientlib/event/MobileNetResponse;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2587
    :cond_7
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v3, Lcom/qianhe/rtkclientlib/event/MobileNetResponse;

    invoke-direct {v3, v2, v12}, Lcom/qianhe/rtkclientlib/event/MobileNetResponse;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2589
    :cond_8
    const-string v3, "#GET,WLAN0_STATUS,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v12, 0x6

    const/16 v13, 0x8

    if-eqz v3, :cond_9

    .line 2591
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 2592
    array-length v3, v1

    if-le v3, v13, :cond_17

    move-object v3, v1

    .line 2593
    new-instance v1, Lcom/qianhe/rtkclientlib/event/WifiStateResponse;

    move-object v5, v3

    aget-object v3, v5, v9

    aget-object v4, v5, v4

    move-object v6, v5

    aget-object v5, v6, v11

    move-object v7, v6

    aget-object v6, v7, v14

    move-object v8, v7

    aget-object v7, v8, v12

    move-object v9, v8

    aget-object v8, v9, v10

    aget-object v9, v9, v13

    invoke-direct/range {v1 .. v9}, Lcom/qianhe/rtkclientlib/event/WifiStateResponse;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2594
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2596
    :cond_9
    const-string v3, "#GET,MOBILE_STATUS,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/16 v15, 0x9

    const/16 v16, 0x4

    const/16 v11, 0xa

    if-eqz v3, :cond_a

    .line 2598
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 2599
    array-length v3, v1

    if-le v3, v11, :cond_17

    .line 2600
    new-instance v3, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;

    invoke-direct {v3}, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;-><init>()V

    .line 2601
    aget-object v5, v1, v9

    iput-object v5, v3, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->state:Ljava/lang/String;

    .line 2602
    aget-object v4, v1, v4

    iput-object v4, v3, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->imei:Ljava/lang/String;

    .line 2603
    aget-object v4, v1, v16

    iput-object v4, v3, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->iccid:Ljava/lang/String;

    .line 2604
    aget-object v4, v1, v14

    invoke-virtual {v0, v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->decodeBase64ToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->type:Ljava/lang/String;

    .line 2605
    aget-object v4, v1, v15

    iput-object v4, v3, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->sendTraffic:Ljava/lang/String;

    .line 2606
    aget-object v1, v1, v11

    iput-object v1, v3, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->receiveTraffic:Ljava/lang/String;

    .line 2607
    iput-object v2, v3, Lcom/qianhe/rtkclientlib/event/MobileStateResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 2608
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2610
    :cond_a
    const-string v3, "#GET,MODE,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2612
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 2613
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/qianhe/rtkclientlib/event/GetBaseWorkModeResponse;

    aget-object v1, v1, v9

    invoke-direct {v4, v2, v1}, Lcom/qianhe/rtkclientlib/event/GetBaseWorkModeResponse;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2614
    :cond_b
    const-string v3, "#SET,MODE,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2616
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 2617
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/qianhe/rtkclientlib/event/SetBaseWorkModeResponse;

    invoke-direct {v4, v2, v1}, Lcom/qianhe/rtkclientlib/event/SetBaseWorkModeResponse;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2618
    :cond_c
    const-string v3, "#GET,BASE_DIFF_LIST,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2619
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 2620
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/qianhe/rtkclientlib/event/BaseDiffListResponse;

    aget-object v1, v1, v9

    invoke-direct {v4, v2, v1}, Lcom/qianhe/rtkclientlib/event/BaseDiffListResponse;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2621
    :cond_d
    const-string v3, "#GET,BASE,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2625
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 2626
    array-length v3, v1

    if-le v3, v10, :cond_17

    .line 2627
    new-instance v3, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    invoke-direct {v3}, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;-><init>()V

    .line 2628
    aget-object v5, v1, v9

    iput-object v5, v3, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->id:Ljava/lang/String;

    .line 2629
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->cutoffAngle:I

    .line 2630
    aget-object v4, v1, v16

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->PDOP:D

    .line 2631
    aget-object v4, v1, v14

    const-string v5, "\\|"

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 2632
    aget-object v5, v4, v8

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_e

    move-wide v14, v6

    goto :goto_0

    :cond_e
    aget-object v5, v4, v8

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    :goto_0
    iput-wide v14, v3, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->lon:D

    const/4 v5, 0x1

    .line 2633
    aget-object v8, v4, v5

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_f

    move-wide v14, v6

    goto :goto_1

    :cond_f
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    :goto_1
    iput-wide v14, v3, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->lat:D

    .line 2634
    aget-object v5, v4, v9

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_2

    :cond_10
    aget-object v4, v4, v9

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    :goto_2
    iput-wide v6, v3, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->elev:D

    .line 2635
    aget-object v4, v1, v12

    iput-object v4, v3, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->diffFormat:Ljava/lang/String;

    .line 2636
    aget-object v4, v1, v10

    iput-object v4, v3, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->startMode:Ljava/lang/String;

    .line 2637
    array-length v4, v1

    if-le v4, v13, :cond_11

    aget-object v1, v1, v13

    iput-object v1, v3, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->dataformatList:Ljava/lang/String;

    .line 2638
    :cond_11
    iput-object v2, v3, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 2639
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2641
    :cond_12
    const-string v3, "#GET,ROVER,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2643
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 2644
    array-length v3, v1

    if-le v3, v4, :cond_17

    .line 2645
    new-instance v3, Lcom/qianhe/rtkclientlib/event/RoverStationResponse;

    invoke-direct {v3}, Lcom/qianhe/rtkclientlib/event/RoverStationResponse;-><init>()V

    .line 2646
    aget-object v5, v1, v9

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v3, Lcom/qianhe/rtkclientlib/event/RoverStationResponse;->cutoffAngle:F

    .line 2647
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lcom/qianhe/rtkclientlib/event/RoverStationResponse;->diffAge:I

    .line 2648
    iput-object v2, v3, Lcom/qianhe/rtkclientlib/event/RoverStationResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 2649
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2651
    :cond_13
    const-string v3, "#SET,BASE,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2652
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/rtkclientlib/event/SetBaseStationResponse;

    invoke-direct {v3, v1}, Lcom/qianhe/rtkclientlib/event/SetBaseStationResponse;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2653
    :cond_14
    const-string v3, "#SET,ROVER,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2654
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/rtkclientlib/event/SetRoverStationResponse;

    invoke-direct {v3, v1}, Lcom/qianhe/rtkclientlib/event/SetRoverStationResponse;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2655
    :cond_15
    const-string v3, "#GET,DATALINK,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2656
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 2657
    array-length v3, v1

    if-le v3, v9, :cond_17

    .line 2658
    new-instance v3, Lcom/qianhe/rtkclientlib/event/GetDataLinkResponse;

    aget-object v1, v1, v9

    invoke-direct {v3, v2, v1}, Lcom/qianhe/rtkclientlib/event/GetDataLinkResponse;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    .line 2659
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2661
    :cond_16
    const-string v3, "#GET,NETWORK,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2663
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 2664
    array-length v3, v1

    if-le v3, v11, :cond_17

    .line 2665
    new-instance v3, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;

    invoke-direct {v3}, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;-><init>()V

    .line 2666
    aget-object v5, v1, v9

    iput-object v5, v3, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->type:Ljava/lang/String;

    .line 2667
    aget-object v4, v1, v4

    iput-object v4, v3, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->host:Ljava/lang/String;

    .line 2668
    aget-object v4, v1, v16

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->port:I

    .line 2669
    aget-object v4, v1, v14

    iput-object v4, v3, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->mountpoint:Ljava/lang/String;

    .line 2670
    aget-object v4, v1, v12

    iput-object v4, v3, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->userName:Ljava/lang/String;

    .line 2671
    aget-object v4, v1, v10

    iput-object v4, v3, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->password:Ljava/lang/String;

    .line 2672
    aget-object v4, v1, v13

    iput-object v4, v3, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->apnName:Ljava/lang/String;

    .line 2673
    aget-object v4, v1, v15

    iput-object v4, v3, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->apnUser:Ljava/lang/String;

    .line 2674
    aget-object v1, v1, v11

    iput-object v1, v3, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->apnPassword:Ljava/lang/String;

    .line 2675
    iput-object v2, v3, Lcom/qianhe/rtkclientlib/event/BaseNetworkResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 2676
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_17
    :goto_3
    return-void

    .line 2678
    :cond_18
    const-string v3, "#SET,NETWORK,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2679
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/qianhe/rtkclientlib/event/SetBaseNetworkResponse;

    invoke-direct {v4, v2, v1}, Lcom/qianhe/rtkclientlib/event/SetBaseNetworkResponse;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2680
    :cond_19
    const-string v3, "#GET,ZXVPN,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2681
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/qianhe/rtkclientlib/event/GetVPNResponse;

    invoke-direct {v4, v2, v1}, Lcom/qianhe/rtkclientlib/event/GetVPNResponse;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2682
    :cond_1a
    const-string v3, "#SET,ZXVPN,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2683
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/qianhe/rtkclientlib/event/SetVPNResponse;

    invoke-direct {v4, v2, v1}, Lcom/qianhe/rtkclientlib/event/SetVPNResponse;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2684
    :cond_1b
    const-string v3, "#GET,ZXVPN_STATUS,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2685
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/qianhe/rtkclientlib/event/VpnStatusResponse;

    invoke-direct {v4, v2, v1}, Lcom/qianhe/rtkclientlib/event/VpnStatusResponse;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2686
    :cond_1c
    const-string v3, "#GET,STATE,BASE,Base Too Far"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2687
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/qianhe/rtkclientlib/event/BaseTooFarEvent;

    invoke-direct {v4, v2, v1}, Lcom/qianhe/rtkclientlib/event/BaseTooFarEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2688
    :cond_1d
    const-string v2, "#GET,STATE,NETWORK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    return-void
.end method

.method private parseCommonData(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v0, p2

    .line 2256
    const-string v2, "#GET,SERIAL,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "\\*"

    const/4 v5, 0x0

    const-string v6, "*"

    const-string v7, ")\uff1a"

    const/4 v8, 0x2

    const-string v9, ","

    if-eqz v2, :cond_0

    .line 2257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u4e3b\u673a\u4e32\u53f7\u54cd\u5e94("

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2258
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2259
    array-length v7, v2

    if-le v7, v8, :cond_24

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2260
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v6, Lcom/qianhe/rtkclientlib/event/Serial;

    aget-object v2, v2, v8

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-direct {v6, v3, v2}, Lcom/qianhe/rtkclientlib/event/Serial;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2262
    :cond_0
    const-string v2, "#GET,VERSION,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, -0x1

    if-eqz v2, :cond_1

    .line 2263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u83b7\u53d6\u7248\u672c\u4fe1\u606f("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2264
    invoke-virtual {v0, v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2265
    array-length v2, v0

    if-le v2, v10, :cond_24

    .line 2266
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v4, Lcom/qianhe/rtkclientlib/event/RtkInfo;

    aget-object v5, v0, v8

    aget-object v6, v0, v11

    aget-object v0, v0, v10

    invoke-direct {v4, v3, v5, v6, v0}, Lcom/qianhe/rtkclientlib/event/RtkInfo;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2268
    :cond_1
    const-string v2, "#GET,EXPIREDATE,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v13, 0x1

    if-eqz v2, :cond_2

    .line 2269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u83b7\u53d6\u6ce8\u518c\u7801\u8fc7\u671f\u65f6\u95f4("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2270
    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 2271
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v2, v12, :cond_24

    if-le v4, v12, :cond_24

    .line 2273
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    new-instance v6, Lcom/qianhe/rtkclientlib/event/Expiredate;

    add-int/2addr v2, v13

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v3, v0}, Lcom/qianhe/rtkclientlib/event/Expiredate;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2275
    :cond_2
    const-string v2, "#SET,REGISTER,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u8bbe\u7f6e\u6ce8\u518c\u7801("

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2277
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2278
    array-length v7, v2

    if-le v7, v11, :cond_24

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2279
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v6, Lcom/qianhe/rtkclientlib/event/RTKRegisterResult;

    aget-object v7, v2, v8

    aget-object v2, v2, v11

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-direct {v6, v3, v7, v2}, Lcom/qianhe/rtkclientlib/event/RTKRegisterResult;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2281
    :cond_3
    const-string v2, "#GET,FEATURE_CODE,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u83b7\u53d6\u5b9a\u5236\u7801("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2283
    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 2284
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v2, v12, :cond_24

    if-le v4, v12, :cond_24

    .line 2286
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    new-instance v6, Lcom/qianhe/rtkclientlib/event/GetFeatureCodeEvent;

    add-int/2addr v2, v13

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v3, v0}, Lcom/qianhe/rtkclientlib/event/GetFeatureCodeEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2288
    :cond_4
    const-string v2, "#SET,FEATURE_CODE,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u8bbe\u7f6e\u5b9a\u5236\u7801\u54cd\u5e94("

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2290
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2291
    array-length v7, v2

    if-le v7, v11, :cond_24

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2292
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v6, Lcom/qianhe/rtkclientlib/event/SetFeatureCodeResult;

    aget-object v7, v2, v8

    aget-object v2, v2, v11

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-direct {v6, v3, v7, v2}, Lcom/qianhe/rtkclientlib/event/SetFeatureCodeResult;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2294
    :cond_5
    const-string v2, "#SET,HEART,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "OK"

    if-eqz v2, :cond_6

    .line 2295
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2296
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/rtkclientlib/event/HeartEvent;

    invoke-direct {v2, v3}, Lcom/qianhe/rtkclientlib/event/HeartEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2298
    :cond_6
    const-string v2, "#GET,GNSS.INFO,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v14, ""

    const/4 v15, 0x5

    if-eqz v2, :cond_8

    .line 2299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GNSS\u677f\u5361\u4fe1\u606f\u54cd\u5e94("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2300
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2301
    array-length v2, v0

    if-le v2, v10, :cond_7

    .line 2302
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v4, Lcom/qianhe/rtkclientlib/event/GnssInfo;

    aget-object v0, v0, v15

    invoke-direct {v4, v3, v0}, Lcom/qianhe/rtkclientlib/event/GnssInfo;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2304
    :cond_7
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/rtkclientlib/event/GnssInfo;

    invoke-direct {v2, v3, v14}, Lcom/qianhe/rtkclientlib/event/GnssInfo;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2306
    :cond_8
    const-string v2, "#GET,FEATURES,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u652f\u6301\u7279\u6027("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2308
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v4, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;

    invoke-direct {v4, v3, v0}, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2309
    :cond_9
    const-string v2, "#SET,DATALINK,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2310
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v4, Lcom/qianhe/rtkclientlib/event/SetDataLinkResponse;

    invoke-direct {v4, v3, v0}, Lcom/qianhe/rtkclientlib/event/SetDataLinkResponse;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2311
    :cond_a
    const-string v2, "#SET,RADIO,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2312
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v4, Lcom/qianhe/rtkclientlib/event/SetBaseRadioResponse;

    invoke-direct {v4, v3, v0}, Lcom/qianhe/rtkclientlib/event/SetBaseRadioResponse;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2313
    :cond_b
    const-string v2, "$GPGGA,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2314
    invoke-static/range {p1 .. p2}, Lcom/qianhe/baselib/utils/parser/GGAParser;->parseGGA(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)Lcom/qianhe/baselib/bean/GGAEntity;

    .line 2315
    iget-object v2, v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isH5OrOnlyone(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2316
    invoke-static {v0, v5}, Lcom/qianhe/baselib/utils/GGALogCache;->save(Ljava/lang/String;Z)V

    return-void

    .line 2318
    :cond_c
    const-string v2, "#BESTPOSA,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2319
    invoke-static/range {p1 .. p2}, Lcom/qianhe/baselib/utils/parser/BestPosParser;->parse(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)Lcom/qianhe/baselib/bean/BestPosEntity;

    return-void

    .line 2320
    :cond_d
    const-string v2, "#GET,POWER.BATTERYLEVEL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2322
    :try_start_0
    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 2323
    const-string v4, "%"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v13

    .line 2324
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2325
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 2326
    :cond_e
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/rtkclientlib/event/Batt;

    invoke-direct {v2, v3, v5}, Lcom/qianhe/rtkclientlib/event/Batt;-><init>(Lcom/qianhe/baselib/enums/DeviceType;I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2328
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u7535\u91cf\u89e3\u6790\u5f02\u5e38("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2331
    :cond_f
    const-string v2, "#GET,POWER.SOURCE,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2332
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v4, Lcom/qianhe/rtkclientlib/event/PowerSourceEvent;

    invoke-direct {v4, v3, v0}, Lcom/qianhe/rtkclientlib/event/PowerSourceEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2333
    :cond_10
    const-string v2, "#GET,HORIZONTAL_ANGLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2334
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2335
    array-length v2, v2

    if-le v2, v15, :cond_24

    .line 2336
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v8

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 2337
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v11

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 2338
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v10

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 2339
    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 2340
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-le v7, v12, :cond_24

    if-le v6, v12, :cond_24

    add-int/2addr v7, v13

    .line 2342
    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 2343
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    move v6, v2

    new-instance v2, Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;

    invoke-direct/range {v2 .. v7}, Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;-><init>(Lcom/qianhe/baselib/enums/DeviceType;FFFF)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2346
    :cond_11
    const-string v2, "#UPGRADE,INFO,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2347
    iput-boolean v5, v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->upgradeStart:Z

    .line 2348
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2349
    array-length v4, v2

    if-le v4, v10, :cond_24

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2351
    aget-object v0, v2, v11

    invoke-virtual {v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->decodeBase64ToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2352
    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->decodeBase64ToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2353
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v4

    new-instance v5, Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;

    invoke-direct {v5, v3, v0, v2}, Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u5347\u7ea7\u4fe1\u606f -> pn\u5217\u8868("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\uff0c version\u5217\u8868\uff1a"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 2356
    :cond_12
    const-string v2, "#UPGRADE,STATE,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v16, 0x2

    const-string v8, "GOING"

    const/16 v17, 0x4

    const-string v10, "FINISHED"

    const-string v5, "ERROR"

    if-eqz v2, :cond_15

    .line 2357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5347\u7ea7\u72b6\u6001\u67e5\u8be2\u5e94\u7b54("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2358
    iput-boolean v13, v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->upgradeStart:Z

    .line 2359
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v4, v2, v16

    .line 2360
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 2361
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v5, v2, v11

    .line 2362
    const-string v2, "IDEL"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_2

    .line 2364
    :cond_13
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2365
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v10

    new-instance v2, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v17

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v15

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x6

    aget-object v8, v0, v8

    invoke-direct/range {v2 .. v8}, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v10, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2363
    :cond_14
    :goto_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;

    const/4 v7, 0x0

    const-string v8, ""

    const/4 v6, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2368
    :cond_15
    const-string v2, "#UPGRADE,START,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2369
    iput-boolean v13, v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->upgradeStart:Z

    .line 2370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u8bf7\u6c42\u5347\u7ea7\u5e94\u7b54("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2371
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v4, Lcom/qianhe/rtkclientlib/event/UpgradeStartEvent;

    invoke-direct {v4, v3, v0}, Lcom/qianhe/rtkclientlib/event/UpgradeStartEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2373
    :cond_16
    const-string v2, "#UPGRADE,WRITE,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2375
    invoke-virtual {v0, v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 2376
    array-length v4, v2

    if-ge v4, v11, :cond_17

    goto/16 :goto_6

    .line 2377
    :cond_17
    aget-object v4, v2, v16

    .line 2378
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    move-object/from16 v18, v14

    const/16 v19, 0x1

    const-wide/16 v13, 0x0

    if-nez v5, :cond_1c

    const/16 v20, 0x3

    .line 2379
    iget-wide v11, v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->errorCount:J

    cmp-long v7, v11, v13

    if-eqz v7, :cond_18

    iput-wide v13, v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->errorCount:J

    :cond_18
    const/4 v7, -0x1

    .line 2380
    aget-object v5, v2, v20

    .line 2381
    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 2382
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-le v9, v7, :cond_19

    if-le v6, v7, :cond_19

    add-int/lit8 v9, v9, 0x1

    .line 2385
    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    :cond_19
    move-object/from16 v14, v18

    .line 2387
    :goto_3
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "APPLYING"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    move-object v8, v14

    goto :goto_4

    .line 2389
    :cond_1b
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    array-length v0, v2

    if-le v0, v15, :cond_24

    .line 2390
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    move-object v6, v2

    new-instance v2, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;

    aget-object v7, v6, v17

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v6, v6, v15

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v8, v7

    move v7, v6

    move v6, v8

    move-object v8, v14

    invoke-direct/range {v2 .. v8}, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2388
    :goto_4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_1c
    move-object v6, v2

    .line 2393
    iget-wide v2, v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->errorCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->errorCount:J

    const-wide/16 v4, 0x8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_24

    .line 2395
    iput-wide v13, v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->errorCount:J

    .line 2396
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;

    aget-object v5, v6, v16

    const/4 v7, 0x0

    const-string v8, "ERROR"

    const-string v4, ""

    const/4 v6, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_1d
    const/16 v20, 0x3

    .line 2399
    const-string v2, "#UPGRADE,CANCLE,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u53d6\u6d88\u5347\u7ea7\u5e94\u7b54("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2401
    iput-boolean v2, v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->upgradeStart:Z

    .line 2402
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/rtkclientlib/event/UpgradeCancelEvent;

    invoke-direct {v2, v3}, Lcom/qianhe/rtkclientlib/event/UpgradeCancelEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2403
    :cond_1e
    const-string v2, "$GPDOP,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2404
    invoke-static/range {p1 .. p2}, Lcom/qianhe/baselib/utils/parser/GPDOPParser;->parse(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)Lcom/qianhe/baselib/bean/GPDOPEntity;

    return-void

    .line 2405
    :cond_1f
    const-string v2, "#GET,RADIO_PROTOCOL_LIST,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2408
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v5, -0x1

    invoke-virtual {v0, v9, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2409
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x2

    .line 2410
    :goto_5
    array-length v4, v0

    if-ge v8, v4, :cond_20

    .line 2411
    aget-object v4, v0, v8

    add-int/lit8 v5, v8, -0x2

    .line 2412
    aput-object v4, v2, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 2414
    :cond_20
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v4, Lcom/qianhe/rtkclientlib/event/GetRadioProtocolListEvent;

    invoke-direct {v4, v3, v2}, Lcom/qianhe/rtkclientlib/event/GetRadioProtocolListEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;[Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2415
    :cond_21
    const-string v2, "#GET,RADIO_POWER_LIST,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "\\|"

    if-eqz v2, :cond_22

    .line 2417
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v5, -0x1

    invoke-virtual {v0, v9, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2418
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v5, Lcom/qianhe/rtkclientlib/event/GetRadioPowerListEvent;

    aget-object v0, v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v3, v0}, Lcom/qianhe/rtkclientlib/event/GetRadioPowerListEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;[Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2419
    :cond_22
    const-string v2, "#GET,RADIO,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2420
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v5, -0x1

    invoke-virtual {v0, v9, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2421
    array-length v2, v0

    const/4 v4, 0x4

    if-le v2, v4, :cond_24

    .line 2423
    new-instance v2, Lcom/qianhe/rtkclientlib/event/GetRadioEvent;

    invoke-direct {v2}, Lcom/qianhe/rtkclientlib/event/GetRadioEvent;-><init>()V

    .line 2424
    aget-object v5, v0, v16

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/qianhe/rtkclientlib/event/GetRadioEvent;->channelNumber:I

    .line 2425
    aget-object v5, v0, v20

    iput-object v5, v2, Lcom/qianhe/rtkclientlib/event/GetRadioEvent;->protocolNumber:Ljava/lang/String;

    .line 2426
    aget-object v0, v0, v4

    iput-object v0, v2, Lcom/qianhe/rtkclientlib/event/GetRadioEvent;->power:Ljava/lang/String;

    .line 2427
    iput-object v3, v2, Lcom/qianhe/rtkclientlib/event/GetRadioEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 2428
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2430
    :cond_23
    const-string v2, "#GET,RADIO_CHANNEL,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2432
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v5, -0x1

    invoke-virtual {v0, v9, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2433
    array-length v2, v0

    const/4 v5, 0x2

    if-le v2, v5, :cond_24

    .line 2434
    aget-object v2, v0, v5

    const-string/jumbo v6, "|"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2435
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v6, Lcom/qianhe/rtkclientlib/event/GetRadioChannelEvent;

    aget-object v0, v0, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v3, v0}, Lcom/qianhe/rtkclientlib/event/GetRadioChannelEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;[Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_24
    :goto_6
    return-void
.end method

.method private parseH5Data(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p1

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    .line 2442
    iget-object v2, v8, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isH5OrOnlyone(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    .line 2443
    :cond_0
    const-string v2, "$GPSAV,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2444
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/rtkclientlib/event/SavPackageEvent;

    invoke-direct {v3, v1, v0}, Lcom/qianhe/rtkclientlib/event/SavPackageEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2445
    :cond_1
    const-string v2, "$GPSAU,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2446
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/rtkclientlib/event/SauPackageEvent;

    invoke-direct {v3, v1, v0}, Lcom/qianhe/rtkclientlib/event/SauPackageEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2447
    :cond_2
    const-string v2, "$GPSNR,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2448
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/rtkclientlib/event/SNRPackageEvent;

    invoke-direct {v3, v1, v0}, Lcom/qianhe/rtkclientlib/event/SNRPackageEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2449
    :cond_3
    const-string v2, "$GPGST,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2450
    invoke-static/range {p1 .. p2}, Lcom/qianhe/baselib/utils/parser/GSTParser;->parse(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)Lcom/qianhe/baselib/bean/GSTEntity;

    return-void

    .line 2451
    :cond_4
    const-string v2, "#REFSTATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2452
    invoke-static/range {p1 .. p2}, Lcom/qianhe/baselib/utils/parser/RefstationParser;->parser(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)Lcom/qianhe/baselib/bean/BaseStationEntity;

    return-void

    .line 2453
    :cond_5
    const-string v2, "$INS.NAVI,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 2454
    invoke-static/range {p1 .. p2}, Lcom/qianhe/baselib/utils/parser/INSParser;->parser(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)Lcom/qianhe/baselib/bean/InsNavi;

    .line 2455
    invoke-static {v0, v3}, Lcom/qianhe/baselib/utils/INSLogCache;->save(Ljava/lang/String;Z)V

    return-void

    .line 2456
    :cond_6
    const-string v2, "$INS.AHRS,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2457
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/baselib/bean/InsAhrs;

    invoke-direct {v3, v1, v0}, Lcom/qianhe/baselib/bean/InsAhrs;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2458
    :cond_7
    const-string v2, "#SET,HORIZONTAL_ANGLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x5

    const-string v6, "OK"

    const/4 v7, 0x3

    const/4 v9, 0x4

    const-string v10, ","

    if-eqz v2, :cond_8

    .line 2459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u8bbe\u7f6e\u6c34\u5e73\u89d2\u5ea6\u8303\u56f4\u5e94\u7b54("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2460
    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2461
    array-length v2, v2

    if-le v2, v5, :cond_20

    .line 2462
    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 2463
    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v7

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 2464
    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v9

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 2465
    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v5, v7, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 2466
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v7

    new-instance v9, Lcom/qianhe/rtkclientlib/event/SETHorizontalAngle;

    move v10, v5

    move v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    move-object v0, v9

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/rtkclientlib/event/SETHorizontalAngle;-><init>(Lcom/qianhe/baselib/enums/DeviceType;ZFFFF)V

    invoke-virtual {v7, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2468
    :cond_8
    const-string v2, "#CALIBRATE,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "*"

    const/4 v13, -0x1

    if-eqz v11, :cond_9

    const-string v11, ",GET_PARAM,"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2469
    invoke-virtual {v0, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 2470
    array-length v3, v2

    if-le v3, v7, :cond_20

    .line 2471
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;

    aget-object v5, v2, v7

    aget-object v2, v2, v9

    invoke-direct {v4, v1, v5, v2, v0}, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2473
    :cond_9
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    const-string v11, ",SET_PARAM,"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 2474
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;

    invoke-direct {v3, v1, v0}, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2475
    :cond_a
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    const-string v11, ",GO,"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2476
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/rtkclientlib/event/CalibrateEvent;

    invoke-direct {v3, v1, v0}, Lcom/qianhe/rtkclientlib/event/CalibrateEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2477
    :cond_b
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    const-string v14, ""

    if-eqz v11, :cond_d

    const-string v11, ",MAKE_TOOL,"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 2478
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2479
    invoke-virtual {v0, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2480
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v4, Lcom/qianhe/rtkclientlib/event/MakeToolEvent;

    aget-object v0, v0, v9

    invoke-direct {v4, v1, v3, v0}, Lcom/qianhe/rtkclientlib/event/MakeToolEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;ILjava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2482
    :cond_c
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/rtkclientlib/event/MakeToolEvent;

    invoke-direct {v2, v1, v13, v14}, Lcom/qianhe/rtkclientlib/event/MakeToolEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2484
    :cond_d
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    const-string v11, ",GET_TOOL,"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 2485
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2486
    invoke-virtual {v0, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2487
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v4, Lcom/qianhe/rtkclientlib/event/GetToolEvent;

    aget-object v0, v0, v9

    invoke-direct {v4, v1, v3, v0}, Lcom/qianhe/rtkclientlib/event/GetToolEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;ILjava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2489
    :cond_e
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/rtkclientlib/event/GetToolEvent;

    invoke-direct {v2, v1, v13, v14}, Lcom/qianhe/rtkclientlib/event/GetToolEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2491
    :cond_f
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    const-string v11, ",PARSE_TOOL,"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 2492
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2493
    invoke-virtual {v0, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x4

    .line 2495
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_11

    if-le v4, v9, :cond_10

    .line 2496
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2497
    :cond_10
    aget-object v5, v0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2499
    :cond_11
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v4, Lcom/qianhe/rtkclientlib/event/ParseToolEvent;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v1, v3, v2}, Lcom/qianhe/rtkclientlib/event/ParseToolEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;ILjava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2501
    :cond_12
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/rtkclientlib/event/ParseToolEvent;

    invoke-direct {v2, v1, v13, v14}, Lcom/qianhe/rtkclientlib/event/ParseToolEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2503
    :cond_13
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, ",ADJUST_PARAM,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2504
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2505
    invoke-virtual {v0, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2506
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v4, Lcom/qianhe/rtkclientlib/event/AdjustParamEvent;

    aget-object v0, v0, v9

    invoke-direct {v4, v1, v3, v0}, Lcom/qianhe/rtkclientlib/event/AdjustParamEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;ILjava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2508
    :cond_14
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/rtkclientlib/event/AdjustParamEvent;

    invoke-direct {v2, v1, v13, v14}, Lcom/qianhe/rtkclientlib/event/AdjustParamEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2510
    :cond_15
    const-string v2, "#SET,POWEROFF,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2511
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/rtkclientlib/event/HostPoweroffEvent;

    invoke-direct {v3, v1, v0}, Lcom/qianhe/rtkclientlib/event/HostPoweroffEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2512
    :cond_16
    const-string v2, "#GET,POS_SMOOTH,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2513
    invoke-virtual {v0, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2514
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/rtkclientlib/event/GetPosSmoothResponse;

    aget-object v0, v0, v4

    invoke-direct {v3, v1, v0}, Lcom/qianhe/rtkclientlib/event/GetPosSmoothResponse;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2515
    :cond_17
    const-string v2, "#SENSOR,,GET_PARAM,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2516
    invoke-virtual {v0, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2517
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/rtkclientlib/event/GetSensorParamEvent;

    aget-object v0, v0, v7

    invoke-direct {v2, v0}, Lcom/qianhe/rtkclientlib/event/GetSensorParamEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2518
    :cond_18
    const-string v2, "#SENSOR,,SET_PARAM,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2519
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/rtkclientlib/event/SetSensorParamEvent;

    invoke-direct {v2, v0}, Lcom/qianhe/rtkclientlib/event/SetSensorParamEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2520
    :cond_19
    const-string v2, "$EXTSENSOR,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x7

    const/4 v6, 0x6

    if-eqz v2, :cond_1a

    .line 2521
    invoke-virtual {v0, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2522
    array-length v1, v0

    const/16 v2, 0x8

    if-le v1, v2, :cond_20

    .line 2523
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v10, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    aget-object v3, v0, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aget-object v3, v0, v6

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    invoke-direct/range {v10 .. v17}, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;-><init>(IDDD)V

    invoke-virtual {v1, v10}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2525
    :cond_1a
    const-string v2, "$BASEINFO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2526
    invoke-virtual {v0, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2528
    array-length v2, v0

    if-le v2, v4, :cond_1b

    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    :cond_1b
    const-wide/16 v2, 0x0

    .line 2529
    :goto_1
    array-length v4, v0

    const/16 v5, 0x16

    if-le v4, v5, :cond_20

    .line 2530
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v9

    move-object v4, v0

    new-instance v0, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;

    const/16 v6, 0x13

    aget-object v7, v4, v6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1c

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    :cond_1c
    const/4 v6, -0x1

    :goto_2
    const/16 v7, 0x14

    aget-object v10, v4, v7

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1d

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_3

    :cond_1d
    const/4 v7, -0x1

    :goto_3
    const/16 v10, 0x15

    aget-object v10, v4, v10

    aget-object v11, v4, v5

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1e

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move v5, v7

    move v7, v13

    :goto_4
    move v4, v6

    move-object v6, v10

    goto :goto_5

    :cond_1e
    move v5, v7

    const/4 v7, -0x1

    goto :goto_4

    :goto_5
    invoke-direct/range {v0 .. v7}, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;JIILjava/lang/String;I)V

    invoke-virtual {v9, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2532
    :cond_1f
    const-string v1, "#GET,ANTENNA,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2533
    invoke-virtual {v0, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2534
    array-length v1, v0

    if-le v1, v6, :cond_20

    .line 2535
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v10

    move-object v1, v0

    new-instance v0, Lcom/qianhe/rtkclientlib/event/AntennaParams;

    aget-object v2, v1, v7

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aget-object v3, v1, v9

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aget-object v4, v1, v5

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/rtkclientlib/event/AntennaParams;-><init>(Lcom/qianhe/baselib/enums/DeviceType;FFFF)V

    invoke-virtual {v10, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_20
    :goto_6
    return-void
.end method

.method private refreshClearingBondState()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1737
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearingBondAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1741
    :try_start_0
    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearingBondAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_1

    .line 1743
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u65e7\u914d\u5bf9\u5df2\u6e05\u9664: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearingBondAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1744
    iput-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearingBondAddress:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1747
    :catchall_0
    iput-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearingBondAddress:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method private rememberClearingBond(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1701
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1704
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_0
    return-void

    .line 1707
    :cond_1
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearingBondAddress:Ljava/lang/String;

    return-void
.end method

.method private removeStaleBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1259
    :try_start_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1263
    :catchall_0
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    .line 1264
    const-string v1, "removeBond"

    invoke-static {p1, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->invokeHiddenBoolean(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v1

    .line 1265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeStaleBond result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", beforeState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", afterState="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1265
    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return v1
.end method

.method private requestBondUi(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 643
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 644
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isStaleTargetBonding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestBondUi: \u6b8b\u7559 BOND_BONDING\uff0c\u6e05\u9664\u540e\u91cd\u914d\u5bf9: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 646
    invoke-static {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBondProcessIfNeeded(Landroid/bluetooth/BluetoothDevice;)Z

    .line 647
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scheduleBondUiAfterCleared(Ljava/lang/String;I)V

    return-void

    .line 650
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestBondUi: \u76ee\u6807\u914d\u5bf9\u8fdb\u884c\u4e2d\uff0c\u4fdd\u7559\u81ea\u52a8\u914d\u5bf9: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 651
    iput-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    .line 652
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->startBondWatch(Landroid/bluetooth/BluetoothDevice;)V

    .line 653
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->notifyBonding(Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 656
    :cond_2
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->startBondUiNow(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private resetStaleBondRepairState()V
    .locals 4

    const/4 v0, 0x0

    .line 1174
    iput-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->removingStaleBond:Z

    .line 1175
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelRepairBondAfterRemoved()V

    .line 1176
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearBondUiRequested()V

    .line 1177
    iput v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->staleBondRepairCount:I

    const/4 v1, 0x0

    .line 1178
    iput-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->staleBondRepairAddress:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 1179
    iput-wide v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastStaleBondRepairAt:J

    .line 1180
    iput-wide v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->staleBondRemovedAt:J

    .line 1181
    iput v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedConnectFailCount:I

    .line 1182
    iput-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedConnectFailAddress:Ljava/lang/String;

    return-void
.end method

.method private resolveBondedDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 4

    if-eqz p1, :cond_3

    .line 351
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 356
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 357
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_3
    :goto_0
    return-object p1
.end method

.method private resolveConnectDeviceByAddress(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 397
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    goto :goto_0

    .line 402
    :cond_1
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 403
    invoke-direct {p0, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->resolveBondedDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 404
    invoke-direct {p0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isDeviceBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    return-object v0

    .line 409
    :catchall_0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->resolveBondedDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1

    .line 399
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->resolveBondedDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1
.end method

.method private safeCreateBond(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    if-eqz p1, :cond_8

    .line 1916
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1920
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->userCancelledBondAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1921
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1922
    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->userCancelledBondAddress:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 1923
    iput-wide v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->userCancelledBondUntilMs:J

    .line 1925
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->refreshClearingBondState()V

    .line 1927
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isOtherDeviceBonding(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "safeCreateBond: \u7b49\u5f85\u65e7\u8bbe\u5907\u9000\u51fa BOND_BONDING \u540e\u518d\u914d\u5bf9\u65b0\u8bbe\u5907: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", clearing="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearingBondAddress:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1930
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    .line 1931
    iput-boolean v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    .line 1932
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->notifyBonding(Landroid/bluetooth/BluetoothDevice;)V

    .line 1933
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->startBondWatch(Landroid/bluetooth/BluetoothDevice;)V

    .line 1934
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelOtherBondProcesses(Ljava/lang/String;)V

    .line 1935
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scheduleSafeCreateBondWhenStackIdle(Ljava/lang/String;I)V

    return-void

    .line 1938
    :cond_2
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    .line 1939
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 1940
    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelOtherBondProcesses(Ljava/lang/String;)V

    .line 1941
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->markBondAttempt(Landroid/bluetooth/BluetoothDevice;)V

    .line 1942
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isDeviceBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1943
    iput-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    .line 1944
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearBondAttempt(Ljava/lang/String;)V

    .line 1945
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopBondWatch()V

    .line 1946
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->resolveBondedDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scheduleConnectAfterBond(Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 1949
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    .line 1950
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_6

    .line 1952
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isStaleTargetBonding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "safeCreateBond: \u76ee\u6807\u6b8b\u7559 BOND_BONDING\uff0c\u53d6\u6d88\u540e\u91cd\u914d\u5bf9: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1954
    invoke-static {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBondProcessIfNeeded(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1955
    iput-boolean v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    .line 1956
    invoke-virtual {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScan()V

    .line 1957
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->interruptConnectThread()V

    .line 1958
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->notifyBonding(Landroid/bluetooth/BluetoothDevice;)V

    .line 1959
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->startBondWatch(Landroid/bluetooth/BluetoothDevice;)V

    .line 1960
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scheduleBondUiAfterCleared(Ljava/lang/String;I)V

    return-void

    .line 1963
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "safeCreateBond: \u76ee\u6807\u5df2\u5728\u914d\u5bf9\u4e2d\uff0c\u7b49\u5f85\u81ea\u52a8\u914d\u5bf9\u5b8c\u6210: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1964
    iput-boolean v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    .line 1965
    invoke-virtual {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScan()V

    .line 1966
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->interruptConnectThread()V

    .line 1967
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->notifyBonding(Landroid/bluetooth/BluetoothDevice;)V

    .line 1968
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->startBondWatch(Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 1971
    :cond_6
    iput-boolean v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    .line 1972
    invoke-virtual {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScan()V

    .line 1973
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->interruptConnectThread()V

    .line 1974
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->notifyBonding(Landroid/bluetooth/BluetoothDevice;)V

    .line 1975
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->startBondWatch(Landroid/bluetooth/BluetoothDevice;)V

    .line 1977
    new-instance v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient$14;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$14;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V

    if-eqz v0, :cond_7

    .line 1987
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x15e

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1989
    :cond_7
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_8
    :goto_1
    return-void
.end method

.method private scheduleBondUiAfterCleared(Ljava/lang/String;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 531
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$2;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;I)V

    const-wide/16 p1, 0xfa

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private scheduleBondedRfcommTimeout(Landroid/bluetooth/BluetoothSocket;JLandroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 853
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBondedRfcommTimeout()V

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 854
    invoke-direct {p0, p4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->shouldProbeStaleBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v2, p0

    goto :goto_0

    .line 857
    :cond_1
    new-instance v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;

    move-object v2, p0

    move-object v5, p1

    move-wide v3, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;JLandroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v1, v2, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedRfcommTimeoutRunnable:Ljava/lang/Runnable;

    .line 885
    iget-object p1, v2, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x2710

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 886
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "\u5df2\u914d\u5bf9\u76f4\u8fde\u542f\u52a8\u77ed\u8d85\u65f6\u63a2\u6d4b: 10000ms -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private scheduleConnectAfterBond(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 995
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->postBondConnectScheduled:Z

    if-eqz v0, :cond_1

    .line 996
    const-string/jumbo p1, "\u914d\u5bf9\u540e\u8fde\u63a5\u5df2\u8c03\u5ea6\uff0c\u8df3\u8fc7\u91cd\u590d"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 999
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1000
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    return-void

    .line 1001
    :cond_2
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1002
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u5bf9\u5b8c\u6210\u4f46\u975e\u5f53\u524d\u76ee\u6807\u8bbe\u5907\uff0c\u5ffd\u7565\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 1005
    :cond_3
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->resolveBondedDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1006
    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_4

    .line 1007
    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->resolveBondedDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    move-object p1, v1

    .line 1012
    :goto_1
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isDeviceBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_6

    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u914d\u5bf9\u5b8c\u6210\u56de\u8c03\u65f6\u4ecd\u672a BOND_BONDED\uff0c\u7ee7\u7eed\u914d\u5bf9\uff0c\u4e0d\u76f4\u8fde: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1014
    iput-boolean v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    .line 1015
    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    .line 1016
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->startBondWatch(Landroid/bluetooth/BluetoothDevice;)V

    .line 1017
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->startBondUiNow(Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 1020
    :cond_6
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopBondWatch()V

    const/4 v1, 0x0

    .line 1021
    iput-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    .line 1022
    invoke-direct {p0, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearBondAttempt(Ljava/lang/String;)V

    .line 1023
    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    .line 1024
    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1025
    const-string/jumbo p1, "\u8bbe\u5907\u5df2\u8fde\u63a5\uff0c\u5ffd\u7565\u914d\u5bf9\u5b8c\u6210\u56de\u8c03"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 1028
    :cond_7
    iget-boolean v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isConnecting:Z

    if-eqz v3, :cond_8

    .line 1029
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->interruptConnectThread()V

    .line 1032
    :cond_8
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelPostBondConnect()V

    .line 1033
    iput-boolean v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->postBondConnectScheduled:Z

    .line 1034
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondCompletedAt:J

    .line 1035
    iput-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->removingStaleBond:Z

    .line 1036
    iput v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedConnectFailCount:I

    const/4 v1, 0x0

    .line 1037
    iput-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedConnectFailAddress:Ljava/lang/String;

    .line 1038
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->finishBondActivity()V

    .line 1039
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->notifyBondCompleted(Landroid/bluetooth/BluetoothDevice;)V

    .line 1040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u914d\u5bf9\u6210\u529f\uff0c800ms \u540e\u5f00\u59cb\u8fde\u63a5\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1041
    new-instance v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$6;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->postBondConnectRunnable:Ljava/lang/Runnable;

    .line 1056
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scheduleEnsureNewBondUi(Ljava/lang/String;)V
    .locals 3

    .line 1496
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1499
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->ensureNewBondUiRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1500
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1502
    :cond_1
    new-instance v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$10;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$10;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->ensureNewBondUiRunnable:Ljava/lang/Runnable;

    .line 1528
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scheduleRepairBondAfterRemoved(Ljava/lang/String;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1367
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->repairBondAfterRemovedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1368
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1369
    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->repairBondAfterRemovedRunnable:Ljava/lang/Runnable;

    .line 1371
    :cond_1
    new-instance v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->repairBondAfterRemovedRunnable:Ljava/lang/Runnable;

    .line 1442
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private scheduleSafeCreateBondWhenStackIdle(Ljava/lang/String;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1996
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1999
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;I)V

    const-wide/16 p1, 0xfa

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private shouldHandleBondEvent(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 738
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isPendingConnectDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 739
    :cond_1
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    .line 740
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 743
    :cond_2
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, ""

    invoke-virtual {v1, p1, v3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getDeviceType(Ljava/lang/String;Ljava/lang/String;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object p1

    .line 744
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method private shouldProbeStaleBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 781
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isDeviceBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isListedAsBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 784
    :cond_1
    iget-wide v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondCompletedAt:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 785
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondCompletedAt:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    return v0

    .line 788
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isStaleBondRepairOnCooldown(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private startBondUiNow(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 567
    iget-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 570
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    .line 575
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 577
    :cond_2
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isDeviceBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startBondUiNow: \u5df2\u914d\u5bf9\uff0c\u914d\u5bf9\u6210\u529f\u540e\u8fde\u63a5: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 579
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->resolveBondedDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scheduleConnectAfterBond(Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 583
    :cond_3
    iget-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiReachedBonding:Z

    const/16 v1, 0xb

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startBondUiNow: \u672c\u8f6e\u914d\u5bf9\u8fdb\u884c\u4e2d\uff0c\u7b49\u5f85\u5b8c\u6210: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 585
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->startBondWatch(Landroid/bluetooth/BluetoothDevice;)V

    .line 586
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->notifyBonding(Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 589
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startBondUiNow: \u53d6\u6d88\u6b8b\u7559\u914d\u5bf9\u540e\u53d1\u8d77\u524d\u53f0\u91cd\u914d: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 591
    invoke-static {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBondProcessIfNeeded(Landroid/bluetooth/BluetoothDevice;)Z

    .line 594
    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->markBondUiRequested(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScan()V

    .line 598
    new-instance v0, Lcom/qianhe/rtkclientlib/event/BluetoothBondRequestEvent;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qianhe/rtkclientlib/event/BluetoothBondRequestEvent;-><init>(Ljava/lang/String;)V

    .line 599
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 600
    iget-boolean v0, v0, Lcom/qianhe/rtkclientlib/event/BluetoothBondRequestEvent;->handledByActivity:Z

    if-nez v0, :cond_6

    .line 601
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->launchBondActivity(Landroid/bluetooth/BluetoothDevice;)Z

    .line 603
    :cond_6
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiFallbackRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 604
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 606
    :cond_7
    new-instance v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$3;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$3;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiFallbackRunnable:Ljava/lang/Runnable;

    .line 634
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_0
    return-void
.end method

.method private startBondWatch(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 436
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 437
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopBondWatch()V

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondWatchStartedAt:J

    .line 440
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 441
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isBondUiRequested(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondUiReachedBonding:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondWatchSawBonding:Z

    .line 443
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 444
    new-instance v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondWatchRunnable:Ljava/lang/Runnable;

    .line 486
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private startConnectThread(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1896
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isUserCancelledBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u7528\u6237\u5df2\u53d6\u6d88\uff0c\u8df3\u8fc7 RFCOMM \u8fde\u63a5: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 1900
    :cond_1
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    .line 1901
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1905
    :cond_2
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isDeviceBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u672a\u914d\u5bf9\u8bbe\u5907\u4e0d\u80fd\u76f4\u8fde\uff0c\u5148\u914d\u5bf9: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1907
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->safeCreateBond(Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 1910
    :cond_3
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->interruptConnectThread()V

    .line 1911
    new-instance v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mConnectThread:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    .line 1912
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 1902
    :cond_4
    :goto_0
    const-string/jumbo p1, "\u76ee\u6807\u5df2\u53d8\u66f4\uff0c\u8df3\u8fc7 RFCOMM \u8fde\u63a5"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private startStaleBondRepair(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 1328
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1331
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isUserCancelledBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 1334
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1335
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 1339
    :cond_2
    invoke-virtual {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isSocketConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_1

    .line 1342
    :cond_3
    iget-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->removingStaleBond:Z

    if-eqz v1, :cond_4

    .line 1343
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "\u9648\u65e7\u914d\u5bf9\u4fee\u590d\u5df2\u5728\u8fdb\u884c: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 1346
    :cond_4
    invoke-direct {p0, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isStaleBondRepairOnCooldown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1347
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "\u9648\u65e7\u914d\u5bf9\u4fee\u590d\u51b7\u5374\u4e2d\uff0c\u8df3\u8fc7: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 1350
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5f00\u59cb\u79fb\u9664\u9648\u65e7\u914d\u5bf9\u5e76\u91cd\u65b0\u914d\u5bf9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1351
    iget p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->staleBondRepairCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->staleBondRepairCount:I

    const-wide/16 v1, 0x0

    .line 1352
    iput-wide v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->staleBondRemovedAt:J

    .line 1353
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearBondUiRequested()V

    .line 1354
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->markStaleBondRepair(Landroid/bluetooth/BluetoothDevice;)V

    .line 1355
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->interruptConnectThread()V

    .line 1356
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 1357
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->removeStaleBond(Landroid/bluetooth/BluetoothDevice;)Z

    const/4 p1, 0x0

    .line 1358
    invoke-direct {p0, v0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scheduleRepairBondAfterRemoved(Ljava/lang/String;I)V

    return-void

    .line 1336
    :cond_6
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "\u76ee\u6807\u5df2\u53d8\u66f4\uff0c\u53d6\u6d88\u9648\u65e7\u914d\u5bf9\u4fee\u590d: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private startTimer(Landroid/bluetooth/le/ScanSettings$Builder;)V
    .locals 4

    .line 1797
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scanExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1799
    new-instance v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient$12;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$12;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/le/ScanSettings$Builder;)V

    const-wide/16 v2, 0x2710

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->schedule:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private stopBondWatch()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondWatchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 430
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 431
    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondWatchRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private stopPresenceScanForBondProbe()V
    .locals 1

    .line 843
    iget-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->presenceScanForBondProbe:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 846
    iput-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->presenceScanForBondProbe:Z

    .line 847
    invoke-direct {p0, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScanInternal(Z)V

    return-void
.end method

.method private stopScanInternal(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 1838
    iput-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->presenceScanForBondProbe:Z

    .line 1839
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScanCallbacks:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1840
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->schedule:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    .line 1841
    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1842
    iput-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->schedule:Ljava/util/concurrent/ScheduledFuture;

    .line 1844
    :cond_0
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scanExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1845
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scanExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1847
    :cond_1
    iput-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scanExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1848
    iget-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isScanning:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1850
    :try_start_0
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v1, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1852
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u505c\u6b62\u641c\u7d22\u84dd\u7259\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 1855
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isScanning:Z

    .line 1856
    iput-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isScanning:Z

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    .line 1857
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scanListener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;

    if-eqz p1, :cond_3

    .line 1858
    invoke-interface {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;->onScanFinished()V

    :cond_3
    return-void
.end method

.method private tryRepairStaleBond(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 1276
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isUserCancelledBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 1279
    :cond_0
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    .line 1280
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 1283
    :cond_1
    iget-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->removingStaleBond:Z

    const/4 v2, 0x1

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 1287
    :cond_2
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isDeviceBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isListedAsBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 1290
    :cond_3
    iget-wide v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondCompletedAt:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    .line 1291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondCompletedAt:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v1, v3, v5

    if-gez v1, :cond_4

    .line 1292
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u521a\u914d\u5bf9\u5b8c\u6210\uff0c\u8fde\u63a5\u5931\u8d25\u4e0d\u62c6\u914d: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return v0

    .line 1295
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1296
    invoke-direct {p0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isStaleBondRepairOnCooldown(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1297
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "\u9648\u65e7\u914d\u5bf9\u4fee\u590d\u51b7\u5374\u4e2d\uff0c\u4e0d\u518d\u62c6\u914d: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return v0

    .line 1300
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isConfirmedStaleBond(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1301
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5df2\u914d\u5bf9\u8fde\u63a5\u5931\u8d25\uff0c\u4f46\u65e0\u6cd5\u786e\u8ba4\u9648\u65e7\u914d\u5bf9\uff08\u8bbe\u5907\u53ef\u80fd\u5173\u673a/\u8d85\u8ddd\uff09\uff0c\u4e0d\u62c6\u914d: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1302
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopPresenceScanForBondProbe()V

    return v0

    .line 1305
    :cond_6
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedConnectFailAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedConnectFailAddress:Ljava/lang/String;

    .line 1306
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1307
    iget v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedConnectFailCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedConnectFailCount:I

    goto :goto_0

    .line 1309
    :cond_7
    iput-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedConnectFailAddress:Ljava/lang/String;

    .line 1310
    iput v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedConnectFailCount:I

    .line 1312
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5224\u5b9a\u4e3a\u9648\u65e7\u914d\u5bf9\uff0c\u79fb\u9664\u540e\u91cd\u65b0\u914d\u5bf9: addr="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", fail="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedConnectFailCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", nearby="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    invoke-direct {p0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->wasRecentlyScanned(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    invoke-static {p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isAuthOrKeyError(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1312
    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1317
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$8;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2

    .line 1284
    :cond_8
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RFCOMM \u5931\u8d25\u65f6\u914d\u5bf9/\u62c6\u914d\u8fdb\u884c\u4e2d\uff0c\u7b49\u5f85\u91cd\u65b0\u914d\u5bf9\u5b8c\u6210: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return v2

    :cond_9
    :goto_2
    return v0
.end method

.method private wasAdvertisingDuringProbe(Ljava/lang/String;)Z
    .locals 6

    .line 811
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-wide v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedProbeStartedAt:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    goto :goto_0

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastAdvertisedAtByAddress:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_1

    return v1

    .line 818
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedProbeStartedAt:J

    cmp-long p1, v2, v4

    if-ltz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private wasRecentlyScanned(Ljava/lang/String;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1190
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastScanResultAt:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    return v1

    .line 1193
    :cond_1
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scanDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_2

    .line 1194
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method


# virtual methods
.method public cancelBonding()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u7528\u6237\u53d6\u6d88\u914d\u5bf9: last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1639
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->getPendingBondDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1640
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 1641
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1644
    :cond_0
    invoke-direct {p0, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->markUserCancelledBond(Landroid/bluetooth/BluetoothDevice;)V

    .line 1645
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBondProcessForAddress(Ljava/lang/String;)V

    .line 1646
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBondProcessForAddress(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 1648
    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBondProcessIfNeeded(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1650
    :cond_1
    iget-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    return-void

    .line 1653
    :cond_2
    invoke-direct {p0, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->handleBondCancelled(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public connectToDevice(Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;)V
    .locals 4

    .line 1865
    iget-wide v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->connectSessionId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->connectSessionId:J

    const/4 v0, 0x0

    .line 1866
    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->userCancelledBondAddress:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 1867
    iput-wide v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->userCancelledBondUntilMs:J

    .line 1868
    iput-wide v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedProbeStartedAt:J

    .line 1869
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearBondUiRequested()V

    if-eqz p1, :cond_0

    .line 1870
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1871
    :cond_0
    invoke-direct {p0, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelOtherBondProcesses(Ljava/lang/String;)V

    .line 1872
    iput-object p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->connectionListener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    const/4 p2, 0x0

    .line 1873
    iput-boolean p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->socketClosed:Z

    .line 1874
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->ensureBondReceiverRegistered()V

    .line 1876
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->resolveConnectDeviceByAddress(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 1880
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    .line 1881
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isDeviceBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5df2\u914d\u5bf9\u8bbe\u5907\uff0c\u6309\u5730\u5740\u76f4\u8fde: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1883
    iput-boolean p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    .line 1884
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->clearBondAttempt(Ljava/lang/String;)V

    .line 1885
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->startConnectThread(Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 1887
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u672a\u914d\u5bf9\u8bbe\u5907\uff0c\u5148\u914d\u5bf9\u518d\u8fde\u63a5: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1888
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->safeCreateBond(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method protected decodeBase64ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 2695
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 2696
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public disconnect()V
    .locals 1

    const/4 v0, 0x1

    .line 3102
    invoke-virtual {p0, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->disconnect(Z)V

    return-void
.end method

.method public disconnect(Z)V
    .locals 0

    .line 3109
    invoke-direct {p0, p1, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->disconnectInternal(ZZ)V

    return-void
.end method

.method public getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public getPairedDevices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPendingConnectAddress()Ljava/lang/String;
    .locals 1

    .line 3097
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionAddress()Ljava/lang/String;
    .locals 1

    .line 1762
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1763
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    return-object v0

    .line 1765
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isSocketConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isConnecting:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2

    .line 1766
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasActiveSession()Z
    .locals 1

    .line 1752
    invoke-virtual {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isSocketConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isConnecting:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isBluetoothAvailable()Z
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBluetoothEnabled()Z
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBondedAddress(Ljava/lang/String;)Z
    .locals 2

    .line 379
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isDeviceBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_1
    :goto_0
    return v1
.end method

.method public isBonding()Z
    .locals 1

    .line 3089
    iget-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    .line 3093
    iget-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isConnecting:Z

    return v0
.end method

.method public isSocketConnected()Z
    .locals 1

    .line 1757
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {p0, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isSocketStillConnected(Landroid/bluetooth/BluetoothSocket;)Z

    move-result v0

    return v0
.end method

.method public keepReconnectOnSocketClose()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->upgradeStart:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->expectReboot:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public openBluetooth(Landroid/app/Activity;I)V
    .locals 2

    .line 274
    invoke-virtual {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 280
    :cond_0
    const-string p1, "===========\u8bbe\u5907\u4e0d\u652f\u6301\u84dd\u7259=========="

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method public openBluetooth(Landroid/content/Context;)V
    .locals 2

    .line 287
    invoke-virtual {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 290
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 291
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 294
    :cond_0
    const-string p1, "===========\u8bbe\u5907\u4e0d\u652f\u6301\u84dd\u7259=========="

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method protected parseLine(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V
    .locals 4

    .line 2228
    const-string v0, " -> "

    :try_start_0
    invoke-virtual {p1}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    .line 2229
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 2232
    :cond_0
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isH5OrOnlyone(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2233
    invoke-static {p2}, Lcom/qianhe/baselib/utils/BleLogCache;->writeToFile(Ljava/lang/String;)V

    .line 2234
    invoke-static {p2}, Lcom/qianhe/baselib/utils/DebugLogCache;->writeToFile(Ljava/lang/String;)V

    .line 2235
    sget-boolean v1, Lcom/qianhe/rtkclientlib/RtkConstant;->debug:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/rtkclientlib/event/DebugData;

    invoke-direct {v2, p1, p2}, Lcom/qianhe/rtkclientlib/event/DebugData;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 2237
    :cond_1
    :goto_0
    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v1, :cond_2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/BaseBleLogCache;->writeToFile(Ljava/lang/String;)V

    .line 2238
    :cond_2
    const-string v1, "([$#])([^$#]*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2239
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2240
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2243
    invoke-direct {p0, p1, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->parseCommonData(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    .line 2245
    invoke-direct {p0, p1, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->parseBaseStationData(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    .line 2247
    invoke-direct {p0, p1, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->parseH5Data(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2250
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothClient.parseLine("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")\uff1a"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public prepareForNewConnection(Ljava/lang/String;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u51c6\u5907\u65b0\u8fde\u63a5\uff0c\u9759\u9ed8\u6e05\u7406\u65e7\u7684\u914d\u5bf9\u7533\u8bf7: new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1664
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    .line 1665
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedConnectFailAddress:Ljava/lang/String;

    .line 1666
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondedConnectFailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->staleBondRepairAddress:Ljava/lang/String;

    .line 1667
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->staleBondRepairAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1669
    :cond_2
    iput-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->removingStaleBond:Z

    goto :goto_0

    .line 1671
    :cond_3
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->resetStaleBondRepairState()V

    .line 1674
    :goto_0
    iget-wide v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->connectSessionId:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->connectSessionId:J

    const/4 v0, 0x0

    .line 1675
    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->connectionListener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    .line 1676
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopBondWatch()V

    .line 1677
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelPostBondConnect()V

    .line 1678
    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->rememberClearingBond(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->lastBondDeviceAddress:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->rememberClearingBond(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelOtherBondProcesses(Ljava/lang/String;)V

    .line 1682
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_4

    .line 1684
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1685
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_4

    .line 1686
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u51c6\u5907\u65b0\u8fde\u63a5\uff1a\u6e05\u9664\u76ee\u6807\u6b8b\u7559 BOND_BONDING "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1687
    invoke-direct {p0, p1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->rememberClearingBond(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    invoke-static {v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBondProcessIfNeeded(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u51c6\u5907\u65b0\u8fde\u63a5\u6e05\u9664\u76ee\u6807\u914d\u5bf9\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1694
    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondingInProgress:Z

    .line 1695
    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->pendingConnectAddress:Ljava/lang/String;

    .line 1697
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->interruptConnectThread()V

    return-void
.end method

.method public receiveSimulatorData(Lcom/qianhe/rtkclientlib/client/BluetoothClient$SimulatorSendCallback;)V
    .locals 2

    .line 2077
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    .line 2078
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v0

    new-instance v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient$17;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$17;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Lcom/qianhe/rtkclientlib/client/BluetoothClient$SimulatorSendCallback;)V

    invoke-virtual {v0, v1}, Lcom/qh/yctdevice/YctDevice;->setListener(Lcom/qh/yctdevice/YctDevice$Listener;)Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .line 3211
    :try_start_0
    invoke-virtual {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->disconnect()V

    .line 3212
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopBondWatch()V

    .line 3213
    iget-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondReceiverRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3214
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3215
    iput-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bondReceiverRegistered:Z

    .line 3217
    :cond_0
    invoke-direct {p0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScanInternal(Z)V

    .line 3218
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3220
    :catch_0
    const-string v0, "Receiver not registered"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public removeBondedDevices()I
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 323
    invoke-virtual {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->getPairedDevices()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 324
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 328
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 329
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_2

    goto :goto_0

    .line 333
    :cond_2
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "^[WZ].*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xf

    if-eq v4, v5, :cond_3

    goto :goto_0

    .line 337
    :cond_3
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getDeviceType(Ljava/lang/String;Ljava/lang/String;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v4

    .line 338
    iget-object v5, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v4, v5, :cond_4

    goto :goto_0

    .line 341
    :cond_4
    const-string v4, "removeBond"

    invoke-static {v2, v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->invokeHiddenBoolean(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u6e05\u7a7a\u914d\u5bf9: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :goto_1
    return v1
.end method

.method public sendData([BZ)V
    .locals 2

    .line 2037
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->executorSend:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->executorSend:Ljava/util/concurrent/ExecutorService;

    .line 2038
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 2039
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->executorSend:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qianhe/rtkclientlib/client/BluetoothClient$16;

    invoke-direct {v1, p0, p2, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$16;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    return-void
.end method

.method public setExpectReboot(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->expectReboot:Z

    return-void
.end method

.method public startScan(Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;)V
    .locals 4

    const/4 v0, 0x0

    .line 1778
    invoke-direct {p0, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScanInternal(Z)V

    .line 1779
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scanListener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;

    .line 1780
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scanDevices:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1781
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->reportedScanAddresses:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 1782
    invoke-direct {p0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->ensureBondReceiverRegistered()V

    .line 1783
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_1

    .line 1784
    new-instance p1, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {p1}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v0, 0x2

    .line 1785
    invoke-virtual {p1, v0}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 1786
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    .line 1787
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1788
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v1, v2, v0, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    const/4 v0, 0x1

    .line 1789
    iput-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isScanning:Z

    .line 1790
    const-string/jumbo v0, "\u5f00\u59cb\u641c\u7d22\u84dd\u7259\u8bbe\u5907"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1792
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->startTimer(Landroid/bluetooth/le/ScanSettings$Builder;)V

    :cond_1
    return-void
.end method

.method public stopScan()V
    .locals 1

    .line 1833
    const-string/jumbo v0, "\u505c\u6b62\u641c\u7d22\u84dd\u7259"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1834
    invoke-direct {p0, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScanInternal(Z)V

    return-void
.end method
