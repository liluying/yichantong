.class Lcom/qianhe/rtkclientlib/client/BluetoothClient$14;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient;->safeCreateBond(Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

.field final synthetic val$bondTarget:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1977
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$14;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iput-object p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$14;->val$bondTarget:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1980
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$14;->val$bondTarget:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$14;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetpendingConnectAddress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1983
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$14;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$14;->val$bondTarget:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mrequestBondUi(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
