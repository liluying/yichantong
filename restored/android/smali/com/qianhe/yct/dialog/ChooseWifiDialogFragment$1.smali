.class Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$1;
.super Ljava/lang/Object;
.source "ChooseWifiDialogFragment.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/ChooseWifiAdapter$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(I)V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->-$$Nest$fgetonConfirmListener(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;)Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$OnConfirmListener;

    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->-$$Nest$fgetmList(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 73
    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 74
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->access$000(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 75
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
