.class public Lcom/qianhe/yct/dialog/ToastDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "ToastDialogFragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogToastBinding;

.field private final dismissRunnable:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$T-HVjjkDfX_7j-e9qVA2OyiPD7g(Lcom/qianhe/yct/dialog/ToastDialogFragment;Ljava/lang/String;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ToastDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogToastBinding;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogToastBinding;->tvTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ToastDialogFragment;->scheduleAutoDismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$f1lm4HeEwIp4JxwNir9T3FQEIUg(Lcom/qianhe/yct/dialog/ToastDialogFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
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

.method public static synthetic $r8$lambda$r5NI6iIcwK3-JRprPqbHZb_ZxEM(Lcom/qianhe/yct/dialog/ToastDialogFragment;)V
    .locals 1

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ToastDialogFragment;->handler:Landroid/os/Handler;

    .line 25
    new-instance v0, Lcom/qianhe/yct/dialog/ToastDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/dialog/ToastDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/dialog/ToastDialogFragment;)V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ToastDialogFragment;->dismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private scheduleAutoDismiss()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ToastDialogFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ToastDialogFragment;->dismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ToastDialogFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ToastDialogFragment;->dismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogToastBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogToastBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/ToastDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogToastBinding;

    .line 45
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ToastDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogToastBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogToastBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 47
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 49
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ToastDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogToastBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogToastBinding;->tvTip:Landroid/widget/TextView;

    const-string/jumbo v2, "tip"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 94
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ToastDialogFragment;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/qianhe/yct/dialog/ToastDialogFragment;->dismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
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
    .locals 5

    .line 71
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v2

    const v3, 0x3e99999a    # 0.3f

    if-eqz v2, :cond_0

    const v2, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    .line 78
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v2, v4

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v4}, Landroid/view/Window;->setLayout(II)V

    .line 79
    invoke-virtual {v1, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 80
    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 82
    :cond_1
    new-instance v1, Lcom/qianhe/yct/dialog/ToastDialogFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ToastDialogFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/dialog/ToastDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 88
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ToastDialogFragment;->scheduleAutoDismiss()V

    return-void
.end method

.method public refreshTip(Ljava/lang/String;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ToastDialogFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/qianhe/yct/dialog/ToastDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/dialog/ToastDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/dialog/ToastDialogFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
