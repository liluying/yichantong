.class Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$2;
.super Ljava/lang/Object;
.source "CorsChangesDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 82
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 83
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;)Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;)Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;->onClose()V

    .line 84
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string v0, "confirm"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    const-string v0, "manual_cancel"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->access$100(Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
