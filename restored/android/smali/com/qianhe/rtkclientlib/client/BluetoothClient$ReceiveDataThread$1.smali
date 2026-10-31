.class Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread$1;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Lcom/qh/yctdevice/YctDevice$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;-><init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;

.field final synthetic val$this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;


# direct methods
.method constructor <init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2118
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread$1;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;

    iput-object p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread$1;->val$this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceLineMessage(Ljava/lang/String;)V
    .locals 3

    .line 2121
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/rtkclientlib/event/BlueData;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v1, v2}, Lcom/qianhe/rtkclientlib/event/BlueData;-><init>(Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2122
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread$1;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-virtual {v0, v2, p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->parseLine(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    return-void
.end method

.method public onDiffParamsChanged()V
    .locals 4

    .line 2133
    const-string v0, "H5 -> onDiffParamsChanged() -> \u91cd\u65b0\u521d\u59cb\u5316\u95ea\u7535\u56fa\u5b9a\u5dee\u5206"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2134
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread$1;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetcontext(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2135
    sget-object v1, Lcom/qianhe/baselib/Constant;->NTRIPTYPE:Ljava/lang/String;

    sget-object v2, Lcom/qianhe/baselib/enums/NtripTypeEnum;->SDK:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2136
    sget-object v1, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2138
    new-instance v0, Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    invoke-direct {v0}, Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;-><init>()V

    .line 2139
    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    const/4 v1, 0x1

    .line 2140
    iput-boolean v1, v0, Lcom/qianhe/baselib/base/BaseConfig;->isInit:Z

    .line 2142
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSendToDeviceData([BI)V
    .locals 1

    .line 2128
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread$1;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ReceiveDataThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->sendData([BZ)V

    return-void
.end method
