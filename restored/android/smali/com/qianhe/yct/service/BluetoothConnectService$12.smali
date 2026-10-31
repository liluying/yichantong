.class Lcom/qianhe/yct/service/BluetoothConnectService$12;
.super Ljava/lang/Object;
.source "BluetoothConnectService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/service/BluetoothConnectService;->checkFmwUpgrade(Lcom/qianhe/baselib/enums/DeviceType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

.field final synthetic val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1348
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$12;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    iput-object p2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$12;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1352
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$12;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->isAppVersionCheckedComplete()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputisAppVersionCheckEnd(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V

    .line 1353
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$12;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetisAppVersionCheckEnd(Lcom/qianhe/yct/service/BluetoothConnectService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1354
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$12;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgethasRtkInfo(Lcom/qianhe/yct/service/BluetoothConnectService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1355
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$12;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgethasExpiredate(Lcom/qianhe/yct/service/BluetoothConnectService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$12;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mstopFmwVersionTimer(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    .line 1357
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$12;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgethasExpiredate(Lcom/qianhe/yct/service/BluetoothConnectService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$12;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mstartBlueCheckTimer(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    .line 1360
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$12;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgethasExpiredate(Lcom/qianhe/yct/service/BluetoothConnectService;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$12;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "GET,EXPIREDATE"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1362
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$12;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgethasRtkInfo(Lcom/qianhe/yct/service/BluetoothConnectService;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1363
    const-string v0, "deviceType\uff1a\u53d1\u9001\u83b7\u53d6\u7248\u672c\u4fe1\u606f\u3001\u6ce8\u518c\u7801\u6709\u6548\u671f\u6307\u4ee4\u3002"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1365
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$12;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "GET,VERSION"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1368
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$12;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetfeaturesAnswer(Lcom/qianhe/yct/service/BluetoothConnectService;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$12;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "GET,FEATURES"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
