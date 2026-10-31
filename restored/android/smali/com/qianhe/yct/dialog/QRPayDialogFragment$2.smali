.class Lcom/qianhe/yct/dialog/QRPayDialogFragment$2;
.super Ljava/lang/Object;
.source "QRPayDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/QRPayDialogFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/QRPayDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/QRPayDialogFragment;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/qianhe/yct/dialog/QRPayDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/QRPayDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 94
    iget-object p1, p0, Lcom/qianhe/yct/dialog/QRPayDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/QRPayDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/qianhe/yct/dialog/QRPayDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/QRPayDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/QRPayDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/QRPayDialogFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/QRPayDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/QRPayDialogFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/dialog/QRPayDialogFragment;->-$$Nest$fputmanual(Lcom/qianhe/yct/dialog/QRPayDialogFragment;Z)V

    .line 98
    iget-object p1, p0, Lcom/qianhe/yct/dialog/QRPayDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/QRPayDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/QRPayDialogFragment;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/QRPayDialogFragment;)Lcom/qianhe/yct/dialog/QRPayDialogFragment$OnCloseListener;

    return-void
.end method
