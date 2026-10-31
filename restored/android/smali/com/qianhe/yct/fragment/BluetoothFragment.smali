.class public Lcom/qianhe/yct/fragment/BluetoothFragment;
.super Lcom/qianhe/yct/base/BaseFragment;
.source "BluetoothFragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

.field private final flushSearchDevicesRunnable:Ljava/lang/Runnable;

.field private final knownSearchAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected listDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field protected matchedAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

.field private pairedDevicesLoaded:Z

.field private final pendingSearchDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field protected searchAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

.field private final searchUiHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$2M56ksEueuwPHBNOXwYp3oyWWsA(Lcom/qianhe/yct/fragment/BluetoothFragment;Lcom/qianhe/yct/event/BluetoothScanStateEvent;)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 90
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/BluetoothFragment;->isScanEventForThisPage(Lcom/qianhe/yct/event/BluetoothScanStateEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothScanStateEvent;->mySevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SCAN_STARTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 92
    iget v0, p1, Lcom/qianhe/yct/event/BluetoothScanStateEvent;->scanPageIndex:I

    invoke-virtual {p0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->getScanPageIndex()I

    move-result v1

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->searchUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->flushSearchDevicesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->pendingSearchDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->knownSearchAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 96
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->listDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->refreshSearchState(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/fragment/BluetoothFragment;->clearDeviceList(Lcom/qianhe/yct/event/BluetoothScanStateEvent;)V

    .line 98
    invoke-virtual {p0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->reloadPairedDevices()V

    return-void

    .line 99
    :cond_3
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothScanStateEvent;->mySevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SCAN_FINISHED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 100
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->flushPendingSearchDevices()V

    return-void

    .line 101
    :cond_4
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothScanStateEvent;->mySevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SCAN_FAIL:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 102
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->searchUiHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->flushSearchDevicesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103
    iget-object p0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->pendingSearchDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    .line 106
    :cond_5
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothScanStateEvent;->mySevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_6

    .line 107
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_6

    .line 108
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothScanStateEvent;->mySevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/BluetoothFragment;->queueSearchDevice(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$H9gyvlhtNERSG-jYaQQn6Nv2xxc(Lcom/qianhe/yct/fragment/BluetoothFragment;Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 2

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 115
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-nez v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->BONDING:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->lockListScroll()V

    .line 120
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->matchedAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    iget-object v1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->refreshState(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 121
    iget-object p0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->searchAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->refreshState(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$k_g2K3HYafYDt1TzJBnBxq1U_Cg(Lcom/qianhe/yct/fragment/BluetoothFragment;)V
    .locals 1

    .line 348
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 351
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->pairedDevicesLoaded:Z

    .line 352
    invoke-virtual {p0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->loadPairedDevicesIfNeeded()V

    return-void
.end method

.method public static synthetic $r8$lambda$xr3AJBJVdIvJ5WSoX7S09fD6RJE(Lcom/qianhe/yct/fragment/BluetoothFragment;Ljava/util/List;)V
    .locals 1

    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->matchedAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v0, p1}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->resetData(Ljava/util/List;)V

    .line 193
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->listDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/fragment/BluetoothFragment;->refreshMatchedState(Lcom/qianhe/baselib/enums/DeviceType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$y8cwxDKWECBZIeUnddkZ4DUlzsk(Lcom/qianhe/yct/fragment/BluetoothFragment;Landroid/content/Context;Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    invoke-static {p1, p2}, Lcom/qianhe/yct/fragment/BluetoothFragment;->collectPairedDevices(Landroid/content/Context;Lcom/qianhe/baselib/enums/DeviceType;)Ljava/util/List;

    move-result-object p1

    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 188
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance v0, Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/fragment/BluetoothFragment;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yeO7T6l8DjxYtVp0jfyUc51sNtw(Lcom/qianhe/yct/fragment/BluetoothFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->flushPendingSearchDevices()V

    return-void
.end method

.method public static synthetic $r8$lambda$zW2jaO_fE29eIJyQItzgtGvFHG8(Lcom/qianhe/yct/fragment/BluetoothFragment;)V
    .locals 4

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->pairedDevicesLoaded:Z

    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->listDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 183
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0, v1}, Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/fragment/BluetoothFragment;Landroid/content/Context;Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 195
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDeviceAction(Lcom/qianhe/yct/fragment/BluetoothFragment;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;Lcom/qianhe/yct/enums/BluetoothActionEnum;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/fragment/BluetoothFragment;->onDeviceAction(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;Lcom/qianhe/yct/enums/BluetoothActionEnum;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseFragment;-><init>()V

    .line 47
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    iput-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->listDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->searchUiHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->pendingSearchDevices:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->knownSearchAddresses:Ljava/util/Set;

    .line 51
    new-instance v0, Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/fragment/BluetoothFragment;)V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->flushSearchDevicesRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static collectPairedDevices(Landroid/content/Context;Lcom/qianhe/baselib/enums/DeviceType;)Ljava/util/List;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/qianhe/baselib/enums/DeviceType;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 203
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 210
    :cond_1
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p0

    .line 211
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 212
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 213
    const-string v4, "^[WZ].*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xf

    if-ne v4, v5, :cond_2

    .line 214
    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getDeviceType(Ljava/lang/String;Ljava/lang/String;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 216
    new-instance v4, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-direct {v4, v2, v3}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private flushPendingSearchDevices()V
    .locals 6

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->pendingSearchDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 144
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->pendingSearchDevices:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 145
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->pendingSearchDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    .line 147
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    .line 148
    iget-object v4, v3, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_1

    .line 149
    invoke-virtual {v3}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getDeviceType(Ljava/lang/String;Ljava/lang/String;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v4

    iput-object v4, v3, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    goto :goto_0

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->searchAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->addDataBatch(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private isScanEventForThisPage(Lcom/qianhe/yct/event/BluetoothScanStateEvent;)Z
    .locals 2

    .line 81
    iget v0, p1, Lcom/qianhe/yct/event/BluetoothScanStateEvent;->scanPageIndex:I

    invoke-virtual {p0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->getScanPageIndex()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/qianhe/yct/event/BluetoothScanStateEvent;->scanPageIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothScanStateEvent;->mySevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private lockListScroll()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->nsv:Lcom/qianhe/yct/view/ScrollStableNestedScrollView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/ScrollStableNestedScrollView;->lockScrollPosition()V

    :cond_0
    return-void
.end method

.method private nonScrollingLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 2

    .line 245
    new-instance v0, Lcom/qianhe/yct/fragment/BluetoothFragment$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qianhe/yct/fragment/BluetoothFragment$1;-><init>(Lcom/qianhe/yct/fragment/BluetoothFragment;Landroid/content/Context;)V

    return-object v0
.end method

.method private onDeviceAction(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;Lcom/qianhe/yct/enums/BluetoothActionEnum;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 267
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->lockListScroll()V

    .line 268
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-virtual {v0, p1, p2}, Lcom/qianhe/yct/activity/BluetoothActivity;->bluetoothAction(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;Lcom/qianhe/yct/enums/BluetoothActionEnum;)V

    return-void
.end method

.method private queueSearchDevice(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 127
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->knownSearchAddresses:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->pendingSearchDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->searchUiHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->flushSearchDevicesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->pendingSearchDevices:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 135
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->searchUiHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->flushSearchDevicesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 137
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->searchUiHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->flushSearchDevicesRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method protected clearDeviceList(Lcom/qianhe/yct/event/BluetoothScanStateEvent;)V
    .locals 0

    .line 224
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->knownSearchAddresses:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 225
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->searchAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    invoke-virtual {p1}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->clear()V

    return-void
.end method

.method protected getScanPageIndex()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method protected initLiveData()V
    .locals 3

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/BluetoothActivity;->observeScanState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/BluetoothFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/BluetoothActivity;->observeConnectState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/BluetoothFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected initMatchedRcv(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 285
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->listDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 286
    new-instance v0, Lcom/qianhe/yct/adapter/DeviceListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/qianhe/yct/adapter/DeviceListAdapter;-><init>(Landroid/content/Context;Lcom/qianhe/baselib/enums/DeviceType;)V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->matchedAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    .line 287
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->rcvMatched:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->nonScrollingLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 288
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->rcvMatched:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 289
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->rcvMatched:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 290
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->rcvMatched:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 291
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->rcvMatched:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    .line 292
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->rcvMatched:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 293
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->rcvMatched:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->matchedAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 294
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->matchedAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    new-instance v1, Lcom/qianhe/yct/fragment/BluetoothFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/BluetoothFragment$2;-><init>(Lcom/qianhe/yct/fragment/BluetoothFragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/DeviceListAdapter$OnActionListener;)V

    .line 301
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/fragment/BluetoothFragment;->refreshMatchedState(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void
.end method

.method protected initSearchRcv(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 3

    .line 306
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->listDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 307
    new-instance v0, Lcom/qianhe/yct/adapter/DeviceListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/qianhe/yct/adapter/DeviceListAdapter;-><init>(Landroid/content/Context;Lcom/qianhe/baselib/enums/DeviceType;)V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->searchAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    .line 308
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->nonScrollingLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 309
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 310
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 311
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 312
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    .line 313
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 314
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->searchAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 315
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->searchAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    new-instance v1, Lcom/qianhe/yct/fragment/BluetoothFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/BluetoothFragment$3;-><init>(Lcom/qianhe/yct/fragment/BluetoothFragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/DeviceListAdapter$OnActionListener;)V

    .line 322
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/fragment/BluetoothFragment;->refreshSearchState(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void
.end method

.method protected initView()V
    .locals 1

    .line 71
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->initSearchRcv(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->initMatchedRcv(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 73
    invoke-virtual {p0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->loadPairedDevicesIfNeeded()V

    return-void
.end method

.method protected loadPairedDevicesIfNeeded()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    if-nez v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 167
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 172
    :cond_1
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->pairedDevicesLoaded:Z

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->pairedDevicesLoaded:Z

    .line 176
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/BluetoothFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->pairedDevicesLoaded:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    .line 58
    invoke-virtual {p0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->initView()V

    .line 59
    invoke-virtual {p0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->initLiveData()V

    .line 60
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 4

    .line 327
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->searchUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->flushSearchDevicesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 328
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->pendingSearchDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 329
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->knownSearchAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 330
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseFragment;->onDestroyView()V

    .line 331
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/BluetoothScanActionEvent;

    sget-object v2, Lcom/qianhe/yct/enums/BluetoothActionEnum;->STOPSCAN:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/event/BluetoothScanActionEvent;-><init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onPairingCleared()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    .line 336
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->pairedDevicesLoaded:Z

    .line 337
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->searchUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->flushSearchDevicesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 338
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->pendingSearchDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 339
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->knownSearchAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 340
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->matchedAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->clear()V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->searchAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    if-eqz v0, :cond_1

    .line 344
    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->clear()V

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;

    if-eqz v0, :cond_2

    .line 347
    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/FragmentBluetoothBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/fragment/BluetoothFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected refreshMatchedState(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 2

    .line 229
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->lockListScroll()V

    .line 230
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->matchedAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getConnectedDevice(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->refreshState(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    return-void
.end method

.method protected refreshSearchState(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 2

    .line 234
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->lockListScroll()V

    .line 235
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->searchAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getConnectedDevice(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->refreshState(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    return-void
.end method

.method public reloadPairedDevices()V
    .locals 1

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->pairedDevicesLoaded:Z

    .line 158
    invoke-virtual {p0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->loadPairedDevicesIfNeeded()V

    return-void
.end method
