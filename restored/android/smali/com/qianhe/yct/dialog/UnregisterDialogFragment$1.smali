.class Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;
.super Ljava/lang/Object;
.source "UnregisterDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/UnregisterDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/UnregisterDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/UnregisterDialogFragment;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/UnregisterDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 67
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/UnregisterDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/UnregisterDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/UnregisterDialogFragment;)Lcom/qianhe/yct/databinding/DialogUnregisterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogUnregisterBinding;->edtPassword:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/text/Editable;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/UnregisterDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/UnregisterDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/UnregisterDialogFragment;)Lcom/qianhe/yct/databinding/DialogUnregisterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogUnregisterBinding;->error:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/UnregisterDialogFragment;

    sget v1, Lcom/qianhe/yct/R$string;->password_empty:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/UnregisterDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    .line 73
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/UnregisterDialogFragment;

    sget v2, Lcom/qianhe/yct/R$string;->sure_want_unregister_account:I

    .line 74
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/UnregisterDialogFragment;

    sget v3, Lcom/qianhe/yct/R$string;->confirm:I

    .line 75
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/UnregisterDialogFragment;

    sget v4, Lcom/qianhe/yct/R$string;->cancel:I

    .line 76
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/UnregisterDialogFragment;

    sget v5, Lcom/qianhe/yct/R$string;->unregister_account_tips:I

    .line 77
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1$1;

    invoke-direct {v6, p0, v1, p1}, Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1$1;-><init>(Lcom/qianhe/yct/dialog/UnregisterDialogFragment$1;Lcom/qianhe/yct/base/BaseActivity;Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
