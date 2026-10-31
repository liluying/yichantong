.class Lcom/qianhe/yct/dialog/ChooseListDialogFragment$1;
.super Ljava/lang/Object;
.source "ChooseListDialogFragment.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/ChooseListAdapter$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/ChooseListDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ChooseListDialogFragment;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(I)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->-$$Nest$fgetonConfirmListener(Lcom/qianhe/yct/dialog/ChooseListDialogFragment;)Lcom/qianhe/yct/dialog/ChooseListDialogFragment$OnConfirmListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->-$$Nest$fgetonConfirmListener(Lcom/qianhe/yct/dialog/ChooseListDialogFragment;)Lcom/qianhe/yct/dialog/ChooseListDialogFragment$OnConfirmListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment$OnConfirmListener;->onConfirm(I)V

    .line 89
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->-$$Nest$fgetmList(Lcom/qianhe/yct/dialog/ChooseListDialogFragment;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 91
    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 92
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->access$000(Lcom/qianhe/yct/dialog/ChooseListDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 93
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onDel(I)V
    .locals 3

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->-$$Nest$fgetmList(Lcom/qianhe/yct/dialog/ChooseListDialogFragment;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 100
    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 101
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "delete"

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
