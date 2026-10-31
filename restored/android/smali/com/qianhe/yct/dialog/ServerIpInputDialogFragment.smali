.class public Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "ServerIpInputDialogFragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;


# direct methods
.method public static synthetic $r8$lambda$AXPpwGwJGRCQ-Of44-PQXh_ExYc(Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment;Landroid/view/View;)V
    .locals 2

    .line 57
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;

    .line 57
    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;->edtIp:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;->edtIp:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 58
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    const-string v1, "ip"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "server_ip"

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$Y4JYD3dJG6Md9dvztFaAhjzLHjQ(Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;

    .line 54
    iget-object p0, p0, Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;->edtIp:Landroidx/appcompat/widget/AppCompatEditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n_XycmPukknpzGSmRelyZc4Llqs(Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;

    .line 31
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;->getRoot()Landroid/widget/RelativeLayout;

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
    invoke-static {}, Lcom/qianhe/yct/utils/ServerEnvHelper;->getSavedTestIp()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 41
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 43
    iget-object v3, p0, Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :cond_1
    const-string v2, "ip"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;->edtIp:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "192.168.1.186"

    goto :goto_0

    :cond_3
    move-object v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;->edtIp:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 52
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;->edtIp:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 54
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;->fltClear:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogServerIpInputBinding;->tvConfirm:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onStart()V
    .locals 4

    .line 68
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v2, 0x3f666666    # 0.9f

    .line 74
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

    .line 75
    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 77
    :cond_1
    new-instance v1, Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method
