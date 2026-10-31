.class public Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "DifferentialInterruptDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment$OnConfirmListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;

.field private manual:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;)Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment$OnConfirmListener;
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmanual(Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;->manual:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;

    .line 64
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    iget-object v1, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;

    invoke-virtual {v1}, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 69
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 72
    iget-object v3, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;->tvContent:Landroid/widget/TextView;

    const-string/jumbo v4, "tip"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v3, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "tipColor"

    sget v6, Lcom/qianhe/yct/R$color;->theme:I

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    const-string v3, "btnStr"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    const-string v4, "cancelStr"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    const-string v5, "requestKey"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    .line 77
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    sget v5, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget v5, Lcom/qianhe/yct/R$string;->close:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;->tvCancel:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object p1, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;->tvSure:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v5, v6}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 82
    iget-object p1, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;->tvSure:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {p1}, Lcom/qianhe/yct/base/BaseActivity;->allowRotateScreen()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 85
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 87
    :cond_3
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;->tvSure:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_5
    const-string p1, "hintTip"

    invoke-virtual {v2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 91
    iget-object v2, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;->tvHint:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v1, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;->tvHint:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_6
    new-instance p1, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment$1;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 110
    iget-object p1, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;->tvSure:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object p1, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogDiffInterruptBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 172
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 177
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 178
    const-string v0, "confirm"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 179
    const-string v0, "manual_cancel"

    iget-boolean v1, p0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;->manual:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 142
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v1, 0x3f4ccccd    # 0.8f

    .line 150
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

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 153
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3e8

    .line 155
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 158
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment$5;-><init>(Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method
