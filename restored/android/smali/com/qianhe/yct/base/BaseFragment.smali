.class public abstract Lcom/qianhe/yct/base/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field private loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

.field protected mSp:Landroid/content/SharedPreferences;

.field private tipsDialogFragment:Lcom/qianhe/yct/dialog/TipsDialogFragment;

.field private toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected cancelLoadingDialog()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method protected formatCoords(DI)Ljava/lang/String;
    .locals 1

    .line 124
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-gez p3, :cond_1

    const/4 p3, 0x0

    .line 133
    :cond_1
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p1, p3, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    .line 139
    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 141
    const-string p2, "0*$"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 143
    const-string p2, "\\.$"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1

    .line 125
    :cond_3
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected formatDouble(D)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    .line 150
    const-string p1, ""

    return-object p1

    .line 153
    :cond_0
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    .line 154
    invoke-static {p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    .line 157
    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method protected formatFloat(F)Ljava/lang/String;
    .locals 2

    float-to-int v0, p1

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 99
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getCentralMeridian(D)I
    .locals 2

    .line 0
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    sub-double/2addr p1, v0

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    div-double/2addr p1, v0

    double-to-int p1, p1

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 29
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "sp"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    .line 31
    new-instance p1, Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/LoadingFragment;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    .line 32
    new-instance p1, Lcom/qianhe/yct/dialog/ToastDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/ToastDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseFragment;->toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

    .line 33
    new-instance p1, Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/TipsDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseFragment;->tipsDialogFragment:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 177
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method protected showLoadingDialog(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseFragment;->showLoadingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void
.end method

.method protected showLoadingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/dialog/LoadingFragment;->refreshTip(Ljava/lang/String;)V

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "LoadingFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget p1, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string/jumbo v1, "tip"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/dialog/LoadingFragment;->setOnCloseListener(Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    :cond_2
    return-void
.end method

.method protected declared-synchronized showTipDialog(Ljava/lang/String;Ljava/lang/String;ILcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 2

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseFragment;->tipsDialogFragment:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseFragment;->tipsDialogFragment:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseFragment;->tipsDialogFragment:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->refreshTip(Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseFragment;->tipsDialogFragment:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-virtual {p1, p4}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 82
    :cond_0
    :try_start_1
    new-instance v0, Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseFragment;->tipsDialogFragment:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    const-string/jumbo v1, "tip"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "btnStr"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-lez p3, :cond_2

    .line 86
    const-string/jumbo p1, "tipColor"

    sget p2, Lcom/qianhe/yct/R$color;->red_dark:I

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 87
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseFragment;->tipsDialogFragment:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 88
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseFragment;->tipsDialogFragment:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-virtual {p1, p4}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 89
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseFragment;->tipsDialogFragment:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string p3, "BaseFragmentTipsDialog"

    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;ILcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method protected showToastDialog(Ljava/lang/String;)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseFragment;->toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseFragment;->toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseFragment;->toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/dialog/ToastDialogFragment;->refreshTip(Ljava/lang/String;)V

    return-void

    .line 64
    :cond_0
    new-instance v0, Lcom/qianhe/yct/dialog/ToastDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/ToastDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseFragment;->toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "ToastDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    const-string/jumbo v1, "tip"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseFragment;->toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
