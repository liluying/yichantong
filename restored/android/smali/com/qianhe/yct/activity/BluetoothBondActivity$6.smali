.class Lcom/qianhe/yct/activity/BluetoothBondActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothBondActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/BluetoothBondActivity;->registerFinishReceiver()V
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

    .line 402
    iput-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$6;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 405
    const-string p1, "com.qianhe.yct.action.FINISH_BLUETOOTH_BOND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$6;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$fgetbondFinished(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    const-string p1, "BluetoothBondActivity: \u6536\u5230\u5173\u95ed\u914d\u5bf9\u9875\u5e7f\u64ad"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 409
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$6;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$mfinishNow(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V

    :cond_1
    :goto_0
    return-void
.end method
