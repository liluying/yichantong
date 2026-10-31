.class Lcom/qianhe/yct/service/BluetoothConnectService$7;
.super Ljava/lang/Object;
.source "BluetoothConnectService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/service/BluetoothConnectService;->startWorkTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final heartInterval:I

.field final synthetic this$0:Lcom/qianhe/yct/service/BluetoothConnectService;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/service/BluetoothConnectService;)V
    .locals 0

    .line 977
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$7;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x14

    .line 978
    iput p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$7;->heartInterval:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 983
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$7;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgettimerCount(Lcom/qianhe/yct/service/BluetoothConnectService;)I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    .line 984
    const-string/jumbo v0, "\u53d1\u9001\u5fc3\u8df3\u5305\u3002"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->d(Ljava/lang/String;)V

    .line 986
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v2, "SET,HEART,20"

    invoke-direct {v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$7;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmMode(Lcom/qianhe/yct/service/BluetoothConnectService;)I

    move-result v0

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->DEMO:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$7;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmultiBluetoothManager(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    .line 990
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$7;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgettimerCount(Lcom/qianhe/yct/service/BluetoothConnectService;)I

    move-result v1

    rem-int/lit8 v1, v1, 0xf

    if-nez v1, :cond_3

    .line 991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff1a\u83b7\u53d6\u7535\u6e90\u7c7b\u578b\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->d(Ljava/lang/String;)V

    .line 993
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v3, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v4, "GET,POWER.SOURCE"

    invoke-direct {v2, v3, v4}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 994
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v3, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v2, v3, v4}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 998
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$7;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgettimerCount(Lcom/qianhe/yct/service/BluetoothConnectService;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x3c

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$7;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgettimerCount(Lcom/qianhe/yct/service/BluetoothConnectService;)I

    move-result v1

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$7;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgettimerCount(Lcom/qianhe/yct/service/BluetoothConnectService;)I

    move-result v1

    if-ne v1, v2, :cond_7

    .line 999
    :cond_4
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$7;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$7;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    iget v1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v4, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v4

    if-eq v1, v4, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$7;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$7;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    iget v1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v4, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v4

    if-ne v1, v4, :cond_7

    .line 1000
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\uff1a\u83b7\u53d6\u7535\u6c60\u7535\u91cf\u3002"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->d(Ljava/lang/String;)V

    .line 1002
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v4, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v5, "GET,POWER.BATTERYLEVEL"

    invoke-direct {v4, v0, v5}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1006
    :cond_7
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v4, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v5, "GET,HORIZONTAL_ANGLE"

    invoke-direct {v4, v0, v5}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1007
    :cond_8
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$7;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetfeaturesAnswer(Lcom/qianhe/yct/service/BluetoothConnectService;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$7;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgettimerCount(Lcom/qianhe/yct/service/BluetoothConnectService;)I

    move-result v0

    if-le v0, v2, :cond_9

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v4, "GET,FEATURES"

    invoke-direct {v1, v2, v4}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1008
    :cond_9
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$7;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgettimerCount(Lcom/qianhe/yct/service/BluetoothConnectService;)I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputtimerCount(Lcom/qianhe/yct/service/BluetoothConnectService;I)V

    return-void
.end method
