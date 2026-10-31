.class public Lcom/qianhe/yct/dialog/ShareWayDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "ShareWayDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/ShareWayDialogFragment$OnConfirmListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogShareWayBinding;

.field private listener:Lcom/qianhe/yct/dialog/ShareWayDialogFragment$OnConfirmListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/ShareWayDialogFragment;)Lcom/qianhe/yct/dialog/ShareWayDialogFragment$OnConfirmListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/ShareWayDialogFragment;->listener:Lcom/qianhe/yct/dialog/ShareWayDialogFragment$OnConfirmListener;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogShareWayBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogShareWayBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/ShareWayDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogShareWayBinding;

    .line 42
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareWayDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogShareWayBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogShareWayBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 44
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 47
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 50
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareWayDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogShareWayBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogShareWayBinding;->tvContent:Landroid/widget/TextView;

    const-string/jumbo v2, "tip"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareWayDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogShareWayBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogShareWayBinding;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "tipColor"

    sget v4, Lcom/qianhe/yct/R$color;->theme:I

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    const-string v1, "btnStr"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    const-string v2, "cancelStr"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/qianhe/yct/dialog/ShareWayDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogShareWayBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogShareWayBinding;->tvCopy:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareWayDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogShareWayBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogShareWayBinding;->tvShare:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareWayDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogShareWayBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogShareWayBinding;->tvCopy:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ShareWayDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ShareWayDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/ShareWayDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareWayDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogShareWayBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogShareWayBinding;->tvShare:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ShareWayDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ShareWayDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/ShareWayDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 107
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 81
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v1, 0x3f4ccccd    # 0.8f

    .line 89
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    const v1, 0x3e99999a    # 0.3f

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 93
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/ShareWayDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ShareWayDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/ShareWayDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public setOnConfirmListener(Lcom/qianhe/yct/dialog/ShareWayDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ShareWayDialogFragment;->listener:Lcom/qianhe/yct/dialog/ShareWayDialogFragment$OnConfirmListener;

    return-void
.end method
