.class Lcom/qianhe/rtkclientlib/client/BluetoothClient$12;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient;->startTimer(Landroid/bluetooth/le/ScanSettings$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

.field final synthetic val$builder:Landroid/bluetooth/le/ScanSettings$Builder;


# direct methods
.method constructor <init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/le/ScanSettings$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1799
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$12;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iput-object p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$12;->val$builder:Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1802
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$12;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetscanDevices(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1803
    const-string v0, "==========\u4f4e\u5ef6\u8fdf\u6a21\u5f0f\u641c\u7d22\u4e0d\u5230\u8bbe\u5907 -> \u5f3a\u5236\u4f7f\u7528\u4f20\u7edf\u65b9\u5f0f\u626b\u63cf=========="

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1804
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 1805
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$12;->val$builder:Landroid/bluetooth/le/ScanSettings$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$12$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/le/ScanSettings$Builder;Z)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 1806
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$12;->val$builder:Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-static {v0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$12$$ExternalSyntheticApiModelOutline1;->m(Landroid/bluetooth/le/ScanSettings$Builder;I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 1808
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$12;->val$builder:Landroid/bluetooth/le/ScanSettings$Builder;

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$12$$ExternalSyntheticApiModelOutline2;->m(Landroid/bluetooth/le/ScanSettings$Builder;I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 1810
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$12;->val$builder:Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    .line 1811
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$12;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbluetoothAdapter(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1812
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$12;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbluetoothAdapter(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$12;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmScanCallback(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/le/ScanCallback;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 1813
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$12;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbluetoothAdapter(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$12;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmScanCallback(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/le/ScanCallback;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 1814
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$12;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputisScanning(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V

    .line 1815
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$12;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmHandler(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$12;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetstopScanCallbacks(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    .line 1818
    :cond_2
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$12;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScan()V

    return-void
.end method
