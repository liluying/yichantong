.class public Lcom/qianhe/yct/dialog/TipsDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "TipsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogTipsBinding;

.field private listener:Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;

.field private listenerNotified:Z

.field private manual:Z

.field private resultDispatched:Z


# direct methods
.method static bridge synthetic -$$Nest$fputresultDispatched(Lcom/qianhe/yct/dialog/TipsDialogFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->resultDispatched:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDialogDismissSideEffects(Lcom/qianhe/yct/dialog/TipsDialogFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->handleDialogDismissSideEffects()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyConfirm(Lcom/qianhe/yct/dialog/TipsDialogFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->notifyConfirm()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mperformClose(Lcom/qianhe/yct/dialog/TipsDialogFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->performClose()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldPerformCloseOnBack(Lcom/qianhe/yct/dialog/TipsDialogFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->shouldPerformCloseOnBack()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/dialog/TipsDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/dialog/TipsDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    return-object p0
.end method

.method private handleDialogDismissSideEffects()V
    .locals 1

    .line 227
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->isConfigChangeDismiss()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->resultDispatched:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, v0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->notifyClose(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private isConfigChangeDismiss()Z
    .locals 1

    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private notifyClose(Z)V
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->listenerNotified:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->listenerNotified:Z

    .line 190
    iget-object v0, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->listener:Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;

    if-eqz v0, :cond_1

    .line 191
    invoke-interface {v0, p1}, Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;->onClose(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyConfirm()V
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->listenerNotified:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->listenerNotified:Z

    .line 180
    iget-object v0, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->listener:Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;

    if-eqz v0, :cond_1

    .line 181
    invoke-interface {v0}, Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;->onConfirm()V

    :cond_1
    :goto_0
    return-void
.end method

.method private performClose()V
    .locals 4

    .line 206
    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->resultDispatched:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->resultDispatched:Z

    .line 208
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->manual:Z

    .line 209
    invoke-direct {p0, v0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->notifyClose(Z)V

    .line 210
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 212
    const-string v2, "confirm"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 213
    const-string v2, "manual_cancel"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 217
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_1
    return-void
.end method

.method private shouldPerformCloseOnBack()Z
    .locals 2

    .line 197
    const-string v0, "check_accuracy"

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "not_support_replace_bucket"

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "appliedtoh5network"

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "appliedtoh5radio"

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bluetooth_pairing"

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    .line 235
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->shouldPerformCloseOnBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->resultDispatched:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->resultDispatched:Z

    .line 237
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->manual:Z

    .line 238
    invoke-direct {p0, v0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->notifyClose(Z)V

    .line 239
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 240
    const-string v2, "confirm"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    const-string v2, "manual_cancel"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 244
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/DialogTipsBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogTipsBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogTipsBinding;

    .line 91
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    iget-object v1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogTipsBinding;

    invoke-virtual {v1}, Lcom/qianhe/yct/databinding/DialogTipsBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 94
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 96
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 99
    iget-object v3, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogTipsBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/DialogTipsBinding;->tvContent:Landroid/widget/TextView;

    const-string/jumbo v4, "tip"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v3, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogTipsBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/DialogTipsBinding;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "tipColor"

    sget v6, Lcom/qianhe/yct/R$color;->theme:I

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    const-string v3, "btnStr"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    const-string v4, "cancelStr"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    const-string v5, "requestKey"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    .line 105
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget v5, Lcom/qianhe/yct/R$string;->ok:I

    .line 106
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget v5, Lcom/qianhe/yct/R$string;->close:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogTipsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogTipsBinding;->tvCancel:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogTipsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogTipsBinding;->tvSure:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v5, v6}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 111
    iget-object p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogTipsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogTipsBinding;->tvSure:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {p1}, Lcom/qianhe/yct/base/BaseActivity;->allowRotateScreen()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 114
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 116
    :cond_3
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogTipsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogTipsBinding;->tvSure:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogTipsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogTipsBinding;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :cond_5
    const-string p1, "hintTip"

    invoke-virtual {v2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 120
    iget-object v2, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogTipsBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogTipsBinding;->tvHint:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogTipsBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogTipsBinding;->tvHint:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_6
    new-instance p1, Lcom/qianhe/yct/dialog/TipsDialogFragment$1;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/dialog/TipsDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/TipsDialogFragment;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 142
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->shouldPerformCloseOnBack()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 143
    new-instance p1, Lcom/qianhe/yct/dialog/TipsDialogFragment$2;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lcom/qianhe/yct/dialog/TipsDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/TipsDialogFragment;Z)V

    .line 150
    invoke-virtual {v0}, Landroidx/activity/ComponentDialog;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 155
    :cond_7
    iget-object p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogTipsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogTipsBinding;->tvSure:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/TipsDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/TipsDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/TipsDialogFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogTipsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogTipsBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/TipsDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/TipsDialogFragment$4;-><init>(Lcom/qianhe/yct/dialog/TipsDialogFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->handleDialogDismissSideEffects()V

    .line 287
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 288
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 289
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

    .line 256
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 257
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 259
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v1, 0x3f4ccccd    # 0.8f

    .line 264
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

    .line 265
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 266
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 267
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3e8

    .line 269
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 270
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 272
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/TipsDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/TipsDialogFragment$5;-><init>(Lcom/qianhe/yct/dialog/TipsDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public refreshTip(Ljava/lang/String;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogTipsBinding;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogTipsBinding;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOnConfirmListener(Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->listener:Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->listenerNotified:Z

    .line 82
    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/TipsDialogFragment;->resultDispatched:Z

    return-void
.end method
