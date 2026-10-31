.class Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;
.super Ljava/lang/Object;
.source "BluetoothDebugActivity.java"

# interfaces
.implements Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->connect(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

.field final synthetic val$myBluetoothDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 370
    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    iput-object p2, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->val$myBluetoothDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBond(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onBondCancelled(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 422
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgetloadingFragment(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/dialog/LoadingFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 423
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgetloadingFragment(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/dialog/LoadingFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onBondCompleted(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 415
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgetloadingFragment(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/dialog/LoadingFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 416
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgetloadingFragment(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/dialog/LoadingFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    sget v1, Lcom/qianhe/yct/R$string;->connecting_device:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/dialog/LoadingFragment;->refreshTip(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 373
    const-string/jumbo p1, "\u5df2\u8fde\u63a5\u5230\u8bbe\u5907"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 374
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgetloadingFragment(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/dialog/LoadingFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 375
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->val$myBluetoothDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    iput v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 376
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->val$myBluetoothDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fputmCurrentDevice(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 377
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgetdeviceListAdapter(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/adapter/DeviceListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->val$myBluetoothDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->refreshState(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 378
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    const-class v2, Lcom/qianhe/yct/activity/debug/DebugActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onConnectionFailed(Ljava/lang/String;)V
    .locals 2

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 393
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgetloadingFragment(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/dialog/LoadingFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 394
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->val$myBluetoothDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    iput v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 395
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fputmCurrentDevice(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 396
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgetdeviceListAdapter(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/adapter/DeviceListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->val$myBluetoothDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->refreshState(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    return-void
.end method

.method public onDisconnected(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 1

    .line 383
    const-string/jumbo p1, "\u4e0e\u84dd\u7259\u8bbe\u5907\u65ad\u5f00\u8fde\u63a5"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 384
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgetloadingFragment(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/dialog/LoadingFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 385
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->val$myBluetoothDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    iput v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 386
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fputmCurrentDevice(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 387
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgetdeviceListAdapter(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/adapter/DeviceListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->val$myBluetoothDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->refreshState(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    return-void
.end method

.method public onSocketClosed(Ljava/lang/String;)V
    .locals 2

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection Closed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 402
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgetloadingFragment(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/dialog/LoadingFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 403
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->val$myBluetoothDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    iput v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 404
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fputmCurrentDevice(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 405
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgetdeviceListAdapter(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/adapter/DeviceListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;->val$myBluetoothDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->refreshState(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    return-void
.end method
