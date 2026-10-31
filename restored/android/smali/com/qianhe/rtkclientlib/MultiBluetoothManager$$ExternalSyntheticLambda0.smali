.class public final synthetic Lcom/qianhe/rtkclientlib/MultiBluetoothManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

.field public final synthetic f$1:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

.field public final synthetic f$6:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;ZZLjava/lang/String;Lcom/qianhe/rtkclientlib/client/BluetoothClient;Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    iput-object p2, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$$ExternalSyntheticLambda0;->f$1:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iput-boolean p3, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$$ExternalSyntheticLambda0;->f$2:Z

    iput-boolean p4, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$$ExternalSyntheticLambda0;->f$3:Z

    iput-object p5, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$$ExternalSyntheticLambda0;->f$5:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iput-object p7, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$$ExternalSyntheticLambda0;->f$6:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$$ExternalSyntheticLambda0;->f$1:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-boolean v2, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$$ExternalSyntheticLambda0;->f$2:Z

    iget-boolean v3, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$$ExternalSyntheticLambda0;->f$3:Z

    iget-object v4, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$$ExternalSyntheticLambda0;->f$5:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-object v6, p0, Lcom/qianhe/rtkclientlib/MultiBluetoothManager$$ExternalSyntheticLambda0;->f$6:Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;

    invoke-static/range {v0 .. v6}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->$r8$lambda$N0QP4n4phY3J-UCm5ayY2CkXcOQ(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;ZZLjava/lang/String;Lcom/qianhe/rtkclientlib/client/BluetoothClient;Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;)V

    return-void
.end method
