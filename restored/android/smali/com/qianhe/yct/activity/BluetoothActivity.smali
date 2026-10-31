.class public Lcom/qianhe/yct/activity/BluetoothActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "BluetoothActivity.java"


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

.field private binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

.field private final connectStateLive:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private flag:Z

.field private fragmentIndex:I

.field private final handler:Landroid/os/Handler;

.field private initialScanStarted:Z

.field private mPosition:I

.field private final restartScanAfterPairingCleared:Ljava/lang/Runnable;

.field private scanPageIndex:I

.field private final scanStateLive:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private skipPairingUiRestoreAfterRotation:Z

.field private userInitiatedConnect:Z


# direct methods
.method public static synthetic $r8$lambda$-F9NOEuzuc-2hiFGVrg26Fs7FBk(Lcom/qianhe/yct/activity/BluetoothActivity;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 688
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->abortUserInitiatedConnect()V

    return-void

    .line 0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic $r8$lambda$So-UpdaCNyrL-c3l1IKrpljemwQ(Lcom/qianhe/yct/activity/BluetoothActivity;)V
    .locals 1

    .line 382
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->notifyStartScan()V

    return-void
.end method

.method public static synthetic $r8$lambda$YXSQR_jz6qylcmqLKlld59LxRCc(Lcom/qianhe/yct/activity/BluetoothActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->dismissPairingUiAfterRotation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lcom/qianhe/yct/activity/BluetoothActivity;)Lcom/qianhe/yct/adapter/ViewPagerAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/BluetoothActivity;)Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lcom/qianhe/yct/activity/BluetoothActivity;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPosition(Lcom/qianhe/yct/activity/BluetoothActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->mPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscanPageIndex(Lcom/qianhe/yct/activity/BluetoothActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->scanPageIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmPosition(Lcom/qianhe/yct/activity/BluetoothActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->mPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputuserInitiatedConnect(Lcom/qianhe/yct/activity/BluetoothActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->userInitiatedConnect:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mabortUserInitiatedConnect(Lcom/qianhe/yct/activity/BluetoothActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->abortUserInitiatedConnect()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearCurrentTabPairings(Lcom/qianhe/yct/activity/BluetoothActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->clearCurrentTabPairings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostConnectAction(Lcom/qianhe/yct/activity/BluetoothActivity;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/BluetoothActivity;->postConnectAction(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefrshDemoState(Lcom/qianhe/yct/activity/BluetoothActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/BluetoothActivity;->refrshDemoState(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 70
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->scanStateLive:Landroidx/lifecycle/MutableLiveData;

    .line 71
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->connectStateLive:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->mPosition:I

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->fragmentIndex:I

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->handler:Landroid/os/Handler;

    .line 381
    new-instance v0, Lcom/qianhe/yct/activity/BluetoothActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/BluetoothActivity$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/activity/BluetoothActivity;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->restartScanAfterPairingCleared:Ljava/lang/Runnable;

    return-void
.end method

.method private abortUserInitiatedConnect()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    .line 648
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->userInitiatedConnect:Z

    .line 649
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 650
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->activeTabIndex()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    .line 651
    :goto_0
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/BluetoothActivity;->snapshotConnectingDevice(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    .line 652
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;

    sget-object v4, Lcom/qianhe/yct/enums/BluetoothActionEnum;->DISCONNECT:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    const-string v5, ""

    invoke-direct {v3, v4, v5, v0}, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;-><init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;Ljava/lang/String;Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 653
    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v2, :cond_1

    .line 654
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v2, "activeDisconnect"

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    .line 656
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v2, "activeDisconnect_base"

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 658
    :goto_1
    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    iput v0, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 659
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->connectStateLive:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    invoke-direct {v2, v1}, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/activity/BluetoothActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private activeTabIndex()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->mPosition:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->fragmentIndex:I

    return v0
.end method

.method private applyScanButtonUi(ZI)V
    .locals 3

    .line 98
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->activeTabIndex()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvScan:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 100
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvScan:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    sget v1, Lcom/qianhe/yct/R$string;->scanning1:I

    :goto_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    sget v1, Lcom/qianhe/yct/R$string;->rescan_ble:I

    goto :goto_2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->progressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    goto :goto_4

    :cond_3
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private applyScanIdleUi()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvScan:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 106
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvScan:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->rescan_ble:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private clearCurrentTabPairings()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 349
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->activeTabIndex()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    .line 350
    :goto_0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    .line 351
    invoke-virtual {v1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getBluetoothClient(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    move-result-object v2

    .line 352
    invoke-virtual {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->notifyStopScan()V

    .line 354
    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->stopAutoReconnect()V

    .line 355
    sget-object v3, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v3, :cond_1

    .line 356
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    const-string v4, "pairingListCleared_zpy"

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 357
    iget-object v3, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "latestDeviceAddress"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 359
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    const-string v4, "pairingListCleared_base"

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_1
    if-eqz v2, :cond_4

    .line 362
    invoke-virtual {v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isBonding()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isConnecting()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 363
    :cond_2
    invoke-virtual {v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->cancelBonding()V

    .line 365
    :cond_3
    invoke-virtual {v1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->disconnectDevice(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 366
    invoke-virtual {v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->removeBondedDevices()I

    move-result v2

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6e05\u7a7a\u914d\u5bf9\u5217\u8868: type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", removed="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 369
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    if-eqz v0, :cond_5

    .line 370
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->activeTabIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 371
    instance-of v2, v0, Lcom/qianhe/yct/fragment/BluetoothFragment;

    if-eqz v2, :cond_5

    .line 372
    check-cast v0, Lcom/qianhe/yct/fragment/BluetoothFragment;

    invoke-virtual {v0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->onPairingCleared()V

    .line 375
    :cond_5
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvDisconnectNow:Landroid/widget/TextView;

    .line 376
    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getAllConnectedDevices()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 375
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->restartScanAfterPairingCleared:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 378
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->restartScanAfterPairingCleared:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private dismissPairingUiAfterRotation()V
    .locals 4

    .line 721
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 725
    :cond_0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    .line 726
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->activeTabIndex()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    .line 727
    :goto_0
    invoke-virtual {v0, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isConnectingInProgress()Z

    move-result v2

    if-nez v2, :cond_2

    .line 728
    const-string v2, "BluetoothActivity: \u65cb\u8f6c\u540e\u5173\u95ed\u6b63\u5728\u914d\u5bf9\u5e76\u53d6\u6d88\u672a\u5b8c\u6210\u914d\u5bf9"

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->cancelBondingIfNeeded()V

    .line 731
    :cond_2
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->forceDismissBluetoothPairingDialogs()V

    .line 732
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->skipPairingUiRestoreAfterRotation:Z

    return-void

    .line 722
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->skipPairingUiRestoreAfterRotation:Z

    return-void
.end method

.method private finishAfterUserInitiatedConnectSuccess()V
    .locals 1

    const/4 v0, 0x0

    .line 714
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->userInitiatedConnect:Z

    .line 715
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->finishBondActivity()V

    .line 716
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private finishIfUserInitiatedConnectAlreadyDone()Z
    .locals 4

    .line 701
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->userInitiatedConnect:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 704
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->activeTabIndex()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    .line 705
    :goto_0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 708
    :cond_2
    const-string v0, "BluetoothActivity: \u65cb\u8f6c\u540e\u7528\u6237\u53d1\u8d77\u7684\u8fde\u63a5\u5df2\u6210\u529f\uff0c\u8fd4\u56de\u9996\u9875"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 709
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->finishAfterUserInitiatedConnectSuccess()V

    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method private initView()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    const-string v2, "mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->rltScan:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/qianhe/yct/activity/BluetoothActivity$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/BluetoothActivity$1;-><init>(Lcom/qianhe/yct/activity/BluetoothActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvDisconnectNow:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/activity/BluetoothActivity$2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/BluetoothActivity$2;-><init>(Lcom/qianhe/yct/activity/BluetoothActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvStopDemo:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/activity/BluetoothActivity$3;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/BluetoothActivity$3;-><init>(Lcom/qianhe/yct/activity/BluetoothActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvDisconnectNow:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getAllConnectedDevices()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 184
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/BluetoothActivity;->refrshDemoState(I)V

    .line 185
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvClearPair:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/BluetoothActivity$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/BluetoothActivity$4;-><init>(Lcom/qianhe/yct/activity/BluetoothActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViewpager()V
    .locals 10

    .line 214
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 215
    instance-of v2, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 216
    :cond_0
    new-instance v0, Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    .line 218
    new-instance v0, Lcom/qianhe/yct/fragment/BluetoothH5Fragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/BluetoothH5Fragment;-><init>()V

    .line 219
    new-instance v2, Lcom/qianhe/yct/fragment/BluetoothBaseFragment;

    invoke-direct {v2}, Lcom/qianhe/yct/fragment/BluetoothBaseFragment;-><init>()V

    .line 220
    iget-object v3, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    sget v4, Lcom/qianhe/yct/R$string;->level:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    sget v3, Lcom/qianhe/yct/R$string;->base:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 224
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 225
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v3, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 226
    new-instance v4, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v5, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v6, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v9, Lcom/qianhe/yct/activity/BluetoothActivity$5;

    invoke-direct {v9, p0}, Lcom/qianhe/yct/activity/BluetoothActivity$5;-><init>(Lcom/qianhe/yct/activity/BluetoothActivity;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;ZZLcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 232
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 233
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v2}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 234
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v3, Lcom/qianhe/yct/activity/BluetoothActivity$6;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/activity/BluetoothActivity$6;-><init>(Lcom/qianhe/yct/activity/BluetoothActivity;)V

    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 264
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 265
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iget v2, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->fragmentIndex:I

    invoke-virtual {v0, v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 266
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/qianhe/yct/activity/BluetoothActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/BluetoothActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/BluetoothActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isSamePendingDevice(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 525
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-nez v1, :cond_0

    goto :goto_1

    .line 528
    :cond_0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    iget-object v2, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 529
    invoke-virtual {v1, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getBluetoothClient(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 530
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    iget-object v2, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v1, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getBluetoothClient(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->getPendingConnectAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 532
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 533
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    return v0
.end method

.method private isSameTypeDeviceConnected(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 505
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_0

    goto :goto_1

    .line 508
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 509
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v2

    iget-object v3, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v2, v3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getConnectedDevice(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 510
    iget-object v2, v2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    .line 511
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 513
    :cond_1
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v2, :cond_2

    .line 514
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentBaseDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    goto :goto_0

    .line 515
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    .line 516
    iget v2, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v3, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v3

    if-ne v2, v3, :cond_4

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_3

    goto :goto_1

    .line 520
    :cond_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method private postConnectAction(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 541
    :cond_0
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceName:Ljava/lang/String;

    goto :goto_0

    .line 543
    :cond_1
    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 544
    :goto_0
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_2

    .line 545
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 546
    :goto_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;

    sget-object v4, Lcom/qianhe/yct/enums/BluetoothActionEnum;->CONNECT:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v3, v4, v0, v1, p1}, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;-><init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private refrshDemoState(I)V
    .locals 5

    .line 205
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v2

    if-ne p1, v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvClearPair:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v2

    if-ne p1, v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->lltDemo:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    if-ne p1, v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvStopDemo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->DEMO:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v2

    const-string v3, "mode"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_4

    const/4 v4, 0x1

    :cond_4
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private reloadPairedDevicesOnAllTabs()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 334
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-virtual {v1}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 335
    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 336
    instance-of v2, v1, Lcom/qianhe/yct/fragment/BluetoothFragment;

    if-eqz v2, :cond_1

    .line 337
    check-cast v1, Lcom/qianhe/yct/fragment/BluetoothFragment;

    invoke-virtual {v1}, Lcom/qianhe/yct/fragment/BluetoothFragment;->reloadPairedDevices()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private shouldShowConnectingDialog(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 738
    iget-object v1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-nez v1, :cond_0

    goto :goto_0

    .line 741
    :cond_0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    .line 742
    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isConnectingInProgress()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 745
    :cond_1
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_2

    return v0

    .line 750
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0xc

    if-ne p1, v1, :cond_3

    return v2

    :catchall_0
    :cond_3
    :goto_0
    return v0
.end method

.method private snapshotConnectingDevice(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 664
    new-instance v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(ILcom/qianhe/baselib/enums/DeviceType;)V

    .line 665
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    .line 666
    invoke-virtual {v1, p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getBluetoothClient(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 667
    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->getPendingConnectAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 668
    :goto_0
    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v2, :cond_1

    .line 669
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentBaseDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    goto :goto_1

    .line 670
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    .line 671
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_2

    .line 672
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 673
    invoke-virtual {v0, p1}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->mergeDisplayNameFrom(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 675
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 677
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-object v0
.end method


# virtual methods
.method public bluetoothAction(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;Lcom/qianhe/yct/enums/BluetoothActionEnum;)V
    .locals 6

    .line 420
    sget-object v0, Lcom/qianhe/yct/enums/BluetoothActionEnum;->CONNECT:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    const-string v1, ""

    if-ne p2, v0, :cond_9

    const/4 p2, 0x1

    .line 421
    iput-boolean p2, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->userInitiatedConnect:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 422
    iget-object v2, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-eqz v2, :cond_0

    .line 423
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v2

    .line 424
    iget-object v3, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v2, v3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getBluetoothClient(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    move-result-object v3

    .line 425
    iget-object v4, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 426
    iget-object v5, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v2, v5}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getConnectedDevice(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 427
    iget-object v2, v2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_0

    .line 428
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 429
    invoke-virtual {v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isSocketConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->userInitiatedConnect:Z

    .line 432
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "\u5df2\u8fde\u63a5\u540c\u4e00\u8bbe\u5907\uff0c\u5ffd\u7565\u91cd\u590d\u70b9\u51fb: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 436
    :cond_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 437
    iget-object v2, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/qianhe/yct/activity/BluetoothActivity$9;

    invoke-direct {v3, p0, p1}, Lcom/qianhe/yct/activity/BluetoothActivity$9;-><init>(Lcom/qianhe/yct/activity/BluetoothActivity;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 448
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/BluetoothActivity;->isSameTypeDeviceConnected(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)Z

    move-result v2

    .line 449
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v3

    .line 450
    invoke-virtual {v3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isBondingInProgress()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isConnectingInProgress()Z

    move-result v4

    if-nez v4, :cond_2

    .line 451
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/BluetoothActivity;->isSamePendingDevice(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_3

    if-nez v2, :cond_3

    .line 454
    iget-object v5, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v3, v5}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->disconnectDevice(Lcom/qianhe/baselib/enums/DeviceType;)V

    :cond_3
    if-nez v2, :cond_4

    if-eqz v4, :cond_4

    .line 458
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/BluetoothActivity;->isSamePendingDevice(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    if-eqz v2, :cond_6

    .line 461
    invoke-virtual {v3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isBondingInProgress()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 462
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->forceDismissBluetoothPairingDialogs()V

    .line 465
    :cond_5
    sget p2, Lcom/qianhe/yct/R$string;->switch_devices:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget p2, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget p2, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/qianhe/yct/activity/BluetoothActivity$10;

    invoke-direct {v5, p0, p1}, Lcom/qianhe/yct/activity/BluetoothActivity$10;-><init>(Lcom/qianhe/yct/activity/BluetoothActivity;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    const-string v4, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_6
    if-eqz p2, :cond_8

    .line 484
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u8fde\u63a5\u4e2d\u5207\u6362\u8bbe\u5907: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    :cond_7
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->forceDismissBluetoothPairingDialogs()V

    .line 486
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/BluetoothActivity;->postConnectAction(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    return-void

    .line 488
    :cond_8
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/BluetoothActivity;->postConnectAction(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    return-void

    .line 491
    :cond_9
    const-string/jumbo p2, "\u7528\u6237\u4e3b\u52a8\u70b9\u51fb\u5173\u95ed\u84dd\u7259\u3002"

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 493
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;

    sget-object v2, Lcom/qianhe/yct/enums/BluetoothActionEnum;->DISCONNECT:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    iget-object v3, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v0, v2, v1, v3}, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;-><init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;Ljava/lang/String;Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 494
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object p2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, p2, :cond_a

    .line 495
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string p2, "activeDisconnect"

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 496
    :cond_a
    sget-object p2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, p2, :cond_b

    .line 497
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string p2, "activeDisconnect_base"

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method protected createPairingLoadingCloseListener()Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;
    .locals 1

    .line 686
    new-instance v0, Lcom/qianhe/yct/activity/BluetoothActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/BluetoothActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/activity/BluetoothActivity;)V

    return-object v0
.end method

.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 0

    .line 0
    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->equipment_management:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 309
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public notifyStartScan()V
    .locals 5

    .line 314
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 315
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Lcom/qianhe/yct/activity/BluetoothActivity$8;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/BluetoothActivity$8;-><init>(Lcom/qianhe/yct/activity/BluetoothActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 325
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/BluetoothScanActionEvent;

    sget-object v2, Lcom/qianhe/yct/enums/BluetoothActionEnum;->STARTSCAN:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    iget v3, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->mPosition:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v1, v2, v4}, Lcom/qianhe/yct/event/BluetoothScanActionEvent;-><init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 326
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->reloadPairedDevicesOnAllTabs()V

    return-void
.end method

.method public notifyStopScan()V
    .locals 5

    .line 344
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/BluetoothScanActionEvent;

    sget-object v2, Lcom/qianhe/yct/enums/BluetoothActionEnum;->STOPSCAN:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    iget v3, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->mPosition:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v1, v2, v4}, Lcom/qianhe/yct/event/BluetoothScanActionEvent;-><init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public observeConnectState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->connectStateLive:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public observeScanState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->scanStateLive:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 773
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 775
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/HasCheckBasestation;

    invoke-direct {v1}, Lcom/qianhe/yct/event/HasCheckBasestation;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    .line 121
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 123
    const-string/jumbo v1, "user_initiated_connect"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->userInitiatedConnect:Z

    const/4 p1, 0x1

    .line 124
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->skipPairingUiRestoreAfterRotation:Z

    .line 126
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 129
    const-string v1, "fragmentIndex"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->fragmentIndex:I

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->initView()V

    .line 132
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->initViewpager()V

    .line 133
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->skipPairingUiRestoreAfterRotation:Z

    if-eqz p1, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->forceDismissBluetoothPairingDialogs()V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    const/4 v0, 0x0

    .line 780
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->userInitiatedConnect:Z

    .line 781
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 782
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 783
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 784
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/BluetoothScanActionEvent;

    sget-object v2, Lcom/qianhe/yct/enums/BluetoothActionEnum;->STOPSCAN:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/event/BluetoothScanActionEvent;-><init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/RtkInfo;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 575
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 576
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->userInitiatedConnect:Z

    .line 577
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 578
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelTipDialog()V

    .line 579
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->applyScanIdleUi()V

    .line 580
    sget p1, Lcom/qianhe/yct/R$string;->connection_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 583
    :cond_0
    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v2, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->STARTCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v0, v2, :cond_4

    .line 584
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->userInitiatedConnect:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/BluetoothActivity;->shouldShowConnectingDialog(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    sget v0, Lcom/qianhe/yct/R$string;->connecting_device:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/qianhe/yct/activity/BluetoothActivity$11;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/BluetoothActivity$11;-><init>(Lcom/qianhe/yct/activity/BluetoothActivity;)V

    invoke-virtual {p0, v0, v2}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    goto :goto_0

    .line 594
    :cond_1
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->userInitiatedConnect:Z

    if-eqz v0, :cond_2

    .line 595
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->forceDismissBluetoothPairingDialogs()V

    .line 597
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvDisconnectNow:Landroid/widget/TextView;

    .line 598
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getAllConnectedDevices()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, 0x8

    .line 597
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 599
    :cond_4
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v2, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v2

    const/4 v4, 0x0

    if-ne v0, v2, :cond_6

    .line 600
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 601
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v2, :cond_5

    .line 602
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    iget-object v2, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/application/YCTApplication;->setCurrentDevice(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    goto :goto_1

    .line 604
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    iget-object v2, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/application/YCTApplication;->setCurrentBaseDevice(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 606
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvScan:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 607
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvScan:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->rescan_ble:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 609
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->dismissConnectingDialog()V

    .line 611
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->userInitiatedConnect:Z

    if-eqz v0, :cond_b

    .line 612
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->finishAfterUserInitiatedConnectSuccess()V

    goto/16 :goto_2

    .line 614
    :cond_6
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v2, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECT_FAILED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 615
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->userInitiatedConnect:Z

    .line 616
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 617
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 618
    sget v0, Lcom/qianhe/yct/R$string;->connection_failed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 619
    :cond_7
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v2, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v2

    if-ne v0, v2, :cond_8

    .line 620
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->resetLastDeviceInfo()V

    .line 621
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getAllConnectedDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvDisconnectNow:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 622
    :cond_8
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v2, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->START_BOND:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v2

    if-ne v0, v2, :cond_9

    .line 623
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->userInitiatedConnect:Z

    if-eqz v0, :cond_b

    .line 624
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->showPairingProgressDialog()V

    goto :goto_2

    .line 626
    :cond_9
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v2, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CANCEL_BOND:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v2

    if-ne v0, v2, :cond_a

    .line 627
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->userInitiatedConnect:Z

    .line 628
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 629
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->forceDismissBluetoothPairingDialogs()V

    .line 630
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvScan:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 631
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvScan:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->rescan_ble:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 633
    :cond_a
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->BONDING:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 634
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 636
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->connectStateLive:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothScanStateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 554
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothScanStateEvent;->mySevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-nez v0, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SCAN_STARTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 556
    iget v0, p1, Lcom/qianhe/yct/event/BluetoothScanStateEvent;->scanPageIndex:I

    iput v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->scanPageIndex:I

    const/4 v1, 0x1

    .line 557
    invoke-direct {p0, v1, v0}, Lcom/qianhe/yct/activity/BluetoothActivity;->applyScanButtonUi(ZI)V

    .line 558
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->reloadPairedDevicesOnAllTabs()V

    goto :goto_1

    .line 559
    :cond_1
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothScanStateEvent;->mySevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SCAN_FINISHED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 560
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->applyScanIdleUi()V

    goto :goto_1

    .line 561
    :cond_2
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothScanStateEvent;->mySevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SCAN_FAIL:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 562
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 563
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->applyScanIdleUi()V

    goto :goto_1

    .line 564
    :cond_3
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothScanStateEvent;->mySevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_4

    iget v0, p1, Lcom/qianhe/yct/event/BluetoothScanStateEvent;->scanPageIndex:I

    iget v1, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->mPosition:I

    if-eq v0, v1, :cond_4

    if-ltz v1, :cond_4

    :goto_0
    return-void

    .line 569
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->scanStateLive:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 394
    invoke-super {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x64

    if-ne p1, p2, :cond_2

    .line 397
    array-length p1, p3

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget v1, p3, v0

    if-eqz v1, :cond_0

    .line 407
    const-string/jumbo p1, "\u7528\u6237\u62d2\u7edd\u6743\u9650\u7533\u8bf7\u3002"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 408
    sget p1, Lcom/qianhe/yct/R$string;->permission_denied:I

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->initViewpager()V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 271
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 272
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->skipPairingUiRestoreAfterRotation:Z

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/qianhe/yct/activity/BluetoothActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/BluetoothActivity$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/activity/BluetoothActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BluetoothActivity;->finishIfUserInitiatedConnectAlreadyDone()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 278
    :cond_1
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->flag:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 279
    sget v0, Lcom/qianhe/yct/R$string;->bluetooth_not_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->start_ble_now:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/activity/BluetoothActivity$7;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/BluetoothActivity$7;-><init>(Lcom/qianhe/yct/activity/BluetoothActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    goto :goto_0

    .line 294
    :cond_2
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isBondingInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->isBluetoothPairingTipDialogShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tipsDialogManager:Lcom/qianhe/yct/utils/TipsDialogManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/TipsDialogManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 295
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelTipDialog()V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->flag:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 695
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 696
    const-string/jumbo v0, "user_initiated_connect"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->userInitiatedConnect:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected shouldRestoreBluetoothConnectProgressUi()Z
    .locals 1

    .line 415
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->userInitiatedConnect:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->skipPairingUiRestoreAfterRotation:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startInitialScanIfNeeded()V
    .locals 5

    .line 85
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->initialScanStarted:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->initialScanStarted:Z

    .line 89
    iget v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->mPosition:I

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;->fragmentIndex:I

    .line 90
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/event/BluetoothScanActionEvent;

    sget-object v3, Lcom/qianhe/yct/enums/BluetoothActionEnum;->STARTSCAN:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Lcom/qianhe/yct/event/BluetoothScanActionEvent;-><init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;ZI)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method
