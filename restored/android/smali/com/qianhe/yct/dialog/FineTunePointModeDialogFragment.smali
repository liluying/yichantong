.class public Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "FineTunePointModeDialogFragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogFineTunePointModeBinding;


# direct methods
.method public static synthetic $r8$lambda$4f5ScyQuzyVOMSUcuu53i6iSlfs(Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$JmtwSJ24gnELHUj_Nr92DDQyPU4(Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment;->onExit()V

    return-void
.end method

.method public static synthetic $r8$lambda$Rg_xpUU8xO1fYNiO4ZIz4SRgPEA(Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 48
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment;->onExit()V

    return p2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$XST-D6Lkdbm3_cCBRGiZ0bgZvpU(Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 54
    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment;->onModeSelected(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qh7eK_2zowraxGXPZ2f_4GteEm0(Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment;->onModeSelected(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    return-void
.end method

.method private onExit()V
    .locals 3

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    const-string v1, "confirm"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private onModeSelected(I)V
    .locals 3

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    const-string v1, "confirm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    const-string v1, "fineTunePointModeValue"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogFineTunePointModeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogFineTunePointModeBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFineTunePointModeBinding;

    .line 36
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFineTunePointModeBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogFineTunePointModeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 38
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 40
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    const-string v1, "requestKey"

    const-string v2, "fine_tune_point_mode"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    .line 47
    :cond_1
    new-instance v0, Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 54
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFineTunePointModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogFineTunePointModeBinding;->tvStepByStep:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFineTunePointModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogFineTunePointModeBinding;->tvOneClick:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFineTunePointModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogFineTunePointModeBinding;->tvExit:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onStart()V
    .locals 4

    .line 77
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v2, 0x3f59999a    # 0.85f

    .line 84
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v2, v3

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    const v2, 0x3e99999a    # 0.3f

    .line 85
    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 86
    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 88
    :cond_1
    new-instance v1, Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method
