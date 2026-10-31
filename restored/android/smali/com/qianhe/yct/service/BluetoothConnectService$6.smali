.class Lcom/qianhe/yct/service/BluetoothConnectService$6;
.super Ljava/lang/Object;
.source "BluetoothConnectService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/service/BluetoothConnectService;->initDiffClient(Lcom/qianhe/yct/enums/DiffActionEnum;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

.field final synthetic val$action:Lcom/qianhe/yct/enums/DiffActionEnum;

.field final synthetic val$ggaStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/service/BluetoothConnectService;Ljava/lang/String;Lcom/qianhe/yct/enums/DiffActionEnum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 890
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    iput-object p2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->val$ggaStr:Ljava/lang/String;

    iput-object p3, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->val$action:Lcom/qianhe/yct/enums/DiffActionEnum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u521d\u59cb\u5316\u5dee\u5206\u5ba2\u6237\u7aef ===> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->val$ggaStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 895
    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryCORS(Ljava/lang/Long;)Ljava/util/List;

    .line 896
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/baselib/base/BaseConfig;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 897
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetsupportH5Ntrip(Lcom/qianhe/yct/service/BluetoothConnectService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetappConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    sget-object v2, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    new-instance v1, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    invoke-direct {v1}, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;-><init>()V

    invoke-static {v0, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/baselib/base/BaseConfig;)V

    .line 914
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/baselib/base/BaseConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetappConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_username:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseConfig;->username:Ljava/lang/String;

    .line 915
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/baselib/base/BaseConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetappConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_password:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseConfig;->password:Ljava/lang/String;

    .line 916
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/baselib/base/BaseConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetappConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_host:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    .line 917
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/baselib/base/BaseConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetappConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_port:I

    iput v1, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    .line 918
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/baselib/base/BaseConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetappConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_mount_point:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseConfig;->mount_point:Ljava/lang/String;

    goto/16 :goto_1

    .line 898
    :cond_1
    :goto_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isDemo()Z

    move-result v0

    if-nez v0, :cond_3

    .line 900
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    new-instance v2, Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    invoke-direct {v2}, Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;-><init>()V

    invoke-static {v0, v2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/baselib/base/BaseConfig;)V

    .line 901
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/baselib/base/BaseConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetappConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_host:Ljava/lang/String;

    iput-object v2, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    .line 902
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/baselib/base/BaseConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetappConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_port:I

    iput v2, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    .line 903
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/baselib/base/BaseConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetappConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_mount_point:Ljava/lang/String;

    iput-object v2, v0, Lcom/qianhe/baselib/base/BaseConfig;->mount_point:Ljava/lang/String;

    .line 904
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmultiBluetoothManager(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getAllConnectedDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 905
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 906
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/baselib/base/BaseConfig;

    move-result-object v0

    check-cast v0, Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;->setDeviceID(Ljava/lang/String;)V

    goto :goto_1

    .line 907
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 908
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/baselib/base/BaseConfig;

    move-result-object v0

    check-cast v0, Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;->setDeviceID(Ljava/lang/String;)V

    .line 920
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/baselib/base/BaseConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetappConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    iput v1, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    goto/16 :goto_2

    .line 921
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetsupportH5Ntrip(Lcom/qianhe/yct/service/BluetoothConnectService;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 922
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetappConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    sget-object v2, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v2

    if-eq v0, v2, :cond_6

    .line 923
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/baselib/base/BaseConfig;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    if-eqz v0, :cond_6

    .line 924
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmultiBluetoothManager(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getAllConnectedDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 925
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 926
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/baselib/base/BaseConfig;

    move-result-object v0

    check-cast v0, Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;->setDeviceID(Ljava/lang/String;)V

    goto :goto_2

    .line 927
    :cond_5
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 928
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/baselib/base/BaseConfig;

    move-result-object v0

    check-cast v0, Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmCurrentBaseDevice(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;->setDeviceID(Ljava/lang/String;)V

    .line 934
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/baselib/base/BaseConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->val$action:Lcom/qianhe/yct/enums/DiffActionEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/DiffActionEnum;->isInit()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qianhe/baselib/base/BaseConfig;->setIsInit(Z)V

    .line 935
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/baselib/base/BaseConfig;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/qianhe/baselib/base/BaseConfig;->setUpdatePeriod(I)V

    .line 937
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetdiffConfig(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/baselib/base/BaseConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->val$ggaStr:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/qianhe/ntripclientlib/factory/DiffClientFactory;->getIntance(Landroid/content/Context;Lcom/qianhe/baselib/base/BaseConfig;Ljava/lang/String;)Lcom/qianhe/ntripclientlib/base/DiffClientImpl;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputmDiffClient(Lcom/qianhe/yct/service/BluetoothConnectService;Lcom/qianhe/ntripclientlib/base/DiffClientImpl;)V

    .line 939
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$6;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetmDiffClient(Lcom/qianhe/yct/service/BluetoothConnectService;)Lcom/qianhe/ntripclientlib/base/DiffClientImpl;

    move-result-object v0

    invoke-interface {v0}, Lcom/qianhe/ntripclientlib/base/DiffClientImpl;->connect()V

    return-void
.end method
