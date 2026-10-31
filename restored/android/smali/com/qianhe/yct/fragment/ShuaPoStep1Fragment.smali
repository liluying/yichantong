.class public Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "ShuaPoStep1Fragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

.field private cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

.field private initEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

.field private isH5Pro:Z

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private mToothType:I

.field private shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;


# direct methods
.method public static synthetic $r8$lambda$7ZRc0eBIA6uRdLcDzPz6-qE-NEw(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;Landroid/view/View;)V
    .locals 7

    .line 168
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    .line 168
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-object v0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east1:D

    iget-wide v3, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north1:D

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation1:D

    .line 170
    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/activity/cad/CadEntityChooseIntent;->singlePoint(DDD)[D

    move-result-object p0

    const/4 v1, 0x1

    .line 168
    invoke-virtual {p1, v0, v1, p0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(Ljava/lang/String;I[D)V

    return-void
.end method

.method public static synthetic $r8$lambda$CHsTDt_XF-kLaErBVg7qhSqtELo(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;Landroid/view/View;)Z
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    const/4 p1, 0x1

    .line 172
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$QUlA1TtKmvlBLOIhWkzxIRn7y4o(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;Landroid/view/View;)V
    .locals 1

    .line 176
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    .line 176
    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->mToothType:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->please_select_shovel_tip:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 180
    :cond_0
    iget p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->mToothType:I

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->handleMeasureCollectClick(ILcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Usti1yFRqhM1OPXK7ejk0QhrdLw(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;Ljava/lang/String;[D)V
    .locals 7

    .line 49
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    .line 49
    iput-object p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 50
    aget-wide v1, p2, p1

    const/4 p1, 0x1

    aget-wide v3, p2, p1

    const/4 p1, 0x2

    aget-wide v5, p2, p1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->showCoords(DDD)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->initEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmToothType(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->mToothType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->clearCadPath()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;DDD)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->saveInputCoordsToGeodetic(DDD)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;DDD)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->showCoords(DDD)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method private clearCadPath()V
    .locals 6

    .line 252
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, ""

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;
    .locals 1

    .line 279
    new-instance v0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$10;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$10;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)V

    return-object v0
.end method

.method private initObserve()V
    .locals 3

    .line 240
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoCreateActivity;->observeCoordsStep1()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$9;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$9;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->ivReset:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 88
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->lltSel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->tvCadImport:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ShuaPoEnum;->DOWN:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ShuaPoEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 92
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->ivStep1:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_sp_down1:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->tvSpType:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->down_slope:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 94
    :cond_6
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ShuaPoEnum;->UP:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ShuaPoEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 95
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->ivStep1:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_sp_up1:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->tvSpType:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->up_slope:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 99
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->ivReset:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$1;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$2;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 135
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$3;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 151
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$4;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 167
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setupToothViewCollectListeners(Lcom/qianhe/yct/view/ToothView;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    .line 168
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->tvMeasure:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->tvPointLib:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$5;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->lltSel:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$6;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$7;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$8;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->showData(Lcom/qianhe/baselib/bean/ShuaPoEntity;)V

    return-void
.end method

.method private saveInputCoordsToGeodetic(DDD)Z
    .locals 9

    .line 264
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east1:D

    .line 265
    iput-wide p3, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north1:D

    .line 266
    iput-wide p5, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation1:D

    const/4 v0, 0x3

    .line 267
    new-array v8, v0, [D

    .line 268
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToGeodeticInverse(DDD[D)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v8}, Lcom/qianhe/yct/base/BaseProjectFragment;->isVaildCoords([D)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    aget-wide p2, v8, p2

    invoke-virtual {p0, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLon1:D

    .line 274
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    const/4 p2, 0x1

    aget-wide p3, v8, p2

    invoke-virtual {p0, p3, p4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLat1:D

    return p2

    .line 269
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    const-wide/16 p3, 0x0

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLon1:D

    .line 270
    iput-wide p3, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLat1:D

    return p2
.end method

.method private showCoords(DDD)V
    .locals 7

    .line 256
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->saveInputCoordsToGeodetic(DDD)Z

    move-wide v0, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 257
    iget-object p6, p1, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object p6, p6, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    const-string v2, ""

    const/4 v3, 0x3

    const-wide/16 v4, 0x0

    cmpl-double v6, p2, v4

    if-eqz v6, :cond_0

    invoke-virtual {p0, p2, p3, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v2

    :goto_0
    invoke-virtual {p6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object p2, p1, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double p3, p4, v4

    if-eqz p3, :cond_1

    invoke-virtual {p0, p4, p5, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v2

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object p2, p1, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double p3, v0, v4

    if-eqz p3, :cond_2

    invoke-virtual {p0, v0, v1, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showData(Lcom/qianhe/baselib/bean/ShuaPoEntity;)V
    .locals 12

    .line 230
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevationBenchmark:D

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmpl-double v5, v0, v2

    if-eqz v5, :cond_0

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation1:D

    cmpl-double v5, v0, v2

    if-nez v5, :cond_0

    .line 231
    iput v4, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->tickA:I

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->mToothType:I

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ToothView;->setCurrentType(I)V

    .line 234
    iget-wide v6, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east1:D

    iget-wide v8, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north1:D

    iget-wide v10, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation1:D

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->showCoords(DDD)V

    .line 235
    iget-object v0, v5, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->ivSelA:Landroid/widget/ImageView;

    iget v1, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->tickA:I

    const/4 v2, 0x0

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 236
    iget-object v0, v5, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    iget p1, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->tickB:I

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

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

    .line 320
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    new-instance p1, Lcom/qianhe/yct/activity/cad/CadPickHelper;

    new-instance v0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)V

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 56
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    .line 57
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 58
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 59
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 61
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 62
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 63
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 67
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 69
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->initEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    .line 70
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->initView()V

    .line 73
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->initObserve()V

    .line 74
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentSpStep1Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 79
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 80
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->isH5Pro:Z

    .line 81
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->initView()V

    return-void
.end method
