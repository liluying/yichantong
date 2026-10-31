.class public final synthetic Lcom/qianhe/yct/utils/BluetoothBondHelper$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic f$2:Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;

.field public final synthetic f$3:I

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;IJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1$$ExternalSyntheticLambda2;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1$$ExternalSyntheticLambda2;->f$1:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1$$ExternalSyntheticLambda2;->f$2:Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;

    iput p4, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1$$ExternalSyntheticLambda2;->f$3:I

    iput-wide p5, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1$$ExternalSyntheticLambda2;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1$$ExternalSyntheticLambda2;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1$$ExternalSyntheticLambda2;->f$1:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1$$ExternalSyntheticLambda2;->f$2:Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;

    iget v3, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1$$ExternalSyntheticLambda2;->f$3:I

    iget-wide v4, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1$$ExternalSyntheticLambda2;->f$4:J

    invoke-static/range {v0 .. v5}, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->$r8$lambda$aw0VBOLoD35lEI2FAZ-kDn9WKL0(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;IJ)V

    return-void
.end method
