.class public Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "ExcavatorMode4Step3Fragment.java"


# static fields
.field private static final STEP_IMAGES:[I


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

.field private checkInsDialog:Lcom/qianhe/yct/dialog/CheckInsDialogFragment;

.field private checkInsDismissedManually:Z

.field private collectIndex:I

.field private final deviceAttitudes:[[D

.field private enterPostureTipsDismissed:Z

.field private excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private hasShownEnterTips:Z

.field private ignoreArmAngleExtendTip:Z

.field private insAvailable:Z

.field private isCollecting:Z

.field private latestHeadingDegreesError:Ljava/lang/Double;

.field private mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private final notFixedTipHelper:Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;

.field private previousPitch:D

.field private sawTiltThisGroup:Z

.field private final sensorAttitudes:[[D

.field private swingClearedThisGroup:Z


# direct methods
.method public static synthetic $r8$lambda$-Z_t_h-6M-rzjY7LNi5MwOMC05c(Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;Landroid/view/View;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->onPreviousClick()V

    return-void
.end method

.method public static synthetic $r8$lambda$FgRH9AQWiiBAly_LYzM7ARk76ms(Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;Landroid/view/View;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->onContinueClick()V

    return-void
.end method

.method public static synthetic $r8$lambda$Rqrk_-tKxuQZ5xL5KZQtxHKyqnI(Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x1

    .line 265
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->enterPostureTipsDismissed:Z

    .line 266
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->refreshContinueEnabled()V

    .line 267
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->maybeShowCheckInsAfterPostureTips()V

    return-void
.end method

.method public static synthetic $r8$lambda$VQiibclX9k0hE3qebVqPKc9tG_k(Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;I)V
    .locals 1

    const/4 v0, 0x0

    .line 519
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->isCollecting:Z

    .line 520
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 524
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->updateUiForStep()V

    return-void

    .line 528
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->canCollectCurrentStep()Z

    move-result p1

    if-nez p1, :cond_2

    .line 529
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->updateUiForStep()V

    return-void

    .line 532
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->notFixedTipHelper:Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->currentGga()Lcom/qianhe/baselib/bean/GGAEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->checkOnContinue(Lcom/qianhe/baselib/bean/GGAEntity;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->checkSensorOnline()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 536
    :cond_3
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->shouldBlockForCheckIns()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 537
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->updateUiForStep()V

    const/4 p1, 0x1

    .line 538
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->showCheckInsDialog(Z)V

    return-void

    .line 541
    :cond_4
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->performCollect()V

    return-void

    .line 533
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->updateUiForStep()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcheckInsDialog(Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;Lcom/qianhe/yct/dialog/CheckInsDialogFragment;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->checkInsDialog:Lcom/qianhe/yct/dialog/CheckInsDialogFragment;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcheckInsDismissedManually(Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->checkInsDismissedManually:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputignoreArmAngleExtendTip(Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->ignoreArmAngleExtendTip:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 62
    sget v0, Lcom/qianhe/yct/R$drawable;->icon_mode4_step3_1:I

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_mode4_step3_2:I

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_mode4_step3_3:I

    sget v3, Lcom/qianhe/yct/R$drawable;->icon_mode4_step3_4:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->STEP_IMAGES:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 51
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 76
    iput-wide v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->previousPitch:D

    const/4 v1, 0x2

    .line 77
    new-array v2, v1, [I

    const/4 v3, 0x1

    const/4 v4, 0x3

    aput v4, v2, v3

    const/4 v5, 0x4

    aput v5, v2, v0

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    iput-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->deviceAttitudes:[[D

    .line 78
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v5, v1, v0

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->sensorAttitudes:[[D

    .line 95
    new-instance v0, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->notFixedTipHelper:Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;

    return-void
.end method

.method private canCollectCurrentStep()Z
    .locals 7

    .line 659
    iget v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ge v0, v1, :cond_6

    if-gtz v0, :cond_0

    goto :goto_1

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-wide v3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->previousPitch:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 666
    :cond_1
    iget-wide v3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->previousPitch:D

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    sub-double/2addr v3, v5

    .line 667
    iget v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    if-eq v0, v2, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    return v2

    :cond_2
    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    const-wide/high16 v5, 0x4044000000000000L    # 40.0

    sub-double/2addr v3, v5

    .line 670
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    cmpg-double v0, v3, v5

    if-gtz v0, :cond_5

    return v2

    :cond_5
    :goto_0
    return v1

    :cond_6
    :goto_1
    return v2
.end method

.method private checkFirstCollectArmAngle()Z
    .locals 7

    .line 474
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1

    const/4 v0, 0x1

    return v0

    .line 478
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->excavator_mode4_extend_stick_to_limit:I

    .line 479
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    .line 480
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->ignore:I

    .line 481
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment$2;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment$2;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;)V

    .line 478
    const-string v5, ""

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    const/4 v0, 0x0

    return v0
.end method

.method private checkSensorOnline()Z
    .locals 4

    .line 503
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 504
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->sensor_offline:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static clearAttitudeRow([[DI)V
    .locals 2

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 360
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    aget-object p0, p0, p1

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    aput-wide v0, p0, p1

    const/4 p1, 0x1

    .line 362
    aput-wide v0, p0, p1

    const/4 p1, 0x2

    .line 363
    aput-wide v0, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method private copyAttitudes([[DI)[[D
    .locals 6

    const/4 v0, 0x2

    .line 615
    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x0

    aput p2, v0, v1

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_0

    .line 617
    aget-object v4, p1, v3

    aget-object v5, v0, v3

    invoke-static {v4, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private currentGga()Lcom/qianhe/baselib/bean/GGAEntity;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v0, :cond_0

    return-object v0

    .line 690
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/base/BaseActivity;

    if-eqz v0, :cond_1

    .line 691
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, v0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private dismissCheckInsIfShowing()V
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->checkInsDialog:Lcom/qianhe/yct/dialog/CheckInsDialogFragment;

    if-eqz v0, :cond_1

    .line 811
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->checkInsDialog:Lcom/qianhe/yct/dialog/CheckInsDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    const/4 v0, 0x0

    .line 814
    iput-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->checkInsDialog:Lcom/qianhe/yct/dialog/CheckInsDialogFragment;

    :cond_1
    return-void
.end method

.method private handleCheckInsOnInsNavi(Z)V
    .locals 1

    .line 731
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->trackSwingClearThisGroup(Z)V

    .line 735
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->isFirstGroupCheckIns()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->enterPostureTipsDismissed:Z

    if-nez p1, :cond_1

    goto :goto_1

    .line 739
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->shouldShowSwingCheckIns()Z

    move-result p1

    if-nez p1, :cond_2

    .line 740
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->dismissCheckInsIfShowing()V

    return-void

    .line 743
    :cond_2
    iget-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->isCollecting:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->checkInsDismissedManually:Z

    if-eqz p1, :cond_3

    goto :goto_0

    .line 746
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->checkInsDialog:Lcom/qianhe/yct/dialog/CheckInsDialogFragment;

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 749
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->showCheckInsDialog(Z)V

    :cond_5
    :goto_0
    return-void

    .line 736
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->dismissCheckInsIfShowing()V

    return-void
.end method

.method private static hasCollectedAttitudeRow([D)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 404
    array-length v1, p0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 407
    :cond_0
    aget-wide v1, p0, v0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmpl-double v6, v1, v4

    if-nez v6, :cond_2

    aget-wide v1, p0, v3

    cmpl-double v6, v1, v4

    if-nez v6, :cond_2

    const/4 v1, 0x2

    aget-wide v1, p0, v1

    cmpl-double p0, v1, v4

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v3

    :cond_3
    :goto_1
    return v0
.end method

.method private static indexOfAngleValue(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p0, :cond_3

    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0xff1a

    .line 201
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    const/16 v1, 0x3a

    .line 202
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    :cond_1
    if-ltz v1, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 203
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lt v1, p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method private initProgressBar()V
    .locals 6

    .line 120
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->lltProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 122
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    if-lez v1, :cond_0

    const/16 v4, 0xa

    .line 125
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 127
    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/qianhe/yct/R$color;->gray_light:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 129
    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->lltProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initView()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->bindContinueClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isEnterTipsReady()Z
    .locals 1

    .line 680
    iget v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->enterPostureTipsDismissed:Z

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

.method private isFirstGroupCheckIns()Z
    .locals 1

    .line 788
    iget v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private maybePromptFirstGroupEnter()V
    .locals 2

    .line 231
    iget v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 232
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->enterPostureTipsDismissed:Z

    .line 233
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->dismissCheckInsIfShowing()V

    return-void

    .line 236
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->hasShownEnterTips:Z

    if-eqz v0, :cond_1

    return-void

    .line 239
    :cond_1
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->hasShownEnterTips:Z

    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->ignoreArmAngleExtendTip:Z

    .line 241
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->enterPostureTipsDismissed:Z

    .line 242
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->resetSwingCheckInsState()V

    .line 243
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->showEnterPostureTipsDialog()V

    return-void
.end method

.method private maybeShowCheckInsAfterPostureTips()V
    .locals 1

    .line 721
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->enterPostureTipsDismissed:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez v0, :cond_1

    goto :goto_0

    .line 727
    :cond_1
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->insAvailable:Z

    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->handleCheckInsOnInsNavi(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onContinueClick()V
    .locals 2

    .line 411
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->isCollecting:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->isEnterTipsReady()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 418
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->shouldBlockForCheckIns()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 419
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->showCheckInsDialog(Z)V

    return-void

    .line 422
    :cond_2
    iget v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_5

    .line 423
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->notFixedTipHelper:Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->currentGga()Lcom/qianhe/baselib/bean/GGAEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->checkOnContinue(Lcom/qianhe/baselib/bean/GGAEntity;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 426
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_4

    .line 427
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->syncCalibSoInputsToJson()V

    .line 429
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->tvContinue:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 430
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "next"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 433
    :cond_5
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->canCollectCurrentStep()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 437
    :cond_6
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->notFixedTipHelper:Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->currentGga()Lcom/qianhe/baselib/bean/GGAEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->checkOnContinue(Lcom/qianhe/baselib/bean/GGAEntity;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    .line 440
    :cond_7
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->checkSensorOnline()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    .line 444
    :cond_8
    iget v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->ignoreArmAngleExtendTip:Z

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->checkFirstCollectArmAngle()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_0
    return-void

    .line 448
    :cond_9
    iget v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    if-nez v0, :cond_a

    .line 449
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    .line 450
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->isHeadingDegreesOK()Z

    move-result v1

    if-nez v1, :cond_a

    .line 451
    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment$1;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showHeadingAccuracyDialog(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)V

    return-void

    .line 465
    :cond_a
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->startCountdownCollect()V

    return-void
.end method

.method private onPreviousClick()V
    .locals 2

    .line 301
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->isCollecting:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->handleNavigatePrevious()Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "previous"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private performCollect()V
    .locals 19

    move-object/from16 v0, p0

    .line 546
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez v1, :cond_0

    .line 547
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->disconnected_device:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 548
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->updateUiForStep()V

    return-void

    .line 551
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 553
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->sensor_offline:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 554
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->updateUiForStep()V

    return-void

    .line 557
    :cond_1
    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->deviceAttitudes:[[D

    iget v3, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    aget-object v2, v2, v3

    iget-object v4, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v5, v4, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    const/4 v7, 0x0

    aput-wide v5, v2, v7

    .line 558
    iget-wide v8, v4, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    const/4 v10, 0x1

    aput-wide v8, v2, v10

    .line 559
    iget-wide v11, v4, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    const/4 v4, 0x2

    aput-wide v11, v2, v4

    .line 560
    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->sensorAttitudes:[[D

    aget-object v2, v2, v3

    iget-wide v13, v1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->rollAngle:D

    aput-wide v13, v2, v7

    move-wide v15, v11

    const/4 v7, 0x1

    .line 561
    iget-wide v10, v1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->pitchAngle:D

    aput-wide v10, v2, v7

    move-wide/from16 v17, v8

    const/4 v9, 0x1

    .line 562
    iget-wide v7, v1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->headingAngle:D

    aput-wide v7, v2, v4

    if-ne v3, v4, :cond_2

    .line 566
    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDeviceRoll:D

    move-wide/from16 v3, v17

    .line 567
    iput-wide v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDevicePitch:D

    move-wide v3, v15

    .line 568
    iput-wide v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDeviceHeading:D

    .line 569
    iput-wide v13, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorRoll:D

    .line 570
    iput-wide v10, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorPitch:D

    .line 571
    iput-wide v7, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorHeading:D

    .line 574
    :cond_2
    invoke-direct {v0, v1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->recordMode4CollectEvent(Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    .line 576
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iput-wide v1, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->previousPitch:D

    .line 577
    iget v1, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    .line 578
    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->deviceAttitudes:[[D

    invoke-direct {v0, v3, v1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->copyAttitudes([[DI)[[D

    move-result-object v1

    iput-object v1, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    .line 579
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->sensorAttitudes:[[D

    iget v3, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    invoke-direct {v0, v2, v3}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->copyAttitudes([[DI)[[D

    move-result-object v2

    iput-object v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reSensorAttitudes:[[D

    .line 580
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->dismissCheckInsIfShowing()V

    .line 582
    iget v1, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    .line 583
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    const-string v2, "next"

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 586
    :cond_3
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->updateUiForStep()V

    return-void
.end method

.method private recordMode4CollectEvent(Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V
    .locals 7

    .line 590
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const-string v2, "local"

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginForExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V

    .line 594
    :cond_0
    iget v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 606
    const-string/jumbo v0, "sweep1"

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 603
    :cond_1
    const-string/jumbo v0, "sweep4"

    goto :goto_0

    .line 600
    :cond_2
    const-string/jumbo v0, "sweep3"

    goto :goto_0

    .line 597
    :cond_3
    const-string/jumbo v0, "sweep2"

    goto :goto_0

    .line 609
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_4

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->phaseToHang:D

    goto :goto_2

    :cond_4
    const-wide/16 v2, 0x0

    .line 610
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v4, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-static {v0, v4, p1, v2, v3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildCollectSample(Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;D)Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 611
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->latestHeadingDegreesError:Ljava/lang/Double;

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCollect(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method private refreshContinueEnabled()V
    .locals 2

    .line 684
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    if-nez v0, :cond_0

    return-void

    .line 685
    :cond_0
    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->tvContinue:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->isCollecting:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->canCollectCurrentStep()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->isEnterTipsReady()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private refreshRealtimeDisplays()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 144
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_7

    .line 148
    :cond_0
    iget v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    const-wide/16 v3, 0x0

    if-gtz v2, :cond_2

    .line 149
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-eqz v2, :cond_1

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    goto :goto_0

    :cond_1
    move-wide v5, v3

    .line 150
    :goto_0
    sget v2, Lcom/qianhe/yct/R$string;->excavator_mode4_arm_angle:I

    goto :goto_2

    .line 152
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-eqz v2, :cond_3

    iget-wide v5, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->previousPitch:D

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    .line 153
    iget-wide v5, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->previousPitch:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v7, v2, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    sub-double/2addr v5, v7

    goto :goto_1

    :cond_3
    move-wide v5, v3

    .line 155
    :goto_1
    sget v2, Lcom/qianhe/yct/R$string;->excavator_mode4_arm_angle_retracted:I

    .line 157
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v8, v9, v0

    invoke-static {v7, v2, v9}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 158
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v8, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/qianhe/yct/R$color;->text_black:I

    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    iget v8, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    const/16 v9, 0x21

    if-lez v8, :cond_6

    .line 162
    invoke-static {v2}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->indexOfAngleValue(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_6

    .line 165
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->canCollectCurrentStep()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 166
    sget v5, Lcom/qianhe/yct/R$color;->green:I

    goto :goto_3

    :cond_4
    cmpg-double v10, v5, v3

    if-gez v10, :cond_5

    .line 168
    sget v5, Lcom/qianhe/yct/R$color;->red:I

    goto :goto_3

    .line 170
    :cond_5
    sget v5, Lcom/qianhe/yct/R$color;->text_black:I

    .line 172
    :goto_3
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v6, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 174
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 172
    invoke-virtual {v7, v6, v8, v2, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 177
    :cond_6
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->tvArmAngle:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    .line 180
    :goto_4
    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->tvHeadingError:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    const/4 v6, 0x0

    goto :goto_5

    :cond_8
    const/16 v6, 0x8

    :goto_5
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    if-nez v2, :cond_9

    goto :goto_7

    .line 184
    :cond_9
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->latestHeadingDegreesError:Ljava/lang/Double;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 185
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/qianhe/yct/R$string;->excavator_mode4_heading_error:I

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v0

    invoke-static {v2, v5, v4}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 186
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 188
    invoke-static {v2}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->indexOfAngleValue(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_d

    .line 190
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    instance-of v5, v5, Lcom/qianhe/yct/base/BaseActivity;

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v5}, Lcom/qianhe/yct/base/BaseActivity;->isHeadingDegreesOK()Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v0, 0x1

    .line 191
    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_c

    sget v0, Lcom/qianhe/yct/R$color;->green:I

    goto :goto_6

    :cond_c
    sget v0, Lcom/qianhe/yct/R$color;->red:I

    :goto_6
    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 192
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v1, v4, v0, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 194
    :cond_d
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->tvHeadingError:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$color;->text_black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->tvHeadingError:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_7
    return-void
.end method

.method private resetSwingCheckInsState()V
    .locals 1

    const/4 v0, 0x0

    .line 803
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->sawTiltThisGroup:Z

    .line 804
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->swingClearedThisGroup:Z

    .line 805
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->checkInsDismissedManually:Z

    .line 806
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->dismissCheckInsIfShowing()V

    return-void
.end method

.method private restoreCollectedState()V
    .locals 7

    const/4 v0, 0x0

    .line 367
    iput v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 368
    iput-wide v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->previousPitch:D

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 370
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->deviceAttitudes:[[D

    invoke-static {v2, v1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->clearAttitudeRow([[DI)V

    .line 371
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->sensorAttitudes:[[D

    invoke-static {v2, v1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->clearAttitudeRow([[DI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 374
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->consumeMode4SweepNeedRestart()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 375
    iget-object v4, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v4, :cond_2

    .line 376
    invoke-virtual {v4}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->clearReAttitudes()V

    :cond_2
    if-nez v1, :cond_8

    .line 378
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    if-nez v1, :cond_3

    goto :goto_4

    .line 382
    :cond_3
    array-length v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_6

    .line 384
    iget-object v4, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v4, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    aget-object v4, v4, v2

    .line 385
    invoke-static {v4}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->hasCollectedAttitudeRow([D)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    .line 388
    :cond_4
    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->deviceAttitudes:[[D

    aget-object v5, v5, v2

    const/4 v6, 0x3

    invoke-static {v4, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    iget-object v4, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v4, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reSensorAttitudes:[[D

    if-eqz v4, :cond_5

    array-length v5, v4

    if-ge v2, v5, :cond_5

    aget-object v4, v4, v2

    if-eqz v4, :cond_5

    .line 392
    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->sensorAttitudes:[[D

    aget-object v5, v5, v2

    invoke-static {v4, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 394
    iput v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    goto :goto_2

    .line 396
    :cond_6
    :goto_3
    iget v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    if-lez v1, :cond_7

    .line 397
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->deviceAttitudes:[[D

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    aget-wide v1, v0, v3

    iput-wide v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->previousPitch:D

    return-void

    .line 399
    :cond_7
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->hasShownEnterTips:Z

    return-void

    .line 379
    :cond_8
    :goto_4
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->hasShownEnterTips:Z

    return-void
.end method

.method private shouldBlockForCheckIns()Z
    .locals 1

    .line 784
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->isFirstGroupCheckIns()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->shouldShowSwingCheckIns()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private shouldShowSwingCheckIns()Z
    .locals 3

    .line 792
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->swingClearedThisGroup:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 795
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->currentGga()Lcom/qianhe/baselib/bean/GGAEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 796
    iget v0, v0, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-static {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hasTiltReject(Lcom/qianhe/baselib/bean/InsNavi;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private showCheckInsDialog(Z)V
    .locals 2

    .line 768
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "CheckInsDialog"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 771
    :cond_0
    new-instance p1, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->checkInsDialog:Lcom/qianhe/yct/dialog/CheckInsDialogFragment;

    .line 772
    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment$3;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;)V

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;->setOnActionListener(Lcom/qianhe/yct/dialog/CheckInsDialogFragment$OnActionListener;)V

    .line 779
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->checkInsDialog:Lcom/qianhe/yct/dialog/CheckInsDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showEnterPostureTipsDialog()V
    .locals 5

    .line 248
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 254
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 255
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$layout;->dialog_mode4_step3_posture_tips:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 256
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v2, 0x0

    .line 257
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 258
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 260
    sget v2, Lcom/qianhe/yct/R$id;->tvContent:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 261
    sget v3, Lcom/qianhe/yct/R$string;->excavator_mode4_step3_posture_tips:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 263
    sget v2, Lcom/qianhe/yct/R$id;->tvOk:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 271
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

    .line 273
    :goto_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 275
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 276
    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 277
    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x11

    .line 278
    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 279
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v1, 0x106000d

    .line 280
    invoke-virtual {v3, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 282
    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->enterPostureTipsDismissed:Z

    .line 250
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->refreshContinueEnabled()V

    .line 251
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->maybeShowCheckInsAfterPostureTips()V

    return-void
.end method

.method private startCountdownCollect()V
    .locals 4

    .line 511
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->isCollecting:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 514
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->isCollecting:Z

    .line 515
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->tvPrevious:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 516
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->tvContinue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 517
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    .line 518
    sget v1, Lcom/qianhe/yct/R$string;->collecting:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lcom/qianhe/yct/base/BaseActivity;->showCollectingDialog(Ljava/lang/String;ILcom/qianhe/yct/dialog/CollectingDialogFragment$OnCloseListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private trackSwingClearThisGroup(Z)V
    .locals 2

    .line 753
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->isFirstGroupCheckIns()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-static {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hasTiltReject(Lcom/qianhe/baselib/bean/InsNavi;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 757
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->sawTiltThisGroup:Z

    :cond_1
    if-eqz p1, :cond_2

    .line 759
    iget-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->sawTiltThisGroup:Z

    if-eqz p1, :cond_2

    .line 760
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->swingClearedThisGroup:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private undoLastCollect()V
    .locals 5

    .line 326
    iget v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    .line 327
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->deviceAttitudes:[[D

    invoke-static {v2, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->clearAttitudeRow([[DI)V

    .line 328
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->sensorAttitudes:[[D

    iget v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    invoke-static {v0, v2}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->clearAttitudeRow([[DI)V

    .line 330
    iget v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDeviceRoll:D

    .line 332
    iput-wide v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDevicePitch:D

    .line 333
    iput-wide v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDeviceHeading:D

    .line 334
    iput-wide v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorRoll:D

    .line 335
    iput-wide v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorPitch:D

    .line 336
    iput-wide v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorHeading:D

    :cond_0
    if-lez v0, :cond_1

    .line 340
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->deviceAttitudes:[[D

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    aget-wide v1, v2, v1

    iput-wide v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->previousPitch:D

    goto :goto_0

    :cond_1
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 342
    iput-wide v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->previousPitch:D

    :goto_0
    if-lez v0, :cond_2

    .line 345
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->deviceAttitudes:[[D

    invoke-direct {p0, v2, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->copyAttitudes([[DI)[[D

    move-result-object v0

    iput-object v0, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    .line 346
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->sensorAttitudes:[[D

    iget v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->copyAttitudes([[DI)[[D

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reSensorAttitudes:[[D

    goto :goto_1

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    .line 349
    iput-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reSensorAttitudes:[[D

    const/4 v0, 0x0

    .line 351
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->hasShownEnterTips:Z

    .line 352
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->enterPostureTipsDismissed:Z

    .line 353
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->resetSwingCheckInsState()V

    .line 354
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->maybePromptFirstGroupEnter()V

    .line 356
    :goto_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->updateUiForStep()V

    return-void
.end method

.method private updateProgressBar()V
    .locals 5

    .line 134
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 136
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->lltProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 137
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->lltProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 138
    iget v3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    if-gt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 139
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v3, :cond_3

    sget v3, Lcom/qianhe/yct/R$color;->theme:I

    goto :goto_3

    :cond_3
    sget v3, Lcom/qianhe/yct/R$color;->gray_light:I

    :goto_3
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    return-void
.end method

.method private updateUiForStep()V
    .locals 4

    .line 623
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    if-nez v0, :cond_0

    return-void

    .line 624
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->updateProgressBar()V

    .line 625
    iget v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 626
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->ivStep:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v3, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->STEP_IMAGES:[I

    aget v0, v3, v0

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 627
    iget v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    .line 628
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->tvTipsLine1:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->excavator_mode4_step3_tips_retract:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 629
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->tvPrevious:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 630
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->tvContinue:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 631
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->refreshRealtimeDisplays()V

    return-void

    :cond_1
    if-eq v0, v3, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    .line 648
    sget v0, Lcom/qianhe/yct/R$string;->excavator_mode4_step3_tips_extend_limit:I

    goto :goto_0

    .line 644
    :cond_2
    sget v0, Lcom/qianhe/yct/R$string;->excavator_mode4_step3_tips_retract:I

    goto :goto_0

    .line 641
    :cond_3
    sget v0, Lcom/qianhe/yct/R$string;->excavator_mode4_step3_tips_vertical:I

    goto :goto_0

    .line 638
    :cond_4
    sget v0, Lcom/qianhe/yct/R$string;->excavator_mode4_step3_tips_40:I

    .line 651
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->tvTipsLine1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 652
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->tvPrevious:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->isCollecting:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 653
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->refreshContinueEnabled()V

    .line 654
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->refreshRealtimeDisplays()V

    return-void
.end method


# virtual methods
.method public gga(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 698
    iget-object v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_1

    .line 699
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    .line 700
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->notFixedTipHelper:Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;

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

    .line 701
    iget-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->insAvailable:Z

    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->handleCheckInsOnInsNavi(Z)V

    :cond_1
    return-void
.end method

.method public handleNavigatePrevious()Z
    .locals 2

    .line 315
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->isCollecting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 318
    :cond_0
    iget v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->collectIndex:I

    if-lez v0, :cond_1

    .line 319
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->undoLastCollect()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public insNavi(Lcom/qianhe/baselib/bean/InsNavi;Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 708
    iget-object v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_1

    .line 709
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 710
    iput-boolean p2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->insAvailable:Z

    .line 711
    iget-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->isCollecting:Z

    if-nez p1, :cond_0

    .line 712
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->refreshContinueEnabled()V

    .line 714
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->refreshRealtimeDisplays()V

    .line 715
    invoke-direct {p0, p2}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->handleCheckInsOnInsNavi(Z)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    .line 100
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->resolveExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/qianhe/yct/base/BaseActivity;

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {p2}, Lcom/qianhe/yct/base/BaseActivity;->calculatePhaseToHang()D

    move-result-wide p2

    iput-wide p2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->phaseToHang:D

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->initView()V

    .line 106
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->initProgressBar()V

    .line 107
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->restoreCollectedState()V

    .line 108
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->updateUiForStep()V

    .line 109
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->refreshRealtimeDisplays()V

    .line 110
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/InsAhrs;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    .line 820
    iget-object v0, p1, Lcom/qianhe/baselib/bean/InsAhrs;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 823
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsAhrs;->headingDegreesError:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->latestHeadingDegreesError:Ljava/lang/Double;

    .line 824
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->refreshRealtimeDisplays()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v0, 0x0

    .line 288
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->hasShownEnterTips:Z

    .line 289
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->enterPostureTipsDismissed:Z

    .line 290
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;->tvContinue:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->resetSwingCheckInsState()V

    .line 294
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->notFixedTipHelper:Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->onPagePause()V

    .line 295
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 296
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 209
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 210
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->ignoreArmAngleExtendTip:Z

    .line 214
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->restoreCollectedState()V

    .line 216
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->updateUiForStep()V

    .line 217
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->refreshRealtimeDisplays()V

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->maybePromptFirstGroupEnter()V

    .line 220
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step3Binding;

    if-eqz v0, :cond_1

    .line 221
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->refreshContinueEnabled()V

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->notFixedTipHelper:Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->currentGga()Lcom/qianhe/baselib/bean/GGAEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/utils/NotFixedSolutionTipHelper;->onPageResume(Lcom/qianhe/baselib/bean/GGAEntity;)V

    return-void
.end method
