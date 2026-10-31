.class public Lcom/qianhe/yct/activity/BluetoothBondActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BluetoothBondActivity.java"


# instance fields
.field private bondEpoch:J

.field private bondFinished:Z

.field private bondReceiver:Landroid/content/BroadcastReceiver;

.field private bondRequested:Z

.field private final cancelIfSystemPairingUiGoneRunnable:Ljava/lang/Runnable;

.field private createBondIssued:Z

.field private deviceAddress:Ljava/lang/String;

.field private final finishIfNotificationPairingRunnable:Ljava/lang/Runnable;

.field private finishReceiver:Landroid/content/BroadcastReceiver;

.field private final handler:Landroid/os/Handler;

.field private ignoreFocusLossUntil:J

.field private lostFocusAfterCreateBond:Z

.field private final pollBondedRunnable:Ljava/lang/Runnable;

.field private sawBonding:Z

.field private final tryCreateBondRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetbondEpoch(Lcom/qianhe/yct/activity/BluetoothBondActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondEpoch:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetbondFinished(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondFinished:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcreateBondIssued(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->createBondIssued:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdeviceAddress(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->deviceAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlostFocusAfterCreateBond(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->lostFocusAfterCreateBond:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsawBonding(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->sawBonding:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcreateBondIssued(Lcom/qianhe/yct/activity/BluetoothBondActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->createBondIssued:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsawBonding(Lcom/qianhe/yct/activity/BluetoothBondActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->sawBonding:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mallowTouchesThroughToPairingDialog(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->allowTouchesThroughToPairingDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishNow(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->finishNow()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misBondNoneNow(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->isBondNoneNow()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misDeviceBondedNow(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->isDeviceBondedNow()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyUserCancelledAndFinish(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->notifyUserCancelledAndFinish()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleFinishIfNotificationPairing(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->scheduleFinishIfNotificationPairing()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartBondAttempt(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->startBondAttempt()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartBondedPoll(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->startBondedPoll()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetBondEventDevice(Landroid/content/Intent;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->getBondEventDevice(Landroid/content/Intent;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->handler:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/qianhe/yct/activity/BluetoothBondActivity$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity$1;-><init>(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->tryCreateBondRunnable:Ljava/lang/Runnable;

    .line 70
    new-instance v0, Lcom/qianhe/yct/activity/BluetoothBondActivity$2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity$2;-><init>(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->finishIfNotificationPairingRunnable:Ljava/lang/Runnable;

    .line 86
    new-instance v0, Lcom/qianhe/yct/activity/BluetoothBondActivity$3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity$3;-><init>(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->cancelIfSystemPairingUiGoneRunnable:Ljava/lang/Runnable;

    .line 104
    new-instance v0, Lcom/qianhe/yct/activity/BluetoothBondActivity$4;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity$4;-><init>(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->pollBondedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private allowTouchesThroughToPairingDialog()V
    .locals 2

    .line 349
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method private clearTouchesThroughFlag()V
    .locals 2

    .line 355
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    return-void
.end method

.method private finishNow()V
    .locals 2

    .line 463
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondFinished:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 466
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondFinished:Z

    .line 467
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 468
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static getBondEventDevice(Landroid/content/Intent;)Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .line 476
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    if-lt v0, v1, :cond_0

    .line 477
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0, v2, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$$ExternalSyntheticApiModelOutline2;->m(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    return-object p0

    .line 479
    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method private isBondNoneNow()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->deviceAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 381
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 386
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    return v0

    :catchall_0
    :cond_2
    return v1
.end method

.method private isDeviceBondedNow()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->deviceAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 365
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 370
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    return v0

    :catchall_0
    :cond_2
    return v1
.end method

.method private notifyUserCancelledAndFinish()V
    .locals 1

    .line 393
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondFinished:Z

    if-eqz v0, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->finishNow()V

    return-void

    .line 397
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->cancelBondingIfNeeded()V

    .line 398
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->finishNow()V

    return-void
.end method

.method private registerBondReceiver()V
    .locals 3

    .line 421
    new-instance v0, Lcom/qianhe/yct/activity/BluetoothBondActivity$7;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity$7;-><init>(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondReceiver:Landroid/content/BroadcastReceiver;

    .line 454
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 455
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 456
    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lcom/qianhe/yct/activity/BluetoothBondActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/qianhe/yct/activity/BluetoothBondActivity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerFinishReceiver()V
    .locals 3

    .line 402
    new-instance v0, Lcom/qianhe/yct/activity/BluetoothBondActivity$6;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity$6;-><init>(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->finishReceiver:Landroid/content/BroadcastReceiver;

    .line 412
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.qianhe.yct.action.FINISH_BLUETOOTH_BOND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 413
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 414
    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->finishReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lcom/qianhe/yct/activity/BluetoothBondActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/qianhe/yct/activity/BluetoothBondActivity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->finishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private restoreBondState(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 163
    :cond_0
    const-string v0, "bond_device_address"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->deviceAddress:Ljava/lang/String;

    .line 164
    const-string v0, "create_bond_issued"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->createBondIssued:Z

    .line 165
    const-string v0, "bond_requested"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondRequested:Z

    .line 166
    const-string v0, "saw_bonding"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->sawBonding:Z

    .line 167
    const-string v0, "bond_epoch"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondEpoch:J

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BluetoothBondActivity: \u6062\u590d\u914d\u5bf9\u72b6\u6001 issued="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->createBondIssued:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " requested="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondRequested:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private scheduleCancelIfSystemPairingUiGone()V
    .locals 4

    .line 343
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->cancelIfSystemPairingUiGoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 344
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->cancelIfSystemPairingUiGoneRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scheduleCreateBond(J)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->tryCreateBondRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 268
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->tryCreateBondRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scheduleFinishIfNotificationPairing()V
    .locals 4

    .line 338
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->finishIfNotificationPairingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 339
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->finishIfNotificationPairingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startBondAttempt()V
    .locals 3

    .line 285
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondFinished:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->deviceAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->isDeviceBondedNow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->finishNow()V

    return-void

    .line 292
    :cond_1
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondRequested:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->createBondIssued:Z

    if-eqz v0, :cond_2

    .line 293
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->startBondedPoll()V

    return-void

    .line 296
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    .line 297
    iget-wide v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondEpoch:J

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->wasBondCancelledSince(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 298
    const-string v0, "BluetoothBondActivity: \u7528\u6237\u5df2\u53d6\u6d88\uff0c\u8df3\u8fc7 createBond"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 299
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->finishNow()V

    return-void

    :cond_3
    const/4 v1, 0x1

    .line 302
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondRequested:Z

    .line 303
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->clearTouchesThroughFlag()V

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothBondActivity: \u7a97\u53e3\u5c31\u7eea\uff0c\u524d\u53f0\u53d1\u8d77 createBond -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->deviceAddress:Ljava/lang/String;

    new-instance v2, Lcom/qianhe/yct/activity/BluetoothBondActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity$5;-><init>(Lcom/qianhe/yct/activity/BluetoothBondActivity;Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)V

    invoke-static {p0, v1, v2}, Lcom/qianhe/yct/utils/BluetoothBondHelper;->performBond(Landroid/app/Activity;Ljava/lang/String;Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method private startBondedPoll()V
    .locals 4

    .line 333
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->pollBondedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 334
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->pollBondedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 174
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->ignoreFocusLossUntil:J

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    const-wide/16 v0, 0x1f40

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->suppressBackgroundBondCancel(J)V

    .line 178
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondFinished:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->deviceAddress:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->isDeviceBondedNow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->finishNow()V

    return-void

    .line 185
    :cond_1
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->createBondIssued:Z

    if-eqz p1, :cond_2

    .line 186
    const-string p1, "BluetoothBondActivity: \u65cb\u8f6c\u540e\u7cfb\u7edf\u914d\u5bf9\u6846\u5df2\u5173\u95ed\uff0c\u53d6\u6d88\u914d\u5bf9"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->notifyUserCancelledAndFinish()V

    return-void

    .line 190
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x50

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x190

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->scheduleCreateBond(J)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 126
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    sget v0, Lcom/qianhe/yct/R$layout;->activity_bluetooth_bond:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 129
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->restoreBondState(Landroid/os/Bundle;)V

    .line 130
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->deviceAddress:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "bond_device_address"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->deviceAddress:Ljava/lang/String;

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->deviceAddress:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 134
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->finishNow()V

    return-void

    .line 137
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    .line 138
    iget-wide v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondEpoch:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 139
    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getBondCancelEpoch()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondEpoch:J

    :cond_2
    const-wide/16 v0, 0x1388

    .line 141
    invoke-virtual {p1, v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->suppressBackgroundBondCancel(J)V

    .line 142
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->registerBondReceiver()V

    .line 143
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->registerFinishReceiver()V

    .line 144
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->createBondIssued:Z

    if-eqz p1, :cond_3

    .line 145
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->startBondedPoll()V

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 485
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 487
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :catch_0
    iput-object v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondReceiver:Landroid/content/BroadcastReceiver;

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->finishReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 494
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 497
    :catch_1
    iput-object v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->finishReceiver:Landroid/content/BroadcastReceiver;

    .line 499
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 195
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 196
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 197
    const-string v0, "bond_device_address"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 200
    iput-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->deviceAddress:Ljava/lang/String;

    .line 201
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->createBondIssued:Z

    .line 202
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->sawBonding:Z

    .line 203
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondFinished:Z

    .line 204
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->lostFocusAfterCreateBond:Z

    .line 205
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->clearTouchesThroughFlag()V

    .line 207
    :cond_0
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->createBondIssued:Z

    if-nez p1, :cond_1

    .line 208
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondRequested:Z

    .line 211
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->isDeviceBondedNow()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 212
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->finishNow()V

    return-void

    .line 215
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x50

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x190

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->scheduleCreateBond(J)V

    return-void
.end method

.method protected onResume()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 221
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 222
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondFinished:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->deviceAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 225
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    const-wide/16 v1, 0x1f40

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->suppressBackgroundBondCancel(J)V

    .line 226
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 228
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->finishNow()V

    return-void

    .line 231
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->isDeviceBondedNow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->finishNow()V

    return-void

    .line 235
    :cond_2
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->sawBonding:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->isBondNoneNow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    const-string v0, "BluetoothBondActivity: onResume \u68c0\u6d4b\u5230\u7528\u6237\u5df2\u53d6\u6d88\u914d\u5bf9"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 237
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->notifyUserCancelledAndFinish()V

    return-void

    .line 240
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x50

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x190

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->scheduleCreateBond(J)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 151
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 152
    const-string v0, "bond_device_address"

    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "create_bond_issued"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->createBondIssued:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    const-string v0, "bond_requested"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondRequested:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    const-string v0, "saw_bonding"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->sawBonding:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    const-string v0, "bond_epoch"

    iget-wide v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondEpoch:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 3

    .line 273
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 274
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondFinished:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->deviceAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    const-string v0, "BluetoothBondActivity: onUserLeaveHint \u5ffd\u7565\uff08\u907f\u514d\u8bef\u6740\u7cfb\u7edf\u914d\u5bf9\u6846\uff09"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    const-wide/16 v1, 0x1f40

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->suppressBackgroundBondCancel(J)V

    .line 279
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->isDeviceBondedNow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->finishNow()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    .line 245
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_1

    .line 246
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->createBondIssued:Z

    if-eqz v0, :cond_1

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->ignoreFocusLossUntil:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 250
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->lostFocusAfterCreateBond:Z

    .line 251
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->finishIfNotificationPairingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 253
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->isDeviceBondedNow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->finishNow()V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 257
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->createBondIssued:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->lostFocusAfterCreateBond:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->isDeviceBondedNow()Z

    move-result v0

    if-nez v0, :cond_3

    .line 258
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->scheduleCancelIfSystemPairingUiGone()V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 261
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondFinished:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity;->bondRequested:Z

    if-nez p1, :cond_4

    const-wide/16 v0, 0x50

    .line 262
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->scheduleCreateBond(J)V

    :cond_4
    :goto_0
    return-void
.end method
