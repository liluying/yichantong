.class Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$2;
.super Ljava/lang/Object;
.source "CheckBasestationDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 91
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 92
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;)Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$OnConfirmListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;)Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$OnConfirmListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$OnConfirmListener;->onClose()V

    .line 93
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 94
    const-string v0, "confirm"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    const-string v0, "manual_cancel"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->access$100(Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
