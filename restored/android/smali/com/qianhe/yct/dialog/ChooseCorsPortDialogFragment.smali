.class public Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "ChooseCorsPortDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment$OnConfirmListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;

.field private mHost:Ljava/lang/String;

.field private onConfirmListener:Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment$OnConfirmListener;


# direct methods
.method public static synthetic $r8$lambda$TrqN6vMCcgGt2AT9hs8JzZOBCsI(Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
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

.method public static synthetic $r8$lambda$fq01iGZDCIvshAEjEO6quW0oeCo(Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;Lcom/qianhe/baselib/bean/CorsEntity$PortEntity;)V
    .locals 0

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 51
    iget-object p0, p0, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;->onConfirmListener:Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment$OnConfirmListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment$OnConfirmListener;->onConfirm(Lcom/qianhe/baselib/bean/CorsEntity$PortEntity;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$v2QzwNzaKOPLIj8OhA5FlozEzFs(Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;

    .line 32
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 33
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 34
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 36
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;->tvTitle:Landroid/widget/TextView;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const-string v1, "host"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;->mHost:Ljava/lang/String;

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;->tvCreate:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;->mHost:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/CorsPortUtils;->getPresetPorts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 46
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 47
    new-instance v1, Lcom/qianhe/yct/adapter/PortListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/qianhe/yct/adapter/PortListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 48
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 49
    new-instance v2, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;)V

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/adapter/PortListAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/PortListAdapter$OnActionListener;)V

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;->onConfirmListener:Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment$OnConfirmListener;

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;->onConfirmListener:Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment$OnConfirmListener;

    invoke-interface {v0}, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment$OnConfirmListener;->empty()V

    :cond_3
    return-object p1
.end method

.method public onStart()V
    .locals 4

    .line 72
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v2, 0x3f666666    # 0.9f

    .line 78
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

    .line 79
    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 81
    :cond_1
    new-instance v1, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public setOnConfirmListener(Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment;->onConfirmListener:Lcom/qianhe/yct/dialog/ChooseCorsPortDialogFragment$OnConfirmListener;

    return-void
.end method
