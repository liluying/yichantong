.class Lcom/qianhe/rtkclientlib/client/BluetoothClient$4;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient;->notifyBonding(Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 748
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$4;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iput-object p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$4;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 751
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$4;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectionListener(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$4;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetconnectionListener(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$4;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;->onBond(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    return-void
.end method
