.class Lcom/qianhe/yct/dialog/PasswordDialogFragment$1;
.super Ljava/lang/Object;
.source "PasswordDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/PasswordDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/PasswordDialogFragment;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$fmt:Ljava/text/SimpleDateFormat;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/PasswordDialogFragment;Ljava/text/SimpleDateFormat;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/PasswordDialogFragment;

    iput-object p2, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment$1;->val$fmt:Ljava/text/SimpleDateFormat;

    iput-object p3, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 71
    iget-object p1, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/PasswordDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/PasswordDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/PasswordDialogFragment;)Lcom/qianhe/yct/databinding/DialogPasswordBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogPasswordBinding;->edtPassword:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/PasswordDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/PasswordDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/PasswordDialogFragment;)Lcom/qianhe/yct/databinding/DialogPasswordBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogPasswordBinding;->error:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/PasswordDialogFragment;

    sget v1, Lcom/qianhe/yct/R$string;->password_empty:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/PasswordDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/PasswordDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/PasswordDialogFragment;)Lcom/qianhe/yct/databinding/DialogPasswordBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogPasswordBinding;->edtPassword:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment$1;->val$fmt:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/PasswordDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/PasswordDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/PasswordDialogFragment;)Lcom/qianhe/yct/databinding/DialogPasswordBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogPasswordBinding;->error:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->password_error:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 77
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/PasswordDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/PasswordDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/PasswordDialogFragment;)Lcom/qianhe/yct/dialog/PasswordDialogFragment$OnConfirmListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/PasswordDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/PasswordDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/PasswordDialogFragment;)Lcom/qianhe/yct/dialog/PasswordDialogFragment$OnConfirmListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/qianhe/yct/dialog/PasswordDialogFragment$OnConfirmListener;->onConfirm()V

    .line 78
    :cond_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 79
    const-string v0, "confirm"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    iget-object v0, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/PasswordDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/PasswordDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/PasswordDialogFragment;->access$000(Lcom/qianhe/yct/dialog/PasswordDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 81
    iget-object p1, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 85
    :goto_1
    iget-object p1, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/PasswordDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/PasswordDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/PasswordDialogFragment;)Lcom/qianhe/yct/databinding/DialogPasswordBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogPasswordBinding;->edtPassword:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
