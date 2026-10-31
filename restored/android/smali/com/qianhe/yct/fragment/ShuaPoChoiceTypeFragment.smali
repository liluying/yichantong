.class public Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "ShuaPoChoiceTypeFragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;

.field private initEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->ivSpDown:Lcom/qianhe/yct/view/NightAwareImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment$1;-><init>(Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->ivSpUp:Lcom/qianhe/yct/view/NightAwareImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment$2;-><init>(Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment$3;-><init>(Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment$4;-><init>(Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->showData()V

    return-void
.end method

.method private showData()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->ivSpDown:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ShuaPoEnum;->DOWN:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ShuaPoEnum;->getType()I

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->ivSpUp:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ShuaPoEnum;->UP:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ShuaPoEnum;->getType()I

    move-result v2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 103
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    sget-object v2, Lcom/qianhe/baselib/enums/ShuaPoEnum;->UP:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ShuaPoEnum;->getType()I

    move-result v2

    iput v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    .line 104
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->ivSpUp:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void

    .line 100
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    sget-object v2, Lcom/qianhe/baselib/enums/ShuaPoEnum;->DOWN:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ShuaPoEnum;->getType()I

    move-result v2

    iput v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    .line 101
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->ivSpDown:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

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

    .line 123
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 31
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 33
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 34
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 35
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 37
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 38
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 39
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p3, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 43
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 45
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->initEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    .line 46
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    .line 48
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->initView()V

    .line 49
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentSpChoiceTypeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 128
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 54
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 55
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoChoiceTypeFragment;->showData()V

    return-void
.end method
