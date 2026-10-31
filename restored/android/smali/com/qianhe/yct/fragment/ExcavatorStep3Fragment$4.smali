.class Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$4;
.super Ljava/lang/Object;
.source "ExcavatorStep3Fragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 146
    new-instance p1, Lcom/qianhe/yct/dialog/PasswordDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/PasswordDialogFragment;-><init>()V

    .line 147
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "PasswordDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 148
    new-instance v0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$4$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$4$1;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$4;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/dialog/PasswordDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/PasswordDialogFragment$OnConfirmListener;)V

    const/4 p1, 0x0

    return p1
.end method
