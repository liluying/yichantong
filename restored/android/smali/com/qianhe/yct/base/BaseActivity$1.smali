.class Lcom/qianhe/yct/base/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/base/BaseActivity;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$1;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 318
    const-string v0, "gotoconnect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 319
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 321
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$1;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$fgetforcedUpgradeDialog(Lcom/qianhe/yct/base/BaseActivity;)Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$1;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$fgetforcedUpgradeDialog(Lcom/qianhe/yct/base/BaseActivity;)Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$1;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$fgetforcedUpgradeDialog(Lcom/qianhe/yct/base/BaseActivity;)Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 322
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$1;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$fgetupgradeDialog(Lcom/qianhe/yct/base/BaseActivity;)Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$1;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$fgetupgradeDialog(Lcom/qianhe/yct/base/BaseActivity;)Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$1;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$fgetupgradeDialog(Lcom/qianhe/yct/base/BaseActivity;)Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 323
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$1;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {p1}, Lcom/qianhe/yct/base/BaseActivity;->gotoBluetoothActivity()V

    :cond_2
    return-void
.end method
