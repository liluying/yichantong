.class public Lcom/qianhe/yct/fragment/DikeStep2Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "DikeStep2Fragment.java"


# instance fields
.field private actionType:I

.field private binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

.field private cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

.field private dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

.field private initEntity:Lcom/qianhe/baselib/bean/DikeEntity;

.field private isH5Pro:Z

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;


# direct methods
.method public static synthetic $r8$lambda$4eyKK5lF6VjI8yP432Zw0NOuPR8(Lcom/qianhe/yct/fragment/DikeStep2Fragment;Landroid/view/View;)Z
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    const/4 p1, 0x1

    .line 186
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$L2YkaWwpbi3cyOm1pSNqXc7m06Q(Lcom/qianhe/yct/fragment/DikeStep2Fragment;Landroid/view/View;)V
    .locals 1

    .line 190
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    .line 190
    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->please_select_shovel_tip:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->handleMeasureCollectClick(ILcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X3CA595s3KCEhj_1y1WzS6W3iPk(Lcom/qianhe/yct/fragment/DikeStep2Fragment;Landroid/view/View;)V
    .locals 7

    .line 182
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    .line 182
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-object v0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/DikeEntity;->east2:D

    iget-wide v3, p0, Lcom/qianhe/baselib/bean/DikeEntity;->north2:D

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation2:D

    .line 184
    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/activity/cad/CadEntityChooseIntent;->singlePoint(DDD)[D

    move-result-object p0

    const/4 v1, 0x1

    .line 182
    invoke-virtual {p1, v0, v1, p0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(Ljava/lang/String;I[D)V

    return-void
.end method

.method public static synthetic $r8$lambda$wRD8XRp5UqrfCsO4JWCJlqFKt20(Lcom/qianhe/yct/fragment/DikeStep2Fragment;Ljava/lang/String;[D)V
    .locals 7

    .line 53
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    .line 53
    iput-object p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 54
    aget-wide v1, p2, p1

    const/4 p1, 0x1

    aget-wide v3, p2, p1

    const/4 p1, 0x2

    aget-wide v5, p2, p1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->showCoords(DDD)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetactionType(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->actionType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->initEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputactionType(Lcom/qianhe/yct/fragment/DikeStep2Fragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->actionType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->clearCadPath()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->createEntity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/DikeStep2Fragment;DDD)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->saveInputCoordsToGeodetic(DDD)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/DikeStep2Fragment;DDD)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->showCoords(DDD)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->actionType:I

    return-void
.end method

.method private clearCadPath()V
    .locals 6

    .line 332
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

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

    .line 267
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    .line 268
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    .line 269
    iget-object v2, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v3, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->actionType:I

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    if-nez v3, :cond_0

    neg-double v0, v0

    :cond_0
    iput-wide v0, v2, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    return-void
.end method

.method private createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;
    .locals 1

    .line 359
    new-instance v0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$12;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment$12;-><init>(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)V

    return-object v0
.end method

.method private initObserve()V
    .locals 3

    .line 320
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/dike/DikeCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/dike/DikeCreateActivity;->observeCoordsStep2()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/DikeStep2Fragment$11;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment$11;-><init>(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep2Fragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment$1;-><init>(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->ivReset:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep2Fragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment$2;-><init>(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep2Fragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment$3;-><init>(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep2Fragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment$4;-><init>(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep2Fragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment$5;-><init>(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setupToothViewCollectListeners(Lcom/qianhe/yct/view/ToothView;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    .line 182
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep2Fragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep2Fragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->tvMeasure:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep2Fragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->tvPointLib:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep2Fragment$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment$6;-><init>(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->lltSel:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep2Fragment$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment$7;-><init>(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->typeDropdown:Lcom/qianhe/yct/view/DitchTypeDropdown;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep2Fragment$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment$8;-><init>(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setOnTypetSelectedListener(Lcom/qianhe/yct/view/DitchTypeDropdown$OnTypeSelectedListener;)V

    .line 230
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep2Fragment$9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment$9;-><init>(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/DikeStep2Fragment$10;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment$10;-><init>(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->showData()V

    return-void
.end method

.method private refreshData()V
    .locals 12

    .line 292
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->customDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 293
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->ivSelB:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/bean/DikeEntity;->tickB:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 294
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->ivSelB:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, ""

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iput v3, v0, Lcom/qianhe/baselib/bean/DikeEntity;->tickB:I

    .line 296
    iput-wide v4, v0, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    .line 297
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v6, Lcom/qianhe/baselib/enums/DikeEnum;->FLAT:Lcom/qianhe/baselib/enums/DikeEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/DikeEnum;->getType()I

    move-result v6

    if-ne v0, v6, :cond_2

    .line 299
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iput v2, v0, Lcom/qianhe/baselib/bean/DikeEntity;->tickA:I

    .line 300
    iput-wide v4, v0, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    goto :goto_1

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v6, Lcom/qianhe/baselib/enums/DikeEnum;->FLAT:Lcom/qianhe/baselib/enums/DikeEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/DikeEnum;->getType()I

    move-result v6

    if-ne v0, v6, :cond_2

    .line 304
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iput v2, v0, Lcom/qianhe/baselib/bean/DikeEntity;->tickB:I

    .line 307
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v6, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->lltValue:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->ivSelB:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/16 v7, 0x8

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v6, Lcom/qianhe/baselib/enums/DikeEnum;->FLAT:Lcom/qianhe/baselib/enums/DikeEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/DikeEnum;->getType()I

    move-result v6

    if-ne v0, v6, :cond_7

    .line 310
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v6, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->lltValue:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v9, v8, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    cmpl-double v11, v9, v4

    if-nez v11, :cond_4

    iget v8, v8, Lcom/qianhe/baselib/bean/DikeEntity;->tickA:I

    if-nez v8, :cond_5

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->ivSelB:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    cmpl-double v0, v8, v4

    if-nez v0, :cond_5

    :cond_4
    const/4 v7, 0x0

    :cond_5
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v6, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v7, v6, Lcom/qianhe/baselib/bean/DikeEntity;->tickA:I

    if-nez v7, :cond_6

    iget-wide v6, v6, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    cmpl-double v8, v6, v4

    if-nez v8, :cond_6

    const/4 v2, 0x1

    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4

    .line 313
    :cond_7
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v6, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->lltValue:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v8, v8, Lcom/qianhe/baselib/bean/DikeEntity;->tickB:I

    if-eqz v8, :cond_9

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->ivSelB:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    const/16 v2, 0x8

    :cond_9
    :goto_3
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 316
    :goto_4
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_a

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    :cond_a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private saveInputCoordsToGeodetic(DDD)Z
    .locals 9

    .line 344
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/DikeEntity;->east2:D

    .line 345
    iput-wide p3, v0, Lcom/qianhe/baselib/bean/DikeEntity;->north2:D

    .line 346
    iput-wide p5, v0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation2:D

    const/4 v0, 0x3

    .line 347
    new-array v8, v0, [D

    .line 348
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

    .line 353
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    aget-wide p2, v8, p2

    invoke-virtual {p0, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/qianhe/baselib/bean/DikeEntity;->targetLon2:D

    .line 354
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    const/4 p2, 0x1

    aget-wide p3, v8, p2

    invoke-virtual {p0, p3, p4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/DikeEntity;->targetLat2:D

    return p2

    .line 349
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    const-wide/16 p3, 0x0

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/DikeEntity;->targetLon2:D

    .line 350
    iput-wide p3, p1, Lcom/qianhe/baselib/bean/DikeEntity;->targetLat2:D

    return p2
.end method

.method private showCoords(DDD)V
    .locals 7

    .line 336
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->saveInputCoordsToGeodetic(DDD)Z

    move-wide v0, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 337
    iget-object p6, p1, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object p6, p6, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

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

    .line 338
    iget-object p2, p1, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double p3, p4, v4

    if-eqz p3, :cond_1

    invoke-virtual {p0, p4, p5, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v2

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object p2, p1, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

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

    .line 273
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->ivReset:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

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

    .line 274
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 276
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 277
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 278
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->lltSel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 279
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->typeDropdown:Lcom/qianhe/yct/view/DitchTypeDropdown;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 280
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->typeDropdown:Lcom/qianhe/yct/view/DitchTypeDropdown;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v4, v1, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setCurrentType(I)V

    .line 281
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 282
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->tvCadImport:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_8

    :cond_9
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 283
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->customDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 284
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ToothView;->setCurrentType(I)V

    .line 285
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v9, v0, Lcom/qianhe/baselib/bean/DikeEntity;->east2:D

    iget-wide v11, v0, Lcom/qianhe/baselib/bean/DikeEntity;->north2:D

    iget-wide v13, v0, Lcom/qianhe/baselib/bean/DikeEntity;->targetElevation2:D

    move-object v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->showCoords(DDD)V

    .line 286
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->refreshData()V

    .line 287
    iget-object v0, v8, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, v8, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v4, v1, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v4, v8, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_a
    const-string v1, " "

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, v8, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    cmpl-double v4, v0, v6

    if-ltz v4, :cond_b

    const/4 v3, 0x1

    :cond_b
    iput v3, v8, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->actionType:I

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

    .line 402
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    new-instance p1, Lcom/qianhe/yct/activity/cad/CadPickHelper;

    new-instance v0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)V

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 60
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 62
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 63
    iget-object p3, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 64
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 66
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 67
    iget-object p3, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 68
    iget-object p3, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 72
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 74
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/DikeEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->initEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    .line 75
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/DikeEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->dikeEntity:Lcom/qianhe/baselib/bean/DikeEntity;

    .line 77
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->initView()V

    .line 78
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->initObserve()V

    .line 79
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 407
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 84
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 85
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->isH5Pro:Z

    .line 86
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->refreshData()V

    return-void
.end method
