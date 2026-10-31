.class public final Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;
.super Ljava/lang/Object;
.source "NotFixedSolutionTipHelper.java"


# instance fields
.field private dialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

.field private dismissedManually:Z

.field private final fragment:Landroidx/fragment/app/Fragment;

.field private lastTipRes:I


# direct methods
.method static bridge synthetic -$$Nest$fputdialog(Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;Lcom/qianhe/yct/dialog/TipsDialogFragment;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->dialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdismissedManually(Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->dismissedManually:Z

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->fragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private check(ZLcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-direct {p0, p2}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->resolve(Lcom/qianhe/baselib/bean/GGAEntity;)Lcom/qianhe/baselib/bean/GGAEntity;

    move-result-object p2

    .line 62
    invoke-static {p2}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->isFixed(Lcom/qianhe/baselib/bean/GGAEntity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->dismissedManually:Z

    .line 64
    invoke-virtual {p0}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->dismiss()V

    return-void

    :cond_1
    if-nez p2, :cond_2

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 70
    iget-boolean p1, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->dismissedManually:Z

    if-eqz p1, :cond_3

    :goto_0
    return-void

    .line 71
    :cond_3
    invoke-direct {p0, p2}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->show(Lcom/qianhe/baselib/bean/GGAEntity;)V

    return-void
.end method

.method private findDialog()Lcom/qianhe/yct/dialog/TipsDialogFragment;
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->dialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->dialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->dialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NotFixedSolutionDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 115
    instance-of v1, v0, Lcom/qianhe/yct/dialog/TipsDialogFragment;

    if-eqz v1, :cond_1

    .line 116
    check-cast v0, Lcom/qianhe/yct/dialog/TipsDialogFragment;

    iput-object v0, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->dialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isFixed(Lcom/qianhe/baselib/bean/GGAEntity;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 131
    iget p0, p0, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private resolve(Lcom/qianhe/baselib/bean/GGAEntity;)Lcom/qianhe/baselib/bean/GGAEntity;
    .locals 0

    if-eqz p1, :cond_0

    return-object p1

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/qianhe/yct/base/BaseActivity;

    if-eqz p1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object p1, p1, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private show(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 3

    .line 75
    invoke-static {p1}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->tipRes(Lcom/qianhe/baselib/bean/GGAEntity;)I

    move-result p1

    .line 76
    iget-object v0, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-direct {p0}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->findDialog()Lcom/qianhe/yct/dialog/TipsDialogFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 79
    iget v2, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->lastTipRes:I

    if-eq p1, v2, :cond_0

    .line 80
    invoke-virtual {v1, v0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->refreshTip(Ljava/lang/String;)V

    .line 81
    iput p1, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->lastTipRes:I

    :cond_0
    return-void

    .line 85
    :cond_1
    iput p1, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->lastTipRes:I

    .line 86
    new-instance p1, Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/TipsDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->dialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    .line 87
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 88
    const-string/jumbo v1, "tip"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->fragment:Landroidx/fragment/app/Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "btnStr"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "requestKey"

    const-string v1, "not_fixed_solution"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->dialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 92
    iget-object p1, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->dialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    new-instance v0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper$1;-><init>(Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 107
    iget-object p1, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->dialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    iget-object v0, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NotFixedSolutionDialog"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static tipRes(Lcom/qianhe/baselib/bean/GGAEntity;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 135
    :cond_0
    iget p0, p0, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    :goto_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 137
    sget p0, Lcom/qianhe/yct/R$string;->not_fixed_solution_check_diff_config:I

    return p0

    .line 139
    :cond_1
    sget p0, Lcom/qianhe/yct/R$string;->not_fixed_solution_ensure_leveling_signal:I

    return p0
.end method


# virtual methods
.method public checkOnContinue(Lcom/qianhe/baselib/bean/GGAEntity;)Z
    .locals 1

    const/4 v0, 0x1

    .line 47
    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->check(ZLcom/qianhe/baselib/bean/GGAEntity;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->resolve(Lcom/qianhe/baselib/bean/GGAEntity;)Lcom/qianhe/baselib/bean/GGAEntity;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->isFixed(Lcom/qianhe/baselib/bean/GGAEntity;)Z

    move-result p1

    return p1
.end method

.method public dismiss()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->findDialog()Lcom/qianhe/yct/dialog/TipsDialogFragment;

    move-result-object v0

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->dialog:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public onGgaUpdated(Lcom/qianhe/baselib/bean/GGAEntity;Z)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 42
    invoke-direct {p0, p2, p1}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->check(ZLcom/qianhe/baselib/bean/GGAEntity;)V

    return-void
.end method

.method public onPagePause()V
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->dismiss()V

    return-void
.end method

.method public onPageResume(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->dismissedManually:Z

    .line 33
    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->check(ZLcom/qianhe/baselib/bean/GGAEntity;)V

    return-void
.end method
