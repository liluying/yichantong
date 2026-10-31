.class Lcom/qianhe/yct/service/BluetoothConnectService$4;
.super Ljava/lang/Object;
.source "BluetoothConnectService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/service/BluetoothConnectService;->onEventMessage(Lcom/qianhe/rtkclientlib/event/Serial;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

.field final synthetic val$event:Lcom/qianhe/rtkclientlib/event/Serial;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/rtkclientlib/event/Serial;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 825
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$4;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    iput-object p2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$4;->val$event:Lcom/qianhe/rtkclientlib/event/Serial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 829
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkDataLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$4;->val$event:Lcom/qianhe/rtkclientlib/event/Serial;

    iget-object v2, v1, Lcom/qianhe/rtkclientlib/event/Serial;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v1, v1, Lcom/qianhe/rtkclientlib/event/Serial;->sn:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getRegisterInfo(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    .line 831
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/InitDataEvent;

    iget-object v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$4;->val$event:Lcom/qianhe/rtkclientlib/event/Serial;

    iget-object v3, v2, Lcom/qianhe/rtkclientlib/event/Serial;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v2, v2, Lcom/qianhe/rtkclientlib/event/Serial;->sn:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/qianhe/yct/event/InitDataEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
