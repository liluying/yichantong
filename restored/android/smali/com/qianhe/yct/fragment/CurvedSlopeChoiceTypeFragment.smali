.class public Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "CurvedSlopeChoiceTypeFragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;

.field private curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

.field private initEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurvedSlopeEntity(Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;->ivSlopeTop:Lcom/qianhe/yct/view/NightAwareImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

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

    .line 50
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;->ivSlopeBottom:Lcom/qianhe/yct/view/NightAwareImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 51
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;->ivSlopeTop:Lcom/qianhe/yct/view/NightAwareImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment$1;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;->ivSlopeBottom:Lcom/qianhe/yct/view/NightAwareImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment$2;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment$3;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment$4;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->showData()V

    return-void
.end method

.method private showData()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;->ivSlopeBottom:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;->ivSlopeTop:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_1
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

    .line 111
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 28
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;

    .line 29
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 30
    iget-object p3, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 31
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 33
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 34
    iget-object p3, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 35
    iget-object p3, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 39
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 41
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->initEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    .line 42
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    .line 44
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->initView()V

    .line 45
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 116
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    return-void
.end method
