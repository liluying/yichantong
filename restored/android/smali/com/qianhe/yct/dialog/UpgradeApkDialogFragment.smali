.class public Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "UpgradeApkDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$OnActionListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

.field private final handler:Landroid/os/Handler;

.field private listener:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$OnActionListener;

.field private manual:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;)Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$OnActionListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->listener:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$OnActionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmanual(Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->manual:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    .line 129
    new-instance v0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$7;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$7;-><init>(Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility",
            "SetTextI18n",
            "DefaultLocale"
        }
    .end annotation

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    .line 55
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    invoke-virtual {v1}, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 57
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 60
    new-instance v2, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 71
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 74
    const-string/jumbo v3, "upgradeLog"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    const-string/jumbo v4, "versionOld"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    const-string/jumbo v5, "versionNew"

    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77
    const-string v6, "fileSize"

    const-wide/16 v7, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 78
    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvVersionOld:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lcom/qianhe/yct/R$string;->current_version:I

    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\uff1a%s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v10, p1, [Ljava/lang/Object;

    aput-object v4, v10, v1

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvVersionNew:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcom/qianhe/yct/R$string;->latest_version:I

    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v8, p1, [Ljava/lang/Object;

    aput-object v5, v8, v1

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvUpgradeLog:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvUpgradeLog:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvFileSize:Landroid/widget/TextView;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/qianhe/yct/R$string;->file_size:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\uff1a%.2f MB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    long-to-double v5, v6

    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    div-double/2addr v5, v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v5, p1, v1

    invoke-static {v3, v4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvTip:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->want_to_upgrade:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    new-instance p1, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$2;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 98
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$4;-><init>(Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvIgnore:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$5;-><init>(Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvSure:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$6;-><init>(Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .line 180
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->onDestroyView()V

    .line 181
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 174
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 175
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->listener:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$OnActionListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->listener:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$OnActionListener;

    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->manual:Z

    invoke-interface {p1, v0}, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$OnActionListener;->onClose(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 147
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v1, 0x3f666666    # 0.9f

    .line 155
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

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 157
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 160
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$8;-><init>(Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public setOnActionListener(Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$OnActionListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;->listener:Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment$OnActionListener;

    return-void
.end method
