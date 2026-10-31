.class public Lcom/qianhe/yct/fragment/WaGouStep3Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "WaGouStep3Fragment.java"


# instance fields
.field private bPointModeResolved:Z

.field private baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

.field private binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

.field private cachedDepthA:D

.field private cachedDepthB:D

.field private cachedEast1:D

.field private cachedEast2:D

.field private cachedElev1:D

.field private cachedElev2:D

.field private cachedNorth1:D

.field private cachedNorth2:D

.field private cachedTickA:I

.field private cachedTickB:I

.field private directionPointOnly:Z

.field private initEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

.field private isH5Pro:Z

.field private isUpdatingFields:Z

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private stepSnapshotTaken:Z

.field private waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisUpdatingFields(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isUpdatingFields:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mapplyHeightDiffInput(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->applyHeightDiffInput()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyRatioInput(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->applyRatioInput()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcommitFocusedInput(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->commitFocusedInput()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->createEntity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mensureAdvancedTypeSelected(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->ensureAdvancedTypeSelected()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLengthMeter(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)D
    .locals 2

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getLengthMeter()D

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mgetSlopeBottomExceedsCenterlineMessage(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;D)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getSlopeBottomExceedsCenterlineMessage(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misBottomWidthExceedsDitchWidth(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;D)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isBottomWidthExceedsDitchWidth(D)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misBottomWidthMode(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isBottomWidthMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnext(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->next()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monLengthChanged(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->onLengthChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefresStepImage(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->refresStepImage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncDepthBFromSlopeRatio(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->syncDepthBFromSlopeRatio()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncLengthFromUi(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->syncLengthFromUi()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method private applyHeightDiffInput()V
    .locals 9

    .line 561
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isUpdatingFields:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isSlopeDitch()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtHeightDiff:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_1

    .line 568
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->readHeightDiffInputMeter()D

    move-result-wide v0

    .line 569
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->resolveBPointMode()V

    .line 570
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isBOnLineForLinkage()Z

    move-result v4

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    if-eqz v4, :cond_4

    .line 571
    iget-object v4, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v4}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v7

    cmpl-double v4, v7, v2

    if-nez v4, :cond_2

    .line 573
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getDefaultRatioPercent()D

    move-result-wide v7

    :cond_2
    cmpl-double v4, v7, v2

    if-nez v4, :cond_3

    .line 576
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->updateDepthBFromBottomElevDiff(D)V

    .line 577
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->refreshHeightDiff()V

    return-void

    .line 580
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->updateDepthBFromBottomElevDiff(D)V

    .line 581
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    div-double v2, v7, v5

    div-double/2addr v0, v2

    .line 582
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->updateLengthDisplay(D)V

    .line 583
    invoke-direct {p0, v7, v8}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->updateRatioDisplay(D)V

    .line 584
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->refreshHeightDiff()V

    return-void

    .line 586
    :cond_4
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getLengthMeter()D

    move-result-wide v7

    cmpl-double v4, v7, v2

    if-eqz v4, :cond_5

    .line 587
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    div-double/2addr v0, v7

    mul-double v0, v0, v5

    goto :goto_0

    :cond_5
    move-wide v0, v2

    .line 588
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->updateRatioDisplay(D)V

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_6

    .line 590
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getAbPlanarDistanceMeter()D

    move-result-wide v2

    mul-double v2, v2, v0

    div-double/2addr v2, v5

    .line 591
    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->signedHeightFromAbsMeter(D)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->updateDepthBFromBottomElevDiff(D)V

    .line 593
    :cond_6
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->refreshHeightDiff()V

    :cond_7
    :goto_1
    return-void
.end method

.method private applyRatioInput()V
    .locals 5

    .line 546
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isUpdatingFields:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isSlopeDitch()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 553
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->signedBottomElevDiffFromRatio(D)D

    move-result-wide v2

    .line 554
    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->updateDepthBFromBottomElevDiff(D)V

    .line 555
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getComputedHeightDiffMeter()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->updateHeightDiffDisplay(D)V

    .line 556
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->updateRatioDisplay(D)V

    :cond_2
    :goto_0
    return-void
.end method

.method private areDepthsStoredInMeter()Z
    .locals 5

    .line 362
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private commitFocusedInput()V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtHeightDiff:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->applyHeightDiffInput()V

    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->applyRatioInput()V

    return-void

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->syncLengthFromUi()V

    .line 476
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->onLengthChanged()V

    :cond_2
    return-void
.end method

.method private createEntity()V
    .locals 6

    .line 755
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    .line 756
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v1

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 757
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    goto :goto_0

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    .line 761
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v4, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    invoke-virtual {p0, v1, v4, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    .line 762
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v4, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    invoke-virtual {p0, v1, v4, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->roundTo3Decimals(D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    .line 763
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->syncLengthFromUi()V

    .line 764
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    cmpl-double v1, v4, v2

    if-nez v1, :cond_1

    .line 765
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getAbPlanarDistanceMeter()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtWidth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    .line 768
    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {p0, v3, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v0

    iput-wide v0, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->width:D

    .line 769
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->saveAdvancedParams()V

    .line 771
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    if-eqz v0, :cond_2

    .line 772
    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/BaseStationEntity;->lon:D

    const/16 v0, 0x8

    invoke-virtual {p0, v2, v3, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    .line 773
    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/BaseStationEntity;->lat:D

    invoke-virtual {p0, v2, v3, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    .line 774
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/BaseStationEntity;->elev:D

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    :cond_2
    return-void
.end method

.method private depthFromMeter(D)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 376
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->roundTo3Decimals(D)D

    move-result-wide p1

    .line 377
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->areDepthsStoredInMeter()Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide p1

    :cond_1
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide p1

    return-wide p1
.end method

.method private depthToMeter(D)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->areDepthsStoredInMeter()Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide p1

    :cond_1
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p1

    return-wide p1
.end method

.method private ensureAdvancedTypeSelected()V
    .locals 4

    .line 713
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->advancedType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->rbBottomWidth:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput v2, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->advancedType:I

    .line 718
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltAdvancedSlope:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltAdvancedBottomWidth:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->advancedType:I

    .line 722
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->rbSlope:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 723
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltAdvancedSlope:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltAdvancedBottomWidth:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private getAbPlanarDistanceMeter()D
    .locals 12

    .line 428
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    const/4 v7, 0x3

    new-array v8, v7, [D

    const/4 v9, 0x0

    aput-wide v1, v8, v9

    const/4 v1, 0x1

    aput-wide v3, v8, v1

    const/4 v2, 0x2

    aput-wide v5, v8, v2

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    new-array v0, v7, [D

    aput-wide v3, v0, v9

    aput-wide v5, v0, v1

    aput-wide v10, v0, v2

    invoke-static {v8, v0}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getActualElevationA()D
    .locals 5

    .line 385
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 386
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    return-wide v0

    .line 388
    :cond_0
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    invoke-direct {p0, v3, v4}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->depthToMeter(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    return-wide v1
.end method

.method private getActualElevationB()D
    .locals 5

    .line 392
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 393
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    return-wide v0

    .line 395
    :cond_0
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    invoke-direct {p0, v3, v4}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->depthToMeter(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    return-wide v1
.end method

.method private getBottomElevSpanMeter()D
    .locals 2

    .line 339
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isDirectionPointOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getAbPlanarDistanceMeter()D

    move-result-wide v0

    return-wide v0

    .line 342
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getLengthMeter()D

    move-result-wide v0

    return-wide v0
.end method

.method private getComputedHeightDiffMeter()D
    .locals 5

    .line 405
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 407
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    :cond_0
    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    return-wide v2

    .line 412
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->signedHeightFromRatioPercent(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getDefaultRatioPercent()D
    .locals 5

    .line 446
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getStoredLengthMeter()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 450
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getElevationHeightDiffMeter()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v0

    return-wide v2
.end method

.method private getElevationHeightDiffMeter()D
    .locals 4

    .line 400
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getActualElevationA()D

    move-result-wide v0

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getActualElevationB()D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private getLengthMeter()D
    .locals 5

    .line 438
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 440
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getStoredLengthMeter()D

    move-result-wide v0

    return-wide v0

    .line 442
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getStoredLengthMeter()D

    move-result-wide v0

    return-wide v0
.end method

.method private getSlopeBottomExceedsCenterlineMessage(D)Ljava/lang/String;
    .locals 11

    .line 636
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v0

    .line 637
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v5, p1, v0

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    cmpg-double p2, v5, v0

    if-gtz p2, :cond_0

    return-object p1

    .line 641
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->resolveLowerEndCrossSectionDepthMeter()D

    move-result-wide v3

    cmpg-double p2, v3, v0

    if-gtz p2, :cond_1

    return-object p1

    .line 645
    :cond_1
    iget-object p2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtLeftSlope:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v7

    .line 646
    iget-object p2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRightSlope:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v9

    cmpl-double p2, v7, v0

    move-object v2, p0

    if-lez p2, :cond_2

    .line 647
    invoke-direct/range {v2 .. v8}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isCalculatedSlopeBottomWidthExceedsHalfWidth(DDD)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 648
    sget p1, Lcom/qianhe/yct/R$string;->slope_too_small_left_bottom_exceeds_centerline:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    cmpl-double p2, v9, v0

    if-lez p2, :cond_3

    move-wide v7, v9

    .line 650
    invoke-direct/range {v2 .. v8}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isCalculatedSlopeBottomWidthExceedsHalfWidth(DDD)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 651
    sget p1, Lcom/qianhe/yct/R$string;->slope_too_small_right_bottom_exceeds_centerline:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private getStoredLengthMeter()D
    .locals 7

    .line 434
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_0

    return-wide v1

    :cond_0
    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getAbPlanarDistanceMeter()D

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v3
.end method

.method private haveBenchmarkChanged()Z
    .locals 6

    .line 888
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->stepSnapshotTaken:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 889
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    iget-object v4, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v5, v4, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    if-ne v3, v5, :cond_1

    iget v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    iget v3, v4, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1

    .line 891
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    iget v4, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->cachedTickA:I

    if-ne v3, v4, :cond_4

    iget v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    iget v3, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->cachedTickB:I

    if-eq v0, v3, :cond_3

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v1
.end method

.method private haveCoordsChanged()Z
    .locals 1

    .line 863
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->stepSnapshotTaken:Z

    if-nez v0, :cond_0

    .line 864
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->haveCoordsChangedFromInit()Z

    move-result v0

    return v0

    .line 866
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->haveCoordsChangedFromCache()Z

    move-result v0

    return v0
.end method

.method private haveCoordsChangedFromCache()Z
    .locals 4

    .line 904
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    iget-wide v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->cachedEast1:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    iget-wide v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->cachedNorth1:D

    .line 905
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    iget-wide v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->cachedElev1:D

    .line 906
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    iget-wide v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->cachedEast2:D

    .line 907
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    iget-wide v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->cachedNorth2:D

    .line 908
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    iget-wide v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->cachedElev2:D

    .line 909
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

    .line 895
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    .line 896
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    .line 897
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    .line 898
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    .line 899
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    .line 900
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

.method private haveDepthsChanged()Z
    .locals 1

    .line 870
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->stepSnapshotTaken:Z

    if-nez v0, :cond_0

    .line 871
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->haveDepthsChangedFromInit()Z

    move-result v0

    return v0

    .line 873
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->haveDepthsChangedFromCache()Z

    move-result v0

    return v0
.end method

.method private haveDepthsChangedFromCache()Z
    .locals 4

    .line 882
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    iget-wide v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->cachedDepthA:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    iget-wide v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->cachedDepthB:D

    .line 883
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

.method private haveDepthsChangedFromInit()Z
    .locals 4

    .line 877
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    .line 878
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

.method private inferBPointModeForExistingProject()V
    .locals 11

    .line 831
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->bPointModeResolved:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    iget v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    if-eqz v1, :cond_2

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    cmpl-double v3, v0, v5

    if-nez v3, :cond_0

    goto :goto_1

    .line 835
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getActualElevationA()D

    move-result-wide v0

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getActualElevationB()D

    move-result-wide v3

    sub-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 836
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getAbPlanarDistanceMeter()D

    move-result-wide v3

    iget-object v5, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    mul-double v3, v3, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    .line 837
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getStoredLengthMeter()D

    move-result-wide v7

    iget-object v9, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v9, v9, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    mul-double v7, v7, v9

    div-double/2addr v7, v5

    sub-double v3, v0, v3

    .line 838
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    sub-double/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v5, v3, v0

    if-gez v5, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->directionPointOnly:Z

    .line 839
    iput-boolean v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->bPointModeResolved:Z

    return-void

    .line 832
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->resolveBPointMode()V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$1;-><init>(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 118
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$2;-><init>(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/NumericEditText;->setOnFocusListener(Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;)V

    .line 126
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$3;-><init>(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/NumericEditText;->setOnFocusListener(Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;)V

    .line 135
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtHeightDiff:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$4;-><init>(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/NumericEditText;->setOnFocusListener(Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;)V

    .line 143
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$5;-><init>(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$6;-><init>(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->tvAdvanced:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$7;-><init>(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->rgAdvanced:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$8;-><init>(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 236
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtLeftSlope:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$9;-><init>(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 251
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRightSlope:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$10;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$10;-><init>(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 266
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtLeftBottomWidth:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$11;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$11;-><init>(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 280
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRightBottomWidth:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$12;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$12;-><init>(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 294
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->showData()V

    .line 296
    new-instance v0, Lcom/qianhe/yct/utils/KeyboardUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$13;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment$13;-><init>(Lcom/qianhe/yct/fragment/WaGouStep3Fragment;)V

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/utils/KeyboardUtil;-><init>(Landroid/app/Activity;Lcom/qianhe/yct/utils/KeyboardUtil$OnKeyboardVisibilityListener;)V

    return-void
.end method

.method private isBOnLineForLinkage()Z
    .locals 2

    .line 313
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->resolveBPointMode()V

    .line 314
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->directionPointOnly:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private isBottomWidthExceedsDitchWidth(D)Z
    .locals 7

    .line 627
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v0

    .line 628
    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtLeftBottomWidth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v1

    .line 629
    iget-object v3, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRightBottomWidth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-virtual {p0, v0, v3, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v3

    .line 630
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v5

    cmpl-double v0, v1, p1

    if-gtz v0, :cond_1

    cmpl-double v0, v3, p1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isBottomWidthMode()Z
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->advancedType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->rbBottomWidth:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private isCalculatedSlopeBottomWidthExceedsHalfWidth(DDD)Z
    .locals 4

    .line 0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p5, v0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmpg-double v3, p5, v0

    if-gtz v3, :cond_0

    return v2

    :cond_0
    div-double/2addr p1, p5

    cmpl-double p5, p1, p3

    if-lez p5, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method private isDirectionPointOnly()Z
    .locals 1

    .line 346
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->resolveBPointMode()V

    .line 347
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->directionPointOnly:Z

    return v0
.end method

.method private isSlopeDitch()Z
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private next()V
    .locals 4

    .line 963
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->start_jobs:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 964
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 965
    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 966
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 967
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private onLengthChanged()V
    .locals 5

    .line 599
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isUpdatingFields:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isSlopeDitch()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    .line 604
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getDefaultRatioPercent()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 606
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->updateRatioDisplay(D)V

    .line 609
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->refreshHeightDiff()V

    :cond_2
    :goto_0
    return-void
.end method

.method private readHeightDiffInputMeter()D
    .locals 3

    .line 416
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtHeightDiff:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 417
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->signedHeightFromAbsMeter(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private recalculateFromCoords()V
    .locals 3

    const/4 v0, 0x0

    .line 928
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->bPointModeResolved:Z

    .line 929
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->refreshBPointMode()V

    .line 930
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    .line 931
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    .line 932
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getAbPlanarDistanceMeter()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->updateLengthDisplay(D)V

    .line 933
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->refreshSlopeFields()V

    return-void
.end method

.method private recalculateFromDepths()V
    .locals 3

    const/4 v0, 0x0

    .line 938
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->bPointModeResolved:Z

    .line 939
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->refreshBPointMode()V

    .line 940
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    .line 941
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getDefaultRatioPercent()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->updateRatioDisplay(D)V

    .line 942
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->syncDepthBFromSlopeRatio()V

    .line 943
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->refreshHeightDiff()V

    return-void
.end method

.method private refresStepImage()V
    .locals 2

    .line 947
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 948
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->ivStep3:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_wg_flat3:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 949
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->tvDitchType:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->flat_ditch:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/WaGouEnum;->DOWN:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 951
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->ivStep3:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_wg_down3:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 952
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->tvDitchType:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->downhill_ditch:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 953
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/WaGouEnum;->UP:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 954
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->ivStep3:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_wg_up3:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 955
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->tvDitchType:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->upslope_ditch:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 957
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->tvAdvanced:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 958
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->ivStep3:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_wg_tixing:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    return-void
.end method

.method private refreshBPointMode()V
    .locals 7

    .line 327
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 328
    iput-boolean v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->directionPointOnly:Z

    goto :goto_0

    .line 329
    :cond_0
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-eqz v6, :cond_1

    .line 330
    iput-boolean v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->directionPointOnly:Z

    goto :goto_0

    .line 332
    :cond_1
    iput-boolean v3, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->directionPointOnly:Z

    .line 334
    :goto_0
    iput-boolean v3, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->bPointModeResolved:Z

    return-void
.end method

.method private refreshHeightDiff()V
    .locals 2

    .line 515
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isUpdatingFields:Z

    if-eqz v0, :cond_0

    return-void

    .line 518
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getComputedHeightDiffMeter()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->updateHeightDiffDisplay(D)V

    return-void
.end method

.method private refreshSlopeFields()V
    .locals 5

    .line 843
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lengthDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 844
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->refresStepImage()V

    .line 845
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isSlopeDitch()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltRatio:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 847
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltHeightDiff:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 848
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    return-void

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltRatio:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 852
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltHeightDiff:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 853
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    cmpl-double v0, v3, v1

    if-eqz v0, :cond_1

    .line 854
    invoke-direct {p0, v3, v4}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->updateRatioDisplay(D)V

    goto :goto_0

    .line 856
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getDefaultRatioPercent()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->updateRatioDisplay(D)V

    .line 858
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->syncDepthBFromSlopeRatio()V

    .line 859
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->refreshHeightDiff()V

    return-void
.end method

.method private resolveBPointMode()V
    .locals 6

    .line 318
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->bPointModeResolved:Z

    if-eqz v0, :cond_0

    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v0, v3

    if-nez v5, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->directionPointOnly:Z

    .line 322
    iput-boolean v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->bPointModeResolved:Z

    return-void
.end method

.method private resolveConfiguredDepthAtLowerEntityEnd()D
    .locals 7

    .line 700
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getActualElevationA()D

    move-result-wide v0

    .line 701
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getActualElevationB()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v6, v0, v2

    if-gtz v6, :cond_1

    .line 703
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->depthToMeter(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v2, v0, v4

    if-lez v2, :cond_0

    .line 704
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->depthToMeter(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->depthToMeter(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->depthToMeter(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v2, v0, v4

    if-lez v2, :cond_2

    .line 708
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->depthToMeter(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0

    .line 709
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->depthToMeter(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private resolveCrossSectionDepthAtEnd(Z)D
    .locals 4

    .line 694
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    if-eqz p1, :cond_0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    goto :goto_0

    :cond_0
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    :goto_0
    if-eqz p1, :cond_1

    .line 695
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getActualElevationA()D

    move-result-wide v2

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getActualElevationB()D

    move-result-wide v2

    :goto_1
    sub-double/2addr v0, v2

    .line 696
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private resolveLowerEndCrossSectionDepthMeter()D
    .locals 11

    .line 665
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 666
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    if-eq v1, v2, :cond_1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_0

    goto :goto_0

    .line 669
    :cond_0
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->depthToMeter(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0

    .line 667
    :cond_1
    :goto_0
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->depthToMeter(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0

    .line 671
    :cond_2
    invoke-direct {p0, v2}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->resolveCrossSectionDepthAtEnd(Z)D

    move-result-wide v0

    const/4 v2, 0x0

    .line 672
    invoke-direct {p0, v2}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->resolveCrossSectionDepthAtEnd(Z)D

    move-result-wide v5

    .line 673
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getActualElevationA()D

    move-result-wide v7

    .line 674
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getActualElevationB()D

    move-result-wide v9

    cmpg-double v2, v7, v9

    if-gtz v2, :cond_4

    cmpl-double v2, v0, v3

    if-lez v2, :cond_3

    goto :goto_2

    :cond_3
    cmpl-double v0, v5, v3

    if-lez v0, :cond_6

    goto :goto_1

    :cond_4
    cmpl-double v2, v5, v3

    if-lez v2, :cond_5

    :goto_1
    return-wide v5

    :cond_5
    cmpl-double v2, v0, v3

    if-lez v2, :cond_6

    :goto_2
    return-wide v0

    .line 690
    :cond_6
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->resolveConfiguredDepthAtLowerEntityEnd()D

    move-result-wide v0

    return-wide v0
.end method

.method private roundTo3Decimals(D)D
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v0

    .line 381
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private saveAdvancedParams()V
    .locals 6

    .line 729
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->tvAdvanced:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->leftSlopeRatio:D

    .line 731
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->rightSlopeRatio:D

    .line 732
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->leftBottomWidth:D

    .line 733
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->rightBottomWidth:D

    return-void

    .line 736
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->ensureAdvancedTypeSelected()V

    .line 737
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isBottomWidthMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    const/4 v3, 0x1

    iput v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->advancedType:I

    .line 739
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtLeftBottomWidth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    .line 740
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-virtual {p0, v5, v3, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->leftBottomWidth:D

    .line 741
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRightBottomWidth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    .line 742
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-virtual {p0, v5, v3, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->rightBottomWidth:D

    .line 743
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->leftSlopeRatio:D

    .line 744
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->rightSlopeRatio:D

    return-void

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    const/4 v3, 0x0

    iput v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->advancedType:I

    .line 747
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->leftBottomWidth:D

    .line 748
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->rightBottomWidth:D

    .line 749
    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtLeftSlope:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->leftSlopeRatio:D

    .line 750
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRightSlope:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->rightSlopeRatio:D

    return-void
.end method

.method private showData()V
    .locals 11

    .line 779
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

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

    .line 780
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtHeightDiff:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 781
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 782
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtWidth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 783
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->tvAdvanced:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 784
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lengthDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 785
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtLeftSlope:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 786
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRightSlope:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 787
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtLeftBottomWidth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 788
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRightBottomWidth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 789
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->rbSlope:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 790
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->rbBottomWidth:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 792
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getStoredLengthMeter()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->updateLengthDisplay(D)V

    .line 793
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtWidth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v4, v1, Lcom/qianhe/baselib/bean/WaGouEntity;->width:D

    const-string v1, ""

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_b

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v4

    iget-object v5, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v8, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->width:D

    invoke-virtual {p0, v4, v8, v9}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_b
    move-object v4, v1

    :goto_b
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtLeftSlope:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v4, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/WaGouEntity;->leftSlopeRatio:D

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_c

    invoke-virtual {p0, v4, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :cond_c
    move-object v4, v1

    :goto_c
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRightSlope:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v4, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/WaGouEntity;->rightSlopeRatio:D

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_d

    invoke-virtual {p0, v4, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    :cond_d
    move-object v4, v1

    :goto_d
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtLeftBottomWidth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v4, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/WaGouEntity;->leftBottomWidth:D

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_e

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v4

    iget-object v5, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v8, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->leftBottomWidth:D

    invoke-virtual {p0, v4, v8, v9}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_e
    move-object v4, v1

    :goto_e
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRightBottomWidth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v4, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/WaGouEntity;->rightBottomWidth:D

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_f

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v4, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/WaGouEntity;->rightBottomWidth:D

    invoke-virtual {p0, v1, v4, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    :cond_f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->advancedType:I

    const/16 v4, 0x8

    if-eq v1, v3, :cond_12

    const/4 v5, -0x1

    if-ne v1, v5, :cond_10

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->leftBottomWidth:D

    cmpl-double v10, v8, v6

    if-gtz v10, :cond_12

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->rightBottomWidth:D

    cmpl-double v10, v8, v6

    if-lez v10, :cond_10

    goto :goto_f

    :cond_10
    if-ne v1, v5, :cond_11

    .line 809
    iput v2, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->advancedType:I

    .line 811
    :cond_11
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->rbSlope:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 812
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltAdvancedSlope:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 813
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltAdvancedBottomWidth:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 803
    :cond_12
    :goto_f
    iput v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->advancedType:I

    .line 804
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->rbBottomWidth:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 805
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltAdvancedSlope:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 806
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltAdvancedBottomWidth:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 816
    :goto_10
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depth:D

    cmpl-double v1, v8, v6

    if-gtz v1, :cond_14

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->leftSlopeRatio:D

    cmpl-double v1, v8, v6

    if-gtz v1, :cond_14

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->rightSlopeRatio:D

    cmpl-double v1, v8, v6

    if-gtz v1, :cond_14

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->leftBottomWidth:D

    cmpl-double v1, v8, v6

    if-gtz v1, :cond_14

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->rightBottomWidth:D

    cmpl-double v5, v0, v6

    if-lez v5, :cond_13

    goto :goto_11

    .line 822
    :cond_13
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltAdvanced:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 823
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->tvAdvanced:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_12

    .line 819
    :cond_14
    :goto_11
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->lltAdvanced:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 820
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->tvAdvanced:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 825
    :goto_12
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->inferBPointModeForExistingProject()V

    .line 826
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->refreshSlopeFields()V

    return-void
.end method

.method private signedBottomElevDiffFromRatio(D)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 354
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getBottomElevSpanMeter()D

    move-result-wide v0

    mul-double v0, v0, p1

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    div-double/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->signedHeightFromAbsMeter(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private signedHeightFromAbsMeter(D)D
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/WaGouEnum;->UP:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 422
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    neg-double p1, p1

    return-wide p1

    .line 424
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private signedHeightFromRatioPercent(D)D
    .locals 2

    .line 454
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getLengthMeter()D

    move-result-wide v0

    mul-double v0, v0, p1

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    div-double/2addr v0, p1

    .line 455
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object p2, Lcom/qianhe/baselib/enums/WaGouEnum;->UP:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {p2}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result p2

    if-ne p1, p2, :cond_0

    neg-double p1, v0

    return-wide p1

    :cond_0
    return-wide v0
.end method

.method private syncDepthBFromSlopeRatio()V
    .locals 7

    .line 493
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isSlopeDitch()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    .line 498
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    :cond_1
    cmpl-double v4, v0, v2

    if-nez v4, :cond_2

    goto :goto_0

    .line 503
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isDirectionPointOnly()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    cmpl-double v6, v4, v2

    if-nez v6, :cond_4

    .line 504
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->signedBottomElevDiffFromRatio(D)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->updateDepthBFromBottomElevDiff(D)V

    :cond_4
    :goto_0
    return-void
.end method

.method private syncLengthFromUi()V
    .locals 5

    .line 462
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 463
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    return-void
.end method

.method private takeStepSnapshot()V
    .locals 3

    .line 913
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    iput-wide v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->cachedEast1:D

    .line 914
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    iput-wide v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->cachedNorth1:D

    .line 915
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    iput-wide v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->cachedElev1:D

    .line 916
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    iput-wide v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->cachedEast2:D

    .line 917
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    iput-wide v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->cachedNorth2:D

    .line 918
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    iput-wide v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->cachedElev2:D

    .line 919
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    iput-wide v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->cachedDepthA:D

    .line 920
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    iput-wide v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->cachedDepthB:D

    .line 921
    iget v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    iput v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->cachedTickA:I

    .line 922
    iget v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    iput v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->cachedTickB:I

    const/4 v0, 0x1

    .line 923
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->stepSnapshotTaken:Z

    return-void
.end method

.method private updateDepthBFromBottomElevDiff(D)V
    .locals 4

    .line 481
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->getActualElevationA()D

    move-result-wide v0

    sub-double/2addr v0, p1

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    sub-double/2addr v0, v2

    .line 485
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->depthFromMeter(D)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    .line 486
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    const-wide/16 v2, 0x0

    cmpl-double p2, v0, v2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 487
    iput p2, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    :cond_1
    :goto_0
    return-void
.end method

.method private updateHeightDiffDisplay(D)V
    .locals 2

    const/4 v0, 0x1

    .line 509
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isUpdatingFields:Z

    .line 510
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtHeightDiff:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-virtual {p0, v1, p1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide p1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 511
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isUpdatingFields:Z

    return-void
.end method

.method private updateLengthDisplay(D)V
    .locals 2

    const/4 v0, 0x1

    .line 538
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isUpdatingFields:Z

    .line 539
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    .line 540
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtLength:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide p1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 541
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isUpdatingFields:Z

    return-void
.end method

.method private updateRatioDisplay(D)V
    .locals 5

    const/4 v0, 0x1

    .line 522
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isUpdatingFields:Z

    .line 523
    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    const-wide/16 v2, 0x0

    cmpl-double v4, p1, v2

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    const/4 p1, 0x0

    .line 525
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isUpdatingFields:Z

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

    .line 982
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 62
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    .line 63
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 64
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v1, "LOG,REFSTATION,ONTIME,1"

    invoke-direct {p3, v0, v1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 66
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 67
    iget-object p3, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 68
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 70
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 71
    iget-object p3, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 72
    iget-object p3, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 76
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 78
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/WaGouEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    .line 79
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/WaGouEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->initView()V

    .line 82
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentWgStep3Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 4

    .line 987
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    .line 988
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 989
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

    .line 976
    iput-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->baseStationInfo:Lcom/qianhe/baselib/bean/BaseStationEntity;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 88
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->isH5Pro:Z

    .line 89
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->haveCoordsChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->recalculateFromCoords()V

    goto :goto_1

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->haveDepthsChanged()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->haveBenchmarkChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->bPointModeResolved:Z

    .line 95
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->refreshBPointMode()V

    .line 96
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->refreshSlopeFields()V

    goto :goto_1

    .line 92
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->recalculateFromDepths()V

    .line 98
    :goto_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouStep3Fragment;->takeStepSnapshot()V

    return-void
.end method
