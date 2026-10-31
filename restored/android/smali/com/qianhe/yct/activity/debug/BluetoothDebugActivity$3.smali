.class Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$3;
.super Ljava/lang/Object;
.source "BluetoothDebugActivity.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/DeviceListAdapter$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->initBluetoothClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$3;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;Lcom/qianhe/yct/enums/BluetoothActionEnum;)V
    .locals 1

    .line 236
    sget-object v0, Lcom/qianhe/yct/enums/BluetoothActionEnum;->CONNECT:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    if-ne p2, v0, :cond_0

    .line 237
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u5f00\u59cb\u8fde\u63a5\u84dd\u7259\u8bbe\u5907\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 238
    iget-object p2, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$3;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {p2, p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$mconnect(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    return-void

    .line 240
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$3;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgetmBluetoothClient(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->disconnect()V

    return-void
.end method
