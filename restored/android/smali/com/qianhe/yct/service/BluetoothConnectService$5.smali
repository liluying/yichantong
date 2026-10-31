.class Lcom/qianhe/yct/service/BluetoothConnectService$5;
.super Ljava/lang/Object;
.source "BluetoothConnectService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/service/BluetoothConnectService;->onEventMessage(Lcom/qianhe/rtkclientlib/event/GnssInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

.field final synthetic val$event:Lcom/qianhe/rtkclientlib/event/GnssInfo;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/rtkclientlib/event/GnssInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 842
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$5;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    iput-object p2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$5;->val$event:Lcom/qianhe/rtkclientlib/event/GnssInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 845
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$5;->val$event:Lcom/qianhe/rtkclientlib/event/GnssInfo;

    iget-object v2, v2, Lcom/qianhe/rtkclientlib/event/GnssInfo;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "GET,GNSS.INFO"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
