.class public final synthetic Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/fragment/BluetoothFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/fragment/BluetoothFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda2;->f$0:Lcom/qianhe/yct/fragment/BluetoothFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda2;->f$0:Lcom/qianhe/yct/fragment/BluetoothFragment;

    check-cast p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    invoke-static {v0, p1}, Lcom/qianhe/yct/fragment/BluetoothFragment;->$r8$lambda$H9gyvlhtNERSG-jYaQQn6Nv2xxc(Lcom/qianhe/yct/fragment/BluetoothFragment;Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V

    return-void
.end method
