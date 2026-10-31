.class Lcom/qianhe/yct/activity/RTKInfoActivity$17;
.super Ljava/lang/Object;
.source "RTKInfoActivity.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/RTKInfoActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$17;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 482
    const-string p1, "sensor_myBluetoothDevice"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    .line 483
    iget-object p2, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$17;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->find(Landroidx/fragment/app/FragmentManager;)Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    move-result-object p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 485
    invoke-virtual {p2, p1}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->setChooseDevice(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    :cond_0
    return-void
.end method
