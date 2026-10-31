.class Lcom/qianhe/rtkclientlib/client/BluetoothClient$10;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scheduleEnsureNewBondUi(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

.field final synthetic val$address:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1502
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$10;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iput-object p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$10;->val$address:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1505
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$10;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputensureNewBondUiRunnable(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/Runnable;)V

    .line 1506
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$10;->val$address:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$10;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetpendingConnectAddress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$10;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbondingInProgress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1509
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$10;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbluetoothAdapter(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1512
    :cond_1
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$10;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbluetoothAdapter(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$10;->val$address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1513
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$10;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$misUserCancelledBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1516
    :cond_2
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$10;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$misDeviceBonded(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1517
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$10;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mscheduleConnectAfterBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 1520
    :cond_3
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$10;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbondUiReachedBonding(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4

    goto :goto_0

    .line 1523
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u62c6\u914d\u540e\u672a\u8fdb\u5165\u65b0\u914d\u5bf9\uff0c\u518d\u6b21\u62c9\u8d77\u524d\u53f0\u914d\u5bf9\u9875: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$10;->val$address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1524
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$10;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputbondingInProgress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V

    .line 1525
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$10;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mstartBondUiNow(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V

    :cond_5
    :goto_0
    return-void
.end method
