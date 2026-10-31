.class public Lcom/qianhe/yct/dialog/PasswordDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "PasswordDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/PasswordDialogFragment$OnConfirmListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogPasswordBinding;

.field private listener:Lcom/qianhe/yct/dialog/PasswordDialogFragment$OnConfirmListener;


# direct methods
.method public static synthetic $r8$lambda$SAQBWCXXTq0ebHPnXfxIM5Z_a7M(Lcom/qianhe/yct/dialog/PasswordDialogFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p2, "input_method"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/PasswordDialogFragment;)Lcom/qianhe/yct/databinding/DialogPasswordBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogPasswordBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/PasswordDialogFragment;)Lcom/qianhe/yct/dialog/PasswordDialogFragment$OnConfirmListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment;->listener:Lcom/qianhe/yct/dialog/PasswordDialogFragment$OnConfirmListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclose(Lcom/qianhe/yct/dialog/PasswordDialogFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/PasswordDialogFragment;->close()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/dialog/PasswordDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    return-object p0
.end method

.method private close()V
    .locals 0

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogPasswordBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogPasswordBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogPasswordBinding;

    .line 55
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    iget-object v0, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogPasswordBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogPasswordBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 57
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v2, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogPasswordBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogPasswordBinding;->tvConfirm:Landroid/widget/TextView;

    sget v3, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "btnContent"

    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogPasswordBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogPasswordBinding;->tvConfirm:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/dialog/PasswordDialogFragment$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/qianhe/yct/dialog/PasswordDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/PasswordDialogFragment;Ljava/text/SimpleDateFormat;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogPasswordBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogPasswordBinding;->tvClose:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/PasswordDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/PasswordDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/PasswordDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 105
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v1, 0x3f4ccccd    # 0.8f

    .line 113
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

    const/4 v1, 0x3

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 117
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/dialog/PasswordDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/dialog/PasswordDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/dialog/PasswordDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 128
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/PasswordDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/PasswordDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/PasswordDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public setOnConfirmListener(Lcom/qianhe/yct/dialog/PasswordDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/qianhe/yct/dialog/PasswordDialogFragment;->listener:Lcom/qianhe/yct/dialog/PasswordDialogFragment$OnConfirmListener;

    return-void
.end method
