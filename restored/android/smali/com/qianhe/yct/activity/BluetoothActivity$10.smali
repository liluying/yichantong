.class Lcom/qianhe/yct/activity/BluetoothActivity$10;
.super Ljava/lang/Object;
.source "BluetoothActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


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

    .line 466
    iput-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$10;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    iput-object p2, p0, Lcom/qianhe/yct/activity/BluetoothActivity$10;->val$myBluetoothDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 477
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$10;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/BluetoothActivity;->-$$Nest$fputuserInitiatedConnect(Lcom/qianhe/yct/activity/BluetoothActivity;Z)V

    .line 478
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$10;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothActivity;->-$$Nest$fgethandler(Lcom/qianhe/yct/activity/BluetoothActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onConfirm()V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity$10;->val$myBluetoothDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "activeDisconnect"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity$10;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$10;->val$myBluetoothDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/BluetoothActivity;->-$$Nest$mpostConnectAction(Lcom/qianhe/yct/activity/BluetoothActivity;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    return-void
.end method
