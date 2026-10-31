.class Lcom/qianhe/yct/dialog/CalibrateDialogFragment$3;
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

    .line 174
    iput-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 177
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    const-string p1, "sensor_scan"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 180
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "SensorScanListDialogFragment"

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 181
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return-void

    .line 182
    :cond_1
    new-instance p1, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;-><init>()V

    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    sget v2, Lcom/qianhe/yct/R$string;->please_select_sensor:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "requestKey"

    const-string v2, "sensorscanlist"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 187
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 189
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
