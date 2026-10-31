.class public Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "SiteLevelingStep2Fragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;

.field private initEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->initEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsiteLevelingEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;Lcom/qianhe/baselib/bean/SiteLevelingEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->createEntity(Lcom/qianhe/baselib/bean/SiteLevelingEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnext(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->next()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method private createEntity(Lcom/qianhe/baselib/bean/SiteLevelingEntity;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->ratio:D

    return-void
.end method

.method private initView()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$1;-><init>(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 65
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$2;-><init>(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;-><init>(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->showData()V

    return-void
.end method

.method private next()V
    .locals 4

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->start_jobs:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    iget-object v1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showData()V
    .locals 6

    .line 113
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;->ivStatus:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->ratio:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_polyline_zheng:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_polyline_fu:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

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

    .line 135
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 36
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;

    .line 37
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 38
    iget-object p3, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 39
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 41
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 42
    iget-object p3, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 43
    iget-object p3, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 49
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->initEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    .line 50
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    .line 52
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->initView()V

    .line 53
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 6

    .line 99
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;->lltRatio:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->siteLevelingEntity:Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->ratio:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
