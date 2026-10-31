.class Lcom/qianhe/yct/activity/BluetoothBondActivity$4;
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

    .line 104
    iput-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$4;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$4;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$fgetbondFinished(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$4;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$4;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$misDeviceBondedNow(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const-string v0, "BluetoothBondActivity: \u8f6e\u8be2\u5230\u5df2\u914d\u5bf9\uff0c\u5173\u95ed\u914d\u5bf9\u9875"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$4;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$mfinishNow(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V

    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$4;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$fgetsawBonding(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$4;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$misBondNoneNow(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    const-string v0, "BluetoothBondActivity: \u8f6e\u8be2\u5230\u914d\u5bf9\u5df2\u53d6\u6d88\uff0c\u5173\u95ed\u914d\u5bf9\u9875"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$4;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$mnotifyUserCancelledAndFinish(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V

    return-void

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$4;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$fgethandler(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method
