.class Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$1;
.super Ljava/lang/Object;
.source "SensorScanListDialogFragment.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/SensorScanListAdapter$OnActionListener;


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

    .line 84
    iput-object p1, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 2

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    const-string v1, "sensor_myBluetoothDevice"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 89
    iget-object p1, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v1, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->access$000(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 90
    iget-object p1, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
