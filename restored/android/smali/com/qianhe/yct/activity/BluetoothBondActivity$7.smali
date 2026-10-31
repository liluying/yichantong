.class Lcom/qianhe/yct/activity/BluetoothBondActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothBondActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/BluetoothBondActivity;->registerBondReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$7;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 424
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 427
    :cond_0
    invoke-static {p2}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$smgetBondEventDevice(Landroid/content/Intent;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 428
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$7;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$fgetdeviceAddress(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 431
    :cond_1
    const-string p1, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 432
    const-string v1, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    .line 434
    const-string p1, "BluetoothBondActivity: \u914d\u5bf9\u6210\u529f\uff0c\u5173\u95ed\u914d\u5bf9\u9875"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 435
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$7;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$mfinishNow(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V

    return-void

    :cond_2
    const/16 v0, 0xa

    const/16 v1, 0xb

    if-ne p1, v0, :cond_5

    if-ne p2, v1, :cond_5

    .line 437
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$7;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$misDeviceBondedNow(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 438
    const-string p1, "BluetoothBondActivity: PIN/\u6b8b\u7559\u914d\u5bf9\u7ed3\u675f\uff0c\u4f46\u8bbe\u5907\u5df2\u914d\u5bf9\uff0c\u5173\u95ed\u914d\u5bf9\u9875"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 439
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$7;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$mfinishNow(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V

    return-void

    .line 442
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$7;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$fgetcreateBondIssued(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$7;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$fgetsawBonding(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 443
    const-string p1, "BluetoothBondActivity: \u5ffd\u7565\u53d1\u8d77\u524d\u7684\u6b8b\u7559\u914d\u5bf9\u7ed3\u675f"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 446
    :cond_4
    const-string p1, "BluetoothBondActivity: \u7528\u6237\u53d6\u6d88\u7cfb\u7edf\u914d\u5bf9"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 447
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$7;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$mnotifyUserCancelledAndFinish(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V

    return-void

    :cond_5
    if-ne p1, v1, :cond_6

    .line 449
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$7;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$fputsawBonding(Lcom/qianhe/yct/activity/BluetoothBondActivity;Z)V

    .line 450
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$7;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    const-wide/16 v0, 0x1f40

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->suppressBackgroundBondCancel(J)V

    :cond_6
    :goto_0
    return-void
.end method
