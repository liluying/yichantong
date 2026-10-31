.class public Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "CorsChangesDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;

.field private listener:Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;)Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->listener:Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;

    .line 51
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 53
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 56
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 57
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 59
    const-string v1, "btnStr"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    const-string v2, "requestKey"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    .line 61
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;->tvSure:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_2
    const-string v1, "baseProEntity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 63
    const-string v2, "diffConfig"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/base/BaseConfig;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 65
    iget-object v2, p0, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;->tvOldCors:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/qianhe/yct/R$string;->original_cors_configuration:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsHost:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsPort:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->corsMount:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;->tvNewCors:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/qianhe/yct/R$string;->current_cors_configuration:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseConfig;->mount_point:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;->tvSure:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;->tvClose:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 127
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->listener:Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->listener:Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;

    invoke-interface {p1}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;->onClose()V

    :cond_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 101
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v1, 0x3f4ccccd    # 0.8f

    .line 109
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

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 113
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public setOnConfirmListener(Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/qianhe/yct/dialog/CorsChangesDialogFragment;->listener:Lcom/qianhe/yct/dialog/CorsChangesDialogFragment$OnConfirmListener;

    return-void
.end method
