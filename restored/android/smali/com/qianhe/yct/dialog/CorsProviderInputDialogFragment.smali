.class public Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "CorsProviderInputDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment$OnConfirmListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogCorsProviderInputBinding;

.field private onConfirmListener:Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment$OnConfirmListener;


# direct methods
.method public static synthetic $r8$lambda$5S6sVBAWGU1KAqoCwqNGkG8XdXg(Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;->onConfirmClick()V

    return-void
.end method

.method public static synthetic $r8$lambda$Cr5oopISr4kQ6PaoZuCjLwzSk2A(Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCorsProviderInputBinding;

    .line 50
    iget-object p0, p0, Lcom/qianhe/yct/databinding/DialogCorsProviderInputBinding;->edtProviderName:Landroidx/appcompat/widget/AppCompatEditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kq4j9tA_Ki9LDaGkEVD7VJMz1jE(Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    return-void
.end method

.method private onConfirmClick()V
    .locals 6

    .line 57
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCorsProviderInputBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCorsProviderInputBinding;->edtProviderName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    sget v0, Lcom/qianhe/yct/R$string;->service_provider_name_empty:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    .line 65
    const-string v4, "excludeCorsId"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 67
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 68
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->isCorsNameExist(Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    sget v0, Lcom/qianhe/yct/R$string;->service_provider_name_exists:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 72
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 73
    iget-object v1, p0, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;->onConfirmListener:Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment$OnConfirmListener;

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment$OnConfirmListener;->onConfirm(Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogCorsProviderInputBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogCorsProviderInputBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCorsProviderInputBinding;

    .line 31
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCorsProviderInputBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogCorsProviderInputBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 33
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 35
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 40
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 42
    iget-object v2, p0, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCorsProviderInputBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogCorsProviderInputBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_1
    const-string v1, "providerName"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 46
    iget-object v1, p0, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCorsProviderInputBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogCorsProviderInputBinding;->edtProviderName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p0, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCorsProviderInputBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogCorsProviderInputBinding;->edtProviderName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCorsProviderInputBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCorsProviderInputBinding;->fltClear:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCorsProviderInputBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCorsProviderInputBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCorsProviderInputBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCorsProviderInputBinding;->tvConfirm:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onStart()V
    .locals 4

    .line 78
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
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
    const v2, 0x3f666666    # 0.9f

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

    .line 85
    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 87
    :cond_1
    new-instance v1, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public setOnConfirmListener(Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;->onConfirmListener:Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment$OnConfirmListener;

    return-void
.end method
