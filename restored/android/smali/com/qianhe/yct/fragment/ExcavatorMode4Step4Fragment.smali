.class public Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "ExcavatorMode4Step4Fragment.java"


# instance fields
.field private awaitSetParamBeforeVerify:Z

.field private binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

.field private continueProcessing:Z

.field private excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private final notFixedTipHelper:Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;

.field private postureTipsDialog:Landroid/app/Dialog;

.field private request:Z

.field private setParamReadyForVerify:Z

.field private uploadReadyForVerify:Z


# direct methods
.method public static synthetic $r8$lambda$-lv-ryEjc8QMO8dmi4GXHkDErY4(Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;Landroid/content/DialogInterface;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->postureTipsDialog:Landroid/app/Dialog;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->postureTipsDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$19EfnneTRg6-8oetOw1mGBzP5n4(Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;I)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->ivStep:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p0, v0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    .line 252
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->ivStep:Lpl/droidsonroids/gif/GifImageView;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifPlaying(Landroid/widget/ImageView;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$6J0SPHjluh-_VzLDEF94TBNl9kM(Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object p1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->onCalibrationSuccess(Ljava/lang/String;)V

    return-void

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->cancelLoadingDialog()V

    const/4 v0, 0x0

    .line 382
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->setContinueProcessing(Z)V

    .line 384
    const-string v0, "hab"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->removeEventsFromTagOnward(Ljava/lang/String;)I

    .line 385
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->clearAwaitSetParamReply()V

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6316\u673a\u6821\u51c6\u5931\u8d25\uff0ccode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->code:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->calibration_failed_check_unit_or_params:I

    .line 388
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    .line 389
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 387
    invoke-virtual {p1, v0, p0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7WWRo3qg326cbMmjZijo7FzOm5E(Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;Landroid/view/View;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->onPreviousClick()V

    return-void
.end method

.method public static synthetic $r8$lambda$9xmm0X_EsLQBNRU_aIEk1_a2tCw(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 125
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$jzlLg82TxKzfZQsL6hKyUf6ZgCY(Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;Landroid/view/View;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->showActualImageDialog()V

    return-void
.end method

.method public static synthetic $r8$lambda$nCYQ7cUONqNG-xm6j-4whwNI6zY(Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->showDxStepGif()V

    return-void
.end method

.method public static synthetic $r8$lambda$pXu4a_2gcr2LEGC8H51X9Yd_m7I(Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;Landroid/view/View;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->onContinueClick()V

    return-void
.end method

.method public static synthetic $r8$lambda$pltLT15tdI63yWIx_oQtoFZgu8g(Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 373
    invoke-static {v0, p1, p2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->calibrate(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object p1

    .line 374
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 377
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda10;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xpMjISEJlOgqvvKPz7ECsK-_3xY(Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->showDxStepGif()V

    return-void

    .line 0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshContinueEnabled(Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->refreshContinueEnabled()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    .line 67
    new-instance v0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->notFixedTipHelper:Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;

    return-void
.end method

.method private clearCapturedAttitudes()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    .line 198
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceRoll:D

    .line 199
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDevicePitch:D

    .line 200
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceHeading:D

    .line 201
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDeviceRoll:D

    .line 202
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDevicePitch:D

    .line 203
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDeviceHeading:D

    .line 204
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorRoll:D

    .line 205
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorPitch:D

    .line 206
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorHeading:D

    return-void
.end method

.method private static copyShrink([[DI)[[D
    .locals 6

    const/4 v0, 0x2

    .line 229
    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    .line 231
    aget-object v4, p0, v3

    if-eqz v4, :cond_0

    .line 232
    aget-object v5, v0, v3

    invoke-static {v4, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private currentGga()Lcom/qianhe/baselib/bean/GGAEntity;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v0, :cond_0

    return-object v0

    .line 532
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/base/BaseActivity;

    if-eqz v0, :cond_1

    .line 533
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, v0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private dismissPostureTipsDialog()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->postureTipsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->postureTipsDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->postureTipsDialog:Landroid/app/Dialog;

    return-void
.end method

.method private initView()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->edtDx:Lcom/qianhe/yct/view/NumericEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/NumericEditText;->setFillZeroOnBlur(Z)V

    .line 157
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->rgPlumbSide:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 160
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->edtDx:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 165
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->edtDx:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$1;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->tvContinue:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->btn_complete:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 180
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->bindContinueClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->showData()V

    .line 182
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->showDxStepGif()V

    .line 183
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->refreshContinueEnabled()V

    return-void
.end method

.method private isDxEmpty()Z
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->edtDx:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 270
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "."

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private maybeShowVerifyAccuracy()V
    .locals 1

    .line 516
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->awaitSetParamBeforeVerify:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->setParamReadyForVerify:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->uploadReadyForVerify:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 519
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->showVerifyAccuracy()V

    :cond_1
    :goto_0
    return-void
.end method

.method private onCalibrationSuccess(Ljava/lang/String;)V
    .locals 7

    .line 396
    const-string/jumbo v0, "\u6316\u673a\u6821\u51c6\u6210\u529f"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->config_success:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 398
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->buildCalibParamsId(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 400
    iput-object p1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    .line 401
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const-string v4, "local"

    invoke-static {v1, v3, v4}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginForExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V

    .line 404
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->recordMode4GoAndSetParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->syncCalibParamsToDevice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 406
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 407
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "ok"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 408
    iget-object v4, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v4, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, ""

    :goto_0
    const-string v5, "name"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v4, "calib_params_id"

    invoke-virtual {v3, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v4, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    iget-object v4, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->updateSessionExcavator(JLjava/lang/String;)V

    .line 412
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->awaitSetParamBeforeVerify:Z

    xor-int/lit8 v4, v1, 0x1

    .line 413
    iput-boolean v4, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->setParamReadyForVerify:Z

    .line 414
    iput-boolean v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->uploadReadyForVerify:Z

    if-eqz v1, :cond_2

    .line 416
    invoke-static {v3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->scheduleEndAfterSetParamReply(Lcom/google/gson/JsonObject;)V

    goto :goto_1

    .line 418
    :cond_2
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->clearAwaitSetParamReply()V

    const/4 v1, 0x1

    .line 419
    invoke-static {v1, v3}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->endSession(ZLcom/google/gson/JsonObject;)V

    .line 421
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    .line 423
    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->saveCalibrateResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 425
    :cond_3
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->cancelLoadingDialog()V

    .line 426
    invoke-direct {p0, v2}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->setContinueProcessing(Z)V

    return-void
.end method

.method private onContinueClick()V
    .locals 10

    .line 291
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->continueProcessing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->isDxEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->config_empty:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->notFixedTipHelper:Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->currentGga()Lcom/qianhe/baselib/bean/GGAEntity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->checkOnContinue(Lcom/qianhe/baselib/bean/GGAEntity;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 299
    :cond_2
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v0

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->edtDx:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    const/4 v4, 0x3

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_4

    .line 301
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v6, v8

    if-ltz v0, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpl-double v0, v6, v8

    if-lez v0, :cond_4

    .line 302
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 305
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez v0, :cond_5

    .line 306
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->disconnected_device:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 309
    :cond_5
    iget v0, v0, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v6, Lcom/qianhe/yct/enums/InsStatusEnum;->SENSORLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v6}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v6

    and-int/2addr v0, v6

    if-eqz v0, :cond_6

    .line 310
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->sensor_offline:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 313
    :cond_6
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v0

    if-nez v0, :cond_7

    .line 315
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->sensor_offline:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 318
    :cond_7
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->isDemo()Z

    move-result v1

    if-nez v1, :cond_8

    .line 319
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    iget v1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v6, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v6

    if-eq v1, v6, :cond_8

    .line 320
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->disconnected_device:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 325
    :cond_8
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v6, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->rbPlumbLeft:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    if-eqz v6, :cond_9

    neg-double v2, v2

    :cond_9
    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    .line 326
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    iget v6, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->method:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    const-wide v4, 0x3f9999999999999aL    # 0.025

    :cond_a
    add-double/2addr v2, v4

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    .line 327
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v2}, Lcom/qianhe/yct/base/BaseActivity;->calculatePhaseToHang()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->phaseToHang:D

    .line 329
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v3, v2, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    iput-wide v3, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceRoll:D

    .line 330
    iget-wide v5, v2, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iput-wide v5, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDevicePitch:D

    .line 331
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    iput-wide v7, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceHeading:D

    .line 332
    iput-wide v3, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDeviceRoll:D

    .line 333
    iput-wide v5, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDevicePitch:D

    .line 334
    iput-wide v7, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDeviceHeading:D

    .line 335
    iget-wide v2, v0, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->rollAngle:D

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorRoll:D

    .line 336
    iget-wide v2, v0, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->pitchAngle:D

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorPitch:D

    .line 337
    iget-wide v2, v0, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->headingAngle:D

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorHeading:D

    .line 339
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->recordMode4HabAndInput(Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    .line 340
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->startCalibration()V

    return-void
.end method

.method private onPreviousClick()V
    .locals 2

    .line 188
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->continueProcessing:Z

    if-eqz v0, :cond_0

    return-void

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->clearCapturedAttitudes()V

    .line 192
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->trimLastReAttitude()V

    .line 193
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "previous"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private recordMode4GoAndSetParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 431
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v5

    .line 432
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 433
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildMode21GoCmd(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmd"

    invoke-virtual {v2, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v4, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    const/4 v6, 0x0

    const-string v1, "GO"

    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 436
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 437
    const-string v0, "set_param"

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildSetParam(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 438
    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v4, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    const-string v1, "SET_PARAM"

    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void
.end method

.method private recordMode4HabAndInput(Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V
    .locals 10

    .line 344
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const-string v2, "local"

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginForExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V

    .line 346
    const-string v0, "mode2_1 Step4\uff1a\u65e0\u6d3b\u8dc3\u4f1a\u8bdd\uff0c\u65b0\u5efa session\uff08\u82e5\u7f3a MAKE_TOOL/sweep \u8bf7\u4ece\u94f2\u6597\u6b65\u9aa4\u91cd\u505a\uff09"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_0
    const-string v0, "hab"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->removeEventsFromTagOnward(Ljava/lang/String;)I

    .line 351
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->phaseToHang:D

    invoke-static {v0, v1, p1, v2, v3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildCollectSample(Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;D)Lcom/google/gson/JsonObject;

    move-result-object v9

    .line 353
    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v6, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    const/4 v8, 0x0

    const-string v4, "hab"

    move-object v7, p1

    invoke-static/range {v4 .. v9}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCollect(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Lcom/google/gson/JsonObject;)V

    .line 355
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 356
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildMode21Input(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "input"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 357
    iget-object v6, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v7, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    const/4 v9, 0x0

    const-string v4, "INPUT"

    move-object v8, p1

    invoke-static/range {v4 .. v9}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void
.end method

.method private refreshContinueEnabled()V
    .locals 8

    .line 275
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    if-nez v0, :cond_0

    return-void

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-wide v4, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 277
    :goto_1
    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->tvContinue:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->continueProcessing:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->isDxEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private saveCalibrateResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 459
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->isExcavatorNameExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object p1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 465
    iput-object p2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    .line 466
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iget-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->insertExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    .line 467
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    const/4 p1, 0x1

    .line 468
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->request:Z

    .line 469
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {p1, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void

    .line 460
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->cancelLoadingDialog()V

    const/4 p1, 0x0

    .line 461
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->setContinueProcessing(Z)V

    return-void
.end method

.method private setContinueProcessing(Z)V
    .locals 0

    .line 361
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->continueProcessing:Z

    .line 362
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->refreshContinueEnabled()V

    return-void
.end method

.method private showActualImageDialog()V
    .locals 5

    .line 257
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 258
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_dx_actual:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_dx_actual_ceshitu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "DX"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 261
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    const/4 v4, 0x0

    .line 259
    invoke-static {v1, v3, v0, v2, v4}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->showCarousel(Landroid/content/Context;Landroid/content/res/Configuration;Ljava/util/LinkedHashMap;Ljava/lang/String;Z)V

    return-void
.end method

.method private showData()V
    .locals 8

    .line 281
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->unitDropdownSensor:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 283
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_2

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_2

    .line 284
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->edtDx:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v4, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const/4 v6, 0x3

    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->rbPlumbLeft:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    const/4 v1, 0x0

    const/4 v6, 0x1

    cmpg-double v7, v4, v2

    if-gez v7, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 286
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->rbPlumbRight:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    cmpl-double v7, v4, v2

    if-lez v7, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method private showDxStepGif()V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->rbPlumbRight:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    sget v0, Lcom/qianhe/yct/R$drawable;->icon_dx_mode4_plumb_right:I

    goto :goto_0

    .line 245
    :cond_1
    sget v0, Lcom/qianhe/yct/R$drawable;->icon_dx_mode4_plumb_left:I

    .line 247
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->ivStep:Lpl/droidsonroids/gif/GifImageView;

    new-instance v2, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda8;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showPostureTipsDialog()V
    .locals 5

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->dismissPostureTipsDialog()V

    .line 120
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$layout;->dialog_mode4_step4_posture_tips:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v2, 0x0

    .line 123
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 124
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 125
    sget v2, Lcom/qianhe/yct/R$id;->tvOk:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda6;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const v2, 0x3f2e147b    # 0.68f

    goto :goto_0

    :cond_1
    const v2, 0x3f666666    # 0.9f

    .line 130
    :goto_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 132
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 133
    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 134
    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x11

    .line 135
    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 136
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v1, 0x106000d

    .line 137
    invoke-virtual {v3, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 139
    :cond_2
    iput-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->postureTipsDialog:Landroid/app/Dialog;

    .line 140
    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda7;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 145
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method private showVerifyAccuracy()V
    .locals 1

    .line 523
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->cancelLoadingDialog()V

    const/4 v0, 0x0

    .line 524
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->setContinueProcessing(Z)V

    .line 525
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->showVerifyAccuracy()V

    :cond_0
    return-void
.end method

.method private startCalibration()V
    .locals 6

    .line 366
    sget v0, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->showLoadingDialog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 367
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->setContinueProcessing(Z)V

    .line 368
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 369
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v1

    .line 371
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    const-string/jumbo v4, "\u6316\u673a\u6821\u51c6 -> \u6a21\u5f0f2_1\uff1a"

    const-string/jumbo v5, "\u6a21\u5f0f4"

    invoke-static {v4, v5, v2, v3, v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->log(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    .line 372
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, v0, v1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda9;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 392
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private syncCalibParamsToDevice(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 443
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 449
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v2, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    .line 452
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CALIBRATE,,SET_PARAM,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 453
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v0, v1, p1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method private trimLastReAttitude()V
    .locals 5

    .line 210
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    if-nez v1, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    array-length v2, v1

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v1, 0x0

    .line 218
    iput-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    .line 219
    iput-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reSensorAttitudes:[[D

    return-void

    :cond_2
    add-int/lit8 v3, v2, -0x1

    .line 222
    invoke-static {v1, v3}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->copyShrink([[DI)[[D

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    .line 223
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reSensorAttitudes:[[D

    if-eqz v1, :cond_3

    array-length v4, v1

    if-lt v4, v2, :cond_3

    .line 224
    invoke-static {v1, v3}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->copyShrink([[DI)[[D

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reSensorAttitudes:[[D

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public gga(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 540
    iget-object v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_1

    .line 541
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    .line 542
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->notFixedTipHelper:Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->onGgaUpdated(Lcom/qianhe/baselib/bean/GGAEntity;Z)V

    :cond_1
    return-void
.end method

.method public insNavi(Lcom/qianhe/baselib/bean/InsNavi;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 548
    iget-object p2, p1, Lcom/qianhe/baselib/bean/InsNavi;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p2, v0, :cond_0

    .line 549
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 71
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    .line 72
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 73
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 74
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 76
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 77
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 78
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p3, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :catch_0
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->resolveExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 84
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->tvContinue:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 85
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->initView()V

    .line 86
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->dismissPostureTipsDialog()V

    .line 111
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->ivStep:Lpl/droidsonroids/gif/GifImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->recycleGif(Landroid/widget/ImageView;)V

    .line 112
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    return-void
.end method

.method public onDeviceSetParamReply(Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;)V
    .locals 3

    .line 493
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->awaitSetParamBeforeVerify:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 496
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->awaitSetParamBeforeVerify:Z

    if-eqz p1, :cond_1

    .line 497
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 511
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->setParamReadyForVerify:Z

    .line 512
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->maybeShowVerifyAccuracy()V

    return-void

    .line 499
    :cond_1
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->setParamReadyForVerify:Z

    .line 500
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->uploadReadyForVerify:Z

    .line 501
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->request:Z

    .line 502
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->cancelLoadingDialog()V

    .line 503
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->setContinueProcessing(Z)V

    .line 504
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 505
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->config_failed_please_check_params:I

    .line 506
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    .line 507
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 505
    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 485
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->onDeviceSetParamReply(Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;)V

    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/yct/event/CreateExcavatorResponse;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 474
    iget-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->request:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 477
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->request:Z

    const/4 p1, 0x1

    .line 478
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->uploadReadyForVerify:Z

    .line 479
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->maybeShowVerifyAccuracy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->notFixedTipHelper:Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->onPagePause()V

    .line 102
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->dismissPostureTipsDialog()V

    .line 103
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->ivStep:Lpl/droidsonroids/gif/GifImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifPlaying(Landroid/widget/ImageView;Z)V

    .line 104
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 105
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 91
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 92
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->unitDropdownSensor:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 94
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->showDxStepGif()V

    .line 95
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->showPostureTipsDialog()V

    .line 96
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->notFixedTipHelper:Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->currentGga()Lcom/qianhe/baselib/bean/GGAEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->onPageResume(Lcom/qianhe/baselib/bean/GGAEntity;)V

    return-void
.end method
