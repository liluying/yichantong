.class Lcom/qianhe/yct/service/BluetoothConnectService$11;
.super Ljava/lang/Object;
.source "BluetoothConnectService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/service/BluetoothConnectService;->startBlueCheckTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private countTime:J

.field final synthetic this$0:Lcom/qianhe/yct/service/BluetoothConnectService;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/service/BluetoothConnectService;)V
    .locals 2

    .line 1270
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$11;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 1271
    iput-wide v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$11;->countTime:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1278
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x5

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xc

    .line 1279
    :goto_0
    iget-wide v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$11;->countTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    rem-long/2addr v2, v0

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 1280
    iget-object v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$11;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetstartCheckH5(Lcom/qianhe/yct/service/BluetoothConnectService;)Z

    move-result v2

    const/4 v3, 0x0

    const-string/jumbo v4, "\u79d2) \u2014\u2014> \u65ad\u5f00\u91cd\u8fde"

    if-eqz v2, :cond_2

    .line 1281
    iget-object v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$11;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetisH5DataAnswer(Lcom/qianhe/yct/service/BluetoothConnectService;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<\u2014\u2014 \u957f\u65f6\u95f4\u672a\u63a5\u6536\u5230H5\u84dd\u7259\u6570\u636e("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1283
    iget-object v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$11;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mreconnectH5(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    goto :goto_1

    .line 1285
    :cond_1
    iget-object v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$11;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v2, v3}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputisH5DataAnswer(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V

    .line 1288
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$11;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetstartCheckBase(Lcom/qianhe/yct/service/BluetoothConnectService;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1289
    iget-object v2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$11;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v2}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fgetisBaseDataAnswer(Lcom/qianhe/yct/service/BluetoothConnectService;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<\u2014\u2014 \u957f\u65f6\u95f4\u672a\u63a5\u6536\u5230BASE\u84dd\u7259\u6570\u636e("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1291
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$11;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mreconnectBase(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    goto :goto_2

    .line 1293
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$11;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {v0, v3}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$fputisBaseDataAnswer(Lcom/qianhe/yct/service/BluetoothConnectService;Z)V

    .line 1297
    :cond_4
    :goto_2
    iget-wide v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$11;->countTime:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$11;->countTime:J

    return-void
.end method
