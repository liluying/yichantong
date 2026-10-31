.class Lcom/qianhe/yct/activity/BluetoothBondActivity$2;
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

    .line 70
    iput-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$2;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$2;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$fgetbondFinished(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$2;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$2;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$fgetcreateBondIssued(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$2;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$fgetlostFocusAfterCreateBond(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$2;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    const-string v0, "BluetoothBondActivity: \u901a\u77e5\u680f\u914d\u5bf9\u672a\u62a2\u7126\u70b9\uff0c\u5173\u95ed\u900f\u660e\u9875\u4ee5\u514d\u6321\u4f4f\u6b63\u5728\u914d\u5bf9\u5f39\u7a97"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$2;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    const-wide/16 v1, 0x1f40

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->suppressBackgroundBondCancel(J)V

    .line 82
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$2;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$mfinishNow(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V

    return-void

    .line 77
    :cond_2
    :goto_0
    const-string v0, "BluetoothBondActivity: \u7cfb\u7edf\u914d\u5bf9\u6846\u5df2\u62a2\u7126\u70b9\uff0c\u4fdd\u7559\u900f\u660e\u9875"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
