.class Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity$1;
.super Ljava/lang/Object;
.source "MultiBluetoothExampleActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity$1;->this$0:Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 44
    check-cast p2, Lcom/qianhe/yct/service/BluetoothConnectService$LocalBinder;

    .line 45
    iget-object p1, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity$1;->this$0:Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;

    invoke-virtual {p2}, Lcom/qianhe/yct/service/BluetoothConnectService$LocalBinder;->getService()Lcom/qianhe/yct/service/BluetoothConnectService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->-$$Nest$fputbluetoothService(Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;Lcom/qianhe/yct/service/BluetoothConnectService;)V

    .line 46
    iget-object p1, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity$1;->this$0:Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->-$$Nest$fputisServiceBound(Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;Z)V

    .line 47
    const-string p1, "MultiBluetooth"

    const-string/jumbo p2, "\u84dd\u7259\u670d\u52a1\u5df2\u7ed1\u5b9a"

    nop

    nop

    nop

    .line 50
    iget-object p1, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity$1;->this$0:Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->-$$Nest$mrefreshConnectionStatus(Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 55
    iget-object p1, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity$1;->this$0:Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->-$$Nest$fputbluetoothService(Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;Lcom/qianhe/yct/service/BluetoothConnectService;)V

    .line 56
    iget-object p1, p0, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity$1;->this$0:Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;->-$$Nest$fputisServiceBound(Lcom/qianhe/yct/activity/MultiBluetoothExampleActivity;Z)V

    .line 57
    const-string p1, "MultiBluetooth"

    const-string/jumbo v0, "\u84dd\u7259\u670d\u52a1\u5df2\u89e3\u7ed1"

    nop

    nop

    nop

    return-void
.end method
