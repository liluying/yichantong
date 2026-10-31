.class Lcom/qianhe/rtkclientlib/client/BluetoothClient$20;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient;->handleBondBroadcast(Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

.field final synthetic val$address:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3052
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$20;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iput-object p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$20;->val$address:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3055
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$20;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbluetoothAdapter(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$20;->val$address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3058
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$20;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbluetoothAdapter(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$20;->val$address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 3059
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$20;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$misUserCancelledBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3060
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 3061
    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$smcancelBondProcessIfNeeded(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_1
    :goto_0
    return-void
.end method
