.class public Lcom/qianhe/yct/fragment/LineStep3Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "LineStep3Fragment.java"


# instance fields
.field private actionTypeA:I

.field private actionTypeB:I

.field private baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

.field private binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

.field private cachedEast1:D

.field private cachedEast2:D

.field private cachedElev1:D

.field private cachedElev2:D

.field private cachedNorth1:D

.field private cachedNorth2:D

.field private coordsSnapshotTaken:Z

.field private initEntity:Lcom/qianhe/baselib/bean/LineEntity;

.field private isH5Pro:Z

.field private isUpdatingFields:Z

.field private lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;


# direct methods
.method static bridge synthetic -$$Nest$fgetactionTypeA(Lcom/qianhe/yct/fragment/LineStep3Fragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->actionTypeA:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetactionTypeB(Lcom/qianhe/yct/fragment/LineStep3Fragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->actionTypeB:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisUpdatingFields(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->isUpdatingFields:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/baselib/bean/LineEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputactionTypeA(Lcom/qianhe/yct/fragment/LineStep3Fragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->actionTypeA:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputactionTypeB(Lcom/qianhe/yct/fragment/LineStep3Fragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->actionTypeB:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyHeightDiffInput(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->applyHeightDiffInput()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyRatioInput(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->applyRatioInput()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcommitFocusedInput(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->commitFocusedInput()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->createEntity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDisplayUnit(Lcom/qianhe/yct/fragment/LineStep3Fragment;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getDisplayUnit()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monAChanged(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->onAChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBChanged(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->onBChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monLengthChanged(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->onLengthChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncDepthAFromUi(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->syncDepthAFromUi()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncDepthBFromUi(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->syncDepthBFromUi()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncLengthFromUi(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->syncLengthFromUi()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/fragment/LineStep3Fragment;ID)D
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/fragment/LineStep3Fragment;ID)D
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method private applyHeightDiffInput()V
    .locals 7

    .line 421
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->isUpdatingFields:Z

    if-eqz v0, :cond_0

    return-void

    .line 422
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->syncDepthAFromUi()V

    .line 423
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->readHeightDiffInputMeter()D

    move-result-wide v0

    .line 424
    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getActualElevationA()D

    move-result-wide v3

    sub-double/2addr v3, v0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation2:D

    sub-double/2addr v3, v0

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/LineEntity;->depthB:D

    .line 425
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->updateBFillDigDisplay()V

    .line 426
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getHeightDiffMeter()D

    move-result-wide v0

    .line 427
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->updateHeightDiffDisplay(D)V

    .line 428
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getLengthMeter()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_1

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v4, v0, v2

    .line 430
    :cond_1
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->updateRatioDisplay(D)V

    .line 431
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->refreshPreview()V

    return-void
.end method

.method private applyRatioInput()V
    .locals 14

    .line 436
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->isUpdatingFields:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 440
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->syncDepthAFromUi()V

    .line 441
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getHeightDiffMeter()D

    move-result-wide v5

    .line 442
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v11, v7, v9

    if-gez v11, :cond_2

    .line 444
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->readHeightDiffInputMeter()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    :cond_2
    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    cmpg-double v13, v7, v9

    if-gez v13, :cond_4

    .line 449
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getLengthMeter()D

    move-result-wide v7

    cmpg-double v4, v7, v2

    if-gtz v4, :cond_3

    :goto_0
    return-void

    :cond_3
    div-double v2, v0, v11

    :goto_1
    mul-double v7, v7, v2

    goto :goto_3

    :cond_4
    if-lez v4, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, -0x1

    :goto_2
    int-to-double v2, v2

    goto :goto_1

    :goto_3
    sub-double v2, v7, v5

    .line 456
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v9

    if-lez v4, :cond_6

    .line 457
    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getActualElevationA()D

    move-result-wide v3

    sub-double/2addr v3, v7

    iget-object v5, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation2:D

    sub-double/2addr v3, v5

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/LineEntity;->depthB:D

    .line 458
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->updateBFillDigDisplay()V

    .line 459
    invoke-direct {p0, v7, v8}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->updateHeightDiffDisplay(D)V

    move-wide v5, v7

    :cond_6
    div-double v2, v0, v11

    div-double/2addr v5, v2

    .line 463
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 464
    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->updateLengthDisplay(D)V

    .line 465
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->updateRatioDisplay(D)V

    .line 466
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->refreshPreview()V

    return-void
.end method

.method private commitFocusedInput()V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtHeightDiff:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->applyHeightDiffInput()V

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->applyRatioInput()V

    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->syncDepthAFromUi()V

    .line 278
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->onAChanged()V

    return-void

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 280
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->syncDepthBFromUi()V

    .line 281
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->onBChanged()V

    return-void

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 283
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->syncLengthFromUi()V

    .line 284
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->onLengthChanged()V

    :cond_4
    return-void
.end method

.method private createEntity()V
    .locals 6

    .line 494
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/LineEntity;->depthA:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->actionTypeA:I

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    if-nez v5, :cond_0

    neg-double v1, v1

    :cond_0
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/LineEntity;->depthA:D

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/LineEntity;->depthB:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_3

    iget v3, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->actionTypeB:I

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    if-nez v3, :cond_2

    neg-double v1, v1

    :cond_2
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/LineEntity;->depthB:D

    .line 496
    :cond_3
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->syncLengthFromUi()V

    .line 497
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getDisplayUnit()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    .line 498
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/LineEntity;->ratio:D

    .line 499
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->ivToggle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 500
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getDisplayUnit()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtSpacing:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/LineEntity;->spacing:D

    .line 501
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtRightItems:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtRightItems:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    iput v1, v0, Lcom/qianhe/baselib/bean/LineEntity;->rigthItems:I

    .line 502
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtLeftItems:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtLeftItems:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_1
    iput v2, v0, Lcom/qianhe/baselib/bean/LineEntity;->leftItems:I

    .line 504
    :cond_6
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    if-eqz v0, :cond_7

    .line 506
    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/BaseStationEntity;->lon:D

    const/16 v0, 0x8

    invoke-virtual {p0, v2, v3, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    .line 507
    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/BaseStationEntity;->lat:D

    invoke-virtual {p0, v2, v3, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    .line 508
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/BaseStationEntity;->elev:D

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    :cond_7
    return-void
.end method

.method private getActualElevationA()D
    .locals 5

    .line 344
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation1:D

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/LineEntity;->depthA:D

    add-double/2addr v1, v3

    return-wide v1
.end method

.method private getActualElevationB()D
    .locals 5

    .line 348
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation2:D

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/LineEntity;->depthB:D

    add-double/2addr v1, v3

    return-wide v1
.end method

.method private getComputedDistanceMeter()D
    .locals 10

    .line 333
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/LineEntity;->east1:D

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/LineEntity;->north1:D

    const/4 v5, 0x2

    new-array v6, v5, [D

    const/4 v7, 0x0

    aput-wide v1, v6, v7

    const/4 v1, 0x1

    aput-wide v3, v6, v1

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/LineEntity;->east2:D

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/LineEntity;->north2:D

    new-array v0, v5, [D

    aput-wide v2, v0, v7

    aput-wide v8, v0, v1

    invoke-static {v6, v0}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getDisplayUnit()I
    .locals 1

    .line 290
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v0

    return v0
.end method

.method private getHeightDiffMeter()D
    .locals 4

    .line 352
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getActualElevationA()D

    move-result-wide v0

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getActualElevationB()D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private getLengthMeter()D
    .locals 5

    .line 360
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getDisplayUnit()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 362
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getStoredLengthMeter()D

    move-result-wide v0

    return-wide v0

    .line 364
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getStoredLengthMeter()D

    move-result-wide v0

    return-wide v0
.end method

.method private getStoredLengthMeter()D
    .locals 5

    .line 340
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/LineEntity;->length:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getComputedDistanceMeter()D

    move-result-wide v0

    return-wide v0
.end method

.method private haveCoordsChanged()Z
    .locals 1

    .line 540
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->coordsSnapshotTaken:Z

    if-nez v0, :cond_0

    .line 541
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->haveCoordsChangedFromInit()Z

    move-result v0

    return v0

    .line 543
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->haveCoordsChangedFromCache()Z

    move-result v0

    return v0
.end method

.method private haveCoordsChangedFromCache()Z
    .locals 4

    .line 556
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/LineEntity;->east1:D

    iget-wide v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->cachedEast1:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/LineEntity;->north1:D

    iget-wide v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->cachedNorth1:D

    .line 557
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation1:D

    iget-wide v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->cachedElev1:D

    .line 558
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/LineEntity;->east2:D

    iget-wide v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->cachedEast2:D

    .line 559
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/LineEntity;->north2:D

    iget-wide v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->cachedNorth2:D

    .line 560
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation2:D

    iget-wide v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->cachedElev2:D

    .line 561
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private haveCoordsChangedFromInit()Z
    .locals 4

    .line 547
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/LineEntity;->east1:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/LineEntity;->east1:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/LineEntity;->north1:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/LineEntity;->north1:D

    .line 548
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation1:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation1:D

    .line 549
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/LineEntity;->east2:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/LineEntity;->east2:D

    .line 550
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/LineEntity;->north2:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/LineEntity;->north2:D

    .line 551
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation2:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation2:D

    .line 552
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private initView()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueA:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/LineStep3Fragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment$1;-><init>(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueB:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/LineStep3Fragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment$2;-><init>(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtSpacing:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/LineStep3Fragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment$3;-><init>(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueA:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/LineStep3Fragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment$4;-><init>(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/NumericEditText;->setOnFocusListener(Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;)V

    .line 155
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueB:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/LineStep3Fragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment$5;-><init>(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/NumericEditText;->setOnFocusListener(Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;)V

    .line 167
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/LineStep3Fragment$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment$6;-><init>(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/NumericEditText;->setOnFocusListener(Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;)V

    .line 176
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtHeightDiff:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/LineStep3Fragment$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment$7;-><init>(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/NumericEditText;->setOnFocusListener(Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;)V

    .line 184
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/LineStep3Fragment$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment$8;-><init>(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/NumericEditText;->setOnFocusListener(Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;)V

    .line 192
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->typeDropdownA:Lcom/qianhe/yct/view/DitchTypeDropdown;

    new-instance v1, Lcom/qianhe/yct/fragment/LineStep3Fragment$9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment$9;-><init>(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setOnTypetSelectedListener(Lcom/qianhe/yct/view/DitchTypeDropdown$OnTypeSelectedListener;)V

    .line 201
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->typeDropdownB:Lcom/qianhe/yct/view/DitchTypeDropdown;

    new-instance v1, Lcom/qianhe/yct/fragment/LineStep3Fragment$10;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment$10;-><init>(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setOnTypetSelectedListener(Lcom/qianhe/yct/view/DitchTypeDropdown$OnTypeSelectedListener;)V

    .line 210
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->lltToggle:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/LineStep3Fragment$11;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment$11;-><init>(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/LineStep3Fragment$12;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment$12;-><init>(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment$13;-><init>(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->showData()V

    .line 252
    new-instance v0, Lcom/qianhe/yct/utils/KeyboardUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/LineStep3Fragment$14;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment$14;-><init>(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/utils/KeyboardUtil;-><init>(Landroid/app/Activity;Lcom/qianhe/yct/utils/KeyboardUtil$OnKeyboardVisibilityListener;)V

    return-void
.end method

.method private onAChanged()V
    .locals 1

    .line 405
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->isUpdatingFields:Z

    if-eqz v0, :cond_0

    return-void

    .line 406
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->refreshHeightDiff()V

    .line 407
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->refreshRatioDisplay()V

    .line 408
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->refreshPreview()V

    return-void
.end method

.method private onBChanged()V
    .locals 1

    .line 413
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->isUpdatingFields:Z

    if-eqz v0, :cond_0

    return-void

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->refreshHeightDiff()V

    .line 415
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->refreshRatioDisplay()V

    .line 416
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->refreshPreview()V

    return-void
.end method

.method private onLengthChanged()V
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->refreshRatioDisplay()V

    .line 482
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->refreshPreview()V

    return-void
.end method

.method private readHeightDiffInputMeter()D
    .locals 3

    .line 356
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getDisplayUnit()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtHeightDiff:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method private recalculateFromCoords()V
    .locals 9

    .line 576
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/LineEntity;->length:D

    const/4 v0, 0x1

    .line 577
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->isUpdatingFields:Z

    .line 578
    iget-object v3, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getDisplayUnit()I

    move-result v4

    iget-object v5, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/LineEntity;->depthA:D

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v4

    const/4 v6, 0x2

    invoke-virtual {p0, v4, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v3, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getDisplayUnit()I

    move-result v4

    iget-object v5, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v7, v5, Lcom/qianhe/baselib/bean/LineEntity;->depthB:D

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    invoke-virtual {p0, v4, v7, v8}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v3, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v4, v3, Lcom/qianhe/baselib/bean/LineEntity;->depthA:D

    const/4 v6, 0x0

    cmpl-double v7, v4, v1

    if-lez v7, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput v4, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->actionTypeA:I

    .line 581
    iget-wide v7, v3, Lcom/qianhe/baselib/bean/LineEntity;->depthB:D

    cmpl-double v3, v7, v1

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->actionTypeB:I

    .line 582
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->typeDropdownA:Lcom/qianhe/yct/view/DitchTypeDropdown;

    invoke-virtual {v0, v4}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setCurrentType(I)V

    .line 583
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->typeDropdownB:Lcom/qianhe/yct/view/DitchTypeDropdown;

    iget v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->actionTypeB:I

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setCurrentType(I)V

    .line 584
    iput-boolean v6, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->isUpdatingFields:Z

    .line 585
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getComputedDistanceMeter()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->updateLengthDisplay(D)V

    .line 586
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->refreshHeightDiff()V

    .line 587
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->refreshRatioDisplay()V

    .line 588
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->refreshPreview()V

    return-void
.end method

.method private refreshData()V
    .locals 6

    .line 530
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getDisplayUnit()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/LineEntity;->depthA:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v1

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getDisplayUnit()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v4, v2, Lcom/qianhe/baselib/bean/LineEntity;->depthB:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getStoredLengthMeter()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->updateLengthDisplay(D)V

    .line 533
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->refreshUnitLabels()V

    .line 534
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->refreshHeightDiff()V

    .line 535
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->refreshRatioDisplay()V

    .line 536
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->refreshPreview()V

    return-void
.end method

.method private refreshHeightDiff()V
    .locals 2

    .line 374
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->isUpdatingFields:Z

    if-eqz v0, :cond_0

    return-void

    .line 375
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getHeightDiffMeter()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->updateHeightDiffDisplay(D)V

    return-void
.end method

.method private refreshPreview()V
    .locals 10

    .line 400
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->linePreView:Lcom/qianhe/yct/view/LinePreView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/LineEntity;->east1:D

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getActualElevationA()D

    move-result-wide v3

    const/4 v5, 0x2

    new-array v6, v5, [D

    const/4 v7, 0x0

    aput-wide v1, v6, v7

    const/4 v1, 0x1

    aput-wide v3, v6, v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/LineEntity;->east2:D

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getActualElevationB()D

    move-result-wide v8

    new-array v4, v5, [D

    aput-wide v2, v4, v7

    aput-wide v8, v4, v1

    invoke-virtual {v0, v6, v4}, Lcom/qianhe/yct/view/LinePreView;->setPointAB([D[D)V

    return-void
.end method

.method private refreshRatioDisplay()V
    .locals 5

    .line 386
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->isUpdatingFields:Z

    if-eqz v0, :cond_0

    return-void

    .line 387
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getLengthMeter()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 388
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getHeightDiffMeter()D

    move-result-wide v2

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v0

    .line 389
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->updateRatioDisplay(D)V

    return-void
.end method

.method private refreshUnitLabels()V
    .locals 2

    .line 294
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getDisplayUnitText()Ljava/lang/String;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->tvUnitValueA:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->tvUnitValueB:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->tvUnitLength:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->tvUnitHeightDiff:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->tvUnitSpacing:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showData()V
    .locals 10

    .line 513
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->typeDropdownA:Lcom/qianhe/yct/view/DitchTypeDropdown;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

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

    .line 514
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->typeDropdownA:Lcom/qianhe/yct/view/DitchTypeDropdown;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v4, v1, Lcom/qianhe/baselib/bean/LineEntity;->depthA:D

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setCurrentType(I)V

    .line 515
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueA:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 517
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->typeDropdownB:Lcom/qianhe/yct/view/DitchTypeDropdown;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 518
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->typeDropdownB:Lcom/qianhe/yct/view/DitchTypeDropdown;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v4, v1, Lcom/qianhe/baselib/bean/LineEntity;->depthB:D

    cmpl-double v1, v4, v6

    if-lez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setCurrentType(I)V

    .line 519
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueB:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 520
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->refreshData()V

    .line 521
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getDisplayUnit()I

    move-result v1

    iget-object v4, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/LineEntity;->depthA:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v4

    const/4 v1, 0x2

    invoke-virtual {p0, v4, v5, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getDisplayUnit()I

    move-result v4

    iget-object v5, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v8, v5, Lcom/qianhe/baselib/bean/LineEntity;->depthB:D

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-virtual {p0, v4, v8, v9}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getStoredLengthMeter()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->updateLengthDisplay(D)V

    .line 524
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->refreshUnitLabels()V

    .line 525
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/LineEntity;->depthA:D

    cmpl-double v1, v4, v6

    if-lez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    iput v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->actionTypeA:I

    .line 526
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/LineEntity;->depthB:D

    cmpl-double v4, v0, v6

    if-lez v4, :cond_7

    const/4 v2, 0x1

    :cond_7
    iput v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->actionTypeB:I

    return-void
.end method

.method private syncDepthAFromUi()V
    .locals 5

    .line 303
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 304
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getDisplayUnit()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v0

    .line 305
    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget v3, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->actionTypeA:I

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    if-nez v3, :cond_0

    neg-double v0, v0

    :cond_0
    iput-wide v0, v2, Lcom/qianhe/baselib/bean/LineEntity;->depthA:D

    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/LineEntity;->depthA:D

    return-void
.end method

.method private syncDepthBFromUi()V
    .locals 5

    .line 312
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 313
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getDisplayUnit()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v0

    .line 314
    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget v3, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->actionTypeB:I

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    if-nez v3, :cond_0

    neg-double v0, v0

    :cond_0
    iput-wide v0, v2, Lcom/qianhe/baselib/bean/LineEntity;->depthB:D

    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/LineEntity;->depthB:D

    return-void
.end method

.method private syncLengthFromUi()V
    .locals 5

    .line 321
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 322
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getDisplayUnit()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/LineEntity;->length:D

    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/LineEntity;->length:D

    return-void
.end method

.method private takeCoordsSnapshot()V
    .locals 3

    .line 565
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/LineEntity;->east1:D

    iput-wide v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->cachedEast1:D

    .line 566
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/LineEntity;->north1:D

    iput-wide v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->cachedNorth1:D

    .line 567
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation1:D

    iput-wide v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->cachedElev1:D

    .line 568
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/LineEntity;->east2:D

    iput-wide v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->cachedEast2:D

    .line 569
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/LineEntity;->north2:D

    iput-wide v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->cachedNorth2:D

    .line 570
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation2:D

    iput-wide v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->cachedElev2:D

    const/4 v0, 0x1

    .line 571
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->coordsSnapshotTaken:Z

    return-void
.end method

.method private updateBFillDigDisplay()V
    .locals 7

    .line 471
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/LineEntity;->depthB:D

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpl-double v6, v0, v2

    if-lez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 472
    :goto_0
    iput-boolean v4, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->isUpdatingFields:Z

    .line 473
    iput v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->actionTypeB:I

    .line 474
    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->typeDropdownB:Lcom/qianhe/yct/view/DitchTypeDropdown;

    invoke-virtual {v1, v0, v5}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setCurrentType(IZ)V

    .line 475
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getDisplayUnit()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/LineEntity;->depthB:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v1

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iput-boolean v5, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->isUpdatingFields:Z

    return-void
.end method

.method private updateHeightDiffDisplay(D)V
    .locals 2

    const/4 v0, 0x1

    .line 368
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->isUpdatingFields:Z

    .line 369
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtHeightDiff:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getDisplayUnit()I

    move-result v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide p1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 370
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->isUpdatingFields:Z

    return-void
.end method

.method private updateLengthDisplay(D)V
    .locals 2

    const/4 v0, 0x1

    .line 393
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->isUpdatingFields:Z

    .line 394
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/LineEntity;->length:D

    .line 395
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->getDisplayUnit()I

    move-result v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide p1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 396
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->isUpdatingFields:Z

    return-void
.end method

.method private updateRatioDisplay(D)V
    .locals 2

    const/4 v0, 0x1

    .line 379
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->isUpdatingFields:Z

    .line 380
    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0, p1, p2, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/LineEntity;->ratio:D

    const/4 p1, 0x0

    .line 382
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->isUpdatingFields:Z

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

    .line 611
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 51
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    .line 52
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 54
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v1, "LOG,REFSTATION,ONTIME,1"

    invoke-direct {p3, v0, v1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 55
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 56
    iget-object p3, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 57
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 59
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 60
    iget-object p3, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 61
    iget-object p3, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 65
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 67
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/LineEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/LineEntity;

    .line 68
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/LineEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->lltToggle:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->lineEntity:Lcom/qianhe/baselib/bean/LineEntity;

    if-eqz p2, :cond_3

    iget-wide p2, p2, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :cond_3
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 71
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->initView()V

    .line 72
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 4

    .line 616
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    .line 617
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 618
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "UNLOG,REFSTATION"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/BaseStationEntity;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 601
    iput-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 77
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 78
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment;->isH5Pro:Z

    .line 79
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->refreshUnitLabels()V

    .line 80
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->haveCoordsChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->recalculateFromCoords()V

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->takeCoordsSnapshot()V

    return-void
.end method
