.class Lcom/qianhe/yct/service/BluetoothConnectService$8;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothConnectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/service/BluetoothConnectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/service/BluetoothConnectService;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/service/BluetoothConnectService;)V
    .locals 0

    .line 1022
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$8;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1025
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1026
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1027
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1045
    :pswitch_0
    const-string p1, "==========\u84dd\u7259\u5df2\u5f00\u542f=========="

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1046
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$8;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputisAutoConnect(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V

    .line 1047
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$8;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mstartScan(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    return-void

    .line 1051
    :pswitch_1
    const-string p1, "==========\u6b63\u5728\u5f00\u542f\u84dd\u7259=========="

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 1030
    :pswitch_2
    const-string p1, "==========\u84dd\u7259\u5df2\u5173\u95ed=========="

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1031
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1033
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$8;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mstopScan(Lcom/qianhe/yct/service/BluetoothConnectService;I)V

    .line 1034
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$8;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$8;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    sget-object p2, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {p2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result p2

    iput p2, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 1035
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$8;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$8;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    sget-object p2, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {p2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result p2

    iput p2, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 1036
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    sget-object p2, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {p2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    iput v0, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 1037
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentBaseDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    invoke-virtual {p2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result p2

    iput p2, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 1038
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$8;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1039
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$8;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
