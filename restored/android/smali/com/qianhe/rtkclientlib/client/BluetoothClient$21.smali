.class Lcom/qianhe/rtkclientlib/client/BluetoothClient$21;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient;->disconnectInternal(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

.field final synthetic val$wasSocketClosed:Z


# direct methods
.method constructor <init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3161
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$21;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iput-boolean p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$21;->val$wasSocketClosed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3164
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$21;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectionListener(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3165
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$21;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbondingInProgress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$21;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetpendingConnectAddress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 3169
    :cond_1
    iget-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$21;->val$wasSocketClosed:Z

    if-eqz v0, :cond_4

    .line 3170
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$21;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectionListener(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;->onSocketClosed(Ljava/lang/String;)V

    .line 3171
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$21;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->keepReconnectOnSocketClose()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3172
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$21;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetcontext(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->stopAutoReconnect()V

    .line 3173
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$21;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmDeviceType(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_2

    .line 3174
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "activeDisconnect_base"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 3176
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "activeDisconnect"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    .line 3180
    :cond_4
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$21;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectionListener(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$21;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmDeviceType(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;->onDisconnected(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void

    .line 3166
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u5bf9/\u8fde\u63a5\u8fdb\u884c\u4e2d\uff0c\u5ffd\u7565\u65e7\u8fde\u63a5\u65ad\u5f00\u56de\u8c03("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$21;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmDeviceType(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method
