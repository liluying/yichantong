.class Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$3;
.super Ljava/lang/Object;
.source "SensorScanListDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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

    .line 100
    iput-object p1, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->tvScan:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->tvScan:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 104
    iget-object p1, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->tvScan:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->-$$Nest$mstartScan(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)V

    return-void

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object p1, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->tvScan:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->rescan_ble:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object p1, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->-$$Nest$fgetbluetoothClient(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScan()V

    return-void
.end method
