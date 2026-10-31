.class Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;
.super Ljava/lang/Object;
.source "MultiBluetoothManager.java"

# interfaces
.implements Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->connectDevice(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;Lcom/qianhe/baselib/enums/DeviceType;Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

.field final synthetic val$client:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

.field final synthetic val$device:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

.field final synthetic val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field final synthetic val$listener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

.field final synthetic val$newAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;Lcom/qianhe/baselib/enums/DeviceType;Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->this$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    iput-object p2, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iput-object p3, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->val$listener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    iput-object p4, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->val$client:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iput-object p5, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->val$newAddress:Ljava/lang/String;

    iput-object p6, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->val$device:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBond(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->val$listener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;->onBond(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    return-void
.end method

.method public onBondCancelled(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->this$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->-$$Nest$mrequestFinishBondActivity(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)V

    .line 205
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->val$listener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;->onBondCancelled(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    return-void
.end method

.method public onBondCompleted(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->this$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->-$$Nest$mrequestFinishBondActivity(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)V

    .line 197
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->val$listener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;->onBondCompleted(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    return-void
.end method

.method public onConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->this$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->-$$Nest$mcancelPendingConnect(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)V

    .line 124
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->this$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->-$$Nest$mrequestFinishBondActivity(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)V

    .line 125
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-eqz v0, :cond_0

    .line 126
    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->NONE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_2

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->this$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    const-string v1, ""

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getDeviceType(Ljava/lang/String;Ljava/lang/String;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v0

    .line 129
    :cond_2
    new-instance v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-direct {v1, p1, v0}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 130
    sget-object v2, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v2

    iput v2, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 131
    iget-object v2, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->this$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-static {v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->-$$Nest$fgetconnectedDevices(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->val$listener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    if-eqz v0, :cond_3

    .line 133
    invoke-interface {v0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;->onConnected(Landroid/bluetooth/BluetoothDevice;)V

    :cond_3
    return-void
.end method

.method public onConnectionFailed(Ljava/lang/String;)V
    .locals 3

    .line 147
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->this$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->-$$Nest$fgetisAutoReconnect(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 148
    const-string/jumbo p1, "\u5df2\u505c\u6b62\u81ea\u52a8\u91cd\u8fde\uff0c\u5ffd\u7565\u8fde\u63a5\u5931\u8d25\u56de\u8c03"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->this$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->-$$Nest$fgetpendingReconnectRunnable(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 152
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->this$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->-$$Nest$fgethandler(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->this$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->-$$Nest$fgetpendingReconnectRunnable(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->this$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    new-instance v0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1$1;

    invoke-direct {v0, p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1$1;-><init>(Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;)V

    invoke-static {p1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->-$$Nest$fputpendingReconnectRunnable(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;Ljava/lang/Runnable;)V

    .line 176
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->this$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->-$$Nest$fgethandler(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->this$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->-$$Nest$fgetpendingReconnectRunnable(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDisconnected(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->this$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->-$$Nest$fgetconnectedDevices(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->val$listener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;->onDisconnected(Lcom/qianhe/baselib/enums/DeviceType;)V

    :cond_0
    return-void
.end method

.method public onSocketClosed(Ljava/lang/String;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->this$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->-$$Nest$fgetconnectedDevices(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->val$listener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;->onSocketClosed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
