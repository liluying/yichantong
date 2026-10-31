.class Lcom/qianhe/rtkclientlib/client/BluetoothClient$13;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1824
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$13;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1827
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$13;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScan()V

    return-void
.end method
