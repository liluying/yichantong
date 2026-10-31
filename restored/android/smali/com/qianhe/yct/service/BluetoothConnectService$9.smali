.class Lcom/qianhe/yct/service/BluetoothConnectService$9;
.super Ljava/lang/Object;
.source "BluetoothConnectService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/service/BluetoothConnectService;->startScan()V
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

    .line 1093
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$9;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1097
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$9;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmBluetoothH5Client(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$9;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmBluetoothH5Client(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$9;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->openBluetooth(Landroid/content/Context;)V

    return-void

    .line 1100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5f00\u59cb\u626b\u63cf......"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$9;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetscanPageIndex(Lcom/qianhe/yct/service/BluetoothConnectService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1101
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/BluetoothScanStateEvent;

    new-instance v2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    sget-object v3, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SCAN_STARTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(I)V

    iget-object v3, p0, Lcom/qianhe/yct/service/BluetoothConnectService$9;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v3}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetscanPageIndex(Lcom/qianhe/yct/service/BluetoothConnectService;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/event/BluetoothScanStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1102
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$9;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmDevideList(Lcom/qianhe/yct/service/BluetoothConnectService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1103
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$9;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mclearScanListUiBatch(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    .line 1105
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 1106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1107
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1108
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^[WZ].*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1109
    iget-object v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$9;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmDevideList(Lcom/qianhe/yct/service/BluetoothConnectService;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-direct {v4, v1}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1112
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$9;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetscanPageIndex(Lcom/qianhe/yct/service/BluetoothConnectService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1113
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$9;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmBluetoothBaseClient(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$9;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetscanListener(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->startScan(Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;)V

    return-void

    .line 1115
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$9;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmBluetoothH5Client(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$9;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetscanListener(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->startScan(Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;)V

    return-void
.end method
