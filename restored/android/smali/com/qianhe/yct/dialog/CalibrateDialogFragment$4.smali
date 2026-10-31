.class Lcom/qianhe/yct/dialog/CalibrateDialogFragment$4;
.super Ljava/lang/Object;
.source "CalibrateDialogFragment.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 197
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    const-string p1, "sensor_myBluetoothDevice"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    .line 199
    iget-object p2, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->find(Landroidx/fragment/app/FragmentManager;)Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    move-result-object p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 201
    invoke-virtual {p2, p1}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->setChooseDevice(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;->onConfirm()V

    :cond_2
    :goto_0
    return-void
.end method
