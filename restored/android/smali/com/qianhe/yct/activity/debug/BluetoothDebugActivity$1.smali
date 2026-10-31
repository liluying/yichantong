.class Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$1;
.super Ljava/lang/Object;
.source "BluetoothDebugActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$1;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 85
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$1;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->btnScan:Landroid/widget/Button;

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$1;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->btnScan:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 86
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$1;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgettipDialogFragment(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/dialog/ToastDialogFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$1;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ToastDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$1;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->btnScan:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    const-string/jumbo v0, "tip"

    if-eqz p1, :cond_0

    .line 88
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$1;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    sget v2, Lcom/qianhe/yct/R$string;->start_scan:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$1;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgettipDialogFragment(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/dialog/ToastDialogFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 91
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$1;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$mstartScan(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)V

    return-void

    .line 93
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$1;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    sget v2, Lcom/qianhe/yct/R$string;->stop_scan:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$1;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgettipDialogFragment(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/dialog/ToastDialogFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 96
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$1;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$mstopScan(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)V

    return-void
.end method
