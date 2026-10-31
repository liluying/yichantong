.class Lcom/qianhe/rtkclientlib/client/BluetoothClient$8;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient;->tryRepairStaleBond(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$error:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1317
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$8;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iput-object p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$8;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$8;->val$error:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1320
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$8;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$8;->val$device:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$8;->val$error:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mstartStaleBondRepair(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    return-void
.end method
