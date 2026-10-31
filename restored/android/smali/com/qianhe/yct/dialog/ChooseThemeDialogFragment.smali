.class public Lcom/qianhe/yct/dialog/ChooseThemeDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "ChooseThemeDialogFragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogThemeListBinding;

.field private chooseThemeAdapter:Lcom/qianhe/yct/adapter/ChooseThemeAdapter;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qianhe/baselib/bean/ThemeEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/dialog/ChooseThemeDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogThemeListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogThemeListBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseThemeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogThemeListBinding;

    .line 50
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseThemeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogThemeListBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogThemeListBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 52
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 55
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 58
    const-string v2, "requestKey"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseThemeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogThemeListBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogThemeListBinding;->tvTitle:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->theme_select_theme_mode:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    new-instance v2, Lcom/qianhe/baselib/bean/ThemeEntity;

    sget v3, Lcom/qianhe/yct/R$string;->theme_select_theme_follow_system:I

    .line 64
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "system"

    invoke-direct {v2, v4, v3}, Lcom/qianhe/baselib/bean/ThemeEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/qianhe/baselib/bean/ThemeEntity;

    sget v4, Lcom/qianhe/yct/R$string;->theme_select_theme_light:I

    .line 65
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "light"

    invoke-direct {v3, v5, v4}, Lcom/qianhe/baselib/bean/ThemeEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/qianhe/baselib/bean/ThemeEntity;

    sget v5, Lcom/qianhe/yct/R$string;->theme_select_theme_dark:I

    .line 66
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "dark"

    invoke-direct {v4, v6, v5}, Lcom/qianhe/baselib/bean/ThemeEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/qianhe/baselib/bean/ThemeEntity;

    aput-object v2, v5, v0

    const/4 v0, 0x1

    aput-object v3, v5, v0

    const/4 v0, 0x2

    aput-object v4, v5, v0

    .line 63
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/qianhe/yct/dialog/ChooseThemeDialogFragment;->mList:Ljava/util/ArrayList;

    .line 70
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseThemeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogThemeListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogThemeListBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseThemeDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseThemeDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/ChooseThemeDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseThemeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogThemeListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogThemeListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 77
    new-instance v0, Lcom/qianhe/yct/adapter/ChooseThemeAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseThemeDialogFragment;->mList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/adapter/ChooseThemeAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ChooseThemeDialogFragment;->chooseThemeAdapter:Lcom/qianhe/yct/adapter/ChooseThemeAdapter;

    .line 78
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseThemeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogThemeListBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogThemeListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 79
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseThemeDialogFragment;->chooseThemeAdapter:Lcom/qianhe/yct/adapter/ChooseThemeAdapter;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseThemeDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseThemeDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/ChooseThemeDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/ChooseThemeAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/ChooseThemeAdapter$OnActionListener;)V

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 96
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v1, 0x3f4ccccd    # 0.8f

    .line 103
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

    .line 104
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 106
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseThemeDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseThemeDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/ChooseThemeDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method
