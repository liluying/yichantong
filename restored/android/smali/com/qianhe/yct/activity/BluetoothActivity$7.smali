.class Lcom/qianhe/yct/activity/BluetoothActivity$7;
.super Ljava/lang/Object;
.source "BluetoothActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/BluetoothActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/BluetoothActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/BluetoothActivity;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$7;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 1

    .line 287
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$7;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/BluetoothActivity;)Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvScan:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->rescan_ble:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 288
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$7;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/BluetoothActivity;)Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity$7;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity$7;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/BluetoothActivity;->notifyStartScan()V

    :cond_0
    return-void
.end method
