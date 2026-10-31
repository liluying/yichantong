.class Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5;
.super Ljava/lang/Object;
.source "BluetoothDebugActivity.java"

# interfaces
.implements Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->startScan()V
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

    .line 310
    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelBond(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onBonding(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDeviceScan(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 2

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 316
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[WZ].*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgetdeviceListAdapter(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/adapter/DeviceListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->addData(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    :cond_0
    return-void
.end method

.method public onScanFail()V
    .locals 0

    .line 0
    return-void
.end method

.method public onScanFinished()V
    .locals 2

    .line 321
    const-string/jumbo v0, "\u626b\u63cf\u7ed3\u675f\u3002"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    new-instance v1, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5$1;-><init>(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
