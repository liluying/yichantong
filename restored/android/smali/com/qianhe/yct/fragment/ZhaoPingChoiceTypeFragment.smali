.class public Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "ZhaoPingChoiceTypeFragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

.field private initEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->ivLeveling:Landroid/view/View;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->ivFill:Landroid/view/View;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 61
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->ivDig:Landroid/view/View;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 62
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->ivLeveling:Landroid/view/View;

    new-instance v1, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment$1;-><init>(Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->ivFill:Landroid/view/View;

    new-instance v1, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment$2;-><init>(Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->ivDig:Landroid/view/View;

    new-instance v1, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment$3;-><init>(Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment$4;-><init>(Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment$5;-><init>(Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->showData()V

    return-void
.end method

.method private showData()V
    .locals 6

    .line 116
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->height:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_0

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->depth:D

    .line 118
    :cond_0
    iget v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    if-nez v1, :cond_3

    .line 119
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->depth:D

    cmpg-double v5, v1, v3

    if-gez v5, :cond_1

    .line 120
    sget-object v1, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->DIG:Lcom/qianhe/baselib/enums/ZhaoPingEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->getType()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    goto :goto_0

    :cond_1
    cmpl-double v5, v1, v3

    if-lez v5, :cond_2

    .line 122
    sget-object v1, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->FILL:Lcom/qianhe/baselib/enums/ZhaoPingEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->getType()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    goto :goto_0

    .line 124
    :cond_2
    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    sget-object v1, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->LEVEING:Lcom/qianhe/baselib/enums/ZhaoPingEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->getType()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    .line 127
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->ivFill:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->FILL:Lcom/qianhe/baselib/enums/ZhaoPingEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->getType()I

    move-result v2

    if-ne v0, v2, :cond_4

    goto :goto_3

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->ivDig:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->DIG:Lcom/qianhe/baselib/enums/ZhaoPingEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->getType()I

    move-result v2

    if-ne v0, v2, :cond_5

    goto :goto_2

    .line 133
    :cond_5
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->ivLeveling:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->LEVEING:Lcom/qianhe/baselib/enums/ZhaoPingEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->getType()I

    move-result v2

    if-ne v0, v2, :cond_6

    goto :goto_1

    :cond_6
    return-void

    .line 134
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    sget-object v2, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->LEVEING:Lcom/qianhe/baselib/enums/ZhaoPingEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->getType()I

    move-result v2

    iput v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    .line 135
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->ivLeveling:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void

    .line 131
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    sget-object v2, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->DIG:Lcom/qianhe/baselib/enums/ZhaoPingEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->getType()I

    move-result v2

    iput v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    .line 132
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->ivDig:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void

    .line 128
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    sget-object v2, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->FILL:Lcom/qianhe/baselib/enums/ZhaoPingEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->getType()I

    move-result v2

    iput v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    .line 129
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->ivFill:Landroid/view/View;

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

    .line 156
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 31
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 33
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 34
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 35
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 39
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    check-cast p2, Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->initEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    .line 46
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->zhaoPingEntity:Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    .line 48
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->initView()V

    .line 49
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentZpChoiceTypeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 161
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 54
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 55
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ZhaoPingChoiceTypeFragment;->showData()V

    return-void
.end method
