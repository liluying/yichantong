.class Lcom/qianhe/yct/dialog/ChooseListDialogFragment$3;
.super Ljava/lang/Object;
.source "ChooseListDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/ChooseListDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ChooseListDialogFragment;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method
