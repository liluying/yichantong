.class Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scheduleRepairBondAfterRemoved(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$attempt:I


# direct methods
.method constructor <init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1371
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iput-object p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->val$address:Ljava/lang/String;

    iput p3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->val$attempt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1374
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetrepairBondAfterRemovedRunnable(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputrepairBondAfterRemovedRunnable(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/Runnable;)V

    .line 1378
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->val$address:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetpendingConnectAddress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1381
    :cond_1
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetremovingStaleBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbondingInProgress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1384
    :cond_2
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbluetoothAdapter(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->val$address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$misUserCancelledBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    .line 1387
    :cond_3
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbluetoothAdapter(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->val$address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1388
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$misDeviceBonded(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$smisListedAsBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v1, 0x1

    .line 1389
    :goto_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    .line 1390
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-object v5, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->val$address:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$misBondUiRequested(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u9648\u65e7\u914d\u5bf9\u91cd\u914d UI \u5df2\u53d1\u8d77\uff0c\u7b49\u5f85\u7cfb\u7edf\u914d\u5bf9\u5b8c\u6210: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->val$address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1392
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mstartBondWatch(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :cond_6
    const/16 v4, 0xb

    if-nez v1, :cond_9

    if-eq v3, v4, :cond_9

    .line 1396
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetstaleBondRemovedAt(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_7

    .line 1397
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputstaleBondRemovedAt(Lcom/qianhe/rtkclientlib/client/BluetoothClient;J)V

    .line 1399
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetstaleBondRemovedAt(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x5dc

    cmp-long v1, v3, v5

    if-gez v1, :cond_8

    .line 1400
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->val$address:Ljava/lang/String;

    iget v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->val$attempt:I

    add-int/2addr v3, v2

    invoke-static {v0, v1, v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mscheduleRepairBondAfterRemoved(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;I)V

    return-void

    .line 1403
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u9648\u65e7\u914d\u5bf9\u5df2\u79fb\u9664\uff0c\u91cd\u65b0\u53d1\u8d77\u914d\u5bf9: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->val$address:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", attempt="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->val$attempt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1404
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScan()V

    .line 1405
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputbondingInProgress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V

    .line 1406
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->val$address:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputpendingConnectAddress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;)V

    .line 1407
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mstartBondWatch(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V

    .line 1408
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mstartBondUiNow(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V

    .line 1409
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->val$address:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mscheduleEnsureNewBondUi(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;)V

    return-void

    :cond_9
    if-ne v3, v4, :cond_b

    .line 1413
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbondUiReachedBonding(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u9648\u65e7\u914d\u5bf9\u62c6\u9664\u540e\u51fa\u73b0\u6b8b\u7559\u914d\u5bf9\uff0c\u53d6\u6d88\u540e\u7ee7\u7eed\u7b49\u5f85\u91cd\u914d: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->val$address:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1415
    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$smcancelBondProcessIfNeeded(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1416
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->val$address:Ljava/lang/String;

    iget v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->val$attempt:I

    add-int/2addr v3, v2

    invoke-static {v0, v1, v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mscheduleRepairBondAfterRemoved(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;I)V

    return-void

    .line 1419
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u9648\u65e7\u914d\u5bf9\u79fb\u9664\u540e\u5df2\u8fdb\u5165\u91cd\u65b0\u914d\u5bf9\uff0c\u7b49\u5f85\u5b8c\u6210: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->val$address:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1420
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputbondingInProgress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V

    .line 1421
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mstartBondWatch(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V

    .line 1422
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mnotifyBonding(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 1425
    :cond_b
    iget v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->val$attempt:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_d

    .line 1426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u7b49\u5f85\u79fb\u9664\u9648\u65e7\u914d\u5bf9\u8d85\u65f6\uff0c\u4ecd\u5c1d\u8bd5\u91cd\u65b0\u914d\u5bf9: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->val$address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 1427
    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v3, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputbondingInProgress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V

    if-eqz v1, :cond_c

    .line 1429
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mremoveStaleBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)Z

    .line 1431
    :cond_c
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mstartBondWatch(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V

    .line 1432
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mstartBondUiNow(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V

    .line 1433
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->val$address:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mscheduleEnsureNewBondUi(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;)V

    return-void

    .line 1436
    :cond_d
    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_e

    .line 1437
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mremoveStaleBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)Z

    .line 1439
    :cond_e
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->val$address:Ljava/lang/String;

    iget v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$9;->val$attempt:I

    add-int/2addr v3, v2

    invoke-static {v0, v1, v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mscheduleRepairBondAfterRemoved(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;I)V

    return-void
.end method
