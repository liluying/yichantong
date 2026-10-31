.class Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread$2;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Lcom/qh/yctdevice/YctDevice$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;

.field final synthetic val$this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;


# direct methods
.method constructor <init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2147
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread$2;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;

    iput-object p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread$2;->val$this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceLineMessage(Ljava/lang/String;)V
    .locals 3

    .line 2150
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/rtkclientlib/event/BlueData;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v1, v2}, Lcom/qianhe/rtkclientlib/event/BlueData;-><init>(Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2151
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread$2;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-virtual {v0, v2, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->parseLine(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    return-void
.end method

.method public onDiffParamsChanged()V
    .locals 1

    .line 2162
    const-string v0, "BASE -> onDiffParamsChanged() -> \u65e0\u9700\u64cd\u4f5c"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onSendToDeviceData([BI)V
    .locals 1

    .line 2157
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread$2;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->sendData([BZ)V

    return-void
.end method
