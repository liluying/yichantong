.class public Lcom/qianhe/yct/fragment/WaGouStep2Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "WaGouStep2Fragment.java"


# instance fields
.field private actionType:I

.field private binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

.field private cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

.field private initEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

.field private isH5Pro:Z

.field private isUpdatingFields:Z

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;


# direct methods
.method public static synthetic $r8$lambda$5jDuQXinwcehX8So2wiBd40p08M(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;Landroid/view/View;)Z
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    const/4 p1, 0x1

    .line 190
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$AmHPymKbeSJatXVQILR9OshsvlM(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;Ljava/lang/String;[D)V
    .locals 7

    .line 54
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

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

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->showCoords(DDD)V

    return-void
.end method

.method public static synthetic $r8$lambda$kBOnk7-utdFB-w5X1R8R6fbrJj0(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;Landroid/view/View;)V
    .locals 1

    .line 194
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    .line 194
    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

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
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->handleMeasureCollectClick(ILcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$suO14Tb2rA5cddnWld-aWViW3Lc(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;Landroid/view/View;)V
    .locals 7

    .line 186
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    .line 186
    iget-object p0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-object v0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    iget-wide v3, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    .line 188
    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/activity/cad/CadEntityChooseIntent;->singlePoint(DDD)[D

    move-result-object p0

    const/4 v1, 0x1

    .line 186
    invoke-virtual {p1, v0, v1, p0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(Ljava/lang/String;I[D)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetactionType(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->actionType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->initEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisUpdatingFields(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->isUpdatingFields:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputactionType(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->actionType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyDefaultSelBIfValueEmpty(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->applyDefaultSelBIfValueEmpty()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->clearCadPath()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearDepthBForBenchmark(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->clearDepthBForBenchmark()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->createEntity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;DDD)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->saveInputCoordsToGeodetic(DDD)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;DDD)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->showCoords(DDD)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method private applyDefaultSelBIfValueEmpty()V
    .locals 6

    .line 283
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->ivSelB:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->lltValue:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 293
    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    .line 294
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_3

    goto :goto_0

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->ivSelB:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 298
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    .line 299
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->clearDepthBForBenchmark()V

    .line 300
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->lltValue:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private clearCadPath()V
    .locals 6

    .line 418
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, ""

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private clearDepthBForBenchmark()V
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    const/4 v0, 0x1

    .line 400
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->isUpdatingFields:Z

    .line 401
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 402
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->isUpdatingFields:Z

    return-void
.end method

.method private createEntity()V
    .locals 5

    .line 276
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    .line 277
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    .line 278
    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v3, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->actionType:I

    const/4 v4, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    neg-double v0, v0

    :goto_0
    iput-wide v0, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    return-void
.end method

.method private createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;
    .locals 1

    .line 445
    new-instance v0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$12;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$12;-><init>(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V

    return-object v0
.end method

.method private formatDepthBValue(D)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    .line 330
    const-string p1, ""

    return-object p1

    .line 332
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    .line 333
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    .line 334
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide p1

    .line 336
    :cond_1
    invoke-virtual {p0, p1, p2, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initObserve()V
    .locals 3

    .line 406
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/wagou/WaGouCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/wagou/WaGouCreateActivity;->observeCoordsStep2()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$11;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$11;-><init>(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$1;-><init>(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->ivReset:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$2;-><init>(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$3;-><init>(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$4;-><init>(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$5;-><init>(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 185
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setupToothViewCollectListeners(Lcom/qianhe/yct/view/ToothView;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    .line 186
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->tvMeasure:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->tvPointLib:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$6;-><init>(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->lltSel:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$7;-><init>(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->typeDropdown:Lcom/qianhe/yct/view/DitchTypeDropdown;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$8;-><init>(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setOnTypetSelectedListener(Lcom/qianhe/yct/view/DitchTypeDropdown$OnTypeSelectedListener;)V

    .line 235
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$9;-><init>(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$10;-><init>(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->showData()V

    return-void
.end method

.method private refreshData()V
    .locals 11

    .line 340
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->customDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 342
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmpl-double v6, v1, v4

    if-eqz v6, :cond_1

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    cmpl-double v8, v1, v6

    if-nez v8, :cond_1

    .line 343
    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    .line 345
    iput-wide v4, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    goto :goto_0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    .line 348
    iput-wide v4, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    .line 351
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    cmpl-double v6, v1, v4

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    cmpl-double v8, v1, v6

    if-nez v8, :cond_3

    .line 352
    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 353
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    .line 354
    iput-wide v4, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    goto :goto_1

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    .line 357
    iput-wide v4, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    .line 360
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 361
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->ivStep1:Landroid/widget/ImageView;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_wg_flat2:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 362
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->tvDitchType:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->flat_ditch:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 363
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v2, Lcom/qianhe/baselib/enums/WaGouEnum;->DOWN:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 364
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->ivStep1:Landroid/widget/ImageView;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_wg_down2:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 365
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->tvDitchType:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->downhill_ditch:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 366
    :cond_5
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v2, Lcom/qianhe/baselib/enums/WaGouEnum;->UP:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 367
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->ivStep1:Landroid/widget/ImageView;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_wg_up2:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 368
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->tvDitchType:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->upslope_ditch:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 370
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->ivSelB:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v2, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    const/4 v6, 0x0

    if-ne v2, v3, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 371
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->ivSelB:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 372
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    .line 373
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->clearDepthBForBenchmark()V

    .line 374
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v2

    if-ne v0, v2, :cond_a

    .line 375
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput v6, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    .line 376
    iput-wide v4, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    .line 377
    iget-wide v7, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    iget-wide v9, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    cmpl-double v2, v7, v9

    if-nez v2, :cond_a

    iput-wide v4, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    goto :goto_4

    .line 380
    :cond_8
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v2

    if-ne v0, v2, :cond_9

    .line 381
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput v6, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    .line 383
    :cond_9
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    iget-wide v9, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    cmpl-double v2, v7, v9

    if-nez v2, :cond_a

    iput-wide v4, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    .line 385
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v2, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->lltValue:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->ivSelB:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/16 v7, 0x8

    if-eqz v0, :cond_b

    const/16 v0, 0x8

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 388
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->lltValue:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v8, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    cmpl-double v10, v8, v4

    if-nez v10, :cond_c

    iget v2, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    if-nez v2, :cond_d

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->ivSelB:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    cmpl-double v0, v8, v4

    if-nez v0, :cond_d

    :cond_c
    const/4 v7, 0x0

    :cond_d
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v2, v1, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    if-nez v2, :cond_e

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    cmpl-double v7, v1, v4

    if-nez v7, :cond_e

    goto :goto_6

    :cond_e
    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_8

    .line 391
    :cond_f
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->lltValue:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v2, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    if-eqz v2, :cond_11

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->ivSelB:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_7

    :cond_10
    const/16 v6, 0x8

    :cond_11
    :goto_7
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 394
    :goto_8
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->syncDepthBFillDigDisplay()V

    return-void
.end method

.method private saveInputCoordsToGeodetic(DDD)Z
    .locals 9

    .line 430
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    .line 431
    iput-wide p3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    .line 432
    iput-wide p5, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    const/4 v0, 0x3

    .line 433
    new-array v8, v0, [D

    .line 434
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

    .line 439
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    aget-wide p2, v8, p2

    invoke-virtual {p0, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLon2:D

    .line 440
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    const/4 p2, 0x1

    aget-wide p3, v8, p2

    invoke-virtual {p0, p3, p4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLat2:D

    return p2

    .line 435
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    const-wide/16 p3, 0x0

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLon2:D

    .line 436
    iput-wide p3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLat2:D

    return p2
.end method

.method private showCoords(DDD)V
    .locals 7

    .line 422
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->saveInputCoordsToGeodetic(DDD)Z

    move-wide v0, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 423
    iget-object p6, p1, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object p6, p6, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

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

    .line 424
    iget-object p2, p1, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double p3, p4, v4

    if-eqz p3, :cond_1

    invoke-virtual {p0, p4, p5, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v2

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object p2, p1, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double p3, v0, v4

    if-eqz p3, :cond_2

    invoke-virtual {p0, v0, v1, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showData()V
    .locals 8

    .line 304
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->ivReset:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

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

    .line 305
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 307
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 308
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 309
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->lltSel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 310
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->typeDropdown:Lcom/qianhe/yct/view/DitchTypeDropdown;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 311
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 312
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->tvCadImport:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_8

    const/4 v3, 0x1

    :cond_8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 313
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->customDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 314
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ToothView;->setCurrentType(I)V

    .line 315
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->showCoords(DDD)V

    .line 316
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->refreshData()V

    return-void
.end method

.method private syncDepthBFillDigDisplay()V
    .locals 7

    .line 321
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpl-double v6, v0, v2

    if-lez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->actionType:I

    .line 322
    iput-boolean v4, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->isUpdatingFields:Z

    .line 323
    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->typeDropdown:Lcom/qianhe/yct/view/DitchTypeDropdown;

    invoke-virtual {v1, v0, v5}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setCurrentType(IZ)V

    .line 324
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->formatDepthBValue(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iput-boolean v5, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->isUpdatingFields:Z

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

    .line 488
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance p1, Lcom/qianhe/yct/activity/cad/CadPickHelper;

    new-instance v0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 61
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 63
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 64
    iget-object p3, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 65
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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
    iget-object p3, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 69
    iget-object p3, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    iput-object p2, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->initEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    .line 76
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/WaGouEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    .line 78
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->initView()V

    .line 79
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->initObserve()V

    .line 80
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 493
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    return-void
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

    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->isH5Pro:Z

    .line 87
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->refreshData()V

    return-void
.end method
