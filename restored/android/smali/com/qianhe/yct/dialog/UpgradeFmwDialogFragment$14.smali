.class Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$14;
.super Ljava/lang/Object;
.source "UpgradeFmwDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$14;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 679
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$14;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 680
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$14;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$14;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 682
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$14;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$14;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$14;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$14;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetmanual(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;->onClose(I)V

    :cond_1
    return-void
.end method
