.class public Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "ExcavatorStep2Fragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

.field private excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private initShovelName:Ljava/lang/String;

.field private lastFocusedTyep:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;

.field private mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;


# direct methods
.method public static synthetic $r8$lambda$3hcytTmZ6nbpAhZcLCTO_xuPh7Y(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Landroid/view/View;)V
    .locals 6

    .line 323
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->findParentNestedScrollView(Landroid/view/View;)Landroidx/core/widget/NestedScrollView;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    const/4 v2, 0x2

    .line 325
    new-array v3, v2, [I

    .line 326
    new-array v2, v2, [I

    .line 327
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 328
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 329
    aget v4, v3, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v4, p1

    .line 330
    aget p1, v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr p1, v5

    if-le v4, p1, :cond_0

    sub-int/2addr v4, p1

    .line 332
    invoke-virtual {p0, v0, v4}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    return-void

    .line 333
    :cond_0
    aget p1, v3, v1

    aget v1, v2, v1

    if-ge p1, v1, :cond_1

    sub-int/2addr p1, v1

    .line 334
    invoke-virtual {p0, v0, p1}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    :cond_1
    return-void

    .line 337
    :cond_2
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 338
    invoke-virtual {p1, p0, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    return-void
.end method

.method public static synthetic $r8$lambda$SAtCFnKJ_7QG4BdI3hNkBGRYMmU(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    const-string p1, "createNew"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->applyNewBucket()V

    return-void

    .line 377
    :cond_0
    const-string p1, "excavator"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-nez p1, :cond_1

    return-void

    .line 380
    :cond_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->applyExistingBucketFromExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sGPMOTWdR2UiIBO6EqNfnDqeUD4(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    const-string p1, "createNew"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->applyNewBucket()V

    return-void

    .line 362
    :cond_0
    const-string p1, "bucket"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ShovelEntity;

    if-nez p1, :cond_1

    return-void

    .line 364
    :cond_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->applyExistingBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGGA(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/GGAEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastFocusedTyep(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->lastFocusedTyep:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyNewBucket(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->applyNewBucket()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgenerateToolParamLocally(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->generateToolParamLocally()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misComboCreateBucketFlow(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->isComboCreateBucketFlow()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misExistingBucket(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->isExistingBucket()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misShovelNameDuplicate(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->isShovelNameDuplicate()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monComboContinue(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->onComboContinue()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecordStep2ToolEvents(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->recordStep2ToolEvents()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetShovelDefaultName(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->setShovelDefaultName()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowActualImageDialog(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->showActualImageDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowBucketSelectDialog(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->showBucketSelectDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTvDoubtVisibility(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->updateTvDoubtVisibility(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    .line 65
    sget-object v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;->G1:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;

    iput-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->lastFocusedTyep:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)I
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;ID)D
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1000(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;ID)D
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1100(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)I
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;ID)D
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1300(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)I
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;ID)D
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1500(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Landroid/view/View;)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->postWizardNext(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Landroid/widget/ImageView;I)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Landroid/widget/ImageView;I)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->cancelLoadingDialog()V

    return-void
.end method

.method static synthetic access$1900(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Landroid/view/View;)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->postWizardNext(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)I
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Landroid/view/View;)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->restoreContinueEnabled(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;ID)D
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Landroid/view/View;)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->postWizardNext(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)I
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;ID)D
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$700(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)I
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;ID)D
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$900(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)I
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method private applyExistingBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 14

    .line 418
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->initShovelName:Ljava/lang/String;

    .line 419
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtShovelName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v0

    iput v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->showUnit:I

    .line 421
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object p1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 423
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getG1()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getG2()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getG3()D

    move-result-wide v6

    .line 424
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getLy()D

    move-result-wide v8

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getRy()D

    move-result-wide v10

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAB()D

    move-result-wide v12

    .line 422
    invoke-virtual/range {v1 .. v13}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setMeasureValues(DDDDDD)V

    .line 425
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG1:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getG1()D

    move-result-wide v2

    const/4 v4, 0x3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG2:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getG2()D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG3:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getG3()D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtLR:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getLy()D

    move-result-wide v2

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v5

    const/4 v5, 0x4

    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtAB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAB()D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 430
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->setBucketFieldsEditable(Z)V

    return-void
.end method

.method private applyExistingBucketFromExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 385
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 386
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    .line 387
    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByLocalId(J)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 389
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 392
    :cond_0
    invoke-static {p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->existingToolParamFromExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 393
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 397
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->clearReuseBucketInput()V

    .line 398
    new-instance v1, Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;-><init>()V

    .line 399
    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    .line 400
    iget-object v0, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 401
    iget v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    iput v0, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    .line 402
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v0

    iput v0, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->showUnit:I

    .line 403
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 404
    invoke-virtual {v0, p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->copyBucketMeasureFrom(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 405
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesAutoGenerateParams()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParams:Ljava/lang/String;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    goto :goto_0

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParams:Ljava/lang/String;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    .line 410
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v0, :cond_3

    .line 411
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->setReuseBucketSource(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 413
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->tvShovelManager:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 414
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->setExistingBucketUi(Z)V

    return-void

    .line 394
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->cannot_configure:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method private applyNewBucket()V
    .locals 19

    move-object/from16 v0, p0

    .line 434
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->isComboCreateBucketFlow()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->isExistingBucket()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 435
    :goto_0
    iget-object v4, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    new-instance v5, Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {v5}, Lcom/qianhe/baselib/bean/ShovelEntity;-><init>()V

    iput-object v5, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 436
    iget-object v6, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-virtual/range {v6 .. v18}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setMeasureValues(DDDDDD)V

    const/4 v4, 0x0

    .line 437
    iput-object v4, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->initShovelName:Ljava/lang/String;

    .line 438
    iget-object v5, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG1:Lcom/qianhe/yct/view/NumericEditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v5, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG2:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v5, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG3:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v5, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtLR:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v5, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtAB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->isComboCreateBucketFlow()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 444
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v3, :cond_1

    .line 445
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v3, v4}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->setReuseBucketSource(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 447
    :cond_1
    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->tvShovelManager:Landroidx/appcompat/widget/AppCompatTextView;

    sget v4, Lcom/qianhe/yct/R$string;->select_bucket:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 448
    invoke-direct {v0, v2}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->setExistingBucketUi(Z)V

    .line 449
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->clearReuseBucketInput()V

    if-eqz v1, :cond_2

    .line 451
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->showPostureTipsDialog()V

    :cond_2
    return-void

    .line 455
    :cond_3
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtShovelName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    invoke-direct {v0, v3}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->setBucketFieldsEditable(Z)V

    .line 457
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtShovelName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private findFirstEmptyGField()Landroid/view/View;
    .locals 5

    .line 312
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG1:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG1:Lcom/qianhe/yct/view/NumericEditText;

    return-object v0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG2:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG2:Lcom/qianhe/yct/view/NumericEditText;

    return-object v0

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG3:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG3:Lcom/qianhe/yct/view/NumericEditText;

    return-object v0

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtLR:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtLR:Lcom/qianhe/yct/view/NumericEditText;

    return-object v0

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtAB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtAB:Lcom/qianhe/yct/view/NumericEditText;

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private findParentNestedScrollView(Landroid/view/View;)Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 345
    :goto_0
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 346
    instance-of v0, p1, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    .line 347
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    return-object p1

    .line 349
    :cond_0
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private generateToolParamLocally()V
    .locals 8

    .line 617
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->isComboCreateBucketFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->isExistingBucket()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v0

    .line 619
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v4, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordReuseBucketInput(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    .line 621
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->tvContinue:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->postWizardNext(Landroid/view/View;)V

    return-void

    .line 624
    :cond_0
    sget v0, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->showLoadingDialog(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->tvContinue:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-nez v1, :cond_2

    .line 629
    new-instance v1, Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;-><init>()V

    iput-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 631
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->isComboCreateBucketFlow()Z

    move-result v0

    .line 633
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_5

    if-eqz v0, :cond_4

    .line 635
    iget-object v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    goto :goto_0

    .line 636
    :cond_4
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtShovelName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 638
    :cond_5
    iget-object v1, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    .line 640
    :goto_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;

    invoke-direct {v3, p0, v1, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 680
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private initGifShow()V
    .locals 4

    .line 520
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG1:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;->G1:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_g1_sensor:I

    sget v3, Lcom/qianhe/yct/R$drawable;->icon_g1_no_sensor:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;II)V

    .line 521
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG2:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;->G2:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_g2_sensor:I

    sget v3, Lcom/qianhe/yct/R$drawable;->icon_g2_no_sensor:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;II)V

    .line 522
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG3:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;->G3:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_g3_sensor:I

    sget v3, Lcom/qianhe/yct/R$drawable;->icon_g3_no_sensor:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;II)V

    .line 523
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtLR:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;->LR:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_lr_sensor:I

    sget v3, Lcom/qianhe/yct/R$drawable;->icon_lr_no_sensor:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;II)V

    .line 524
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtAB:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;->AB:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_ab_sensor:I

    sget v3, Lcom/qianhe/yct/R$drawable;->icon_ab_no_sensor:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;II)V

    .line 525
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtShovelName:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$7;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtShovelName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NoUnderscoreInputFilter;->apply(Landroid/widget/EditText;)V

    .line 156
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$2;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->lltShovelManager:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$3;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->tvCancelExisting:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$4;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$5;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$6;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->bindContinueClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 245
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->initGifShow()V

    .line 246
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->showData()V

    .line 247
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->setupFragmentResultListener()V

    .line 248
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->updateContinueButtonText()V

    return-void
.end method

.method private isComboCreateBucketFlow()Z
    .locals 6

    .line 253
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->syncLiveExcavatorEntity()V

    .line 254
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    .line 256
    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-boolean v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->distanceBucketMeasure:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isExistingBucket()Z
    .locals 7

    .line 493
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->isComboCreateBucketFlow()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->getReuseBucketSource()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_2

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private isShovelNameDuplicate()Z
    .locals 6

    .line 692
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    goto :goto_0

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtShovelName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 696
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/qianhe/yct/db/DatabaseManager;->isShovelNameExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->initShovelName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->initShovelName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private onComboContinue()V
    .locals 17

    move-object/from16 v0, p0

    .line 277
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->isExistingBucket()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 279
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v1

    .line 284
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v4, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v5, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-static {v2, v3, v4, v5, v1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordReuseBucketInput(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    .line 286
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->tvContinue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->postWizardNext(Landroid/view/View;)V

    return-void

    .line 280
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->cannot_configure:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 289
    :cond_2
    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG1:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v5

    .line 290
    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG2:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v7

    .line 291
    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG3:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v9

    .line 292
    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtLR:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v1

    .line 293
    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v3

    iget-object v4, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtAB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v4}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v11

    invoke-virtual {v0, v3, v11, v12}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v3

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    cmpl-double v14, v5, v12

    if-eqz v14, :cond_6

    cmpl-double v14, v7, v12

    if-eqz v14, :cond_6

    cmpl-double v14, v9, v12

    if-eqz v14, :cond_6

    cmpl-double v14, v1, v12

    if-eqz v14, :cond_6

    cmpl-double v14, v3, v12

    if-nez v14, :cond_3

    goto :goto_2

    .line 299
    :cond_3
    invoke-direct {v0, v5, v6}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->outOfRange(D)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-direct {v0, v7, v8}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->outOfRange(D)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-direct {v0, v9, v10}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->outOfRange(D)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->outOfRange(D)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-direct {v0, v3, v4}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->outOfRange(D)Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_1

    :cond_4
    move-wide v15, v3

    .line 303
    iget-object v4, v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double v11, v1, v11

    move-wide v13, v11

    invoke-virtual/range {v4 .. v16}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setMeasureValues(DDDDDD)V

    .line 304
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->generateToolParamLocally()V

    return-void

    .line 300
    :cond_5
    :goto_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v11}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 295
    :cond_6
    :goto_2
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->findFirstEmptyGField()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->scrollEmptyFieldIntoView(Landroid/view/View;)V

    .line 296
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->config_empty:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v11}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method private outOfRange(D)Z
    .locals 5

    .line 308
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private recordStep2ToolEvents()V
    .locals 4

    .line 684
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const-string v2, "local"

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginForExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V

    .line 687
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v0

    .line 688
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-static {v1, v2, v3, v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordToolEvents(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    return-void
.end method

.method private scrollEmptyFieldIntoView(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 322
    :cond_0
    new-instance v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$$ExternalSyntheticLambda7;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setBucketFieldsEditable(Z)V
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtShovelName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 477
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG1:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 478
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG2:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 479
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG3:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 480
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtLR:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 481
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtAB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_1

    .line 483
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 484
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 485
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    .line 486
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method private setExistingBucketUi(Z)V
    .locals 3

    .line 461
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->lltExistingHint:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtShovelName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    xor-int/lit8 v0, p1, 0x1

    .line 463
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->setMeasureFieldsVisible(Z)V

    xor-int/lit8 p1, p1, 0x1

    .line 464
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->setBucketFieldsEditable(Z)V

    return-void
.end method

.method private setMeasureFieldsVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 469
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->lltUnitRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->lltRowG1G2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->lltRowG3Lr:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->lltRowAb:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setShovelDefaultName()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 703
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryShovelByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 704
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 705
    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v3, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/qianhe/yct/R$string;->shovel:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 706
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    const-string/jumbo v2, "shovel"

    invoke-virtual {v1, v2, v0}, Lcom/qianhe/yct/db/DatabaseManager;->isEntityNameExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 707
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    cmp-long v3, v1, v5

    if-nez v3, :cond_1

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 710
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtShovelName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 712
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtShovelName:Landroidx/appcompat/widget/AppCompatEditText;

    sget v3, Lcom/qianhe/yct/R$string;->shovel:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    const-string v0, "%s1"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtShovelName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private setupComboBucketResultListener()V
    .locals 3

    .line 371
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V

    const-string v2, "combo_step2_bucket_from_excavator"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method private setupFragmentResultListener()V
    .locals 3

    .line 355
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->isComboCreateBucketFlow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V

    const-string v2, "bucket_select_reading"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 367
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->setupComboBucketResultListener()V

    return-void
.end method

.method private setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;II)V
    .locals 1

    .line 544
    new-instance v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$8;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$8;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;)V

    .line 551
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    new-instance v0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$9;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$9;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private showActualImageDialog()V
    .locals 6

    .line 569
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 570
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_g1_actual_big:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_g1_actual:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "G1"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_g2_actual_big:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_g2_actual:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$$ExternalSyntheticBackport1;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "G2"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_g3_actual_big:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_g3_actual:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$$ExternalSyntheticBackport2;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "G3"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_lr_actual:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$$ExternalSyntheticBackport3;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "LR"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_ab_actual:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$$ExternalSyntheticBackport4;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "AB"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->lastFocusedTyep:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {v1, v2, v0, v3, v5}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->showCarousel(Landroid/content/Context;Landroid/content/res/Configuration;Ljava/util/LinkedHashMap;Ljava/lang/String;Z)V

    return-void
.end method

.method private showBucketSelectDialog()V
    .locals 4

    .line 502
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->isComboCreateBucketFlow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 504
    const-string v1, "combo_step2_bucket_from_excavator"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 506
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 508
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->setupComboBucketResultListener()V

    .line 509
    sget v2, Lcom/qianhe/yct/R$string;->select_bucket:I

    invoke-static {v1, v2}, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;->newInstance(Ljava/lang/String;I)Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;

    move-result-object v2

    .line 511
    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 514
    const-string v1, "bucket_select_reading"

    invoke-static {v0, v1}, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->newInstance(ZLjava/lang/String;)Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;

    move-result-object v0

    .line 516
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showData()V
    .locals 9

    .line 579
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->unitDropdownSensor:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 580
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->tvUnitValue:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->refreshMode1UnitLabel(Landroid/widget/TextView;)V

    .line 581
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    invoke-virtual {p0, v1, v5, v6, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG1()D

    move-result-wide v0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_1

    .line 583
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG1:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v5}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG1()D

    move-result-wide v5

    invoke-virtual {p0, v1, v5, v6, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG2()D

    move-result-wide v0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_2

    .line 586
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG2:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v5}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG2()D

    move-result-wide v5

    invoke-virtual {p0, v1, v5, v6, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG3()D

    move-result-wide v0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_3

    .line 589
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtG3:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v5}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG3()D

    move-result-wide v5

    invoke-virtual {p0, v1, v5, v6, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_4

    .line 592
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtLR:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v5}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double v5, v5, v7

    const/4 v7, 0x4

    invoke-virtual {p0, v1, v5, v6, v7}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_5

    .line 595
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtAB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v3}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v3

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    :cond_5
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->isComboCreateBucketFlow()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 598
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->tvShovelManager:Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lcom/qianhe/yct/R$string;->select_bucket:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 599
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v0, :cond_6

    .line 600
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->getReuseBucketSource()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 602
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->applyExistingBucketFromExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void

    :cond_6
    const/4 v0, 0x0

    .line 606
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->setExistingBucketUi(Z)V

    return-void

    .line 609
    :cond_7
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 610
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->edtShovelName:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->initShovelName:Ljava/lang/String;

    .line 613
    :cond_8
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->isExistingBucket()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->setBucketFieldsEditable(Z)V

    return-void
.end method

.method private showPostureTipsDialog()V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->excavator_step2_posture_tips:I

    .line 143
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    .line 144
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 142
    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private syncLiveExcavatorEntity()V
    .locals 1

    .line 261
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->getExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iput-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    :cond_0
    return-void
.end method

.method private updateContinueButtonText()V
    .locals 2

    .line 270
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->isComboCreateBucketFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->isReplaceBucketMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 273
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->tvContinue:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    sget v0, Lcom/qianhe/yct/R$string;->btn_complete:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/qianhe/yct/R$string;->next:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private updateTvDoubtVisibility(Z)V
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    const/16 v2, 0x8

    if-ne v0, v1, :cond_0

    .line 537
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public gga(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    return-void
.end method

.method public insNavi(Lcom/qianhe/baselib/bean/InsNavi;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 725
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 69
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    .line 70
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 71
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 72
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 74
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 75
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 76
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p3, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :catch_0
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->resolveInitExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 81
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->resolveExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 82
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->initView()V

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance p3, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$1;

    invoke-direct {p3, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$1;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)V

    const-string/jumbo v0, "step2_shovel_name"

    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 107
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->ivStep2:Lpl/droidsonroids/gif/GifImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->recycleGif(Landroid/widget/ImageView;)V

    .line 731
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->ivStep2:Lpl/droidsonroids/gif/GifImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifPlaying(Landroid/widget/ImageView;Z)V

    .line 151
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 112
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 113
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->tvContinue:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->restoreContinueEnabled(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 114
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->updateTvDoubtVisibility(Z)V

    .line 115
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->unitDropdownSensor:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 116
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->tvUnitValue:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->refreshMode1UnitLabel(Landroid/widget/TextView;)V

    .line 117
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v1, v2, :cond_1

    .line 118
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->ivStep2:Lpl/droidsonroids/gif/GifImageView;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_g1_sensor:I

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    .line 119
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->ivStep2CloseUp:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 121
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->ivStep2:Lpl/droidsonroids/gif/GifImageView;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_excavator_ar:I

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isKe76Pro()Z

    move-result v1

    .line 123
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->ivStep2CloseUp:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->ivStep2CloseUp:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_2

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_ex30_close_up:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_h5pro_close_up:I

    :goto_1
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_2

    .line 125
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_NOT_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 126
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->ivStep2:Lpl/droidsonroids/gif/GifImageView;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_g1_no_sensor:I

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    .line 127
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->ivStep2CloseUp:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->lltMode23:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v2, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v5, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v5}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v5

    if-ne v2, v5, :cond_5

    const/16 v2, 0x8

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v2, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->lltMode1:Landroid/widget/LinearLayout;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->lltMode23:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    const/16 v3, 0x8

    :cond_6
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->ivStep2:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p0, v1, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifPlaying(Landroid/widget/ImageView;Z)V

    .line 132
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->isComboCreateBucketFlow()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->isExistingBucket()Z

    move-result v0

    if-nez v0, :cond_8

    .line 133
    :cond_7
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->showPostureTipsDialog()V

    .line 135
    :cond_8
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->updateContinueButtonText()V

    return-void
.end method
