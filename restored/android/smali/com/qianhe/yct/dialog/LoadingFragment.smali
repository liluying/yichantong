.class public Lcom/qianhe/yct/dialog/LoadingFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "LoadingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogLoadingBinding;

.field private closeNotified:Z

.field private listener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

.field private manual:Z

.field private tag:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$PRxZ9S3433JuDJKwsBQTeScea14(Lcom/qianhe/yct/dialog/LoadingFragment;Ljava/lang/String;)V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/qianhe/yct/dialog/LoadingFragment;->binding:Lcom/qianhe/yct/databinding/DialogLoadingBinding;

    if-eqz p0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/qianhe/yct/databinding/DialogLoadingBinding;->tvTip:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmanual(Lcom/qianhe/yct/dialog/LoadingFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/LoadingFragment;->manual:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCloseOnce(Lcom/qianhe/yct/dialog/LoadingFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/LoadingFragment;->notifyCloseOnce()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    return-void
.end method

.method private notifyCloseOnce()V
    .locals 2

    .line 82
    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/LoadingFragment;->closeNotified:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/LoadingFragment;->listener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 85
    iput-boolean v1, p0, Lcom/qianhe/yct/dialog/LoadingFragment;->closeNotified:Z

    .line 86
    iget-boolean v1, p0, Lcom/qianhe/yct/dialog/LoadingFragment;->manual:Z

    invoke-interface {v0, v1}, Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;->onClose(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogLoadingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogLoadingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/LoadingFragment;->binding:Lcom/qianhe/yct/databinding/DialogLoadingBinding;

    .line 46
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    iget-object v0, p0, Lcom/qianhe/yct/dialog/LoadingFragment;->binding:Lcom/qianhe/yct/databinding/DialogLoadingBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogLoadingBinding;->getRoot()Landroid/widget/LinearLayout;

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

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 54
    const-string/jumbo v1, "tip"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/qianhe/yct/dialog/LoadingFragment;->binding:Lcom/qianhe/yct/databinding/DialogLoadingBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogLoadingBinding;->tvTip:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v1, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const-string/jumbo v1, "tag"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/LoadingFragment;->tag:Ljava/lang/String;

    .line 59
    :cond_2
    new-instance v0, Lcom/qianhe/yct/dialog/LoadingFragment$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/dialog/LoadingFragment$1;-><init>(Lcom/qianhe/yct/dialog/LoadingFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 69
    iget-object v0, p0, Lcom/qianhe/yct/dialog/LoadingFragment;->binding:Lcom/qianhe/yct/databinding/DialogLoadingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogLoadingBinding;->tvClose:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/LoadingFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/LoadingFragment$2;-><init>(Lcom/qianhe/yct/dialog/LoadingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/LoadingFragment;->notifyCloseOnce()V

    .line 138
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 140
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

    .line 106
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/LoadingFragment;->manual:Z

    .line 108
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/LoadingFragment;->closeNotified:Z

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 111
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 115
    const-string/jumbo v1, "upgrade"

    iget-object v2, p0, Lcom/qianhe/yct/dialog/LoadingFragment;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0x3f19999a    # 0.6f

    .line 119
    :cond_1
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

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 123
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/LoadingFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/LoadingFragment$3;-><init>(Lcom/qianhe/yct/dialog/LoadingFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_3
    return-void
.end method

.method public refreshTip(Ljava/lang/String;)V
    .locals 2

    .line 90
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/dialog/LoadingFragment;->binding:Lcom/qianhe/yct/databinding/DialogLoadingBinding;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogLoadingBinding;->tvTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    .line 96
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/qianhe/yct/dialog/LoadingFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/dialog/LoadingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/dialog/LoadingFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setOnCloseListener(Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/qianhe/yct/dialog/LoadingFragment;->listener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/LoadingFragment;->closeNotified:Z

    return-void
.end method
