.class public Lcom/qianhe/yct/fragment/WaGouStep1Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "WaGouStep1Fragment.java"


# instance fields
.field private actionType:I

.field private binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

.field private cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

.field private initEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

.field private isH5Pro:Z

.field private isUpdatingFields:Z

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private mToothType:I

.field private waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;


# direct methods
.method public static synthetic $r8$lambda$S22ZkMdFS1sZYZpkmZBJVEHaPEA(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;Landroid/view/View;)V
    .locals 1

    .line 194
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    .line 194
    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->mToothType:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->please_select_shovel_tip:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 198
    :cond_0
    iget p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->mToothType:I

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->handleMeasureCollectClick(ILcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TJ8GTPbipCpvRrVaZYXjVqio4hA(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;Landroid/view/View;)V
    .locals 7

    .line 186
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    .line 186
    iget-object p0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-object v0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    iget-wide v3, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    .line 188
    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/activity/cad/CadEntityChooseIntent;->singlePoint(DDD)[D

    move-result-object p0

    const/4 v1, 0x1

    .line 186
    invoke-virtual {p1, v0, v1, p0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(Ljava/lang/String;I[D)V

    return-void
.end method

.method public static synthetic $r8$lambda$YsCO0rqtIYDjFVqtvAsUYSXbCrw(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;Ljava/lang/String;[D)V
    .locals 7

    .line 54
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    .line 54
    iput-object p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 55
    aget-wide v1, p2, p1

    const/4 p1, 0x1

    aget-wide v3, p2, p1

    const/4 p1, 0x2

    aget-wide v5, p2, p1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->showCoords(DDD)V

    return-void
.end method

.method public static synthetic $r8$lambda$c6E9B0fqEAoyFM4Cx1dH-6sxF9A(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;Landroid/view/View;)Z
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    const/4 p1, 0x1

    .line 190
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(I)V

    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetactionType(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->actionType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->initEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisUpdatingFields(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->isUpdatingFields:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputactionType(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->actionType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmToothType(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->mToothType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->clearCadPath()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearDepthAForBenchmark(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->clearDepthAForBenchmark()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->createEntity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;DDD)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->saveInputCoordsToGeodetic(DDD)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;DDD)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->showCoords(DDD)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method private clearCadPath()V
    .locals 6

    .line 364
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, ""

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private clearDepthAForBenchmark()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    const/4 v0, 0x1

    .line 340
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->isUpdatingFields:Z

    .line 341
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 342
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->isUpdatingFields:Z

    return-void
.end method

.method private createEntity()V
    .locals 5

    .line 261
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    .line 262
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    .line 263
    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v3, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->actionType:I

    const/4 v4, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    neg-double v0, v0

    :goto_0
    iput-wide v0, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    return-void
.end method

.method private createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;
    .locals 1

    .line 391
    new-instance v0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$12;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$12;-><init>(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)V

    return-object v0
.end method

.method private initObserve()V
    .locals 3

    .line 352
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/wagou/WaGouCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/wagou/WaGouCreateActivity;->observeCoordsStep1()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$11;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$11;-><init>(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$1;-><init>(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->ivReset:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;-><init>(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$3;-><init>(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$4;-><init>(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$5;-><init>(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 185
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setupToothViewCollectListeners(Lcom/qianhe/yct/view/ToothView;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    .line 186
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->tvMeasure:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->tvPointLib:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$6;-><init>(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->lltSel:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$7;-><init>(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->typeDropdown:Lcom/qianhe/yct/view/DitchTypeDropdown;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$8;-><init>(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setOnTypetSelectedListener(Lcom/qianhe/yct/view/DitchTypeDropdown$OnTypeSelectedListener;)V

    .line 233
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$9;-><init>(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$10;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$10;-><init>(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->showData()V

    return-void
.end method

.method private refreshData()V
    .locals 11

    .line 299
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->customDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 301
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->ivSelA:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v2, v1, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    cmpl-double v2, v7, v4

    if-eqz v2, :cond_0

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    cmpl-double v9, v7, v1

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 302
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->ivSelA:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput v6, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    .line 304
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->clearDepthAForBenchmark()V

    .line 305
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 306
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    .line 307
    iput-wide v4, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    .line 308
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    cmpl-double v9, v1, v7

    if-nez v9, :cond_5

    iput-wide v4, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    goto :goto_2

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 312
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    cmpl-double v9, v1, v7

    if-nez v9, :cond_4

    iput-wide v4, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    .line 315
    :cond_4
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->syncDepthADisplay()V

    .line 317
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 318
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->ivStep1:Landroid/widget/ImageView;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_wg_flat1:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->tvDitchType:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->flat_ditch:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 320
    :cond_6
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v2, Lcom/qianhe/baselib/enums/WaGouEnum;->DOWN:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 321
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->ivStep1:Landroid/widget/ImageView;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_wg_down1:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 322
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->tvDitchType:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->downhill_ditch:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 323
    :cond_7
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v2, Lcom/qianhe/baselib/enums/WaGouEnum;->UP:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v2

    if-ne v0, v2, :cond_8

    .line 324
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->ivStep1:Landroid/widget/ImageView;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_wg_up1:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 325
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->tvDitchType:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->upslope_ditch:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 328
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v0, v1, :cond_c

    .line 329
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->lltValue:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v8, v7, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    cmpl-double v10, v8, v4

    if-nez v10, :cond_9

    iget v7, v7, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    if-nez v7, :cond_a

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->ivSelA:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    cmpl-double v0, v7, v4

    if-nez v0, :cond_a

    :cond_9
    const/4 v2, 0x0

    :cond_a
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v2, v1, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    if-nez v2, :cond_b

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    cmpl-double v7, v1, v4

    if-nez v7, :cond_b

    const/4 v3, 0x1

    :cond_b
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 332
    :cond_c
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->lltValue:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v4, v4, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    if-eqz v4, :cond_e

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->ivSelA:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_4

    :cond_d
    const/16 v3, 0x8

    :cond_e
    :goto_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private saveInputCoordsToGeodetic(DDD)Z
    .locals 9

    .line 376
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    .line 377
    iput-wide p3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    .line 378
    iput-wide p5, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    const/4 v0, 0x3

    .line 379
    new-array v8, v0, [D

    .line 380
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

    .line 385
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    aget-wide p2, v8, p2

    invoke-virtual {p0, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLon1:D

    .line 386
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    const/4 p2, 0x1

    aget-wide p3, v8, p2

    invoke-virtual {p0, p3, p4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLat1:D

    return p2

    .line 381
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    const-wide/16 p3, 0x0

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLon1:D

    .line 382
    iput-wide p3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLat1:D

    return p2
.end method

.method private showCoords(DDD)V
    .locals 7

    .line 368
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->saveInputCoordsToGeodetic(DDD)Z

    move-wide v0, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 369
    iget-object p6, p1, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object p6, p6, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

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

    .line 370
    iget-object p2, p1, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double p3, p4, v4

    if-eqz p3, :cond_1

    invoke-virtual {p0, p4, p5, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v2

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object p2, p1, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double p3, v0, v4

    if-eqz p3, :cond_2

    invoke-virtual {p0, v0, v1, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showData()V
    .locals 14

    .line 268
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmpl-double v6, v1, v4

    if-eqz v6, :cond_0

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    cmpl-double v8, v1, v6

    if-nez v8, :cond_0

    .line 269
    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    .line 271
    iput-wide v4, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    cmpl-double v6, v1, v4

    if-eqz v6, :cond_1

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    cmpl-double v8, v1, v6

    if-nez v8, :cond_1

    .line 275
    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 276
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    .line 277
    iput-wide v4, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget v1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->mToothType:I

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ToothView;->setCurrentType(I)V

    .line 281
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->ivReset:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/16 v2, 0x8

    const/4 v6, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_3

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 284
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 285
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 286
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->lltSel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 287
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->typeDropdown:Lcom/qianhe/yct/view/DitchTypeDropdown;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 288
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->typeDropdown:Lcom/qianhe/yct/view/DitchTypeDropdown;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    cmpl-double v7, v1, v4

    if-lez v7, :cond_9

    const/4 v1, 0x1

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setCurrentType(I)V

    .line 289
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->tvCadImport:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 291
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->customDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 292
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    iget-wide v12, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->showCoords(DDD)V

    .line 293
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->refreshData()V

    .line 294
    iget-object v0, v7, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, v7, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    cmpl-double v8, v1, v4

    if-eqz v8, :cond_c

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v2, v7, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v8, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-virtual {p0, v1, v8, v9}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_c
    const-string v1, ""

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, v7, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    cmpl-double v2, v0, v4

    if-lez v2, :cond_d

    goto :goto_a

    :cond_d
    const/4 v3, 0x0

    :goto_a
    iput v3, v7, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->actionType:I

    return-void
.end method

.method private syncDepthADisplay()V
    .locals 6

    const/4 v0, 0x1

    .line 346
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->isUpdatingFields:Z

    .line 347
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 348
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->isUpdatingFields:Z

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

    .line 432
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance p1, Lcom/qianhe/yct/activity/cad/CadPickHelper;

    new-instance v0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)V

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 61
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 63
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 64
    iget-object p3, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 65
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 67
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 68
    iget-object p3, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 69
    iget-object p3, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 73
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 75
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/WaGouEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->initEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    .line 76
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/WaGouEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    .line 78
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->initView()V

    .line 79
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->initObserve()V

    .line 80
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentWgStep1Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 85
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 86
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->isH5Pro:Z

    .line 87
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->refreshData()V

    return-void
.end method
