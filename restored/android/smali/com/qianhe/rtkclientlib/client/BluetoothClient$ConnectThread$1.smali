.class Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$1;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;


# direct methods
.method constructor <init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;)V
    .locals 0

    .line 2714
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$1;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2717
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$1;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    iget-object v1, v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->-$$Nest$fgetsessionId(Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$1;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmmDevice(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$misConnectAttemptActive(Lcom/qianhe/rtkclientlib/client/BluetoothClient;JLandroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2718
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread$1;->this$1:Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$ConnectThread;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmmDevice(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$msafeCreateBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    return-void
.end method
