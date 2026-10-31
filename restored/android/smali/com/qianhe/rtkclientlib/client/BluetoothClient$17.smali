.class Lcom/qianhe/rtkclientlib/client/BluetoothClient$17;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Lcom/qh/yctdevice/YctDevice$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient;->receiveSimulatorData(Lcom/qianhe/rtkclientlib/client/BluetoothClient$SimulatorSendCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

.field final synthetic val$sendCallback:Lcom/qianhe/rtkclientlib/client/BluetoothClient$SimulatorSendCallback;


# direct methods
.method constructor <init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Lcom/qianhe/rtkclientlib/client/BluetoothClient$SimulatorSendCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2078
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$17;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iput-object p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$17;->val$sendCallback:Lcom/qianhe/rtkclientlib/client/BluetoothClient$SimulatorSendCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceLineMessage(Ljava/lang/String;)V
    .locals 2

    .line 2081
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$17;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->parseLine(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    return-void
.end method

.method public onDiffParamsChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public onSendToDeviceData([BI)V
    .locals 1

    .line 2086
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$17;->val$sendCallback:Lcom/qianhe/rtkclientlib/client/BluetoothClient$SimulatorSendCallback;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2087
    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$SimulatorSendCallback;->sendToSimulator([BZ)V

    :cond_1
    return-void
.end method
