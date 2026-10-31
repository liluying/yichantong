.class Lcom/qianhe/yct/activity/RTKInfoActivity$16;
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

    .line 462
    iput-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$16;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 465
    const-string p1, "sensor_scan"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 466
    const-string v0, "confirm"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    if-eqz p1, :cond_0

    .line 469
    new-instance p1, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;-><init>()V

    .line 470
    iget-object p2, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$16;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v0, "SensorScanListDialogFragment"

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 471
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 472
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$16;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    sget v1, Lcom/qianhe/yct/R$string;->please_select_sensor:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v0, "requestKey"

    const-string v1, "sensorscanlist"

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
