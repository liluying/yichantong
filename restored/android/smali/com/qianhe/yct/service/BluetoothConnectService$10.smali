.class Lcom/qianhe/yct/service/BluetoothConnectService$10;
.super Ljava/lang/Object;
.source "BluetoothConnectService.java"

# interfaces
.implements Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/service/BluetoothConnectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/service/BluetoothConnectService;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/service/BluetoothConnectService;)V
    .locals 0

    .line 1199
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$10;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelBond(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 1243
    new-instance v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-direct {v0, p1}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    if-eqz p1, :cond_1

    .line 1245
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$10;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mfindScannedDevice(Lcom/qianhe/yct/service/BluetoothConnectService;Ljava/lang/String;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1247
    iget-object p1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iput-object p1, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 1248
    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->mergeDisplayNameFrom(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    goto :goto_0

    .line 1250
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$10;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmultiBluetoothManager(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getDeviceType(Ljava/lang/String;Ljava/lang/String;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object p1

    iput-object p1, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 1253
    :cond_1
    :goto_0
    sget-object p1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CANCEL_BOND:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {p1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result p1

    iput p1, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 1254
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    invoke-direct {v1, v0}, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onBonding(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 1259
    new-instance v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-direct {v0, p1}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 1260
    sget-object p1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->BONDING:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {p1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result p1

    iput p1, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 1261
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    invoke-direct {v1, v0}, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onDeviceScan(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 5

    .line 1204
    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 1205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "^[WZ].*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1206
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1208
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$10;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmDevideList(Lcom/qianhe/yct/service/BluetoothConnectService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$10;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0, p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mqueueScanListUiUpdate(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 1211
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$10;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmSp(Lcom/qianhe/yct/service/BluetoothConnectService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "latestDeviceAddress"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1212
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$10;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmSp(Lcom/qianhe/yct/service/BluetoothConnectService;)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v3

    const-string v4, "mode"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1213
    iget-object v3, p0, Lcom/qianhe/yct/service/BluetoothConnectService$10;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v3}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetskipH5AutoReconnect(Lcom/qianhe/yct/service/BluetoothConnectService;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1217
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$10;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetisAutoConnect(Lcom/qianhe/yct/service/BluetoothConnectService;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v0

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$10;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$misDeviceManagementForeground(Lcom/qianhe/yct/service/BluetoothConnectService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1218
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    iput-object v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 1219
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$10;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0, p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mconnect(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    :cond_1
    return-void
.end method

.method public onScanFail()V
    .locals 4

    .line 1236
    const-string/jumbo v0, "\u626b\u63cf\u5931\u8d25\u3002"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1237
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$10;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputisAutoConnect(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V

    .line 1238
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/BluetoothScanStateEvent;

    new-instance v2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    sget-object v3, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SCAN_FAIL:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(I)V

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/event/BluetoothScanStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onScanFinished()V
    .locals 4

    .line 1227
    const-string/jumbo v0, "\u626b\u63cf\u7ed3\u675f\u3002"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1228
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$10;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputisAutoConnect(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V

    .line 1229
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$10;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mflushPendingScanListUi(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    .line 1230
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/BluetoothScanStateEvent;

    new-instance v2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    sget-object v3, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SCAN_FINISHED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(I)V

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/event/BluetoothScanStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
