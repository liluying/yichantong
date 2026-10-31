.class Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$3;
.super Ljava/lang/Object;
.source "AppForcedUpgradeDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 106
    iget-object p1, p0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;)Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$OnCloseListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;)Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$OnCloseListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$OnCloseListener;->onClose(I)V

    :cond_1
    return-void
.end method
