.class public Lcom/qianhe/yct/dialog/ExitDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "ExitDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/ExitDialogFragment$OnConfirmListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogEixtBinding;


# direct methods
.method static bridge synthetic -$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/ExitDialogFragment;)Lcom/qianhe/yct/dialog/ExitDialogFragment$OnConfirmListener;
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/dialog/ExitDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogEixtBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogEixtBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/ExitDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogEixtBinding;

    .line 41
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 42
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ExitDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogEixtBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogEixtBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 43
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 46
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 49
    const-string/jumbo v1, "tip"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    const-string v2, "btnStr"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/qianhe/yct/dialog/ExitDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogEixtBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogEixtBinding;->tvDis:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ExitDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogEixtBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogEixtBinding;->tvExit:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ExitDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogEixtBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogEixtBinding;->tvExit:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ExitDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ExitDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/ExitDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ExitDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogEixtBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogEixtBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ExitDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ExitDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/ExitDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ExitDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogEixtBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogEixtBinding;->tvClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/dialog/ExitDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ExitDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/ExitDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 82
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v1, 0x3f4ccccd    # 0.8f

    .line 90
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

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 94
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/ExitDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ExitDialogFragment$4;-><init>(Lcom/qianhe/yct/dialog/ExitDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method
