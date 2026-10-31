.class public Lcom/qianhe/yct/fragment/BluetoothBaseFragment;
.super Lcom/qianhe/yct/fragment/BluetoothFragment;
.source "BluetoothBaseFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BluetoothFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected clearDeviceList(Lcom/qianhe/yct/event/BluetoothScanStateEvent;)V
    .locals 1

    .line 36
    iget p1, p1, Lcom/qianhe/yct/event/BluetoothScanStateEvent;->scanPageIndex:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 37
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment;->searchAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    invoke-virtual {p1}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->clear()V

    :cond_0
    return-void
.end method

.method protected getScanPageIndex()I
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method protected initView()V
    .locals 1

    .line 20
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->initSearchRcv(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->initMatchedRcv(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 22
    invoke-virtual {p0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->loadPairedDevicesIfNeeded()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 28
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 29
    invoke-virtual {p0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->loadPairedDevicesIfNeeded()V

    .line 30
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->refreshMatchedState(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/fragment/BluetoothFragment;->refreshSearchState(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void
.end method
