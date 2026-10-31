.class Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scheduleBondedRfcommTimeout(Landroid/bluetooth/BluetoothSocket;JLandroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$sessionId:J

.field final synthetic val$socket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method constructor <init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;JLandroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 857
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iput-wide p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->val$sessionId:J

    iput-object p4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->val$socket:Landroid/bluetooth/BluetoothSocket;

    iput-object p5, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 860
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputbondedRfcommTimeoutRunnable(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/Runnable;)V

    .line 861
    iget-wide v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->val$sessionId:J

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectSessionId(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$misSocketStillConnected(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothSocket;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->val$socket:Landroid/bluetooth/BluetoothSocket;

    invoke-static {v0, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$misSocketStillConnected(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothSocket;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 867
    :cond_1
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-wide v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->val$sessionId:J

    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v2, v3, v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$misConnectAttemptActive(Lcom/qianhe/rtkclientlib/client/BluetoothClient;JLandroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 870
    :cond_2
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->val$device:Landroid/bluetooth/BluetoothDevice;

    const-string v3, "bonded rfcomm timeout"

    invoke-static {v0, v2, v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$misConfirmedStaleBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v0

    .line 871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5df2\u914d\u5bf9\u76f4\u8fde\u8d85\u65f6(10000ms), stale="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->val$device:Landroid/bluetooth/BluetoothDevice;

    .line 872
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 871
    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 873
    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->val$socket:Landroid/bluetooth/BluetoothSocket;

    invoke-static {v2, v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mcloseQuietly(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/AutoCloseable;)V

    .line 874
    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectingSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->val$socket:Landroid/bluetooth/BluetoothSocket;

    if-ne v2, v4, :cond_3

    .line 875
    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v2, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputconnectingSocket(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothSocket;)V

    :cond_3
    if-eqz v0, :cond_4

    .line 878
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1, v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mstartStaleBondRepair(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    return-void

    .line 880
    :cond_4
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$5;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mstopPresenceScanForBondProbe(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V

    .line 881
    const-string/jumbo v0, "\u8bbe\u5907\u672a\u5728\u5e7f\u64ad\uff0c\u6309\u672a\u5f00\u673a/\u8d85\u8ddd\u5904\u7406\uff0c\u4e0d\u62c6\u9664\u914d\u5bf9"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
