.class public final synthetic Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/fragment/BluetoothFragment;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/qianhe/baselib/enums/DeviceType;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/fragment/BluetoothFragment;Landroid/content/Context;Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda4;->f$0:Lcom/qianhe/yct/fragment/BluetoothFragment;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda4;->f$2:Lcom/qianhe/baselib/enums/DeviceType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda4;->f$0:Lcom/qianhe/yct/fragment/BluetoothFragment;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/BluetoothFragment$$ExternalSyntheticLambda4;->f$2:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/fragment/BluetoothFragment;->$r8$lambda$y8cwxDKWECBZIeUnddkZ4DUlzsk(Lcom/qianhe/yct/fragment/BluetoothFragment;Landroid/content/Context;Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void
.end method
