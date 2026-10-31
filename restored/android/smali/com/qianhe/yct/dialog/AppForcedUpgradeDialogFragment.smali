.class public Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "AppForcedUpgradeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$OnCloseListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogAppForcedUpgradeBinding;

.field private listener:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$OnCloseListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;)Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$OnCloseListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;->listener:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$OnCloseListener;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogAppForcedUpgradeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogAppForcedUpgradeBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogAppForcedUpgradeBinding;

    .line 46
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    iget-object v0, p0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogAppForcedUpgradeBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogAppForcedUpgradeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 48
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 51
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 55
    const-string/jumbo v2, "tip"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    const-string/jumbo v3, "state"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 57
    iget-object v3, p0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogAppForcedUpgradeBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/DialogAppForcedUpgradeBinding;->tvTip:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 59
    iget-object v1, p0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogAppForcedUpgradeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogAppForcedUpgradeBinding;->pb:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v1, p0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogAppForcedUpgradeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogAppForcedUpgradeBinding;->tvInstall:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :cond_1
    new-instance v0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 74
    iget-object v0, p0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogAppForcedUpgradeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogAppForcedUpgradeBinding;->tvInstall:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 117
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 118
    iget-object p1, p0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;->listener:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$OnCloseListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;->listener:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$OnCloseListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$OnCloseListener;->onClose(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 90
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v3, 0x3f19999a    # 0.6f

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    const v2, 0x3e99999a    # 0.3f

    .line 99
    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 100
    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 102
    :cond_0
    new-instance v1, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    return-void
.end method

.method public refreshTip(Ljava/lang/String;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogAppForcedUpgradeBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogAppForcedUpgradeBinding;->tvTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOnCloseListener(Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$OnCloseListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;->listener:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$OnCloseListener;

    return-void
.end method
