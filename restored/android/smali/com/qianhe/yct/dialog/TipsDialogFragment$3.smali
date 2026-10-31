.class Lcom/qianhe/yct/dialog/TipsDialogFragment$3;
.super Ljava/lang/Object;
.source "TipsDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/TipsDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/TipsDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/TipsDialogFragment;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 158
    iget-object p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->-$$Nest$fputresultDispatched(Lcom/qianhe/yct/dialog/TipsDialogFragment;Z)V

    .line 159
    iget-object p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->-$$Nest$mnotifyConfirm(Lcom/qianhe/yct/dialog/TipsDialogFragment;)V

    .line 160
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 161
    const-string v1, "confirm"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    iget-object v0, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->access$100(Lcom/qianhe/yct/dialog/TipsDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 163
    iget-object p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
