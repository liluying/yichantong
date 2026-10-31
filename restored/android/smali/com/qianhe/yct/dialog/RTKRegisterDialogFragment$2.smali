.class Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$2;
.super Ljava/lang/Object;
.source "RTKRegisterDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 94
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 95
    const-string v0, "close"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    iget-object v0, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->access$000(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 97
    iget-object p1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->-$$Nest$mclose(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)V

    return-void
.end method
