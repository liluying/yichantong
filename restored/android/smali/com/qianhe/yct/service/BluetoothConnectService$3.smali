.class Lcom/qianhe/yct/service/BluetoothConnectService$3;
.super Ljava/lang/Object;
.source "BluetoothConnectService.java"

# interfaces
.implements Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/service/BluetoothConnectService;->connect(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

.field final synthetic val$finalDeviceType:Lcom/qianhe/baselib/enums/DeviceType;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 550
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    iput-object p2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->val$finalDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBond(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->val$finalDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-static {v0, v1, p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$msyncCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/baselib/enums/DeviceType;Landroid/bluetooth/BluetoothDevice;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    .line 727
    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->START_BOND:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    iput v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 728
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    invoke-direct {v1, p1}, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onBondCancelled(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->val$finalDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-static {v0, v1, p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$msyncCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/baselib/enums/DeviceType;Landroid/bluetooth/BluetoothDevice;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    .line 743
    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CANCEL_BOND:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    iput v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 744
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->val$finalDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    .line 745
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/application/YCTApplication;->setCurrentDevice(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    goto :goto_0

    .line 747
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/application/YCTApplication;->setCurrentBaseDevice(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 749
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    invoke-direct {v1, p1}, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onBondCompleted(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 734
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->val$finalDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-static {v0, v1, p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$msyncCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/baselib/enums/DeviceType;Landroid/bluetooth/BluetoothDevice;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    .line 735
    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->STARTCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    iput v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 736
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    invoke-direct {v1, p1}, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    .line 554
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->setCheckFmwUpgrade(Z)V

    .line 555
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputstartGnssUpgrade(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V

    .line 556
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmSp(Lcom/qianhe/yct/service/BluetoothConnectService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v2

    const-string v3, "mode"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 557
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->val$finalDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 558
    const-string v2, ""

    if-eqz v0, :cond_0

    sget-object v3, Lcom/qianhe/baselib/enums/DeviceType;->NONE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v3, :cond_1

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmultiBluetoothManager(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getDeviceType(Ljava/lang/String;Ljava/lang/String;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v0

    .line 561
    :cond_1
    iget-object v3, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v3}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmultiBluetoothManager(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getConnectedDevice(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_2

    .line 563
    const-string v3, "connectedDevice = null\uff0c\u4f7f\u7528\u56de\u8c03\u8bbe\u5907\u8865\u53d1\u5df2\u8fde\u63a5\u72b6\u6001"

    invoke-static {v3}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 564
    new-instance v3, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-direct {v3, p1, v0}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 566
    :cond_2
    sget-object v4, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v4

    iput v4, v3, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 567
    iput-object v0, v3, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 568
    iget-object v4, v3, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v4, :cond_3

    .line 569
    iput-object p1, v3, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 571
    :cond_3
    sget-object v4, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const/4 v5, 0x1

    if-ne v0, v4, :cond_5

    .line 572
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->prepareCurrentEngineeringForCoordConvert(Landroid/content/Context;)V

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u5f53\u524d\u5de5\u7a0b\uff1a"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/EngineeringEntity;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputsupportH5Ntrip(Lcom/qianhe/yct/service/BluetoothConnectService;Ljava/lang/Boolean;)V

    .line 575
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmSp(Lcom/qianhe/yct/service/BluetoothConnectService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "SUPPORT_NTRIP"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 576
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmultiBluetoothManager(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v2

    iget-object v6, v3, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v2, v6}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getBluetoothClient(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputmBluetoothH5Client(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V

    .line 577
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/qianhe/yct/application/YCTApplication;->setCurrentDevice(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 578
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0, v5}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputstartCheckH5(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V

    .line 579
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmultiBluetoothManager(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getAllConnectedDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v5, :cond_7

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputstartCheckBase(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V

    goto :goto_0

    .line 580
    :cond_5
    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v2, :cond_7

    .line 581
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0, v5}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputstartCheckBase(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V

    .line 582
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmultiBluetoothManager(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getAllConnectedDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputstartCheckH5(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V

    .line 583
    :cond_6
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmultiBluetoothManager(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v2

    iget-object v6, v3, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v2, v6}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getBluetoothClient(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputmBluetoothBaseClient(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V

    .line 584
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/qianhe/yct/application/YCTApplication;->setCurrentBaseDevice(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 586
    :cond_7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5df2\u8fde\u63a5\u5230\u8bbe\u5907 -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\uff0c \u5f53\u524d\u8fde\u63a5\u6570\uff1a"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmultiBluetoothManager(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getAllConnectedDevices()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 587
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputtimerCount(Lcom/qianhe/yct/service/BluetoothConnectService;I)V

    .line 588
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputstartCheckFmw(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V

    .line 590
    iget-object p1, v3, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v4, :cond_8

    .line 591
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputskipH5AutoReconnect(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V

    .line 592
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1, v3}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 593
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmSp(Lcom/qianhe/yct/service/BluetoothConnectService;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "latestDeviceAddress"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 594
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmSp(Lcom/qianhe/yct/service/BluetoothConnectService;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceSn"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 595
    :cond_8
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v0, :cond_9

    .line 596
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputskipBaseAutoReconnect(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V

    .line 597
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/baselib/utils/BaseBleLogCache;->init(Landroid/content/Context;)V

    .line 598
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1, v3}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 601
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmultiBluetoothManager(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    iget-object v0, v3, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isH5OrOnlyone(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 602
    const-string/jumbo p1, "\u8bfb\u53d6\u914d\u7f6e\u6587\u4ef6"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 603
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputappConfig(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/yct/bean/AppConfig;)V

    .line 604
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetappConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/application/YCTApplication;->setAppConfig(Lcom/qianhe/yct/bean/AppConfig;)V

    .line 605
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mstartWorkTimer(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    .line 606
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mrequestRoughNetworkLocation(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    .line 609
    :cond_a
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    invoke-direct {v0, v3}, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 610
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/ReloadAppConfigEvent;

    iget-object v1, v3, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetappConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/event/ReloadAppConfigEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Lcom/qianhe/yct/bean/AppConfig;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 611
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1, v5}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputrequestSerial(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V

    return-void
.end method

.method public onConnectionFailed(Ljava/lang/String;)V
    .locals 2

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u84dd\u7259\u8fde\u63a5\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 663
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->val$finalDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v0, :cond_1

    .line 664
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    new-instance v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-direct {v0}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>()V

    invoke-static {p1, v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 665
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECT_FAILED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    iput v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 666
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 667
    :cond_1
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v0, :cond_3

    .line 668
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    new-instance v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-direct {v0}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>()V

    invoke-static {p1, v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 669
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECT_FAILED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    iput v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 670
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public onDisconnected(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 5

    .line 617
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmultiBluetoothManager(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getBluetoothClient(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isBonding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    const-string/jumbo p1, "\u914d\u5bf9\u8fdb\u884c\u4e2d\uff0c\u5ffd\u7565\u65e7\u8fde\u63a5\u65ad\u5f00"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 622
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u4e0e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u84dd\u7259\u8bbe\u5907\u65ad\u5f00\u8fde\u63a5 -> \u5f53\u524d\u8fde\u63a5\u6570\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmultiBluetoothManager(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getAllConnectedDevices()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 623
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 624
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->reset()V

    .line 625
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputisH5DataAnswer(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V

    .line 626
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputtimerCount(Lcom/qianhe/yct/service/BluetoothConnectService;I)V

    .line 627
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/baselib/base/BaseConfig;)V

    .line 628
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0, v2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputdiffExecutor(Lcom/qianhe/yct/service/BluetoothConnectService;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 629
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputmRoughCoords(Lcom/qianhe/yct/service/BluetoothConnectService;Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmSp(Lcom/qianhe/yct/service/BluetoothConnectService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v3}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmRoughCoords(Lcom/qianhe/yct/service/BluetoothConnectService;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "current_coords"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 631
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0, v2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputsupportH5Ntrip(Lcom/qianhe/yct/service/BluetoothConnectService;Ljava/lang/Boolean;)V

    .line 632
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmSp(Lcom/qianhe/yct/service/BluetoothConnectService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "SUPPORT_NTRIP"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 633
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/manage/AppConfigManager;->release()V

    .line 634
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    const-string/jumbo v1, "\u627e\u5e73\u4eea\u65ad\u5f00"

    invoke-static {v0, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mreleaseDiffClient(Lcom/qianhe/yct/service/BluetoothConnectService;Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mstopFmwVersionTimer(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    .line 636
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    iput v1, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    goto :goto_0

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmultiBluetoothManager(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->stopAutoReconnect()V

    .line 641
    :goto_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    iput v1, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 642
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    iget-object v3, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v3}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-direct {v3, v2, p1}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/baselib/enums/DeviceType;)V

    move-object p1, v3

    :goto_1
    invoke-direct {v1, p1}, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_3

    .line 643
    :cond_3
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v0, :cond_5

    .line 644
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputisBaseDataAnswer(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V

    .line 645
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 646
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    iput v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    goto :goto_2

    .line 648
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    new-instance v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    sget-object v2, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(ILcom/qianhe/baselib/enums/DeviceType;)V

    invoke-static {p1, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 650
    :goto_2
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentBaseDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    iput v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 651
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 653
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmultiBluetoothManager(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getAllConnectedDevices()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 654
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mstopWorkTimer(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    return-void

    .line 656
    :cond_6
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mstartWorkTimer(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    return-void
.end method

.method public onSocketClosed(Ljava/lang/String;)V
    .locals 4

    .line 676
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmultiBluetoothManager(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->val$finalDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getBluetoothClient(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isBonding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    const-string/jumbo p1, "\u914d\u5bf9\u8fdb\u884c\u4e2d\uff0c\u5ffd\u7565\u65e7\u8fde\u63a5 socket \u5173\u95ed"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 681
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "socket\u5173\u95ed(\u6216\u88ab\u5176\u4ed6\u8bbe\u5907\u62a2\u5360): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 682
    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->keepReconnectOnSocketClose()Z

    move-result p1

    if-nez p1, :cond_2

    .line 683
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmultiBluetoothManager(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->stopAutoReconnect()V

    .line 685
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->val$finalDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    .line 686
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->reset()V

    .line 687
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputisH5DataAnswer(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V

    .line 688
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputtimerCount(Lcom/qianhe/yct/service/BluetoothConnectService;I)V

    .line 689
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/baselib/base/BaseConfig;)V

    .line 690
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1, v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputdiffExecutor(Lcom/qianhe/yct/service/BluetoothConnectService;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 691
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    const-string v2, ""

    invoke-static {p1, v2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputmRoughCoords(Lcom/qianhe/yct/service/BluetoothConnectService;Ljava/lang/String;)V

    .line 692
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmSp(Lcom/qianhe/yct/service/BluetoothConnectService;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmRoughCoords(Lcom/qianhe/yct/service/BluetoothConnectService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "current_coords"

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 693
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1, v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputsupportH5Ntrip(Lcom/qianhe/yct/service/BluetoothConnectService;Ljava/lang/Boolean;)V

    .line 694
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmSp(Lcom/qianhe/yct/service/BluetoothConnectService;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "SUPPORT_NTRIP"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 695
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/manage/AppConfigManager;->release()V

    .line 696
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    const-string/jumbo v1, "\u627e\u5e73\u4eea socket \u5173\u95ed"

    invoke-static {p1, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mreleaseDiffClient(Lcom/qianhe/yct/service/BluetoothConnectService;Ljava/lang/String;)V

    .line 697
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mstopFmwVersionTimer(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    .line 698
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 699
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SOCKET_CLOSE:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    iput v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    goto :goto_0

    .line 701
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    new-instance v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->val$finalDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v1, v0, v2}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-static {p1, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 702
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SOCKET_CLOSE:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    iput v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 704
    :goto_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SOCKET_CLOSE:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    iput v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 705
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_2

    .line 706
    :cond_4
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v0, :cond_6

    .line 707
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputisBaseDataAnswer(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V

    .line 708
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 709
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SOCKET_CLOSE:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    iput v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    goto :goto_1

    .line 711
    :cond_5
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    new-instance v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    sget-object v2, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SOCKET_CLOSE:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(ILcom/qianhe/baselib/enums/DeviceType;)V

    invoke-static {p1, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 713
    :goto_1
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentBaseDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SOCKET_CLOSE:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    iput v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 714
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 716
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmultiBluetoothManager(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getAllConnectedDevices()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 717
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mstopWorkTimer(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    return-void

    .line 719
    :cond_7
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$3;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mstartWorkTimer(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    return-void
.end method
