.class public Lcom/qianhe/yct/fragment/DikeStep1Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "DikeStep1Fragment.java"


# instance fields
.field private actionType:I

.field private binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

.field private cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

.field private dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

.field private initEntity:Lcom/qianhe/baselib/bean/DikeEntity;

.field private isH5Pro:Z

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private mToothType:I


# direct methods
.method public static synthetic $r8$lambda$L4M-S-iQp6ECfJyK0NnlTzG0_k0(Lcom/qianhe/yct/fragment/DikeStep1Fragment;Ljava/lang/String;[D)V
    .locals 7

    .line 51
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    .line 51
    iput-object p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 52
    aget-wide v1, p2, p1

    const/4 p1, 0x1

    aget-wide v3, p2, p1

    const/4 p1, 0x2

    aget-wide v5, p2, p1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->showCoords(DDD)V

    return-void
.end method

.method public static synthetic $r8$lambda$LgN9FJXHmxo8XLxbqNPRgKLY91Y(Lcom/qianhe/yct/fragment/DikeStep1Fragment;Landroid/view/View;)V
    .locals 1

    .line 188
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    .line 188
    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->mToothType:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->please_select_shovel_tip:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 192
    :cond_0
    iget p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->mToothType:I

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->handleMeasureCollectClick(ILcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$au1syfU7OgM0sPbeWZ9nhftHe1M(Lcom/qianhe/yct/fragment/DikeStep1Fragment;Landroid/view/View;)Z
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    const/4 p1, 0x1

    .line 184
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$nWnm_wLsh2pT4yyzBqpGaPP4uDU(Lcom/qianhe/yct/fragment/DikeStep1Fragment;Landroid/view/View;)V
    .locals 7

    .line 180
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    .line 180
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-object v0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/DikeEntity;->east1:D

    iget-wide v3, p0, Lcom/qianhe/baselib/bean/DikeEntity;->north1:D

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation1:D

    .line 182
    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/activity/cad/CadEntityChooseIntent;->singlePoint(DDD)[D

    move-result-object p0

    const/4 v1, 0x1

    .line 180
    invoke-virtual {p1, v0, v1, p0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(Ljava/lang/String;I[D)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetactionType(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->actionType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->initEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputactionType(Lcom/qianhe/yct/fragment/DikeStep1Fragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->actionType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmToothType(Lcom/qianhe/yct/fragment/DikeStep1Fragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->mToothType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->clearCadPath()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->createEntity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/DikeStep1Fragment;DDD)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->saveInputCoordsToGeodetic(DDD)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/DikeStep1Fragment;DDD)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->showCoords(DDD)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->actionType:I

    return-void
.end method

.method private clearCadPath()V
    .locals 6

    .line 319
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, ""

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private createEntity()V
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    .line 283
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    .line 284
    iget-object v2, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v3, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->actionType:I

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    if-nez v3, :cond_0

    neg-double v0, v0

    :cond_0
    iput-wide v0, v2, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    return-void
.end method

.method private createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;
    .locals 1

    .line 346
    new-instance v0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$12;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment$12;-><init>(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)V

    return-object v0
.end method

.method private initObserve()V
    .locals 3

    .line 307
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/dike/DikeCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/dike/DikeCreateActivity;->observeCoordsStep1()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/DikeStep1Fragment$11;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment$11;-><init>(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/qianhe/baselib/enums/DikeEnum;->FLAT:Lcom/qianhe/baselib/enums/DikeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/DikeEnum;->getType()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep1Fragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment$1;-><init>(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 111
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->ivReset:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep1Fragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment$2;-><init>(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep1Fragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment$3;-><init>(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep1Fragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment$4;-><init>(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 163
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep1Fragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment$5;-><init>(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setupToothViewCollectListeners(Lcom/qianhe/yct/view/ToothView;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    .line 180
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep1Fragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep1Fragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->tvMeasure:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep1Fragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->tvPointLib:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep1Fragment$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment$6;-><init>(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->lltSel:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep1Fragment$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment$7;-><init>(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->typeDropdown:Lcom/qianhe/yct/view/DitchTypeDropdown;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep1Fragment$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment$8;-><init>(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setOnTypetSelectedListener(Lcom/qianhe/yct/view/DitchTypeDropdown$OnTypeSelectedListener;)V

    .line 227
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep1Fragment$9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment$9;-><init>(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep1Fragment$10;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment$10;-><init>(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->showData()V

    return-void
.end method

.method private refreshData()V
    .locals 12

    .line 255
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->customDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 256
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->ivSelA:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/bean/DikeEntity;->tickA:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 257
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->ivSelA:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, ""

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iput v3, v0, Lcom/qianhe/baselib/bean/DikeEntity;->tickA:I

    .line 259
    iput-wide v4, v0, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    .line 260
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v6, Lcom/qianhe/baselib/enums/DikeEnum;->FLAT:Lcom/qianhe/baselib/enums/DikeEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/DikeEnum;->getType()I

    move-result v6

    if-ne v0, v6, :cond_2

    .line 262
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iput v2, v0, Lcom/qianhe/baselib/bean/DikeEntity;->tickB:I

    .line 263
    iput-wide v4, v0, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    goto :goto_1

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v6, Lcom/qianhe/baselib/enums/DikeEnum;->FLAT:Lcom/qianhe/baselib/enums/DikeEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/DikeEnum;->getType()I

    move-result v6

    if-ne v0, v6, :cond_2

    .line 267
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iput v2, v0, Lcom/qianhe/baselib/bean/DikeEntity;->tickA:I

    .line 271
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v6, Lcom/qianhe/baselib/enums/DikeEnum;->FLAT:Lcom/qianhe/baselib/enums/DikeEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/DikeEnum;->getType()I

    move-result v6

    const/16 v7, 0x8

    if-ne v0, v6, :cond_6

    .line 272
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v6, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->lltValue:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v9, v8, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    cmpl-double v11, v9, v4

    if-nez v11, :cond_3

    iget v8, v8, Lcom/qianhe/baselib/bean/DikeEntity;->tickB:I

    if-nez v8, :cond_4

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->ivSelA:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    cmpl-double v0, v8, v4

    if-nez v0, :cond_4

    :cond_3
    const/4 v7, 0x0

    :cond_4
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v6, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v7, v6, Lcom/qianhe/baselib/bean/DikeEntity;->tickB:I

    if-nez v7, :cond_5

    iget-wide v6, v6, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    cmpl-double v8, v6, v4

    if-nez v8, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3

    .line 275
    :cond_6
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v6, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->lltValue:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v8, v8, Lcom/qianhe/baselib/bean/DikeEntity;->tickA:I

    if-eqz v8, :cond_8

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->ivSelA:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    const/16 v2, 0x8

    :cond_8
    :goto_2
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 278
    :goto_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_9

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    :cond_9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private saveInputCoordsToGeodetic(DDD)Z
    .locals 9

    .line 331
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->east1:D

    .line 332
    iput-wide p3, v0, Lcom/qianhe/baselib/bean/DikeEntity;->north1:D

    .line 333
    iput-wide p5, v0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation1:D

    const/4 v0, 0x3

    .line 334
    new-array v8, v0, [D

    .line 335
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

    .line 340
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    aget-wide p2, v8, p2

    invoke-virtual {p0, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/qianhe/baselib/bean/DikeEntity;->targetLon1:D

    .line 341
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    const/4 p2, 0x1

    aget-wide p3, v8, p2

    invoke-virtual {p0, p3, p4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/DikeEntity;->targetLat1:D

    return p2

    .line 336
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    const-wide/16 p3, 0x0

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/DikeEntity;->targetLon1:D

    .line 337
    iput-wide p3, p1, Lcom/qianhe/baselib/bean/DikeEntity;->targetLat1:D

    return p2
.end method

.method private showCoords(DDD)V
    .locals 7

    .line 323
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->saveInputCoordsToGeodetic(DDD)Z

    move-wide v0, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 324
    iget-object p6, p1, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object p6, p6, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

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

    .line 325
    iget-object p2, p1, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double p3, p4, v4

    if-eqz p3, :cond_1

    invoke-virtual {p0, p4, p5, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v2

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object p2, p1, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double p3, v0, v4

    if-eqz p3, :cond_2

    invoke-virtual {p0, v0, v1, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showData()V
    .locals 15

    .line 288
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget v1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->mToothType:I

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ToothView;->setCurrentType(I)V

    .line 289
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->ivReset:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 292
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 293
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 294
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->lltSel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 295
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->typeDropdown:Lcom/qianhe/yct/view/DitchTypeDropdown;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 296
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->typeDropdown:Lcom/qianhe/yct/view/DitchTypeDropdown;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v4, v1, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setCurrentType(I)V

    .line 297
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 298
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->tvCadImport:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_8

    :cond_9
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 299
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->customDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 300
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v9, v0, Lcom/qianhe/baselib/bean/DikeEntity;->east1:D

    iget-wide v11, v0, Lcom/qianhe/baselib/bean/DikeEntity;->north1:D

    iget-wide v13, v0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation1:D

    move-object v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->showCoords(DDD)V

    .line 301
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->refreshData()V

    .line 302
    iget-object v0, v8, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, v8, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v4, v1, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v4, v8, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_a
    const-string v1, ""

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, v8, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    cmpl-double v4, v0, v6

    if-ltz v4, :cond_b

    const/4 v3, 0x1

    :cond_b
    iput v3, v8, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->actionType:I

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

    .line 387
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    new-instance p1, Lcom/qianhe/yct/activity/cad/CadPickHelper;

    new-instance v0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)V

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 58
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    .line 59
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 60
    iget-object p3, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 61
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 63
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 64
    iget-object p3, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 65
    iget-object p3, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 69
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 71
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/DikeEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->initEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    .line 72
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/DikeEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    .line 74
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->initView()V

    .line 75
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->initObserve()V

    .line 76
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 82
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->isH5Pro:Z

    .line 83
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->refreshData()V

    return-void
.end method
