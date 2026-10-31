.class Lcom/qianhe/yct/activity/BluetoothBondActivity$3;
.super Ljava/lang/Object;
.source "BluetoothBondActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/BluetoothBondActivity;
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

    .line 86
    iput-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$3;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$3;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$fgetbondFinished(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$3;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$3;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$fgetcreateBondIssued(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$3;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$misDeviceBondedNow(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$3;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$mfinishNow(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V

    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$3;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 99
    :cond_2
    const-string v0, "BluetoothBondActivity: \u7cfb\u7edf\u914d\u5bf9\u6846\u5df2\u5173\u95ed\u4e14\u672a\u914d\u5bf9\u6210\u529f\uff0c\u53d6\u6d88\u914d\u5bf9"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$3;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$mnotifyUserCancelledAndFinish(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V

    :cond_3
    :goto_0
    return-void
.end method
