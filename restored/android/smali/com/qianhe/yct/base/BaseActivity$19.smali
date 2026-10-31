.class Lcom/qianhe/yct/base/BaseActivity$19;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseActivity;->onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/base/BaseActivity;

.field final synthetic val$event:Lcom/qianhe/yct/event/BluetoothConnectStateEvent;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/base/BaseActivity;Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2128
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$19;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    iput-object p2, p0, Lcom/qianhe/yct/base/BaseActivity$19;->val$event:Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2132
    invoke-static {v0}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$sfputconnectingDialogConsumed(Z)V

    .line 2133
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$19;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$19;->val$event:Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    iget-object v0, v0, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->disconnectDevice(Lcom/qianhe/baselib/enums/DeviceType;)V

    :cond_0
    return-void
.end method
