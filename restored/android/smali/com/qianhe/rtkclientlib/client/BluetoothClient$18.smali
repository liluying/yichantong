.class Lcom/qianhe/rtkclientlib/client/BluetoothClient$18;
.super Landroid/bluetooth/le/ScanCallback;
.source "BluetoothClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;


# direct methods
.method constructor <init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V
    .locals 0

    .line 2850
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$18;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 2859
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    .line 2860
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$18;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mhandleScanResult(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/le/ScanResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onScanFailed(I)V
    .locals 2

    .line 2867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScanFailed \u2014\u2014> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2868
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$18;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetscanListener(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$18;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetscanListener(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;->onScanFail()V

    :cond_0
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 0

    .line 2854
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$18;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {p1, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mhandleScanResult(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/le/ScanResult;)V

    return-void
.end method
