.class Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1$1;
.super Ljava/lang/Object;
.source "MultiBluetoothManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->onConnectionFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;


# direct methods
.method constructor <init>(Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1$1;->this$1:Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1$1;->this$1:Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->this$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->-$$Nest$fputpendingReconnectRunnable(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;Ljava/lang/Runnable;)V

    .line 158
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1$1;->this$1:Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->val$client:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isBonding()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1$1;->this$1:Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->val$client:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->getPendingConnectAddress()Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1$1;->this$1:Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;

    iget-object v1, v1, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->val$newAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1$1;->this$1:Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;

    iget-object v1, v1, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->val$newAddress:Ljava/lang/String;

    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5df2\u5207\u6362\u76ee\u6807\uff0c\u8df3\u8fc7\u65e7\u8bbe\u5907\u81ea\u52a8\u91cd\u8fde: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1$1;->this$1:Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;

    iget-object v1, v1, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->val$newAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1$1;->this$1:Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->this$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->-$$Nest$fgetisAutoReconnect(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    const-string/jumbo v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u81ea\u52a8\u91cd\u8fde\u3002"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1$1;->this$1:Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;

    iget-object v1, v0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->this$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    iget-object v2, v0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->val$device:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object v3, v0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$1;->val$listener:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    invoke-virtual {v1, v2, v3, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->connectDevice(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;Lcom/qianhe/baselib/enums/DeviceType;Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;)V

    return-void

    .line 172
    :cond_2
    const-string/jumbo v0, "\u5df2\u505c\u6b62\u81ea\u52a8\u91cd\u8fde\uff0c\u5ffd\u7565\u8fde\u63a5\u5931\u8d25\u56de\u8c03"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method
