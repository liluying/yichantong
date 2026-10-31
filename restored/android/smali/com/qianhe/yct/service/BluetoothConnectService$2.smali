.class Lcom/qianhe/yct/service/BluetoothConnectService$2;
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

    .line 474
    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$2;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 477
    const-string p1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 478
    iget-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$2;->this$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-static {p1}, Lcom/qianhe/yct/service/BluetoothConnectService;->-$$Nest$mupdateForegroundNotification(Lcom/qianhe/yct/service/BluetoothConnectService;)V

    :cond_0
    return-void
.end method
