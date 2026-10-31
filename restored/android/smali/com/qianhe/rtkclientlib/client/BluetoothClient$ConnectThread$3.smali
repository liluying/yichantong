.class Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->notifyConnectFailed(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

.field final synthetic val$error:Ljava/lang/String;

.field final synthetic val$fromCreateSocket:Z


# direct methods
.method constructor <init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2828
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    iput-object p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;->val$error:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;->val$fromCreateSocket:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2831
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectionListener(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    iget-object v1, v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->-$$Nest$fgetsessionId(Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmmDevice(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$misConnectAttemptActive(Lcom/qianhe/rtkclientlib/client/BluetoothClient;JLandroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2834
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetsocketClosed(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2835
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectionListener(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;->val$error:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;->onSocketClosed(Ljava/lang/String;)V

    .line 2836
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->keepReconnectOnSocketClose()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmmDevice(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    iget-object v2, v2, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectionListener(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->connectToDevice(Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;)V

    return-void

    .line 2837
    :cond_1
    iget-boolean v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;->val$fromCreateSocket:Z

    if-eqz v0, :cond_2

    .line 2838
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetisConnecting(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmConnectThread(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmConnectThread(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2839
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectionListener(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;->val$error:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;->onConnectionFailed(Ljava/lang/String;)V

    return-void

    .line 2841
    :cond_2
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2842
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectionListener(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$3;->val$error:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;->onConnectionFailed(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
