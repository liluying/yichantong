.class Lcom/qianhe/yct/activity/BluetoothActivity$9;
.super Ljava/lang/Object;
.source "BluetoothActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/BluetoothActivity;->bluetoothAction(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;Lcom/qianhe/yct/enums/BluetoothActionEnum;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

.field final synthetic val$myBluetoothDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/BluetoothActivity;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 437
    iput-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$9;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    iput-object p2, p0, Lcom/qianhe/yct/activity/BluetoothActivity$9;->val$myBluetoothDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 440
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity$9;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity$9;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/BluetoothActivity;->-$$Nest$fputuserInitiatedConnect(Lcom/qianhe/yct/activity/BluetoothActivity;Z)V

    .line 442
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity$9;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 443
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity$9;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    sget v1, Lcom/qianhe/yct/R$string;->connection_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/BluetoothActivity$9;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 444
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity$9;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$9;->val$myBluetoothDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object v1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->disconnectDevice(Lcom/qianhe/baselib/enums/DeviceType;)V

    :cond_0
    return-void
.end method
