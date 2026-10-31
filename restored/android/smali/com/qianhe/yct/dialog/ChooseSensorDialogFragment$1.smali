.class Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$1;
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

    .line 135
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 138
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 139
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 140
    const-string v0, "manual_cancel"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->access$000(Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
