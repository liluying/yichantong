.class Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$8;
.super Ljava/lang/Object;
.source "ExcavatorChoiceModeFragment.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$8;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 200
    const-string p1, "sensor_myBluetoothDevice"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    .line 201
    iget-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$8;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->find(Landroidx/fragment/app/FragmentManager;)Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    move-result-object p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p2, p1}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->setChooseDevice(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    :cond_0
    return-void
.end method
