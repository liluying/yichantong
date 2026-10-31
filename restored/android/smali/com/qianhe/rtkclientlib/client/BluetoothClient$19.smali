.class Lcom/qianhe/rtkclientlib/client/BluetoothClient$19;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;


# direct methods
.method constructor <init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V
    .locals 0

    .line 2939
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$19;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 2944
    :try_start_0
    iget-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$19;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {p1, p2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mhandleBondBroadcast(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2945
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2948
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u914d\u5bf9\u5e7f\u64ad\u5904\u7406\u5f02\u5e38: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
