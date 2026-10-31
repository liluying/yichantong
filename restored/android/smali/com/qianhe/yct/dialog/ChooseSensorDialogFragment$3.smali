.class Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$3;
.super Ljava/lang/Object;
.source "ChooseSensorDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 164
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;->tvNext:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    sget v1, Lcom/qianhe/yct/R$string;->next:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 166
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 167
    const-string v0, "confirm"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->access$300(Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogChooseSensorBinding;->tvNext:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    sget v1, Lcom/qianhe/yct/R$string;->disconnect1:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 170
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->-$$Nest$mdisconnectSensor(Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;)V

    :cond_1
    return-void
.end method
