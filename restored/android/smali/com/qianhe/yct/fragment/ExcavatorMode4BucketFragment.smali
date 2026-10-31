.class public Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "ExcavatorMode4BucketFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

.field private continueProcessing:Z

.field private excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private lastFocusedType:Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;

.field private mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;


# direct methods
.method public static synthetic $r8$lambda$4bZ1rAKVuyP-8HGWgCIJUP92Ewk(Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;Landroid/view/View;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->showBucketSelectDialog()V

    return-void
.end method

.method public static synthetic $r8$lambda$TVL7O9FLgU8sUfZhGvyV2brz-5M(Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;Landroid/view/View;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->applyNewBucket()V

    return-void
.end method

.method public static synthetic $r8$lambda$Xd4lpzZsipcBHI4qO1Nq2slzjP8(Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;Landroid/view/View;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->onContinue()V

    return-void
.end method

.method public static synthetic $r8$lambda$gWITsc2p4y7oxNsBJn8gdM2HVaM(Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    const-string p1, "createNew"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->applyNewBucket()V

    return-void

    .line 226
    :cond_0
    const-string p1, "excavator"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-nez p1, :cond_1

    return-void

    .line 228
    :cond_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->applyExistingBucketFromExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$geaZ07ObPXiijP47tNHl33hQri8(Landroid/view/View;)V
    .locals 1

    .line 103
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    const-string v0, "previous"

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kiCg7ckQL4LYa-tCf-FiJ1nT8uI(Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;)V
    .locals 6

    .line 432
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->cancelLoadingDialog()V

    .line 433
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object p1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    iput-object p1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 437
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->recordMode4ToolEvents()V

    .line 438
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->goNextOrCompleteReplace()V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 440
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->setContinueProcessing(Z)V

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u751f\u6210\u94f2\u6597\u53c2\u6570\u5931\u8d25\uff0ccode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->code:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->shovel_parameter_generation_failed:I

    .line 443
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    .line 444
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 442
    invoke-virtual {p1, v0, p0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sGNXHFYotFMu21mNbYeYMhct6E8(Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 351
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->updateTvDoubtVisibility(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$sKbTspBSCOxOh0krSlJfuUA5kgM(Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;Landroid/view/View;)V
    .locals 4

    .line 186
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->findParentNestedScrollView(Landroid/view/View;)Landroidx/core/widget/NestedScrollView;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    const/4 v2, 0x2

    .line 188
    new-array v3, v2, [I

    .line 189
    new-array v2, v2, [I

    .line 190
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 191
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 192
    aget v3, v3, v0

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v3

    .line 194
    aget v0, v2, v0

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    if-le p1, v2, :cond_0

    sub-int/2addr p1, v2

    .line 197
    invoke-virtual {p0, v1, p1}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    return-void

    :cond_0
    if-ge v3, v0, :cond_1

    sub-int/2addr v3, v0

    .line 199
    invoke-virtual {p0, v1, v3}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    :cond_1
    return-void

    .line 202
    :cond_2
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 203
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    return-void
.end method

.method public static synthetic $r8$lambda$tc8J8VF73CamAIxTPS9K5Jb1rGc(Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;ILandroid/view/View;Z)V
    .locals 0

    if-eqz p4, :cond_0

    .line 354
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->lastFocusedType:Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;

    const/4 p1, 0x1

    .line 355
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->updateTvDoubtVisibility(Z)V

    .line 356
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->ivStep:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    return-void

    .line 0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic $r8$lambda$yQTe9PymztHyoZ7lgwxontwozkg(Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;Ljava/lang/String;)V
    .locals 13

    .line 422
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 422
    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    .line 423
    iput-object p1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    .line 424
    sget-object p1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result p1

    iput p1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    .line 425
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 426
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNT()D

    move-result-wide v1

    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAT()D

    move-result-wide v3

    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNA()D

    move-result-wide v5

    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 427
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v7

    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getRy()D

    move-result-wide v9

    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v11

    .line 425
    invoke-virtual/range {v0 .. v12}, Lcom/qianhe/baselib/bean/ShovelEntity;->setDistanceMeasureValues(DDDDDD)V

    .line 429
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->makeToolParam(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object p1

    .line 430
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 431
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticLambda15;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yVYZqlCqlpe6VgZawjk7xpz6Fuw(Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;Landroid/view/View;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->showActualImageDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    .line 58
    sget-object v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;->NT:Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;

    iput-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->lastFocusedType:Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;

    return-void
.end method

.method private applyExistingBucketFromExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 233
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 234
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    .line 235
    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByLocalId(J)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 237
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 240
    :cond_0
    invoke-static {p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->existingToolParamFromExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 241
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 245
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->clearReuseBucketInput()V

    .line 246
    new-instance v1, Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;-><init>()V

    .line 247
    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    .line 248
    iget-object v0, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 249
    iget v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    iput v0, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    .line 250
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v0

    iput v0, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->showUnit:I

    .line 251
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 252
    invoke-virtual {v0, p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->copyBucketMeasureFrom(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 253
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesAutoGenerateParams()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParams:Ljava/lang/String;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParams:Ljava/lang/String;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    .line 258
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v0, :cond_3

    .line 259
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->setReuseBucketSource(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->tvShovelManager:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 262
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->setExistingBucketUi(Z)V

    return-void

    .line 242
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
    .locals 17

    move-object/from16 v0, p0

    .line 266
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->isExistingBucket()Z

    move-result v1

    .line 267
    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    new-instance v3, Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {v3}, Lcom/qianhe/baselib/bean/ShovelEntity;-><init>()V

    iput-object v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 268
    iget-object v4, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual/range {v4 .. v16}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setDistanceMeasureValues(DDDDDD)V

    .line 269
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v2, :cond_0

    .line 270
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->setReuseBucketSource(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 272
    :cond_0
    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->tvShovelManager:Landroidx/appcompat/widget/AppCompatTextView;

    sget v3, Lcom/qianhe/yct/R$string;->select_bucket:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 273
    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtNT:Lcom/qianhe/yct/view/NumericEditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtAT:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtNA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtAB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtLR:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 278
    invoke-direct {v0, v2}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->setExistingBucketUi(Z)V

    .line 279
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->clearReuseBucketInput()V

    if-eqz v1, :cond_1

    .line 281
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->showBucketPostureTips()V

    :cond_1
    return-void
.end method

.method private findFirstEmptyParamField()Landroid/view/View;
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtNT:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtNT:Lcom/qianhe/yct/view/NumericEditText;

    return-object v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtAT:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtAT:Lcom/qianhe/yct/view/NumericEditText;

    return-object v0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtNA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtNA:Lcom/qianhe/yct/view/NumericEditText;

    return-object v0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtAB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtAB:Lcom/qianhe/yct/view/NumericEditText;

    return-object v0

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtLR:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtLR:Lcom/qianhe/yct/view/NumericEditText;

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private findParentNestedScrollView(Landroid/view/View;)Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 210
    :goto_0
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 211
    instance-of v0, p1, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    .line 212
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    return-object p1

    .line 214
    :cond_0
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private generateToolParamLocally()V
    .locals 6

    .line 408
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->isExistingBucket()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v0

    .line 410
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v4, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordReuseBucketInput(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    .line 412
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->goNextOrCompleteReplace()V

    return-void

    .line 415
    :cond_0
    sget v0, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->showLoadingDialog(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-nez v1, :cond_1

    .line 417
    new-instance v1, Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;-><init>()V

    iput-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    .line 420
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->resolveNewShovelName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    .line 421
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticLambda11;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 447
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private goNextOrCompleteReplace()V
    .locals 2

    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->isReplaceBucketMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->setContinueProcessing(Z)V

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->completeReplaceBucket()V

    return-void

    .line 165
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "next"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private initGifShow()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtNT:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;->NT:Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_nt_sensor:I

    invoke-direct {p0, v0, v1, v2}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;I)V

    .line 340
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtAT:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;->AT:Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_at_sensor:I

    invoke-direct {p0, v0, v1, v2}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;I)V

    .line 341
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtNA:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;->NA:Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_na_sensor:I

    invoke-direct {p0, v0, v1, v2}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;I)V

    .line 342
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtAB:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;->AB:Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_ab_mode4_sensor:I

    invoke-direct {p0, v0, v1, v2}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;I)V

    .line 343
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtLR:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;->LR:Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_lr_mode4_sensor:I

    invoke-direct {p0, v0, v1, v2}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;I)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->lltShovelManager:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->tvCancelExisting:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticLambda7;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticLambda9;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->bindContinueClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->initGifShow()V

    .line 106
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->showData()V

    .line 107
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->setupFragmentResultListener()V

    .line 108
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->updateContinueButtonText()V

    return-void
.end method

.method private isExistingBucket()Z
    .locals 2

    .line 325
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->getReuseBucketSource()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 328
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private onContinue()V
    .locals 18

    move-object/from16 v0, p0

    .line 125
    iget-boolean v1, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->continueProcessing:Z

    if-eqz v1, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->isExistingBucket()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 129
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v1

    .line 134
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v5, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v6, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-static {v3, v4, v5, v6, v1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordReuseBucketInput(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    .line 135
    invoke-direct {v0, v2}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->setContinueProcessing(Z)V

    .line 136
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->goNextOrCompleteReplace()V

    return-void

    .line 130
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->cannot_configure:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 139
    :cond_3
    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtNT:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v6

    .line 140
    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtAT:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v8

    .line 141
    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtNA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v10

    .line 142
    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtAB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v3

    .line 143
    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtLR:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v5}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v12

    invoke-virtual {v0, v1, v12, v13}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v12

    const/4 v1, 0x0

    const-wide/16 v14, 0x0

    cmpl-double v5, v6, v14

    if-eqz v5, :cond_7

    cmpl-double v5, v8, v14

    if-eqz v5, :cond_7

    cmpl-double v5, v10, v14

    if-eqz v5, :cond_7

    cmpl-double v5, v3, v14

    if-eqz v5, :cond_7

    cmpl-double v5, v12, v14

    if-nez v5, :cond_4

    goto :goto_2

    .line 149
    :cond_4
    invoke-direct {v0, v6, v7}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->outOfRange(D)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-direct {v0, v8, v9}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->outOfRange(D)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-direct {v0, v10, v11}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->outOfRange(D)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-direct {v0, v3, v4}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->outOfRange(D)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-direct {v0, v12, v13}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->outOfRange(D)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 153
    :cond_5
    iget-object v5, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    move-wide v14, v12

    move-wide/from16 v16, v3

    invoke-virtual/range {v5 .. v17}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setDistanceMeasureValues(DDDDDD)V

    .line 154
    invoke-direct {v0, v2}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->setContinueProcessing(Z)V

    .line 155
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->generateToolParamLocally()V

    return-void

    .line 150
    :cond_6
    :goto_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/base/BaseActivity;

    sget v3, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 145
    :cond_7
    :goto_2
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->findFirstEmptyParamField()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->scrollEmptyFieldIntoView(Landroid/view/View;)V

    .line 146
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/base/BaseActivity;

    sget v3, Lcom/qianhe/yct/R$string;->config_empty:I

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method private outOfRange(D)Z
    .locals 5

    .line 169
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

.method private recordMode4ToolEvents()V
    .locals 4

    .line 451
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->clearReuseBucketInput()V

    .line 452
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const-string v2, "local"

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginForExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V

    .line 455
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-static {v1, v2, v3, v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordToolEvents(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    return-void
.end method

.method private resolveNewShovelName()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 460
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v2, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 461
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    return-object v0

    .line 463
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryShovelByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 465
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 466
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

    .line 467
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    const-string/jumbo v2, "shovel"

    invoke-virtual {v1, v2, v0}, Lcom/qianhe/yct/db/DatabaseManager;->isEntityNameExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
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

    :cond_1
    return-object v0

    .line 472
    :cond_2
    sget v2, Lcom/qianhe/yct/R$string;->shovel:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "%s1"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private scrollEmptyFieldIntoView(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 185
    :cond_0
    new-instance v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticLambda14;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setBucketFieldsEditable(Z)V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtNT:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 302
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtAT:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 303
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtNA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 304
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtAB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 305
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtLR:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_1

    .line 307
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 309
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    .line 310
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method private setContinueProcessing(Z)V
    .locals 1

    .line 118
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->continueProcessing:Z

    .line 119
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->tvContinue:Landroid/widget/TextView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setExistingBucketUi(Z)V
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->lltExistingHint:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtShovelName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    xor-int/lit8 v0, p1, 0x1

    .line 296
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->setMeasureFieldsVisible(Z)V

    xor-int/lit8 p1, p1, 0x1

    .line 297
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->setBucketFieldsEditable(Z)V

    return-void
.end method

.method private setMeasureFieldsVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 318
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->lltUnitRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->lltRowNtAt:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->lltRowNaAb:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->lltRowLr:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setupFragmentResultListener()V
    .locals 3

    .line 220
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticLambda10;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;)V

    const-string v2, "bucket_from_excavator"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method private setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;I)V
    .locals 1

    .line 351
    new-instance v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticLambda12;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    new-instance v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p2, p3}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticLambda13;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private showActualImageDialog()V
    .locals 6

    .line 362
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 363
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isKe76Pro()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_nt_ex30_mode4_actual:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_nt_mode4_actual:I

    .line 365
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_nt_mode4_actual_multi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "NT"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_at_mode4_actual:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticBackport1;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "AT"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_na_mode4_actual:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticBackport2;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "NA"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_ab_mode4_actual:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticBackport3;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "AB"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_lr_mode4_actual:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$$ExternalSyntheticBackport4;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "LR"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 372
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->lastFocusedType:Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment$FocusedType;

    .line 374
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 375
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 370
    :goto_1
    invoke-static {v1, v2, v0, v3, v5}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->showCarousel(Landroid/content/Context;Landroid/content/res/Configuration;Ljava/util/LinkedHashMap;Ljava/lang/String;Z)V

    return-void
.end method

.method private showBucketPostureTips()V
    .locals 4

    .line 286
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 287
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->excavator_mode4_bucket_posture_tips:I

    .line 288
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    .line 289
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 287
    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method private showBucketSelectDialog()V
    .locals 3

    .line 334
    invoke-static {}, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;->newBucketSourceInstance()Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;

    move-result-object v0

    .line 335
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "bucket_from_excavator"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showData()V
    .locals 9

    .line 379
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->unitDropdownSensor:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 380
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesDistanceMeasure()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 381
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNT()D

    move-result-wide v0

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_0

    .line 382
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtNT:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v5}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNT()D

    move-result-wide v5

    invoke-virtual {p0, v1, v5, v6, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAT()D

    move-result-wide v0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_1

    .line 385
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtAT:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v5}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAT()D

    move-result-wide v5

    invoke-virtual {p0, v1, v5, v6, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNA()D

    move-result-wide v0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_2

    .line 388
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtNA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v5}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNA()D

    move-result-wide v5

    invoke-virtual {p0, v1, v5, v6, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_3

    .line 391
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtLR:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

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

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_4

    .line 394
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->edtAB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v3}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v3

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v0, :cond_5

    .line 398
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->getReuseBucketSource()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 400
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->applyExistingBucketFromExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 404
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->setExistingBucketUi(Z)V

    return-void
.end method

.method private updateContinueButtonText()V
    .locals 2

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v0, :cond_0

    .line 113
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

    .line 114
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->tvContinue:Landroid/widget/TextView;

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
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public gga(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    return-void
.end method

.method public insNavi(Lcom/qianhe/baselib/bean/InsNavi;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 485
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 63
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    .line 64
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 65
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 66
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 68
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 69
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 70
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p3, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :catch_0
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->resolveExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 75
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->initView()V

    .line 76
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->ivStep:Lpl/droidsonroids/gif/GifImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->recycleGif(Landroid/widget/ImageView;)V

    .line 491
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->ivStep:Lpl/droidsonroids/gif/GifImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifPlaying(Landroid/widget/ImageView;Z)V

    .line 96
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 81
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x1

    .line 82
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->updateTvDoubtVisibility(Z)V

    .line 83
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->unitDropdownSensor:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 84
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->ivStep:Lpl/droidsonroids/gif/GifImageView;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_nt_sensor:I

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    .line 85
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4BucketBinding;->ivStep:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p0, v1, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifPlaying(Landroid/widget/ImageView;Z)V

    .line 86
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->isExistingBucket()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->showBucketPostureTips()V

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->updateContinueButtonText()V

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;->setContinueProcessing(Z)V

    return-void
.end method
