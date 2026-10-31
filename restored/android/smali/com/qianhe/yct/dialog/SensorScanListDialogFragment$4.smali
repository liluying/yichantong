.class Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$4;
.super Ljava/lang/Object;
.source "SensorScanListDialogFragment.java"

# interfaces
.implements Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->startScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelBond(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 158
    const-string p1, "loglog"

    const-string v0, "======cancelBond======"

    nop

    nop

    nop

    .line 159
    iget-object p1, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->tvScan:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 160
    iget-object p1, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->tvScan:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->rescan_ble:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onBonding(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 165
    const-string p1, "loglog"

    const-string v0, "======onBonding======"

    nop

    nop

    nop

    return-void
.end method

.method public onDeviceScan(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "======onDeviceScan======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loglog"

    nop

    nop

    nop

    .line 136
    iget-object v0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->-$$Nest$fgetadapter(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)Lcom/qianhe/yct/adapter/SensorScanListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/adapter/SensorScanListAdapter;->addData(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 137
    iget-object p1, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public onScanFail()V
    .locals 2

    .line 150
    const-string v0, "loglog"

    const-string v1, "======onScanFail======"

    nop

    nop

    nop

    .line 151
    iget-object v0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->tvScan:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 152
    iget-object v0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->tvScan:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->rescan_ble:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    iget-object v0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onScanFinished()V
    .locals 2

    .line 142
    const-string v0, "loglog"

    const-string v1, "======onScanFinished======"

    nop

    nop

    nop

    .line 143
    iget-object v0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->tvScan:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 144
    iget-object v0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->tvScan:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->rescan_ble:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 145
    iget-object v0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
