.class Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient;->startBondWatch(Landroid/bluetooth/BluetoothDevice;)V
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

    .line 444
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iput-object p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->val$address:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 447
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbondingInProgress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetpendingConnectAddress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mstopBondWatch(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V

    return-void

    .line 451
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbondWatchStartedAt(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u5bf9\u8d85\u65f6\uff0c\u505c\u6b62\u76d1\u542c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->val$address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbluetoothAdapter(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->val$address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 454
    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$smcancelBondProcessIfNeeded(Landroid/bluetooth/BluetoothDevice;)Z

    .line 455
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mhandleBondCancelled(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbluetoothAdapter(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    if-nez v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmHandler(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 462
    :cond_2
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbluetoothAdapter(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->val$address:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_3

    .line 465
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputbondWatchSawBonding(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V

    .line 467
    :cond_3
    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v4, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$misDeviceBonded(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bond watch \u68c0\u6d4b\u5230\u914d\u5bf9\u5b8c\u6210\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mscheduleConnectAfterBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :cond_4
    const/16 v4, 0xa

    if-ne v3, v4, :cond_6

    .line 472
    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbondWatchSawBonding(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 473
    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-object v4, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->val$address:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$misAwaitingReplacementBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bond watch \u5ffd\u7565\u62c6\u914d/\u91cd\u914d\u8854\u63a5\u4e2d\u7684 BOND_NONE: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->val$address:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputbondWatchSawBonding(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V

    .line 476
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmHandler(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 479
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bond watch \u68c0\u6d4b\u5230\u914d\u5bf9\u53d6\u6d88\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->val$address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mhandleBondCancelled(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 483
    :cond_6
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$1;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmHandler(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
