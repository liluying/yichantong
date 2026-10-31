.class Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;
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

    .line 258
    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$4;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 261
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 262
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 263
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_1

    const/16 p2, 0xc

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    const-string p1, "==========\u84dd\u7259\u5df2\u5f00\u542f=========="

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 275
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$4;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$mstartScan(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)V

    return-void

    .line 266
    :cond_1
    const-string p1, "==========\u84dd\u7259\u5df2\u5173\u95ed=========="

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 268
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$4;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$mstopScan(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)V

    :cond_2
    :goto_0
    return-void
.end method
