.class public Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "ExcavatorChoiceTypeFragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

.field private excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;Landroid/view/View;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->postWizardNext(Landroid/view/View;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->lltType1:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$1;-><init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->lltType2:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$2;-><init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$3;-><init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment$4;-><init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->bindContinueClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->showData()V

    return-void
.end method

.method private showData()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->ivType1:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->method:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 105
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->ivType2:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->method:I

    if-ne v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 106
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->tvTypeDes1:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->ivType1:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 107
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->tvTypeDes2:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->ivType2:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public gga(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    return-void
.end method

.method public insNavi(Lcom/qianhe/baselib/bean/InsNavi;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 30
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 32
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 33
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 34
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 36
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 37
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 38
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p3, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->resolveInitExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 43
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->resolveExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 44
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->initView()V

    .line 45
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 132
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 51
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceTypeBinding;->tvContinue:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->restoreContinueEnabled(Landroid/view/View;)V

    .line 52
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;->showData()V

    return-void
.end method
