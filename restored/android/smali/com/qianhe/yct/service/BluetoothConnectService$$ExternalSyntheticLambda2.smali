.class public final synthetic Lcom/qianhe/yct/service/BluetoothConnectService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/service/BluetoothConnectService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/service/BluetoothConnectService;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$$ExternalSyntheticLambda2;->f$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    iput p2, p0, Lcom/qianhe/yct/service/BluetoothConnectService$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/service/BluetoothConnectService$$ExternalSyntheticLambda2;->f$0:Lcom/qianhe/yct/service/BluetoothConnectService;

    iget v1, p0, Lcom/qianhe/yct/service/BluetoothConnectService$$ExternalSyntheticLambda2;->f$1:I

    invoke-static {v0, v1}, Lcom/qianhe/yct/service/BluetoothConnectService;->$r8$lambda$MddLUpyr7eKL08eaeFoAw6DCOZU(Lcom/qianhe/yct/service/BluetoothConnectService;I)V

    return-void
.end method
