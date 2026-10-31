.class public Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "VerifyAccuracyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;,
        Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;
    }
.end annotation


# static fields
.field private static sRetainedState:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

.field private currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private finishingPreciseCalib:Z

.field private isCollecting:Z

.field private final mCollectedPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

.field private mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

.field private mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

.field private mCurrentStep:I

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mHasHeadingErrorSample:Z

.field private mHasReferenceLlh:Z

.field private mHeadingErrorHiddenForCurrentStep:Z

.field private mHeightInputReady:Z

.field private mInPreciseCalibPoseUi:Z

.field private mLastCollectedReference:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

.field private mNedOriginElev:D

.field private mNedOriginLat:D

.field private mNedOriginLon:D

.field private mOldCalibParams:Ljava/lang/String;

.field private mOldCalibParamsId:Ljava/lang/String;

.field private mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

.field private mPendingFineTuneExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private mPendingFiveSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingHabSample:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

.field private mPendingHeightNed:[D

.field private mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

.field private mPendingSourceParams:Ljava/lang/String;

.field private mPreciseCalibrating:Z

.field private mReferenceHeightMeters:D

.field private mReferenceLat:D

.field private mReferenceLon:D

.field private mRestoredCollectState:Z

.field private mShowOneClickVerifyTips:Z

.field private mShowingCheckAccuracyDialog:Z

.field private mShowingResult:Z

.field private mSkipModeSelect:Z

.field private mStepActions:[Ljava/lang/String;

.field private mStepImages:[I

.field private mTotalSteps:I

.field private mVerifyMode:I

.field private suppressAutoCalibrateTips:Z

.field private waitForPositionChange:Z

.field private waitingSetParam:Z


# direct methods
.method public static synthetic $r8$lambda$-xszgv6bFCxoaUjB5Ca_pwGRakE(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Landroid/view/View;)V
    .locals 1

    .line 288
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPreciseCalibrating:Z

    if-nez p1, :cond_5

    .line 288
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isCollecting:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mInPreciseCalibPoseUi:Z

    if-eqz p1, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->exitPreciseCalibPoseUi()V

    return-void

    .line 293
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvResult:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 294
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->showGoToBucketFineTuneDialog()V

    return-void

    .line 297
    :cond_2
    iget p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    if-lez p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 298
    iput p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    .line 300
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    if-le p1, v0, :cond_4

    .line 301
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 303
    :cond_4
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->refreshCollectReferenceAfterStepChange()V

    .line 304
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->resetHeadingErrorCheckForNewStep()V

    .line 305
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateStepUi()V

    :cond_5
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$2o1BGTdVb47H69rTYCqTp4u6-S4(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    const-string/jumbo v0, "verify_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 357
    :cond_0
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 358
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 361
    :cond_1
    const-string/jumbo p1, "verifyModeValue"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    .line 362
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->onVerifyModeSelected()V

    return-void
.end method

.method public static synthetic $r8$lambda$9YR8T5Teymp5W8fv1aYSg0jrKG8(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    const-string v0, "check_accuracy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 341
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowingCheckAccuracyDialog:Z

    .line 342
    const-string v0, "confirm"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->restartPreciseVerifyLoop()V

    return-void

    .line 344
    :cond_1
    const-string v0, "manual_cancel"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 345
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$FjV9BSRkVf4vf52NYKNbTWGtAxo(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    const-string/jumbo v0, "verify_accuracy_end"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 351
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$Idxsl2hAKFxWGrkcLSd1WMwpzqY(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V
    .locals 1

    .line 2167
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2167
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2168
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHasHeadingErrorSample:Z

    .line 2169
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateHeadingErrorDisplay()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$OO1TYPJPyk8HYxrh3-swU0tZ2Dk(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;Ljava/util/List;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;[DLjava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    .line 1244
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1245
    :cond_0
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPreciseCalibrating:Z

    .line 1246
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 1247
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateCollectButtonState()V

    .line 1248
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1249
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "\u6807\u51c6\u67e5\u9a8c\u667a\u80fd\u6821\u51c6\u5931\u8d25 code="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->code:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    .line 1250
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->clearPendingPreciseFinetune()V

    .line 1251
    sget p1, Lcom/qianhe/yct/R$string;->calibration_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 1254
    :cond_1
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    .line 1255
    iput-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingFiveSamples:Ljava/util/List;

    .line 1256
    iput-object p3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingHabSample:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    .line 1257
    iput-object p4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingHeightNed:[D

    .line 1258
    iput-object p5, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingSourceParams:Ljava/lang/String;

    .line 1259
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sget p3, Lcom/qianhe/yct/R$string;->precise_calib_stdev_compare:I

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-wide p4, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->stdevOld:D

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    .line 1260
    iget-wide v1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->stdevAfterHa:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p5

    if-nez p5, :cond_2

    iget-wide v1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->stdevAfterHa:D

    goto :goto_0

    :cond_2
    iget-wide v1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->stdevNew:D

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p4, p5, v0

    const/4 p4, 0x1

    aput-object p1, p5, p4

    .line 1259
    invoke-static {p2, p3, p5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1261
    sget p1, Lcom/qianhe/yct/R$string;->precise_calib_use_params_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget p1, Lcom/qianhe/yct/R$string;->use:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget p1, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "precise_calib_use_params"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QFwdf7Gh-gJ2srYY1XOyDnSYPnY(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;I)V
    .locals 4

    const/4 v0, 0x0

    .line 653
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isCollecting:Z

    .line 654
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvPrevious:Landroid/widget/TextView;

    iget v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    const/4 v3, 0x1

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p1, :cond_1

    .line 657
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateHeadingErrorDisplay()V

    .line 658
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateCollectButtonState()V

    return-void

    .line 661
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isPreciseType2()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 662
    iget p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->needPreciseMovementCheck(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 663
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->waitForPositionChange:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mLastCollectedReference:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isPreciseSensorOrGgaMoved(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 664
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->showStepActionTip()V

    .line 665
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateCollectButtonState()V

    return-void

    .line 668
    :cond_2
    iget p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isPreciseStepConstraintMet(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 669
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->showStepActionTip()V

    .line 670
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateCollectButtonState()V

    return-void

    .line 674
    :cond_3
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->captureCurrentPoint()Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    move-result-object p1

    .line 675
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isValidCollectPoint(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 676
    sget p1, Lcom/qianhe/yct/R$string;->getting_location:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 677
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateCollectButtonState()V

    return-void

    .line 680
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->recordVerifyCollectEvent(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;I)V

    .line 682
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->copyCollectPoint(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;)Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mLastCollectedReference:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    .line 683
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->waitForPositionChange:Z

    .line 684
    iget p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    .line 685
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mTotalSteps:I

    if-ge p1, v0, :cond_5

    .line 686
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->resetHeadingErrorCheckForNewStep()V

    .line 687
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateStepUi()V

    return-void

    .line 689
    :cond_5
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->showResultUi()V

    return-void
.end method

.method public static synthetic $r8$lambda$d_8YUP6mGc3cS5zQMTckKFF1S98(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    const-string v0, "go_to_bucket_fine_tune"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 319
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isPreciseType2()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->enterPreciseCalibPoseUi()V

    return-void

    .line 323
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->startBucketFineTuneActivity()V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$fOTv28ScBHxML9RgJhMdY9IK-hM(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Z)V
    .locals 4

    .line 1796
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    .line 1796
    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvStepText:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    .line 1797
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvStepText:Landroidx/core/widget/NestedScrollView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 1798
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvStepText:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1, v1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    if-eqz p1, :cond_0

    .line 1801
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvStepText:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1802
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 1803
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1804
    iget-object p0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvStepText:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 1808
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvStepText:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 1810
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/qianhe/yct/R$dimen;->verify_step_text_max_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1811
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvStepText:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-gtz v2, :cond_2

    .line 1813
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->cvStep:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->cvStep:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->cvStep:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    :cond_2
    if-gtz v2, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/high16 v3, 0x40000000    # 2.0f

    .line 1816
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1817
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1818
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 1819
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvStepText:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1820
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1821
    iget-object p0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvStepText:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nS_hNbu3AXT64nWMzJCQaXONg14(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Landroid/view/View;)V
    .locals 0

    .line 268
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mInPreciseCalibPoseUi:Z

    if-eqz p1, :cond_0

    .line 269
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPreciseCalibrating:Z

    if-nez p1, :cond_2

    .line 270
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->onPreciseCalibNowClick()V

    return-void

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvResult:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 275
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->showEndConfirmDialog()V

    return-void

    .line 278
    :cond_1
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isCollecting:Z

    if-eqz p1, :cond_3

    :cond_2
    return-void

    .line 279
    :cond_3
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->onCollectClick()V

    return-void
.end method

.method public static synthetic $r8$lambda$tE0VC6hO4ED_oERKy2mqZw371vQ(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2210
    const-string v0, "back"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2211
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$tlFC-8OD6NXKEtkOA0q3ZLalvY8(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Ljava/lang/String;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;Ljava/util/List;Ljava/util/List;Ljava/util/List;[D[D)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1242
    invoke-static/range {p1 .. p7}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->adjustPreciseHabVertical(Ljava/lang/String;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;Ljava/util/List;Ljava/util/List;Ljava/util/List;[D[D)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    move-result-object p4

    move-object p5, p6

    move-object p6, p0

    .line 1243
    new-instance p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda14;

    move-object v0, p6

    move-object p6, p1

    move-object p1, v0

    move-object v0, p4

    move-object p4, p2

    move-object p2, v0

    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda14;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;Ljava/util/List;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;[DLjava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$txK_gPRbsLGbPLiWZroDrMBQino(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Ljava/lang/String;)V
    .locals 2

    .line 1494
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1496
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v0, v1, p1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$wjzBfYQdj8RMbbs3VjuJNwNjuhw(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    const-string v0, "precise_calib_use_params"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 331
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->applyPreciseCalibParams()V

    return-void

    .line 332
    :cond_1
    const-string p1, "manual_cancel"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 334
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->clearPendingPreciseFinetune()V

    .line 335
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->restartPreciseVerifyLoop()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$zc80VCicwUXrzA14MHAwl65ixY4(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Landroid/view/View;)V
    .locals 0

    .line 283
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPreciseCalibrating:Z

    if-nez p1, :cond_1

    .line 283
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mInPreciseCalibPoseUi:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->showFineTuneHeightDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHasReferenceLlh(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHasReferenceLlh:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReferenceHeightMeters(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceHeightMeters:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmReferenceLat(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLat:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmReferenceLon(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLon:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputcurrentExcavator(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHasReferenceLlh(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHasReferenceLlh:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHeightInputReady(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHeightInputReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReferenceHeightMeters(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceHeightMeters:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReferenceLat(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLat:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReferenceLon(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLon:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShowingCheckAccuracyDialog(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowingCheckAccuracyDialog:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcacheOldCalibParams(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->cacheOldCalibParams()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearPendingPreciseFinetune(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->clearPendingPreciseFinetune()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCalibrateDialogClosed(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->onCalibrateDialogClosed(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowNextStateAfterCalibrateAutoClose(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->showNextStateAfterCalibrateAutoClose()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowNextStateAfterCalibrateAutoCloseForPreciseCalib(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->showNextStateAfterCalibrateAutoCloseForPreciseCalib()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartBucketFineTuneActivity(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->startBucketFineTuneActivity()V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 73
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    const/4 v0, 0x3

    .line 91
    iput v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mTotalSteps:I

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    .line 93
    new-instance v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 95
    sget v0, Lcom/qianhe/yct/R$drawable;->icon_verify_step1:I

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_verify_step2:I

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_verify_step3:I

    sget v3, Lcom/qianhe/yct/R$drawable;->icon_verify_step4:I

    sget v4, Lcom/qianhe/yct/R$drawable;->icon_verify_step5:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mStepImages:[I

    const/4 v0, -0x1

    .line 118
    iput v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mOldCalibParams:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mOldCalibParamsId:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingSourceParams:Ljava/lang/String;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 139
    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLat:D

    .line 140
    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLon:D

    .line 141
    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginElev:D

    const-wide/16 v2, 0x0

    .line 143
    iput-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceHeightMeters:D

    .line 145
    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLat:D

    .line 146
    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLon:D

    return-void
.end method

.method private adaptStepTextArea()V
    .locals 3

    .line 1792
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvStepText:Landroidx/core/widget/NestedScrollView;

    if-nez v0, :cond_0

    return-void

    .line 1793
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1795
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvStepText:Landroidx/core/widget/NestedScrollView;

    new-instance v2, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda10;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private addResultItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 2077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 2079
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2080
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x1e

    .line 2081
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 2083
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 2084
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2085
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2086
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/qianhe/yct/R$color;->text_black:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41800000    # 16.0f

    .line 2087
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2089
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 2090
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2091
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v3, Lcom/qianhe/yct/R$color;->text_black:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2092
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2094
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2095
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2096
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2098
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2099
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2100
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/qianhe/yct/R$color;->line:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2101
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private applyPreciseCalibParams()V
    .locals 17

    move-object/from16 v0, p0

    .line 1446
    iget-object v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingFiveSamples:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 1447
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_5

    iget-object v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingHabSample:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 1453
    :cond_0
    sget v1, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1454
    iput-boolean v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->finishingPreciseCalib:Z

    .line 1457
    iget-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0, v2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginFinetune(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 1459
    iget-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v2, :cond_1

    iget-wide v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    .line 1460
    :goto_0
    const-string v5, ""

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v2, v5

    .line 1458
    :goto_1
    invoke-static {v3, v4, v2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->updateSessionExcavator(JLjava/lang/String;)V

    .line 1461
    iget-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingFiveSamples:Ljava/util/List;

    iget-object v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingHabSample:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    iget-object v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingSourceParams:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->recordPreciseFivePointFinetuneEvents(Ljava/util/List;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;Ljava/lang/String;)V

    .line 1463
    iget-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    invoke-direct {v0, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->buildBucketFromAdjustedTool(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v2

    iput-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 1464
    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ShovelEntity;->ensureParamsSerialized()V

    .line 1465
    iget-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    iget-object v4, v4, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->calibParamsBase64:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->buildFineTuneExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v2

    iput-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingFineTuneExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 1467
    iget-object v6, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 1468
    iget-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    iget-object v7, v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->calibParamsBase64:Ljava/lang/String;

    .line 1469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u667a\u80fd\u6821\u51c6(5\u70b9)\u5e94\u7528\u65b0\u53c2\u6570\uff1a\ncalibParamsId(\u89e3\u7801\u524d)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\uff0c\ncalibParamsId(\u89e3\u7801\u540e)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    invoke-direct {v0, v6}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->decodeCalibParamsIdRaw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\uff0c\ncalibParams="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1469
    invoke-static {v2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 1472
    iget-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    iget-object v3, v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    if-eqz v3, :cond_4

    iget-object v2, v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->toolParamsBase64:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1473
    iget-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v8, v2

    goto :goto_2

    :cond_3
    move-object v8, v5

    .line 1475
    :goto_2
    iget-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    iget-object v2, v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    iget-wide v9, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->AB:D

    const/4 v3, 0x0

    .line 1478
    invoke-static {v2, v3}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->toothToJsonArray(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;I)Lcom/google/gson/JsonArray;

    move-result-object v11

    iget-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    iget-object v2, v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    .line 1479
    invoke-static {v2, v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->toothToJsonArray(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;I)Lcom/google/gson/JsonArray;

    move-result-object v12

    iget-object v13, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v14, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v15, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    iget-wide v1, v0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    .line 1480
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    .line 1475
    invoke-static/range {v8 .. v16}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordSetToolInput(Ljava/lang/String;DLcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 1481
    iget-object v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    iget-object v1, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    .line 1482
    invoke-static {v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->buildSetToolCmd(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    iget-wide v8, v0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    .line 1483
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 1481
    invoke-static {v1, v2, v3, v4, v5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordFineTuneSetTool(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 1485
    :cond_4
    iget-object v8, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v9, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v10, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    iget-wide v1, v0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    .line 1486
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    .line 1485
    invoke-static/range {v6 .. v11}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordFineTuneSetParam(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 1487
    invoke-direct {v0, v6, v7}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->sendSetParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1449
    :cond_5
    :goto_3
    invoke-direct {v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->clearPendingPreciseFinetune()V

    .line 1450
    sget v1, Lcom/qianhe/yct/R$string;->calibration_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method private applyRestoredUi()V
    .locals 3

    .line 2548
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowingCheckAccuracyDialog:Z

    if-eqz v0, :cond_1

    .line 2549
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mInPreciseCalibPoseUi:Z

    if-eqz v0, :cond_0

    .line 2550
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->enterPreciseCalibPoseUi()V

    .line 2552
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->restoreCheckAccuracyDialogIfNeeded()V

    return-void

    .line 2555
    :cond_1
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mInPreciseCalibPoseUi:Z

    if-eqz v0, :cond_2

    .line 2556
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->enterPreciseCalibPoseUi()V

    .line 2557
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->restoreFineTuneHeightDialogAfterRotation()V

    .line 2558
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->restorePendingPreciseResultDialogIfNeeded()V

    return-void

    .line 2561
    :cond_2
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowingResult:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2562
    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->showResultUi(Z)V

    .line 2563
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateCollectButtonState()V

    return-void

    .line 2566
    :cond_3
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    iget v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mTotalSteps:I

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2567
    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->showResultUi(Z)V

    .line 2568
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateCollectButtonState()V

    return-void

    .line 2571
    :cond_4
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->rebuildProgressBarForCurrentStep()V

    .line 2572
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateStepUi()V

    const/4 v0, 0x0

    .line 2573
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateHeadingErrorDisplay(Z)V

    return-void
.end method

.method private bindFineTuneHeightDialog(Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;)V
    .locals 1

    .line 1116
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->createFineTuneHeightConfirmListener()Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$OnHeightConfirmListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->setOnHeightConfirmListener(Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$OnHeightConfirmListener;)V

    return-void
.end method

.method private buildBucketFromAdjustedTool(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;)Lcom/qianhe/baselib/bean/ShovelEntity;
    .locals 5

    .line 1613
    new-instance v0, Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ShovelEntity;-><init>()V

    .line 1614
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->generatePreciseBucketName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    .line 1615
    iget-object v1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->toolParamsBase64:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 1616
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->getActiveCalibParams()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->getMode(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    .line 1617
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->showUnit:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->showUnit:I

    .line 1618
    iget-object p1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    invoke-static {p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->toolToAutoGenerateParams(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    move-result-object p1

    .line 1619
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0x:D

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1x:D

    .line 1620
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0y:D

    neg-double v1, v1

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1y:D

    .line 1621
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0z:D

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1z:D

    .line 1623
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->resolveCurrentBucket()Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->resolveSourceDistanceMeasure(Lcom/qianhe/baselib/bean/ShovelEntity;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->useDistanceMeasure:Ljava/lang/Boolean;

    .line 1624
    invoke-virtual {v0, p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->setAutoGenerateParamsObj(Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;)V

    .line 1625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 1626
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->createTime:J

    .line 1627
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->updateTime:J

    const-wide/16 v1, 0x1

    .line 1628
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    return-object v0
.end method

.method private buildFineTuneSamplesFromCollected()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;",
            ">;"
        }
    .end annotation

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 1331
    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLat:D

    .line 1332
    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLon:D

    .line 1333
    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginElev:D

    .line 1334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1335
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    .line 1336
    invoke-direct {p0, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->toFineTuneSample(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static buildVerifyTooth(DDDDDD)Lcom/google/gson/JsonObject;
    .locals 5

    .line 2004
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2005
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x1

    new-array v2, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "%.8f"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "lat"

    invoke-virtual {v0, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v3

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "lon"

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "hgt"

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2008
    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string/jumbo p1, "x"

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2009
    invoke-static {p8, p9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string/jumbo p1, "y"

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2010
    invoke-static/range {p10 .. p11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string/jumbo p1, "z"

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method

.method private cacheOldCalibParams()V
    .locals 1

    .line 1320
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_1

    .line 1321
    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mOldCalibParams:Ljava/lang/String;

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1325
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mOldCalibParamsId:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private captureCurrentPoint()Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;
    .locals 7

    .line 695
    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    invoke-direct {v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;-><init>()V

    .line 696
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->calculatePhaseToHang()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->phaseToHang:D

    .line 697
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 698
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/GGAEntity;->latitude:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaLatitude:D

    .line 699
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaLongitude:D

    .line 700
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/GGAEntity;->elevation:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaElevation:D

    .line 701
    iput-boolean v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaValid:Z

    .line 703
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    if-eqz v1, :cond_1

    .line 704
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->latitude:D

    .line 705
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->longitude:D

    .line 706
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    .line 707
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->fillProjectedCoords(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;)V

    .line 708
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insLatitude:D

    .line 709
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insLongitude:D

    .line 710
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insElevation:D

    .line 711
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insRollDegrees:D

    .line 712
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insPitchDegrees:D

    .line 713
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insHeadingDegrees:D

    .line 714
    iput-boolean v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insValid:Z

    .line 715
    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->getArmPitchDegrees(Lcom/qianhe/baselib/bean/InsNavi;)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->armPitchDegrees:D

    .line 716
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLatL:D

    .line 717
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLonL:D

    .line 718
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipHgtL:D

    .line 719
    iget-wide v5, v1, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    iput-wide v5, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipXL:D

    .line 720
    iget-wide v5, v1, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    iput-wide v5, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipYL:D

    .line 721
    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipZL:D

    .line 722
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLatR:D

    .line 723
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLonR:D

    .line 724
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipHgtR:D

    .line 725
    iget-wide v5, v1, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    iput-wide v5, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipXR:D

    .line 726
    iget-wide v5, v1, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    iput-wide v5, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipYR:D

    .line 727
    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipZR:D

    .line 728
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->latitudeM:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLatC:D

    .line 729
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->longitudeM:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLonC:D

    .line 730
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipHgtC:D

    .line 731
    iget-wide v5, v1, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    iput-wide v5, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipXC:D

    .line 732
    iget-wide v5, v1, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    iput-wide v5, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipYC:D

    .line 733
    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipZC:D

    .line 735
    :cond_1
    iget-wide v3, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->headingDegreesError:D

    .line 736
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    if-eqz v1, :cond_2

    .line 737
    iget-wide v3, v1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->rollAngle:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorRollDegrees:D

    .line 738
    iget-wide v3, v1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->pitchAngle:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorPitchDegrees:D

    .line 739
    iget-wide v3, v1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->headingAngle:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorHeadingDegrees:D

    .line 740
    iput-boolean v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorValid:Z

    return-object v0

    .line 741
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->useSensorPitchForMovementCheck()Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v3, 0x0

    .line 742
    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorPitchDegrees:D

    .line 743
    iput-boolean v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorValid:Z

    :cond_3
    return-object v0
.end method

.method private captureRealtimeFineTuneSample()Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;
    .locals 8

    .line 1362
    new-instance v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    invoke-direct {v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;-><init>()V

    .line 1363
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->calculatePhaseToHang()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->phaseToHang:D

    .line 1364
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    if-eqz v0, :cond_0

    .line 1365
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    iput-wide v2, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->deviceRoll:D

    .line 1366
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iput-wide v2, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->devicePitch:D

    .line 1367
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    iput-wide v2, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->deviceHeading:D

    .line 1369
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    if-eqz v0, :cond_1

    .line 1370
    iget-wide v2, v0, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->rollAngle:D

    iput-wide v2, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorRoll:D

    .line 1371
    iget-wide v2, v0, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->pitchAngle:D

    iput-wide v2, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorPitch:D

    .line 1372
    iget-wide v2, v0, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->headingAngle:D

    iput-wide v2, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorHeading:D

    const/4 v0, 0x1

    .line 1373
    iput-boolean v0, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorValid:Z

    .line 1375
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v0, :cond_2

    .line 1376
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/GGAEntity;->latitude:D

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/GGAEntity;->elevation:D

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->fillPhaseCenterNed(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;DDD)V

    .line 1378
    :cond_2
    invoke-static {v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->normalizeFineTuneSample(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)V

    return-object v1
.end method

.method private clearPendingPreciseFinetune()V
    .locals 2

    const/4 v0, 0x0

    .line 1267
    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    .line 1268
    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingFiveSamples:Ljava/util/List;

    .line 1269
    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingHabSample:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    .line 1270
    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingHeightNed:[D

    .line 1271
    const-string v1, ""

    iput-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingSourceParams:Ljava/lang/String;

    .line 1272
    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 1273
    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingFineTuneExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-void
.end method

.method private collectAfterHeadingCheck()V
    .locals 1

    .line 572
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->shouldEnforceHeadingCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isVerifyHeadingOk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateHeadingErrorDisplay()V

    .line 575
    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$6;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$6;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->showHeadingAccuracyDialog(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)V

    return-void

    .line 592
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isCollecting:Z

    if-eqz v0, :cond_1

    return-void

    .line 594
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isVerifyHeadingErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 595
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHeadingErrorHiddenForCurrentStep:Z

    .line 596
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateHeadingErrorDisplay()V

    .line 598
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->startCountdownCollect()V

    return-void
.end method

.method private copyCollectPoint(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;)Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;
    .locals 3

    .line 769
    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    invoke-direct {v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;-><init>()V

    .line 770
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->latitude:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->latitude:D

    .line 771
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->longitude:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->longitude:D

    .line 772
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    .line 773
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->east:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->east:D

    .line 774
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->north:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->north:D

    .line 775
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->armPitchDegrees:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->armPitchDegrees:D

    .line 776
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorPitchDegrees:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorPitchDegrees:D

    .line 777
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaLatitude:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaLatitude:D

    .line 778
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaLongitude:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaLongitude:D

    .line 779
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaElevation:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaElevation:D

    .line 780
    iget-boolean v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaValid:Z

    iput-boolean v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaValid:Z

    .line 781
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insLatitude:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insLatitude:D

    .line 782
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insLongitude:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insLongitude:D

    .line 783
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insElevation:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insElevation:D

    .line 784
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insRollDegrees:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insRollDegrees:D

    .line 785
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insPitchDegrees:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insPitchDegrees:D

    .line 786
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insHeadingDegrees:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insHeadingDegrees:D

    .line 787
    iget-boolean v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insValid:Z

    iput-boolean v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insValid:Z

    .line 788
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorRollDegrees:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorRollDegrees:D

    .line 789
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorHeadingDegrees:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorHeadingDegrees:D

    .line 790
    iget-boolean v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorValid:Z

    iput-boolean v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorValid:Z

    .line 791
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->phaseToHang:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->phaseToHang:D

    .line 792
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->headingDegreesError:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->headingDegreesError:D

    .line 793
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLatL:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLatL:D

    .line 794
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLonL:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLonL:D

    .line 795
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipHgtL:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipHgtL:D

    .line 796
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipXL:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipXL:D

    .line 797
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipYL:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipYL:D

    .line 798
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipZL:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipZL:D

    .line 799
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLatR:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLatR:D

    .line 800
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLonR:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLonR:D

    .line 801
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipHgtR:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipHgtR:D

    .line 802
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipXR:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipXR:D

    .line 803
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipYR:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipYR:D

    .line 804
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipZR:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipZR:D

    .line 805
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLatC:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLatC:D

    .line 806
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLonC:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLonC:D

    .line 807
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipHgtC:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipHgtC:D

    .line 808
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipXC:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipXC:D

    .line 809
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipYC:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipYC:D

    .line 810
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipZC:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipZC:D

    return-object v0
.end method

.method private createFineTuneHeightConfirmListener()Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$OnHeightConfirmListener;
    .locals 1

    .line 1066
    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$7;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$7;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    return-object v0
.end method

.method private decodeCalibParamsIdRaw(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1660
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 1662
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p1
.end method

.method private endPreciseFinetuneSessionSuccess()V
    .locals 3

    .line 1520
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1523
    :cond_0
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1524
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    if-eqz v1, :cond_1

    .line 1525
    iget-wide v1, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->stdevOld:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "stdev_before"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1526
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    iget-wide v1, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->stdevNew:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "stdev_after"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1527
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    iget-wide v1, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->stdevAfterHa:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1528
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    iget-wide v1, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->stdevAfterHa:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "stdev_after_ha"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1531
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "ok"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1532
    const-string/jumbo v1, "type"

    const-string v2, "fivePoint"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingFineTuneExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1534
    :cond_2
    const-string v1, ""

    .line 1535
    :goto_0
    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1537
    invoke-static {v1, v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->endSession(ZLcom/google/gson/JsonObject;)V

    return-void
.end method

.method private endVerifySession()V
    .locals 21

    move-object/from16 v0, p0

    .line 2015
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2018
    :cond_0
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2019
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "ok"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2020
    invoke-direct {v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->getActiveCalibParams()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->getMode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "mode"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2021
    iget-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "steps"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2022
    new-instance v2, Lcom/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/google/gson/JsonArray;-><init>()V

    .line 2023
    new-instance v3, Lcom/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/google/gson/JsonArray;-><init>()V

    .line 2028
    iget-object v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 2029
    iget-object v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    .line 2030
    iget-wide v9, v4, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    move-wide v11, v9

    const/4 v13, 0x0

    .line 2032
    :goto_0
    iget-object v14, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_3

    .line 2033
    iget-object v14, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    .line 2034
    iget-wide v5, v14, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 2035
    iget-wide v5, v14, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->east:D

    iget-wide v7, v4, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->east:D

    sub-double/2addr v5, v7

    .line 2036
    iget-wide v7, v14, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->north:D

    move-wide/from16 v17, v5

    iget-wide v5, v4, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->north:D

    sub-double/2addr v7, v5

    mul-double v5, v17, v17

    mul-double v7, v7, v7

    add-double/2addr v5, v7

    .line 2037
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 2038
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 2039
    iget-wide v5, v14, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    cmpl-double v7, v5, v9

    if-lez v7, :cond_1

    move-wide v9, v5

    :cond_1
    cmpg-double v7, v5, v11

    if-gez v7, :cond_2

    move-wide v11, v5

    :cond_2
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    sub-double/2addr v9, v11

    .line 2043
    iget-object v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-lt v4, v6, :cond_4

    .line 2044
    iget-object v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v11, v4, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    .line 2045
    iget-object v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    const/4 v8, 0x1

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v13, v4, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    .line 2046
    iget-object v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v7, v4, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    .line 2047
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    sub-double/2addr v5, v7

    goto :goto_1

    :cond_4
    const-wide/16 v5, 0x0

    .line 2049
    :goto_1
    iget-object v7, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x5

    if-lt v7, v8, :cond_5

    .line 2050
    iget-object v7, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    const/4 v4, 0x2

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v7, v4, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    .line 2051
    iget-object v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    const/4 v11, 0x3

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v11, v4, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    .line 2052
    iget-object v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    const/4 v13, 0x4

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v13, v4, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    move-wide/from16 v17, v5

    .line 2053
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    goto :goto_2

    :cond_5
    move-wide/from16 v17, v5

    const-wide/16 v4, 0x0

    :goto_2
    const/4 v8, 0x0

    const-wide/16 v15, 0x0

    .line 2055
    :goto_3
    iget-object v6, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v8, v6, :cond_8

    add-int/lit8 v6, v8, 0x1

    move v7, v6

    .line 2056
    :goto_4
    iget-object v11, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_7

    .line 2057
    iget-object v11, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v11, v11, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->east:D

    iget-object v13, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v13, v13, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->east:D

    sub-double/2addr v11, v13

    .line 2058
    iget-object v13, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v13, v13, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->north:D

    move-wide/from16 v19, v4

    iget-object v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v4, v4, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->north:D

    sub-double/2addr v13, v4

    mul-double v11, v11, v11

    mul-double v13, v13, v13

    add-double/2addr v11, v13

    .line 2059
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    cmpl-double v11, v4, v15

    if-lez v11, :cond_6

    move-wide v15, v4

    :cond_6
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v4, v19

    goto :goto_4

    :cond_7
    move v8, v6

    goto :goto_3

    :cond_8
    move-wide/from16 v19, v4

    move-wide v7, v15

    move-wide/from16 v5, v17

    move-wide/from16 v15, v19

    goto :goto_5

    :cond_9
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v15, 0x0

    .line 2064
    :goto_5
    const-string v4, "elevations"

    invoke-virtual {v1, v4, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 2065
    const-string v2, "align_offsets"

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 2066
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "elev_123"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2067
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "elev_345"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2068
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "elev_max"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2069
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "plane_max"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2070
    iget-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v2, :cond_a

    .line 2071
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    iget-object v2, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->updateSessionExcavator(JLjava/lang/String;)V

    :cond_a
    const/4 v8, 0x1

    .line 2073
    invoke-static {v8, v1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->endSession(ZLcom/google/gson/JsonObject;)V

    return-void
.end method

.method private enterPreciseCalibPoseUi()V
    .locals 4

    const/4 v0, 0x1

    .line 1129
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mInPreciseCalibPoseUi:Z

    const/4 v1, 0x0

    .line 1130
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowingResult:Z

    .line 1131
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v3, Lcom/qianhe/yct/R$string;->bucket_fine_tune:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1132
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvResult:Landroidx/core/widget/NestedScrollView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1133
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->cvStep:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1134
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->armAngleScaleBar:Lcom/qianhe/yct/view/ArmAngleScaleBarView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1135
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvArmAngleBestTip:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvHeadingError:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1137
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->lltProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1139
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvCommonTips:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1140
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvStepAction:Landroid/widget/TextView;

    sget v3, Lcom/qianhe/yct/R$string;->precise_calib_pose_tip:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1141
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->ivStep:Lcom/qianhe/yct/view/NightAwareImageView;

    sget v3, Lcom/qianhe/yct/R$drawable;->icon_hab_mode4_collinear:I

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/view/NightAwareImageView;->setImageResource(I)V

    .line 1142
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->adaptStepTextArea()V

    .line 1143
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvCalibrationPointInput:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvPrevious:Landroid/widget/TextView;

    sget v3, Lcom/qianhe/yct/R$string;->previous:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1145
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvPrevious:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1146
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvPrevious:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1147
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvNext:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->calibrate_now:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1148
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvNext:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1149
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvNext:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method private exitPreciseCalibPoseUi()V
    .locals 2

    const/4 v0, 0x0

    .line 1153
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mInPreciseCalibPoseUi:Z

    .line 1154
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvCalibrationPointInput:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1155
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->verify_accuracy:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1156
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->showResultUi()V

    return-void
.end method

.method private fillPhaseCenterNed(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;DDD)V
    .locals 12

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    .line 1383
    iget-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLat:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1384
    iput-wide p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLat:D

    .line 1385
    iput-wide v8, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLon:D

    .line 1386
    iput-wide v10, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginElev:D

    .line 1388
    :cond_0
    iget-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLat:D

    iget-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLon:D

    iget-wide v4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginElev:D

    move-wide v6, p2

    invoke-static/range {v0 .. v11}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->llhToNed(DDDDDD)[D

    move-result-object v0

    const/4 v1, 0x0

    .line 1389
    aget-wide v1, v0, v1

    iput-wide v1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->north:D

    const/4 v1, 0x1

    .line 1390
    aget-wide v1, v0, v1

    iput-wide v1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->east:D

    const/4 v1, 0x2

    .line 1391
    aget-wide v1, v0, v1

    iput-wide v1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->down:D

    .line 1392
    iput-wide p2, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->lat:D

    .line 1393
    iput-wide v8, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->lon:D

    .line 1394
    iput-wide v10, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->elev:D

    return-void
.end method

.method private fillProjectedCoords(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;)V
    .locals 9

    const/4 v0, 0x3

    .line 749
    new-array v8, v0, [D

    .line 750
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    iget-wide v2, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->longitude:D

    iget-wide v4, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->latitude:D

    iget-wide v6, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    invoke-virtual/range {v1 .. v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToAlignedProj(DDD[D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 751
    aget-wide v0, v8, v0

    iput-wide v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->east:D

    const/4 v0, 0x1

    .line 752
    aget-wide v0, v8, v0

    iput-wide v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->north:D

    :cond_0
    return-void
.end method

.method private generatePreciseBucketName()Ljava/lang/String;
    .locals 3

    .line 1633
    sget v0, Lcom/qianhe/yct/R$string;->shovel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1634
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->resolveCurrentBucket()Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1635
    iget-object v2, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1636
    iget-object v0, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    .line 1638
    :cond_0
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->generateFineTuneBucketName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getActiveCalibParams()Ljava/lang/String;
    .locals 1

    .line 1313
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    return-object v0

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mOldCalibParams:Ljava/lang/String;

    return-object v0
.end method

.method private getArmPitchDegrees(Lcom/qianhe/baselib/bean/InsNavi;)D
    .locals 4

    .line 762
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    return-wide v0

    .line 765
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iget p1, p0, Lcom/qianhe/yct/base/BaseActivity;->zeroDegrees:F

    float-to-double v2, p1

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private hasValidReferenceLlh()Z
    .locals 2

    .line 1435
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHasReferenceLlh:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLat:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLon:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static indexOfHeadingErrorValue(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p0, :cond_3

    .line 979
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0xff1a

    .line 980
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    const/16 v1, 0x3a

    .line 981
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    :cond_1
    if-ltz v1, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 982
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

    .line 1738
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->lltProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1739
    :goto_0
    iget v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mTotalSteps:I

    if-ge v1, v2, :cond_1

    .line 1740
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1741
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    if-lez v1, :cond_0

    const/16 v4, 0xa

    .line 1742
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1743
    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1744
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/qianhe/yct/R$color;->gray_light:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1745
    iget-object v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->lltProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1747
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateStepUi()V

    return-void
.end method

.method private initStepText()V
    .locals 5

    .line 1703
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isPreciseType2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1705
    sget v0, Lcom/qianhe/yct/R$string;->standard_verify_step1:I

    .line 1706
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->standard_verify_step2:I

    .line 1707
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->standard_verify_step3:I

    .line 1708
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$string;->standard_verify_step4:I

    .line 1709
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/qianhe/yct/R$string;->standard_verify_step5:I

    .line 1710
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mStepActions:[Ljava/lang/String;

    .line 1712
    sget v0, Lcom/qianhe/yct/R$drawable;->icon_standard_verify_step1:I

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_standard_verify_step2:I

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_standard_verify_step3:I

    sget v3, Lcom/qianhe/yct/R$drawable;->icon_standard_verify_step4:I

    sget v4, Lcom/qianhe/yct/R$drawable;->icon_standard_verify_step5:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mStepImages:[I

    return-void

    .line 1720
    :cond_0
    sget v0, Lcom/qianhe/yct/R$string;->verify_accuracy_step1:I

    .line 1721
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->verify_accuracy_step2:I

    .line 1722
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->verify_accuracy_step3:I

    .line 1723
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$string;->verify_accuracy_step4:I

    .line 1724
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/qianhe/yct/R$string;->verify_accuracy_step5:I

    .line 1725
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mStepActions:[Ljava/lang/String;

    .line 1727
    sget v0, Lcom/qianhe/yct/R$drawable;->icon_verify_step1:I

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_verify_step2:I

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_verify_step3:I

    sget v3, Lcom/qianhe/yct/R$drawable;->icon_verify_step4:I

    sget v4, Lcom/qianhe/yct/R$drawable;->icon_verify_step5:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mStepImages:[I

    return-void
.end method

.method private isMovementThresholdMet(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;)Z
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    return v3

    .line 998
    :cond_0
    iget-object v4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    if-eqz v4, :cond_2

    .line 1001
    :try_start_0
    iget-wide v5, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->longitude:D

    iget-wide v7, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->latitude:D

    iget-wide v9, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    new-array v11, v1, [D

    aput-wide v5, v11, v2

    aput-wide v7, v11, v3

    aput-wide v9, v11, v0

    iget-wide v5, v4, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    iget-wide v7, v4, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    iget-wide v9, v4, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    new-array v1, v1, [D

    aput-wide v5, v1, v2

    aput-wide v7, v1, v3

    aput-wide v9, v1, v0

    invoke-static {v11, v1}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGeodetic([D[D)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v6, v0, v4

    if-ltz v6, :cond_1

    return v3

    :catch_0
    nop

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1006
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    if-eqz v1, :cond_4

    .line 1008
    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->getArmPitchDegrees(Lcom/qianhe/baselib/bean/InsNavi;)D

    move-result-wide v6

    iget-wide v8, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->armPitchDegrees:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v1, v6, v4

    if-ltz v1, :cond_3

    return v3

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 1012
    :goto_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->useSensorPitchForMovementCheck()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    if-eqz v6, :cond_6

    .line 1014
    iget-wide v6, v6, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->pitchAngle:D

    iget-wide v8, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorPitchDegrees:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double p1, v6, v4

    if-ltz p1, :cond_5

    return v3

    :cond_5
    const/4 p1, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-nez p1, :cond_7

    const/4 v2, 0x1

    :cond_7
    return v2
.end method

.method private isPreciseMode()Z
    .locals 2

    .line 436
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isPreciseSensorOrGgaMoved(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;)Z
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    return v3

    .line 866
    :cond_0
    iget-boolean v4, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaValid:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v4, :cond_2

    .line 869
    :try_start_0
    iget-wide v5, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaLongitude:D

    iget-wide v7, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaLatitude:D

    iget-wide v9, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaElevation:D

    new-array v11, v1, [D

    aput-wide v5, v11, v2

    aput-wide v7, v11, v3

    aput-wide v9, v11, v0

    iget-wide v5, v4, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    iget-wide v7, v4, Lcom/qianhe/baselib/bean/GGAEntity;->latitude:D

    iget-wide v9, v4, Lcom/qianhe/baselib/bean/GGAEntity;->elevation:D

    new-array v1, v1, [D

    aput-wide v5, v1, v2

    aput-wide v7, v1, v3

    aput-wide v9, v1, v0

    invoke-static {v11, v1}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGeodetic([D[D)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v6, v0, v4

    if-ltz v6, :cond_1

    return v3

    :catch_0
    nop

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 876
    :goto_0
    iget-boolean v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorValid:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    if-eqz v1, :cond_4

    .line 878
    iget-wide v4, v1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->pitchAngle:D

    iget-wide v6, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorPitchDegrees:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    cmpl-double p1, v4, v6

    if-ltz p1, :cond_3

    return v3

    :cond_3
    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-nez v0, :cond_5

    if-nez p1, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method private isPreciseStepConstraintMet(I)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    if-lt p1, v1, :cond_1

    return v0

    .line 899
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 900
    :cond_2
    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->getArmPitchDegrees(Lcom/qianhe/baselib/bean/InsNavi;)D

    move-result-wide v3

    if-ne p1, v0, :cond_5

    .line 902
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    .line 903
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v5, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->armPitchDegrees:D

    sub-double/2addr v3, v5

    .line 904
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x402e000000000000L    # 15.0

    cmpl-double p1, v3, v5

    if-lez p1, :cond_4

    return v0

    :cond_4
    return v2

    :cond_5
    return v0
.end method

.method private isPreciseType2()Z
    .locals 2

    .line 446
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isPreciseMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->getActiveCalibParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->getMode(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isValidCollectPoint(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 758
    :cond_0
    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->latitude:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_2

    iget-wide v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->longitude:D

    cmpl-double p1, v1, v3

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isVerifyHeadingErrorEnabled()Z
    .locals 3

    .line 603
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 604
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isPreciseMode()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->display_verify_horizontal_error:I

    if-ne v0, v2, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private isVerifyHeadingOk()Z
    .locals 5

    .line 620
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHasHeadingErrorSample:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jumpBucketFineTune()V
    .locals 3

    .line 1055
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1056
    const-string v1, "currentExcavator"

    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1057
    const-string/jumbo v1, "smartCalibAutoOptimize"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1058
    iget v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    if-ltz v1, :cond_0

    .line 1059
    const-string/jumbo v2, "verifyModeValue"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1061
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1062
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static llhToNed(DDDDDD)[D
    .locals 2

    .line 1398
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sub-double/2addr p6, p0

    .line 1399
    invoke-static {p6, p7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    sub-double/2addr p8, p2

    .line 1400
    invoke-static {p8, p9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    const-wide p6, 0x415854a640000000L    # 6378137.0

    mul-double p0, p0, p6

    mul-double p2, p2, p6

    .line 1402
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p6

    mul-double p2, p2, p6

    sub-double/2addr p10, p4

    neg-double p4, p10

    const/4 p6, 0x3

    .line 1404
    new-array p6, p6, [D

    const/4 p7, 0x0

    aput-wide p0, p6, p7

    const/4 p0, 0x1

    aput-wide p2, p6, p0

    const/4 p0, 0x2

    aput-wide p4, p6, p0

    return-object p6
.end method

.method private logCollectedPointsBeforeResult()V
    .locals 8

    const/4 v0, 0x0

    .line 1939
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1940
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    .line 1941
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u67e5\u9a8c\u7cbe\u5ea6\u7b2c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6b65\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 1942
    iget-boolean v2, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaValid:Z

    const-string v3, ","

    if-eqz v2, :cond_1

    .line 1943
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GGA\uff1a["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaLongitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaLatitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaElevation:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 1945
    :cond_1
    const-string v2, "GGA\uff1anull"

    invoke-static {v2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 1947
    :goto_1
    iget-boolean v2, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insValid:Z

    const-string/jumbo v4, "\uff0c\u822a\u5411\u89d2="

    const-string/jumbo v5, "\uff0c\u4fef\u4ef0\u89d2="

    if-eqz v2, :cond_2

    .line 1948
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INS\u5de6\u94f2\u5c16\uff1a["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insLongitude:D

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insLatitude:D

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insElevation:D

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "]\uff0c\u6a2a\u6eda\u89d2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insRollDegrees:D

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insPitchDegrees:D

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insHeadingDegrees:D

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    goto :goto_2

    .line 1950
    :cond_2
    const-string v2, "INS\u5de6\u94f2\u5c16\uff1anull"

    invoke-static {v2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 1952
    :goto_2
    iget-boolean v2, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorValid:Z

    if-eqz v2, :cond_0

    .line 1953
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u4f20\u611f\u5668\uff1a\u6a2a\u6eda\u89d2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorRollDegrees:D

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorPitchDegrees:D

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorHeadingDegrees:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private maybeDecideVerifyMode()V
    .locals 2

    .line 396
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    if-gez v0, :cond_4

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mSkipModeSelect:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->getActiveCalibParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->getMode(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 400
    iput v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    .line 401
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->onVerifyModeSelected()V

    return-void

    .line 404
    :cond_2
    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 405
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->showVerifyModeDialog()V

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 407
    iput v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    .line 408
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->onVerifyModeSelected()V

    :cond_4
    :goto_0
    return-void
.end method

.method private needPreciseMovementCheck(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private onCalibrateDialogClosed(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 501
    iput v0, p0, Lcom/qianhe/yct/base/BaseActivity;->count:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 503
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->suppressAutoCalibrateTips:Z

    .line 504
    iput-boolean p1, p0, Lcom/qianhe/yct/base/BaseActivity;->isShowTips:Z

    :cond_0
    return-void
.end method

.method private onCollectClick()V
    .locals 1

    .line 457
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isPreciseType2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->needPreciseMovementCheck(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->waitForPositionChange:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mLastCollectedReference:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isPreciseSensorOrGgaMoved(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 462
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->showStepActionTip()V

    return-void

    .line 465
    :cond_1
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isPreciseStepConstraintMet(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 466
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->showStepActionTip()V

    return-void

    .line 469
    :cond_2
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->waitForPositionChange:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mLastCollectedReference:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isMovementThresholdMet(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 470
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->showStepActionTip()V

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 474
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->suppressAutoCalibrateTips:Z

    .line 476
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    if-eqz v0, :cond_5

    .line 477
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isCollecting:Z

    if-eqz v0, :cond_4

    :goto_0
    return-void

    .line 478
    :cond_4
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->collectAfterHeadingCheck()V

    return-void

    .line 480
    :cond_5
    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$2;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showCalibrateDialog(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method private onPreciseApplySuccess()V
    .locals 3

    const/4 v0, 0x0

    .line 1541
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->finishingPreciseCalib:Z

    .line 1542
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingFineTuneExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-nez v0, :cond_0

    .line 1543
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 1544
    sget v0, Lcom/qianhe/yct/R$string;->save_failed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 1547
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 1549
    new-instance v2, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$10;

    invoke-direct {v2, p0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$10;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    invoke-static {p0, v0, v2}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->saveFineTuneExcavatorAsync(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;)V

    return-void
.end method

.method private onPreciseCalibNowClick()V
    .locals 2

    .line 1163
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPreciseCalibrating:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 1164
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    if-eqz v0, :cond_1

    .line 1165
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->startPreciseCalibNow()V

    return-void

    .line 1167
    :cond_1
    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$8;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$8;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showCalibrateDialog(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onRealtimeDataUpdated()V
    .locals 4

    .line 910
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mInPreciseCalibPoseUi:Z

    if-eqz v0, :cond_0

    return-void

    .line 913
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isCollecting:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvResult:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 914
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isPreciseType2()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->waitForPositionChange:Z

    if-eqz v0, :cond_2

    .line 915
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateCollectButtonState()V

    .line 918
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->shouldShowArmAngleScaleBar()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    if-eqz v0, :cond_3

    .line 919
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->armAngleScaleBar:Lcom/qianhe/yct/view/ArmAngleScaleBarView;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->getArmPitchDegrees(Lcom/qianhe/baselib/bean/InsNavi;)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->setCurrentAngle(F)V

    .line 921
    :cond_3
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateHeadingErrorDisplay()V

    return-void
.end method

.method private onVerifyModeSelected()V
    .locals 3

    const/4 v0, 0x0

    .line 425
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHeadingErrorHiddenForCurrentStep:Z

    .line 426
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->initStepText()V

    .line 427
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateTotalStepsFromExcavator()V

    .line 428
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->initProgressBar()V

    .line 429
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateCollectButtonState()V

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u67e5\u9a8c\u7cbe\u5ea6\u6a21\u5f0f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "\u6807\u51c6\u67e5\u9a8c"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "\u7b80\u6613\u67e5\u9a8c"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\uff0cparamsType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->getActiveCalibParams()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->getMode(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->resolveVerifySessionType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginVerify(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V

    return-void
.end method

.method private rebuildProgressBarForCurrentStep()V
    .locals 6

    .line 2578
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->lltProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2579
    :goto_0
    iget v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mTotalSteps:I

    if-ge v1, v2, :cond_1

    .line 2580
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2581
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    if-lez v1, :cond_0

    const/16 v4, 0xa

    .line 2582
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 2583
    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2584
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/qianhe/yct/R$color;->gray_light:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2585
    iget-object v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->lltProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private recordPreciseFivePointFinetuneEvents(Ljava/util/List;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;Ljava/lang/String;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;",
            ">;",
            "Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1287
    iget-wide v6, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceHeightMeters:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v6, v2

    if-eqz v4, :cond_0

    .line 1288
    iget-wide v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLat:D

    iget-wide v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLon:D

    .line 1289
    invoke-direct {v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->hasValidReferenceLlh()Z

    move-result v8

    iget-object v9, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingHeightNed:[D

    iget-object v10, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v11, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v12, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    iget-wide v13, v0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    .line 1291
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    .line 1288
    invoke-static/range {v2 .. v13}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordFineTuneKnownHeightPoint(DDDZ[DLcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 1294
    :cond_0
    new-instance v2, Lcom/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/google/gson/JsonArray;-><init>()V

    const/4 v3, 0x2

    .line 1295
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    invoke-static {v3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildFineTuneInputSample(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    const/4 v3, 0x3

    .line 1296
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    invoke-static {v4}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildFineTuneInputSample(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    const/4 v4, 0x4

    .line 1297
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    invoke-static {v4}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildFineTuneInputSample(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 1298
    new-instance v4, Lcom/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    const/4 v5, 0x0

    .line 1299
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    invoke-static {v5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildFineTuneInputSample(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    const/4 v5, 0x1

    .line 1300
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    invoke-static {v5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildFineTuneInputSample(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 1301
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    invoke-static {v1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildFineTuneInputSample(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 1305
    invoke-direct {v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->getActiveCalibParams()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->getMode(Ljava/lang/String;)I

    move-result v15

    if-eqz p3, :cond_1

    move-object/from16 v16, p3

    goto :goto_0

    .line 1306
    :cond_1
    const-string v1, ""

    move-object/from16 v16, v1

    :goto_0
    iget-wide v5, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceHeightMeters:D

    iget-object v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v7, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    iget-wide v8, v0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    .line 1309
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    move-object/from16 v14, p2

    move-object/from16 v21, v1

    move-object/from16 v19, v2

    move-object/from16 v22, v3

    move-object/from16 v20, v4

    move-wide/from16 v17, v5

    move-object/from16 v23, v7

    .line 1303
    invoke-static/range {v14 .. v24}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordPreciseFivePointEvents(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;ILjava/lang/String;DLcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void
.end method

.method private recordVerifyCollectEvent(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;I)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1959
    iget-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-direct {v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->resolveVerifySessionType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginVerify(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V

    .line 1961
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1962
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1963
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v5, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaLatitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const-string v5, "%.8f"

    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "lat"

    invoke-virtual {v3, v9, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    iget-wide v10, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaLongitude:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "lon"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    iget-wide v6, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaElevation:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v6, "hgt"

    invoke-virtual {v3, v6, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1966
    iget-object v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v4, :cond_0

    iget v4, v4, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "q"

    invoke-virtual {v3, v7, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1967
    iget-object v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v4, :cond_1

    iget v8, v4, Lcom/qianhe/baselib/bean/GGAEntity;->useStarNum:I

    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "sats"

    invoke-virtual {v3, v7, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1968
    iget-object v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v4, :cond_2

    iget-wide v7, v4, Lcom/qianhe/baselib/bean/GGAEntity;->hdop:D

    goto :goto_1

    :cond_2
    const-wide/16 v7, 0x0

    :goto_1
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v7, "hdop"

    invoke-virtual {v3, v7, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1969
    iget-object v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v4, :cond_3

    iget v4, v4, Lcom/qianhe/baselib/bean/GGAEntity;->age:F

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v7, "age"

    invoke-virtual {v3, v7, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1970
    const-string v4, "gga"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1971
    iget-wide v10, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insRollDegrees:D

    iget-wide v12, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insPitchDegrees:D

    iget-wide v14, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insHeadingDegrees:D

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 1973
    iget-wide v7, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->headingDegreesError:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-string/jumbo v8, "y_err"

    invoke-virtual {v3, v8, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1974
    const-string v7, "device"

    invoke-virtual {v2, v7, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1975
    iget-wide v10, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorRollDegrees:D

    iget-wide v12, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorPitchDegrees:D

    iget-wide v14, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorHeadingDegrees:D

    invoke-static/range {v10 .. v16}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v8, "sensor"

    invoke-virtual {v2, v8, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1977
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1978
    iget-wide v10, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLatL:D

    iget-wide v12, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLonL:D

    iget-wide v14, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipHgtL:D

    move-wide/from16 v16, v10

    iget-wide v10, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipXL:D

    move-wide/from16 v18, v10

    iget-wide v10, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipYL:D

    move-wide/from16 v20, v10

    iget-wide v10, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipZL:D

    move-wide/from16 v24, v20

    move-wide/from16 v20, v10

    move-wide/from16 v10, v16

    move-wide/from16 v16, v18

    move-wide/from16 v18, v24

    invoke-static/range {v10 .. v21}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->buildVerifyTooth(DDDDDD)Lcom/google/gson/JsonObject;

    move-result-object v10

    const-string v11, "l"

    invoke-virtual {v3, v11, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1980
    iget-wide v12, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLatR:D

    iget-wide v14, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLonR:D

    iget-wide v10, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipHgtR:D

    move-wide/from16 v16, v10

    iget-wide v10, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipXR:D

    move-wide/from16 v18, v10

    iget-wide v10, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipYR:D

    move-wide/from16 v20, v10

    iget-wide v10, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipZR:D

    move-wide/from16 v22, v10

    invoke-static/range {v12 .. v23}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->buildVerifyTooth(DDDDDD)Lcom/google/gson/JsonObject;

    move-result-object v10

    const-string v11, "r"

    invoke-virtual {v3, v11, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1982
    iget-wide v12, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLatC:D

    iget-wide v14, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipLonC:D

    iget-wide v10, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipHgtC:D

    move-wide/from16 v16, v10

    iget-wide v10, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipXC:D

    move-wide/from16 v18, v10

    iget-wide v10, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipYC:D

    move-wide/from16 v20, v10

    iget-wide v10, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->tipZC:D

    move-wide/from16 v22, v10

    invoke-static/range {v12 .. v23}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->buildVerifyTooth(DDDDDD)Lcom/google/gson/JsonObject;

    move-result-object v10

    const-string v11, "c"

    invoke-virtual {v3, v11, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1984
    const-string/jumbo v10, "teeth"

    invoke-virtual {v2, v10, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1986
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1987
    iget-wide v10, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->phaseToHang:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const-string v11, "phase_to_hang"

    invoke-virtual {v3, v11, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1988
    new-instance v10, Lcom/google/gson/JsonObject;

    invoke-direct {v10}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1989
    iget-wide v11, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaLatitude:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1990
    iget-wide v11, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaLongitude:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v10, v5, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1991
    iget-wide v11, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaElevation:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v10, v6, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1992
    invoke-virtual {v3, v4, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1993
    iget-wide v11, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insRollDegrees:D

    iget-wide v13, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insPitchDegrees:D

    iget-wide v4, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insHeadingDegrees:D

    const/16 v17, 0x1

    move-wide v15, v4

    invoke-static/range {v11 .. v17}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1995
    iget-wide v9, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorRollDegrees:D

    iget-wide v11, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorPitchDegrees:D

    iget-wide v13, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorHeadingDegrees:D

    const/4 v15, 0x1

    invoke-static/range {v9 .. v15}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1997
    iget-wide v4, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insPitchDegrees:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v4, "arm_angle"

    invoke-virtual {v3, v4, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1998
    const-string v1, "sample"

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1999
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "step"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "collect"

    invoke-static {v3, v1, v2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->recordEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method private refreshCollectReferenceAfterStepChange()V
    .locals 3

    .line 815
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 816
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->waitForPositionChange:Z

    const/4 v0, 0x0

    .line 817
    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mLastCollectedReference:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 819
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->waitForPositionChange:Z

    .line 820
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->copyCollectPoint(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;)Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mLastCollectedReference:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    return-void
.end method

.method private resetHeadingErrorCheckForNewStep()V
    .locals 1

    const/4 v0, 0x0

    .line 626
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHeadingErrorHiddenForCurrentStep:Z

    .line 627
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHasHeadingErrorSample:Z

    return-void
.end method

.method private resolveCurrentBucket()Lcom/qianhe/baselib/bean/ShovelEntity;
    .locals 6

    .line 1642
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_1

    .line 1644
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 1645
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/BucketSwitchHelper;->reloadBucketFromDb(Landroid/content/Context;Lcom/qianhe/baselib/bean/ShovelEntity;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 1648
    :cond_0
    iget-object v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 1650
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mOldCalibParamsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mOldCalibParamsId:Ljava/lang/String;

    goto :goto_0

    .line 1651
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 1652
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0, v2}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->supportsBucketCurrentUsage(Ljava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1653
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryShovelByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1654
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->matchBucketFromList(Ljava/lang/String;Ljava/util/List;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private resolveReferenceHeightLlh(D)[D
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-wide/16 v4, 0x0

    cmpl-double v6, p1, v4

    if-nez v6, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1414
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->hasValidReferenceLlh()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1415
    iget-wide v4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLat:D

    iget-wide v6, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLon:D

    new-array v3, v3, [D

    aput-wide v4, v3, v2

    aput-wide v6, v3, v1

    aput-wide p1, v3, v0

    return-object v3

    .line 1417
    :cond_1
    new-array v3, v3, [D

    aput-wide v4, v3, v2

    aput-wide v4, v3, v1

    aput-wide p1, v3, v0

    return-object v3
.end method

.method private resolveReferenceHeightNed(D)[D
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    cmpl-double v4, p1, v2

    if-eqz v4, :cond_2

    .line 1425
    iget-wide v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLat:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1428
    :cond_0
    invoke-direct {v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->hasValidReferenceLlh()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1429
    iget-wide v5, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLat:D

    iget-wide v7, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLon:D

    iget-wide v9, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginElev:D

    iget-wide v11, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLat:D

    iget-wide v13, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLon:D

    move-wide/from16 v15, p1

    invoke-static/range {v5 .. v16}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->llhToNed(DDDDDD)[D

    move-result-object v1

    return-object v1

    .line 1431
    :cond_1
    iget-wide v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginElev:D

    sub-double v4, p1, v4

    neg-double v4, v4

    new-array v1, v1, [D

    const/4 v6, 0x0

    aput-wide v2, v1, v6

    const/4 v6, 0x1

    aput-wide v2, v1, v6

    const/4 v2, 0x2

    aput-wide v4, v1, v2

    return-object v1

    .line 1426
    :cond_2
    :goto_0
    new-array v1, v1, [D

    fill-array-data v1, :array_0

    return-object v1

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private resolveVerifySessionType()Ljava/lang/String;
    .locals 1

    .line 441
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isPreciseMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "standard"

    return-object v0

    :cond_0
    const-string/jumbo v0, "simple"

    return-object v0
.end method

.method private restartPreciseVerifyLoop()V
    .locals 5

    const/4 v0, 0x0

    .line 1577
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowingCheckAccuracyDialog:Z

    .line 1578
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mInPreciseCalibPoseUi:Z

    .line 1579
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvCalibrationPointInput:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1580
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPreciseCalibrating:Z

    .line 1581
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->finishingPreciseCalib:Z

    const/4 v1, 0x1

    .line 1582
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mSkipModeSelect:Z

    .line 1583
    iput v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    .line 1584
    iput v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    .line 1585
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1586
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->waitForPositionChange:Z

    const/4 v1, 0x0

    .line 1587
    iput-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mLastCollectedReference:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    .line 1588
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowingResult:Z

    .line 1589
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->resetHeadingErrorCheckForNewStep()V

    .line 1590
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->clearPendingPreciseFinetune()V

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 1591
    iput-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLat:D

    .line 1592
    iput-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLon:D

    .line 1593
    iput-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginElev:D

    const-wide/16 v3, 0x0

    .line 1595
    iput-wide v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceHeightMeters:D

    .line 1596
    iput-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLat:D

    .line 1597
    iput-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLon:D

    .line 1598
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHasReferenceLlh:Z

    .line 1599
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHeightInputReady:Z

    .line 1600
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->initStepText()V

    .line 1601
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateTotalStepsFromExcavator()V

    .line 1602
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->initProgressBar()V

    .line 1603
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->verify_accuracy:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1604
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvCommonTips:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1605
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvCommonTips:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isPreciseType2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1606
    sget v1, Lcom/qianhe/yct/R$string;->standard_verify_common_tips:I

    goto :goto_0

    .line 1607
    :cond_0
    sget v1, Lcom/qianhe/yct/R$string;->verfify_accuracy_tips:I

    .line 1605
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1608
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateCollectButtonState()V

    .line 1609
    const-string/jumbo v0, "\u6807\u51c6\u67e5\u9a8c\u5faa\u73af\uff1a\u56de\u5230\u8d77\u70b9\u7ee7\u7eed\u67e5\u9a8c"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private restoreCheckAccuracyDialogIfNeeded()V
    .locals 8

    .line 2536
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowingCheckAccuracyDialog:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2539
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "check_accuracy"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 2542
    :cond_1
    sget v0, Lcom/qianhe/yct/R$string;->calibrate_completed_checking_accuracy:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    .line 2543
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "check_accuracy"

    const/4 v5, 0x0

    move-object v1, p0

    .line 2542
    invoke-virtual/range {v1 .. v7}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void
.end method

.method private restoreCollectStateIfNeeded(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2311
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->restoreVerifyStateFromBundle(Landroid/os/Bundle;)V

    .line 2312
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mRestoredCollectState:Z

    return-void

    .line 2315
    :cond_0
    sget-object p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->sRetainedState:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;

    if-eqz p1, :cond_1

    .line 2316
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->restoreVerifyStateFromRetained(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;)V

    const/4 p1, 0x0

    .line 2317
    sput-object p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->sRetainedState:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;

    .line 2318
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mRestoredCollectState:Z

    :cond_1
    return-void
.end method

.method private restoreFineTuneHeightDialogAfterRotation()V
    .locals 2

    .line 1122
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "FineTuneHeightInputDialogFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;

    if-eqz v0, :cond_0

    .line 1124
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->bindFineTuneHeightDialog(Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;)V

    :cond_0
    return-void
.end method

.method private restorePendingPreciseResultDialogIfNeeded()V
    .locals 12

    .line 2519
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingFiveSamples:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2520
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingHabSample:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2524
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "precise_calib_use_params"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2527
    :cond_1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sget v1, Lcom/qianhe/yct/R$string;->precise_calib_stdev_compare:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    iget-wide v2, v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->stdevOld:D

    .line 2528
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 2529
    iget-object v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    iget-wide v3, v3, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->stdevAfterHa:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2530
    iget-object v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    iget-wide v3, v3, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->stdevAfterHa:D

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    iget-wide v3, v3, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->stdevNew:D

    .line 2529
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    .line 2527
    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2531
    sget v0, Lcom/qianhe/yct/R$string;->precise_calib_use_params_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v0, Lcom/qianhe/yct/R$string;->use:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    .line 2532
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const-string v11, "precise_calib_use_params"

    move-object v5, p0

    .line 2531
    invoke-virtual/range {v5 .. v11}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private restorePendingPreciseStateFromBundle(Landroid/os/Bundle;)V
    .locals 13

    const/4 v0, 0x0

    .line 2369
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPreciseCalibrating:Z

    .line 2370
    const-string v1, "preciseCalibrating"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2371
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 2373
    :cond_0
    const-string v1, "hasPendingPreciseResult"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 2376
    :cond_1
    const-string v1, "pendingCalibParams"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2377
    const-string v1, "pendingToolParams"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2378
    invoke-static {v11}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->parseToolFromParam(Ljava/lang/String;)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    move-result-object v12

    .line 2379
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v12, :cond_2

    goto :goto_1

    .line 2383
    :cond_2
    new-instance v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    const-string v1, "pendingPreciseCode"

    .line 2384
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "pendingStdevOld"

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    .line 2385
    invoke-virtual {p1, v0, v4, v5}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    const-string v6, "pendingStdevNew"

    .line 2386
    invoke-virtual {p1, v6, v4, v5}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-string v8, "pendingStdevAfterHa"

    .line 2387
    invoke-virtual {p1, v8, v4, v5}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v8

    move-wide v4, v0

    invoke-direct/range {v2 .. v12}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;-><init>(IDDDLjava/lang/String;Ljava/lang/String;Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)V

    iput-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    .line 2389
    const-string v0, "pendingFiveSamples"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 2390
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 2391
    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingFiveSamples:Ljava/util/List;

    .line 2393
    :cond_3
    const-string v0, "pendingHabSample"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 2394
    instance-of v1, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    if-eqz v1, :cond_4

    .line 2395
    check-cast v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingHabSample:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    .line 2397
    :cond_4
    const-string v0, "pendingHeightNed"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingHeightNed:[D

    .line 2398
    const-string v0, "pendingSourceParams"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 2399
    :cond_5
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingSourceParams:Ljava/lang/String;

    return-void

    .line 2380
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->clearPendingPreciseFinetune()V

    return-void
.end method

.method private restorePendingPreciseStateFromRetained(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;)V
    .locals 12

    const/4 v0, 0x0

    .line 2441
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPreciseCalibrating:Z

    .line 2442
    iget-boolean v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->preciseCalibrating:Z

    if-eqz v0, :cond_0

    .line 2443
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 2445
    :cond_0
    iget-boolean v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->hasPendingPreciseResult:Z

    if-nez v0, :cond_1

    return-void

    .line 2448
    :cond_1
    iget-object v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingToolParams:Ljava/lang/String;

    invoke-static {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->parseToolFromParam(Ljava/lang/String;)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    move-result-object v11

    .line 2449
    iget-object v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingCalibParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingToolParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez v11, :cond_2

    goto :goto_2

    .line 2453
    :cond_2
    new-instance v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    iget v2, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingPreciseCode:I

    iget-wide v3, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingStdevOld:D

    iget-wide v5, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingStdevNew:D

    iget-wide v7, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingStdevAfterHa:D

    iget-object v9, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingCalibParams:Ljava/lang/String;

    iget-object v10, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingToolParams:Ljava/lang/String;

    invoke-direct/range {v1 .. v11}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;-><init>(IDDDLjava/lang/String;Ljava/lang/String;Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)V

    iput-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    .line 2461
    iget-object v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingFiveSamples:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 2462
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingFiveSamples:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingFiveSamples:Ljava/util/List;

    .line 2464
    :cond_3
    iget-object v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingHabSample:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingHabSample:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    .line 2465
    iget-object v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingHeightNed:[D

    if-eqz v0, :cond_4

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingHeightNed:[D

    .line 2466
    iget-object p1, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingSourceParams:Ljava/lang/String;

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const-string p1, ""

    :goto_1
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingSourceParams:Ljava/lang/String;

    return-void

    .line 2450
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->clearPendingPreciseFinetune()V

    return-void
.end method

.method private restoreVerifyStateFromBundle(Landroid/os/Bundle;)V
    .locals 4

    .line 2324
    const-string/jumbo v0, "verifyMode"

    iget v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    .line 2325
    const-string/jumbo v0, "totalSteps"

    iget v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mTotalSteps:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mTotalSteps:I

    .line 2326
    const-string/jumbo v0, "skipModeSelect"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mSkipModeSelect:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mSkipModeSelect:Z

    .line 2327
    const-string v0, "currentStep"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    .line 2328
    const-string v0, "collectedPoints"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 2329
    instance-of v2, v0, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 2330
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2331
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2333
    :cond_0
    const-string v0, "lastCollectedReference"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 2334
    instance-of v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    if-eqz v2, :cond_1

    .line 2335
    check-cast v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mLastCollectedReference:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    .line 2337
    :cond_1
    const-string/jumbo v0, "waitForPositionChange"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->waitForPositionChange:Z

    .line 2338
    const-string v0, "headingErrorHidden"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHeadingErrorHiddenForCurrentStep:Z

    .line 2339
    const-string v0, "hasHeadingErrorSample"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHasHeadingErrorSample:Z

    .line 2340
    const-string v0, "headingDegreesError"

    iget-wide v2, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    .line 2341
    const-string v0, "inPreciseCalibPoseUi"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mInPreciseCalibPoseUi:Z

    .line 2342
    const-string/jumbo v0, "showingResult"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowingResult:Z

    .line 2343
    const-string v0, "currentExcavator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 2344
    instance-of v2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v2, :cond_2

    .line 2345
    check-cast v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 2347
    :cond_2
    const-string v0, "oldCalibParams"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2348
    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mOldCalibParams:Ljava/lang/String;

    .line 2349
    :cond_3
    const-string v0, "oldCalibParamsId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2350
    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mOldCalibParamsId:Ljava/lang/String;

    .line 2351
    :cond_4
    const-string v0, "nedOriginLat"

    iget-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLat:D

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLat:D

    .line 2352
    const-string v0, "nedOriginLon"

    iget-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLon:D

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLon:D

    .line 2353
    const-string v0, "nedOriginElev"

    iget-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginElev:D

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginElev:D

    .line 2354
    const-string v0, "referenceHeightMeters"

    iget-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceHeightMeters:D

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceHeightMeters:D

    .line 2355
    const-string v0, "referenceLat"

    iget-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLat:D

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLat:D

    .line 2356
    const-string v0, "referenceLon"

    iget-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLon:D

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLon:D

    .line 2357
    const-string v0, "hasReferenceLlh"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHasReferenceLlh:Z

    .line 2358
    const-string v0, "heightInputReady"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHeightInputReady:Z

    .line 2359
    const-string/jumbo v0, "showOneClickVerifyTips"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowOneClickVerifyTips:Z

    .line 2360
    const-string/jumbo v0, "showingCheckAccuracyDialog"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowingCheckAccuracyDialog:Z

    .line 2361
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->restorePendingPreciseStateFromBundle(Landroid/os/Bundle;)V

    .line 2362
    iget p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mTotalSteps:I

    if-gtz p1, :cond_5

    .line 2363
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateTotalStepsFromExcavator()V

    :cond_5
    return-void
.end method

.method private restoreVerifyStateFromRetained(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;)V
    .locals 2

    .line 2403
    iget v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->verifyMode:I

    iput v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    .line 2404
    iget-boolean v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->skipModeSelect:Z

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mSkipModeSelect:Z

    .line 2405
    iget v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->currentStep:I

    iput v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    .line 2406
    iget v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->totalSteps:I

    iput v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mTotalSteps:I

    .line 2407
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2408
    iget-object v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->collectedPoints:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2409
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2411
    :cond_0
    iget-object v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->lastReference:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mLastCollectedReference:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    .line 2412
    iget-boolean v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->waitForPositionChange:Z

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->waitForPositionChange:Z

    .line 2413
    iget-boolean v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->headingHidden:Z

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHeadingErrorHiddenForCurrentStep:Z

    .line 2414
    iget-boolean v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->hasHeadingSample:Z

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHasHeadingErrorSample:Z

    .line 2415
    iget-wide v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->headingError:D

    iput-wide v0, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    .line 2416
    iget-boolean v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->inPrecisePoseUi:Z

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mInPreciseCalibPoseUi:Z

    .line 2417
    iget-boolean v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->showingResult:Z

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowingResult:Z

    .line 2418
    iget-object v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_1

    .line 2419
    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 2421
    :cond_1
    iget-object v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->oldCalibParams:Ljava/lang/String;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mOldCalibParams:Ljava/lang/String;

    .line 2422
    :cond_2
    iget-object v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->oldCalibParamsId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mOldCalibParamsId:Ljava/lang/String;

    .line 2423
    :cond_3
    iget-wide v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->nedOriginLat:D

    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLat:D

    .line 2424
    iget-wide v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->nedOriginLon:D

    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLon:D

    .line 2425
    iget-wide v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->nedOriginElev:D

    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginElev:D

    .line 2426
    iget-wide v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->referenceHeightMeters:D

    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceHeightMeters:D

    .line 2427
    iget-wide v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->referenceLat:D

    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLat:D

    .line 2428
    iget-wide v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->referenceLon:D

    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLon:D

    .line 2429
    iget-boolean v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->hasReferenceLlh:Z

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHasReferenceLlh:Z

    .line 2430
    iget-boolean v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->heightInputReady:Z

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHeightInputReady:Z

    .line 2431
    iget-boolean v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->showOneClickVerifyTips:Z

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowOneClickVerifyTips:Z

    .line 2432
    iget-boolean v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->showingCheckAccuracyDialog:Z

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowingCheckAccuracyDialog:Z

    .line 2433
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->restorePendingPreciseStateFromRetained(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;)V

    .line 2434
    iget p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mTotalSteps:I

    if-gtz p1, :cond_4

    .line 2435
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateTotalStepsFromExcavator()V

    :cond_4
    return-void
.end method

.method private retainVerifyStateForRotation()V
    .locals 5

    .line 2470
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2471
    sput-object v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->sRetainedState:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;

    return-void

    .line 2474
    :cond_0
    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;

    invoke-direct {v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity-IA;)V

    .line 2475
    iget v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    iput v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->verifyMode:I

    .line 2476
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mSkipModeSelect:Z

    iput-boolean v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->skipModeSelect:Z

    .line 2477
    iget v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    iput v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->currentStep:I

    .line 2478
    iget v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mTotalSteps:I

    iput v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->totalSteps:I

    .line 2479
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->collectedPoints:Ljava/util/ArrayList;

    .line 2480
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mLastCollectedReference:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iput-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->lastReference:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    .line 2481
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->waitForPositionChange:Z

    iput-boolean v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->waitForPositionChange:Z

    .line 2482
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHeadingErrorHiddenForCurrentStep:Z

    iput-boolean v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->headingHidden:Z

    .line 2483
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHasHeadingErrorSample:Z

    iput-boolean v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->hasHeadingSample:Z

    .line 2484
    iget-wide v2, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    iput-wide v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->headingError:D

    .line 2485
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mInPreciseCalibPoseUi:Z

    iput-boolean v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->inPrecisePoseUi:Z

    .line 2486
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowingResult:Z

    iput-boolean v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->showingResult:Z

    .line 2487
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 2488
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mOldCalibParams:Ljava/lang/String;

    iput-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->oldCalibParams:Ljava/lang/String;

    .line 2489
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mOldCalibParamsId:Ljava/lang/String;

    iput-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->oldCalibParamsId:Ljava/lang/String;

    .line 2490
    iget-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLat:D

    iput-wide v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->nedOriginLat:D

    .line 2491
    iget-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLon:D

    iput-wide v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->nedOriginLon:D

    .line 2492
    iget-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginElev:D

    iput-wide v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->nedOriginElev:D

    .line 2493
    iget-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceHeightMeters:D

    iput-wide v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->referenceHeightMeters:D

    .line 2494
    iget-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLat:D

    iput-wide v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->referenceLat:D

    .line 2495
    iget-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLon:D

    iput-wide v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->referenceLon:D

    .line 2496
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHasReferenceLlh:Z

    iput-boolean v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->hasReferenceLlh:Z

    .line 2497
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHeightInputReady:Z

    iput-boolean v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->heightInputReady:Z

    .line 2498
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowOneClickVerifyTips:Z

    iput-boolean v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->showOneClickVerifyTips:Z

    .line 2499
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowingCheckAccuracyDialog:Z

    iput-boolean v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->showingCheckAccuracyDialog:Z

    .line 2500
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPreciseCalibrating:Z

    iput-boolean v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->preciseCalibrating:Z

    .line 2501
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->hasPendingPreciseResult:Z

    if-eqz v2, :cond_4

    .line 2503
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    iget v3, v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->code:I

    iput v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingPreciseCode:I

    .line 2504
    iget-wide v3, v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->stdevOld:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingStdevOld:D

    .line 2505
    iget-wide v3, v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->stdevNew:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingStdevNew:D

    .line 2506
    iget-wide v3, v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->stdevAfterHa:D

    iput-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingStdevAfterHa:D

    .line 2507
    iget-object v3, v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->calibParamsBase64:Ljava/lang/String;

    iput-object v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingCalibParams:Ljava/lang/String;

    .line 2508
    iget-object v2, v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->toolParamsBase64:Ljava/lang/String;

    iput-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingToolParams:Ljava/lang/String;

    .line 2509
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingFiveSamples:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 2510
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingFiveSamples:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    iput-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingFiveSamples:Ljava/util/ArrayList;

    .line 2511
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingHabSample:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    iput-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingHabSample:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    .line 2512
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingHeightNed:[D

    if-eqz v2, :cond_3

    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    :cond_3
    iput-object v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingHeightNed:[D

    .line 2513
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingSourceParams:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;->pendingSourceParams:Ljava/lang/String;

    .line 2515
    :cond_4
    sput-object v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->sRetainedState:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;

    return-void
.end method

.method private saveHostCalibParamsToSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2143
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2145
    iget p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    if-ltz p1, :cond_0

    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->resolveVerifySessionType()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2146
    :goto_0
    iget-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {p0, p2, p1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginVerify(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V

    return-void

    .line 2150
    :cond_1
    const-string/jumbo p1, "verify"

    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->getActiveFileFlow()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 2153
    :cond_2
    iget p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    if-ltz p1, :cond_3

    .line 2154
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->resolveVerifySessionType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->updateSessionType(Ljava/lang/String;)V

    .line 2157
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz p1, :cond_4

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    goto :goto_1

    :cond_4
    const-wide/16 v0, 0x0

    :goto_1
    if-eqz p1, :cond_5

    .line 2158
    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string p1, ""

    .line 2156
    :goto_2
    invoke-static {v0, v1, p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->updateSessionExcavator(JLjava/lang/String;)V

    return-void
.end method

.method private savePendingPreciseStateToBundle(Landroid/os/Bundle;)V
    .locals 3

    .line 2285
    const-string v0, "preciseCalibrating"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPreciseCalibrating:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2286
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2287
    :goto_0
    const-string v1, "hasPendingPreciseResult"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez v0, :cond_1

    return-void

    .line 2291
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    iget v0, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->code:I

    const-string v1, "pendingPreciseCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2292
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    iget-wide v0, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->stdevOld:D

    const-string v2, "pendingStdevOld"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 2293
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    iget-wide v0, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->stdevNew:D

    const-string v2, "pendingStdevNew"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 2294
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    iget-wide v0, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->stdevAfterHa:D

    const-string v2, "pendingStdevAfterHa"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 2295
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    iget-object v0, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->calibParamsBase64:Ljava/lang/String;

    const-string v1, "pendingCalibParams"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingPreciseResult:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    iget-object v0, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->toolParamsBase64:Ljava/lang/String;

    const-string v1, "pendingToolParams"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2297
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingFiveSamples:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2298
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingFiveSamples:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "pendingFiveSamples"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2300
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingHabSample:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    if-eqz v0, :cond_3

    .line 2301
    const-string v1, "pendingHabSample"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2303
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingHeightNed:[D

    if-eqz v0, :cond_4

    .line 2304
    const-string v1, "pendingHeightNed"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 2306
    :cond_4
    const-string v0, "pendingSourceParams"

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingSourceParams:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveVerifyStateToBundle(Landroid/os/Bundle;)V
    .locals 3

    .line 2252
    const-string/jumbo v0, "verifyMode"

    iget v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2253
    const-string/jumbo v0, "totalSteps"

    iget v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mTotalSteps:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2254
    const-string/jumbo v0, "skipModeSelect"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mSkipModeSelect:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2255
    const-string v0, "currentStep"

    iget v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2256
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "collectedPoints"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2257
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mLastCollectedReference:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    if-eqz v0, :cond_0

    .line 2258
    const-string v1, "lastCollectedReference"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2260
    :cond_0
    const-string/jumbo v0, "waitForPositionChange"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->waitForPositionChange:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2261
    const-string v0, "headingErrorHidden"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHeadingErrorHiddenForCurrentStep:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2262
    const-string v0, "hasHeadingErrorSample"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHasHeadingErrorSample:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2263
    const-string v0, "headingDegreesError"

    iget-wide v1, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 2264
    const-string v0, "inPreciseCalibPoseUi"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mInPreciseCalibPoseUi:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2265
    const-string/jumbo v0, "showingResult"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowingResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2266
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_1

    .line 2267
    const-string v1, "currentExcavator"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2269
    :cond_1
    const-string v0, "oldCalibParams"

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mOldCalibParams:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    const-string v0, "oldCalibParamsId"

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mOldCalibParamsId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2271
    const-string v0, "nedOriginLat"

    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLat:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 2272
    const-string v0, "nedOriginLon"

    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginLon:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 2273
    const-string v0, "nedOriginElev"

    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mNedOriginElev:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 2274
    const-string v0, "referenceHeightMeters"

    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceHeightMeters:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 2275
    const-string v0, "referenceLat"

    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLat:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 2276
    const-string v0, "referenceLon"

    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLon:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 2277
    const-string v0, "hasReferenceLlh"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHasReferenceLlh:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2278
    const-string v0, "heightInputReady"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHeightInputReady:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2279
    const-string/jumbo v0, "showOneClickVerifyTips"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowOneClickVerifyTips:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2280
    const-string/jumbo v0, "showingCheckAccuracyDialog"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowingCheckAccuracyDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2281
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->savePendingPreciseStateToBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method private sendSetParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 1491
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->waitingSetParam:Z

    .line 1492
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

    .line 1493
    iget-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvNext:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda13;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Ljava/lang/String;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private shouldEnforceHeadingCheck()Z
    .locals 2

    .line 613
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->needHeadingAccuracyCheck()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 614
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isVerifyHeadingErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 615
    :cond_1
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHeadingErrorHiddenForCurrentStep:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private shouldShowArmAngleScaleBar()Z
    .locals 3

    .line 1827
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isPreciseType2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    .line 1828
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvResult:Landroidx/core/widget/NestedScrollView;

    .line 1829
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mInPreciseCalibPoseUi:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private shouldShowHeadingError()Z
    .locals 2

    .line 929
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvResult:Landroidx/core/widget/NestedScrollView;

    .line 930
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mInPreciseCalibPoseUi:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 934
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isVerifyHeadingErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 935
    :cond_1
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHasHeadingErrorSample:Z

    if-nez v0, :cond_2

    return v1

    .line 936
    :cond_2
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHeadingErrorHiddenForCurrentStep:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method private showEndConfirmDialog()V
    .locals 7

    .line 1051
    sget v0, Lcom/qianhe/yct/R$string;->confirm_end_verify_accuracy:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string/jumbo v6, "verify_accuracy_end"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void
.end method

.method private showFineTuneHeightDialog()V
    .locals 10

    .line 1102
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "FineTuneHeightInputDialogFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;

    if-eqz v0, :cond_0

    .line 1104
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->bindFineTuneHeightDialog(Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;)V

    return-void

    .line 1107
    :cond_0
    new-instance v2, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;

    invoke-direct {v2}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;-><init>()V

    .line 1108
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHeightInputReady:Z

    if-eqz v0, :cond_1

    .line 1109
    iget-wide v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceHeightMeters:D

    iget-wide v5, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLon:D

    iget-wide v7, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceLat:D

    iget-boolean v9, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHasReferenceLlh:Z

    invoke-virtual/range {v2 .. v9}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->setInitialHeight(DDDZ)V

    .line 1111
    :cond_1
    invoke-direct {p0, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->bindFineTuneHeightDialog(Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;)V

    .line 1112
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showGoToBucketFineTuneDialog()V
    .locals 7

    .line 1047
    sget v0, Lcom/qianhe/yct/R$string;->go_to_bucket_fine_tune:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "go_to_bucket_fine_tune"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void
.end method

.method private showNextStateAfterCalibrateAutoClose()V
    .locals 1

    const/4 v0, 0x0

    .line 510
    iput v0, p0, Lcom/qianhe/yct/base/BaseActivity;->count:I

    .line 511
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$3;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showCalibrateDialog(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)V

    return-void

    .line 529
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->shouldEnforceHeadingCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isVerifyHeadingOk()Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$4;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$4;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->showHeadingAccuracyDialog(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)V

    :cond_1
    return-void
.end method

.method private showNextStateAfterCalibrateAutoCloseForPreciseCalib()V
    .locals 1

    const/4 v0, 0x0

    .line 1187
    iput v0, p0, Lcom/qianhe/yct/base/BaseActivity;->count:I

    .line 1188
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    if-nez v0, :cond_0

    .line 1189
    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$9;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$9;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showCalibrateDialog(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method

.method private showResultUi()V
    .locals 1

    const/4 v0, 0x0

    .line 1853
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->showResultUi(Z)V

    return-void
.end method

.method private showResultUi(Z)V
    .locals 14

    const/4 v0, 0x0

    .line 1857
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mInPreciseCalibPoseUi:Z

    const/4 v1, 0x1

    .line 1858
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowingResult:Z

    .line 1859
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->lltProgress:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1860
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->cvStep:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1861
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvCalibrationPointInput:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1862
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->armAngleScaleBar:Lcom/qianhe/yct/view/ArmAngleScaleBarView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1863
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvArmAngleBestTip:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1864
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvHeadingError:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1865
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvResult:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1866
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvNext:Landroid/widget/TextView;

    sget v4, Lcom/qianhe/yct/R$string;->end:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1867
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1868
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvPrevious:Landroid/widget/TextView;

    sget v3, Lcom/qianhe/yct/R$string;->bucket_fine_tune:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1869
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvPrevious:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1870
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvResultHint:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1872
    :cond_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvPrevious:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1873
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvResultHint:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1875
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvPrevious:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1876
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvNext:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1877
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvNext:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1878
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->lltElevations:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1879
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->lltErrors:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    if-nez p1, :cond_1

    .line 1882
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->logCollectedPointsBeforeResult()V

    .line 1883
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->endVerifySession()V

    .line 1884
    const-string/jumbo p1, "\u67e5\u9a8c\u7cbe\u5ea6\u7ed3\u679c\uff1a"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 1887
    :goto_1
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string/jumbo v3, "\uff1a"

    const-string v4, "%.3fm"

    if-ge p1, v2, :cond_2

    .line 1888
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->lltElevations:Landroid/widget/LinearLayout;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/qianhe/yct/R$string;->action:I

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "%d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/qianhe/yct/R$string;->shovel_elevation:I

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v7, v8, v0

    invoke-static {v5, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v7, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p1, v7, v0

    invoke-static {v5, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v3, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->addResultItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    move p1, v6

    goto :goto_1

    .line 1892
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x2

    const/4 v5, 0x3

    if-lt p1, v5, :cond_3

    .line 1893
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v6, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    .line 1894
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v8, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    .line 1895
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v10, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    .line 1896
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 1897
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 1898
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->lltErrors:Landroid/widget/LinearLayout;

    sget v8, Lcom/qianhe/yct/R$string;->action123_elevation_range:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sub-double/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v6, v7, v0

    invoke-static {v9, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v8, v6}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->addResultItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v6, 0x5

    if-lt p1, v6, :cond_4

    .line 1902
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v6, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    .line 1903
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v8, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    .line 1904
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v10, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    .line 1905
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 1906
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 1907
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->lltErrors:Landroid/widget/LinearLayout;

    sget v2, Lcom/qianhe/yct/R$string;->action456_elevation_range:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sub-double/2addr v12, v5

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v0

    invoke-static {v7, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->addResultItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1911
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v5, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    .line 1912
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v7, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    .line 1913
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    .line 1914
    iget-wide v9, v2, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    cmpl-double v2, v9, v5

    if-lez v2, :cond_6

    move-wide v5, v9

    :cond_6
    cmpg-double v2, v9, v7

    if-gez v2, :cond_5

    move-wide v7, v9

    goto :goto_2

    .line 1917
    :cond_7
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->lltErrors:Landroid/widget/LinearLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lcom/qianhe/yct/R$string;->max_elevation_range:I

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sub-double/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v0

    const-string/jumbo v5, "\u00b1%.3fm"

    invoke-static {v9, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->addResultItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-wide/16 v5, 0x0

    const/4 p1, 0x0

    .line 1921
    :goto_3
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_b

    add-int/lit8 v2, p1, 0x1

    move v7, v2

    .line 1922
    :goto_4
    iget-object v8, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 1923
    iget-object v8, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v8, v8, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->east:D

    iget-object v10, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v10, v10, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->east:D

    sub-double/2addr v8, v10

    .line 1924
    iget-object v10, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v10, v10, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->north:D

    iget-object v12, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v12, v12, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->north:D

    sub-double/2addr v10, v12

    mul-double v8, v8, v8

    mul-double v10, v10, v10

    add-double/2addr v8, v10

    .line 1925
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    cmpl-double v10, v8, v5

    if-lez v10, :cond_9

    move-wide v5, v8

    :cond_9
    add-int/2addr v7, v1

    goto :goto_4

    :cond_a
    move p1, v2

    goto :goto_3

    .line 1929
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/qianhe/yct/R$string;->max_horizontal_error:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1930
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v0

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1931
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->display_verify_horizontal_error:I

    if-ne v2, v1, :cond_c

    .line 1932
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->lltErrors:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, p1, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->addResultItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1934
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private showStepActionTip()V
    .locals 3

    .line 643
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mStepActions:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 644
    aget-object v0, v1, v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method

.method private showVerifyModeDialog()V
    .locals 5

    .line 413
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "VerifyModeDialogFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 416
    :cond_0
    new-instance v0, Lcom/qianhe/yct/dialog/VerifyModeDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/VerifyModeDialogFragment;-><init>()V

    .line 417
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 418
    const-string v3, "requestKey"

    const-string/jumbo v4, "verify_mode"

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 420
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private startBucketFineTuneActivity()V
    .locals 3

    .line 1031
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->jumpBucketFineTune()V

    return-void

    .line 1034
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getLastDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryDeviceInfo(Ljava/lang/String;)Lcom/qianhe/yct/bean/DeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1035
    iget-object v1, v0, Lcom/qianhe/yct/bean/DeviceInfo;->fmwVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1036
    iget-object v0, v0, Lcom/qianhe/yct/bean/DeviceInfo;->fmwVersion:Ljava/lang/String;

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1037
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x69

    if-lt v0, v1, :cond_1

    .line 1038
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->jumpBucketFineTune()V

    return-void

    .line 1040
    :cond_1
    sget v0, Lcom/qianhe/yct/R$string;->firmware_version_not_support_action:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_2
    return-void
.end method

.method private startCountdownCollect()V
    .locals 3

    const/4 v0, 0x1

    .line 649
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isCollecting:Z

    .line 650
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvPrevious:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 651
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvNext:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 652
    sget v0, Lcom/qianhe/yct/R$string;->collecting:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda12;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2, v1}, Lcom/qianhe/yct/base/BaseActivity;->showCollectingDialog(Ljava/lang/String;ILcom/qianhe/yct/dialog/CollectingDialogFragment$OnCloseListener;)V

    return-void
.end method

.method private startPreciseCalibNow()V
    .locals 11

    .line 1208
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPreciseCalibrating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    :cond_0
    move-object v3, p0

    goto/16 :goto_1

    .line 1209
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->syncCurrentDeviceSnapshotIfNeeded()V

    .line 1210
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->getActiveCalibParams()Ljava/lang/String;

    move-result-object v4

    .line 1211
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1212
    sget v0, Lcom/qianhe/yct/R$string;->cannot_configure:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 1215
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez v0, :cond_4

    :cond_3
    move-object v3, p0

    goto :goto_0

    .line 1219
    :cond_4
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->cacheOldCalibParams()V

    const/4 v0, 0x1

    .line 1220
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPreciseCalibrating:Z

    .line 1221
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateCollectButtonState()V

    .line 1222
    sget v1, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 1226
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->buildFineTuneSamplesFromCollected()Ljava/util/List;

    move-result-object v6

    .line 1227
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->captureRealtimeFineTuneSample()Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    move-result-object v5

    .line 1228
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    .line 1229
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    .line 1230
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    .line 1231
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1232
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 1233
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1234
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1235
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1237
    iget-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mReferenceHeightMeters:D

    .line 1238
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->resolveReferenceHeightNed(D)[D

    move-result-object v9

    .line 1239
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->resolveReferenceHeightLlh(D)[D

    move-result-object v10

    .line 1241
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda11;

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda11;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;Ljava/lang/String;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;Ljava/util/List;Ljava/util/List;Ljava/util/List;[D[D)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1263
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 1216
    :goto_0
    sget v0, Lcom/qianhe/yct/R$string;->getting_location:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private syncCurrentDeviceSnapshotIfNeeded()V
    .locals 3

    .line 1440
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/qianhe/baselib/bean/GGAEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v1, v2, :cond_0

    .line 1441
    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    :cond_0
    return-void
.end method

.method private toFineTuneSample(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;
    .locals 8

    .line 1342
    new-instance v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    invoke-direct {v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;-><init>()V

    .line 1343
    iget-wide v2, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->phaseToHang:D

    iput-wide v2, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->phaseToHang:D

    .line 1344
    iget-wide v2, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insRollDegrees:D

    iput-wide v2, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->deviceRoll:D

    .line 1345
    iget-wide v2, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insPitchDegrees:D

    iput-wide v2, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->devicePitch:D

    .line 1346
    iget-wide v2, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->insHeadingDegrees:D

    iput-wide v2, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->deviceHeading:D

    .line 1347
    iget-boolean v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorValid:Z

    if-eqz v0, :cond_0

    .line 1348
    iget-wide v2, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorRollDegrees:D

    iput-wide v2, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorRoll:D

    .line 1349
    iget-wide v2, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorPitchDegrees:D

    iput-wide v2, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorPitch:D

    .line 1350
    iget-wide v2, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->sensorHeadingDegrees:D

    iput-wide v2, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorHeading:D

    const/4 v0, 0x1

    .line 1351
    iput-boolean v0, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorValid:Z

    .line 1353
    :cond_0
    iget-boolean v0, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaValid:Z

    if-eqz v0, :cond_1

    iget-wide v2, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaLatitude:D

    goto :goto_0

    :cond_1
    iget-wide v2, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->latitude:D

    :goto_0
    if-eqz v0, :cond_2

    .line 1354
    iget-wide v4, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaLongitude:D

    goto :goto_1

    :cond_2
    iget-wide v4, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->longitude:D

    :goto_1
    if-eqz v0, :cond_3

    .line 1355
    iget-wide v6, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->ggaElevation:D

    :goto_2
    move-object v0, p0

    goto :goto_3

    :cond_3
    iget-wide v6, p1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->elevation:D

    goto :goto_2

    .line 1356
    :goto_3
    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->fillPhaseCenterNed(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;DDD)V

    .line 1357
    invoke-static {v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->normalizeFineTuneSample(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)V

    return-object v1
.end method

.method private updateArmAngleScaleBar()V
    .locals 5

    .line 1834
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->shouldShowArmAngleScaleBar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->armAngleScaleBar:Lcom/qianhe/yct/view/ArmAngleScaleBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1836
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvArmAngleBestTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1837
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->armAngleScaleBar:Lcom/qianhe/yct/view/ArmAngleScaleBarView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->clearReference()V

    return-void

    .line 1840
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->armAngleScaleBar:Lcom/qianhe/yct/view/ArmAngleScaleBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1841
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvArmAngleBestTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1842
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v0, v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->armPitchDegrees:D

    double-to-float v0, v0

    .line 1843
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCollectedPoints:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    iget-wide v1, v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;->armPitchDegrees:D

    double-to-float v1, v1

    add-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 1847
    iget-object v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->armAngleScaleBar:Lcom/qianhe/yct/view/ArmAngleScaleBarView;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->setReferenceAngles(FFFF)V

    .line 1848
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->getArmPitchDegrees(Lcom/qianhe/baselib/bean/InsNavi;)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1849
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->armAngleScaleBar:Lcom/qianhe/yct/view/ArmAngleScaleBarView;

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/view/ArmAngleScaleBarView;->setCurrentAngle(F)V

    return-void
.end method

.method private updateCollectButtonState()V
    .locals 4

    .line 825
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mInPreciseCalibPoseUi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvNext:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPreciseCalibrating:Z

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 827
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvNext:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPreciseCalibrating:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    .line 830
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowingResult:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvResult:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 836
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isPreciseType2()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 838
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->needPreciseMovementCheck(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 840
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->waitForPositionChange:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mLastCollectedReference:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    .line 841
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isPreciseSensorOrGgaMoved(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 843
    :cond_3
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isPreciseStepConstraintMet(I)Z

    move-result v2

    .line 845
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvNext:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isCollecting:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 846
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvNext:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    .line 849
    :cond_5
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->waitForPositionChange:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mLastCollectedReference:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isMovementThresholdMet(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v2, 0x1

    .line 850
    :cond_7
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvNext:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isCollecting:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 851
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvNext:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    .line 831
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvNext:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 832
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvNext:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method private updateCollectButtonText()V
    .locals 5

    .line 1690
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvNext:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->collect_step:I

    iget v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateHeadingErrorDisplay()V
    .locals 1

    const/4 v0, 0x1

    .line 940
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateHeadingErrorDisplay(Z)V

    return-void
.end method

.method private updateHeadingErrorDisplay(Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 948
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 951
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isVerifyHeadingErrorEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHasHeadingErrorSample:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHeadingErrorHiddenForCurrentStep:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvResult:Landroidx/core/widget/NestedScrollView;

    .line 954
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mInPreciseCalibPoseUi:Z

    if-nez p1, :cond_1

    .line 956
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isVerifyHeadingOk()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 957
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mHeadingErrorHiddenForCurrentStep:Z

    .line 959
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->shouldShowHeadingError()Z

    move-result p1

    if-nez p1, :cond_2

    .line 960
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvHeadingError:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 963
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvHeadingError:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 964
    sget p1, Lcom/qianhe/yct/R$string;->excavator_mode4_heading_error:I

    iget-wide v2, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {p0, p1, v1}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 965
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 967
    invoke-static {p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->indexOfHeadingErrorValue(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 968
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isVerifyHeadingOk()Z

    move-result v2

    if-nez v2, :cond_3

    .line 969
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget v3, Lcom/qianhe/yct/R$color;->red:I

    .line 970
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 971
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x21

    .line 969
    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 973
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvHeadingError:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$color;->text_black:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 974
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvHeadingError:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateStepUi()V
    .locals 4

    .line 1751
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    iget v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mTotalSteps:I

    if-lt v0, v1, :cond_0

    return-void

    .line 1753
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->cvStep:Landroidx/cardview/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1754
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvResult:Landroidx/core/widget/NestedScrollView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1755
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowingResult:Z

    .line 1756
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->lltProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1757
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvCommonTips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1758
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvCommonTips:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isPreciseType2()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1759
    sget v3, Lcom/qianhe/yct/R$string;->standard_verify_common_tips:I

    goto :goto_0

    .line 1760
    :cond_1
    sget v3, Lcom/qianhe/yct/R$string;->verfify_accuracy_tips:I

    .line 1758
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1761
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateCollectButtonText()V

    .line 1762
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvPrevious:Landroid/widget/TextView;

    sget v3, Lcom/qianhe/yct/R$string;->previous:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1763
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvPrevious:Landroid/widget/TextView;

    iget v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    if-lez v3, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1764
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvPrevious:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isCollecting:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1766
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->lltProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1767
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->lltProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1768
    iget v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    if-gt v1, v2, :cond_3

    .line 1769
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$color;->theme:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    .line 1771
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$color;->gray_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1775
    :cond_4
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mStepActions:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 1776
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvStepAction:Landroid/widget/TextView;

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1778
    :cond_5
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mStepImages:[I

    array-length v2, v1

    if-ge v0, v2, :cond_6

    .line 1779
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->ivStep:Lcom/qianhe/yct/view/NightAwareImageView;

    aget v0, v1, v0

    invoke-virtual {v2, v0}, Lcom/qianhe/yct/view/NightAwareImageView;->setImageResource(I)V

    .line 1781
    :cond_6
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->adaptStepTextArea()V

    .line 1782
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateArmAngleScaleBar()V

    .line 1783
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateHeadingErrorDisplay()V

    .line 1784
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateCollectButtonState()V

    return-void
.end method

.method private updateTotalStepsFromExcavator()V
    .locals 2

    .line 1694
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->getActiveCalibParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->getMode(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    .line 1695
    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 1696
    iput v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mTotalSteps:I

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 1698
    iput v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mTotalSteps:I

    return-void
.end method

.method private useSensorPitchForMovementCheck()Z
    .locals 2

    .line 988
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->getActiveCalibParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->getMode(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    .line 989
    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 2

    .line 2197
    iget-object v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    .line 2198
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    .line 2199
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->onRealtimeDataUpdated()V

    :cond_0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 2235
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 3

    .line 2209
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda9;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    const-string v2, "back"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 2240
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->verify_accuracy:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2241
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 2219
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isCollecting:Z

    if-eqz v0, :cond_0

    .line 2220
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelCollectingDialog()V

    return-void

    .line 2223
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPreciseCalibrating:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->finishingPreciseCalib:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2226
    :cond_1
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mInPreciseCalibPoseUi:Z

    if-eqz v0, :cond_2

    .line 2227
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->exitPreciseCalibPoseUi()V

    return-void

    .line 2230
    :cond_2
    sget v0, Lcom/qianhe/yct/R$string;->exit_page:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "back"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 233
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    .line 234
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 235
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 236
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 237
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOG,INS.AHRS,ONTIME,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v4, v4, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v4, v4, Lcom/qianhe/yct/bean/AppConfig$Details;->ins_interval:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 238
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 240
    const-string v4, "currentExcavator"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v4, :cond_0

    .line 242
    iput-object v4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 243
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateTotalStepsFromExcavator()V

    .line 244
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->cacheOldCalibParams()V

    .line 246
    :cond_0
    const-string/jumbo v4, "skipVerifyModeSelect"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mSkipModeSelect:Z

    .line 247
    const-string/jumbo v4, "showOneClickVerifyTips"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowOneClickVerifyTips:Z

    .line 248
    const-string/jumbo v4, "verifyModeValue"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    if-ne v4, v1, :cond_1

    goto :goto_0

    .line 253
    :cond_1
    const-string/jumbo v4, "showVerifyModeSelect"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 255
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mSkipModeSelect:Z

    goto :goto_1

    .line 251
    :cond_2
    :goto_0
    iput v4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    .line 252
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mSkipModeSelect:Z

    .line 258
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->restoreCollectStateIfNeeded(Landroid/os/Bundle;)V

    .line 260
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->initStepText()V

    .line 261
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mRestoredCollectState:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mInPreciseCalibPoseUi:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowingResult:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowingCheckAccuracyDialog:Z

    if-nez p1, :cond_5

    iget p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentStep:I

    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mTotalSteps:I

    if-lt p1, v0, :cond_4

    goto :goto_2

    .line 264
    :cond_4
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->initProgressBar()V

    .line 267
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvNext:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvCalibrationPointInput:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvPrevious:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$1;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    const-string v4, "bucket_fine_tune_tips"

    invoke-virtual {p1, v4, p0, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 317
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    const-string v4, "go_to_bucket_fine_tune"

    invoke-virtual {p1, v4, p0, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 328
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    const-string v4, "precise_calib_use_params"

    invoke-virtual {p1, v4, p0, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 339
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    const-string v4, "check_accuracy"

    invoke-virtual {p1, v4, p0, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 349
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    const-string/jumbo v4, "verify_accuracy_end"

    invoke-virtual {p1, v4, p0, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 355
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda7;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    const-string/jumbo v4, "verify_mode"

    invoke-virtual {p1, v4, p0, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 366
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v4, "CALIBRATE,,GET_PARAM"

    invoke-direct {v0, v2, v4}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 367
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mRestoredCollectState:Z

    if-eqz p1, :cond_6

    .line 368
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->applyRestoredUi()V

    return-void

    .line 371
    :cond_6
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->cvStep:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvResult:Landroidx/core/widget/NestedScrollView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 373
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateCollectButtonText()V

    .line 374
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvPrevious:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 375
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateCollectButtonState()V

    .line 376
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mSkipModeSelect:Z

    if-eqz p1, :cond_9

    .line 377
    iget p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    if-gez p1, :cond_7

    .line 378
    iput v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    .line 380
    :cond_7
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->onVerifyModeSelected()V

    .line 381
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowOneClickVerifyTips:Z

    if-eqz p1, :cond_8

    .line 382
    sget p1, Lcom/qianhe/yct/R$string;->one_click_fine_tune_collect_samples_tips:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_8
    return-void

    .line 385
    :cond_9
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->maybeDecideVerifyMode()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 2591
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelCollectingDialog()V

    .line 2592
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2593
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->retainVerifyStateForRotation()V

    goto :goto_0

    .line 2594
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2595
    sput-object v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->sRetainedState:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;

    .line 2597
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 2598
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 2

    .line 2175
    iget-object v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    .line 2176
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    .line 2177
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->onRealtimeDataUpdated()V

    .line 2179
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2181
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->isDataAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 2182
    iput p1, p0, Lcom/qianhe/yct/base/BaseActivity;->count:I

    .line 2183
    iput-boolean p1, p0, Lcom/qianhe/yct/base/BaseActivity;->isShowTips:Z

    .line 2184
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->suppressAutoCalibrateTips:Z

    return-void

    .line 2186
    :cond_1
    iget p1, p0, Lcom/qianhe/yct/base/BaseActivity;->count:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/qianhe/yct/base/BaseActivity;->count:I

    .line 2187
    iget-boolean v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->suppressAutoCalibrateTips:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/qianhe/yct/base/BaseActivity;->isShowTips:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ins_unavailable_count:I

    if-le p1, v1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz p1, :cond_2

    .line 2188
    iput-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->isShowTips:Z

    .line 2189
    invoke-virtual {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->showCalibrateTips()V

    :cond_2
    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_3

    .line 2106
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2107
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    invoke-static {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->getMode(Ljava/lang/String;)I

    move-result v0

    .line 2108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6821\u51c6\u53c2\u6570\u7c7b\u578b\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 2109
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByCalibParamsId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2110
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 2111
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    goto :goto_0

    .line 2113
    :cond_0
    new-instance v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-direct {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 2114
    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    .line 2115
    iput v0, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    .line 2116
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 2117
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    .line 2119
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->cacheOldCalibParams()V

    .line 2121
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->saveHostCalibParamsToSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    iget p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mVerifyMode:I

    if-ltz p1, :cond_1

    .line 2123
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->initStepText()V

    .line 2124
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateTotalStepsFromExcavator()V

    .line 2125
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mRestoredCollectState:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mInPreciseCalibPoseUi:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mShowingResult:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->nsvResult:Landroidx/core/widget/NestedScrollView;

    .line 2128
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 2129
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->initProgressBar()V

    return-void

    .line 2132
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->updateTotalStepsFromExcavator()V

    .line 2133
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mRestoredCollectState:Z

    if-nez p1, :cond_2

    .line 2134
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->initProgressBar()V

    .line 2136
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->maybeDecideVerifyMode()V

    :cond_3
    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1503
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->waitingSetParam:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1504
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->waitingSetParam:Z

    .line 1505
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1506
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    iget-wide v3, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    .line 1507
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 1506
    invoke-static {p1, v0, v1, v2, v3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordApplyReply(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 1508
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->endPreciseFinetuneSessionSuccess()V

    .line 1509
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->onPreciseApplySuccess()V

    return-void

    .line 1511
    :cond_1
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->finishingPreciseCalib:Z

    .line 1512
    const-string p1, "fivePoint"

    invoke-static {p1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->endFinetuneSessionFailed(Ljava/lang/String;)V

    .line 1513
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->clearPendingPreciseFinetune()V

    .line 1514
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 1515
    sget p1, Lcom/qianhe/yct/R$string;->config_fail:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/yct/event/CreateBucketResponse;)V
    .locals 9
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1670
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    iget v1, p1, Lcom/qianhe/yct/event/CreateBucketResponse;->state:I

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/qianhe/yct/event/CreateBucketResponse;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1671
    :cond_0
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    iget-wide v6, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    cmp-long v8, v6, v4

    if-lez v8, :cond_1

    cmp-long v8, v2, v6

    if-eqz v8, :cond_1

    goto :goto_0

    .line 1675
    :cond_1
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 1676
    iput-wide v2, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    .line 1678
    :cond_2
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 1679
    iput-wide v2, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    .line 1681
    :cond_3
    iget-object v0, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1682
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object p1, p1, Lcom/qianhe/yct/event/CreateBucketResponse;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    iput-object p1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    .line 1684
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_5

    .line 1685
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->updateShovelById(Lcom/qianhe/baselib/bean/ShovelEntity;)I

    :cond_5
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 2246
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2247
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->saveVerifyStateToBundle(Landroid/os/Bundle;)V

    .line 2248
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->retainVerifyStateForRotation()V

    return-void
.end method

.method public onVerifyAccuracyAhrs(Lcom/qianhe/baselib/bean/InsAhrs;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_2

    .line 2163
    iget-object p1, p1, Lcom/qianhe/baselib/bean/InsAhrs;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2165
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->binding:Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;

    if-nez p1, :cond_1

    goto :goto_0

    .line 2166
    :cond_1
    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityVerrifyAccuracyBinding;->tvHeadingError:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$$ExternalSyntheticLambda8;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onVerifyAccuracySensorInfo(Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 1024
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    .line 1025
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->useSensorPitchForMovementCheck()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isPreciseType2()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 1026
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->onRealtimeDataUpdated()V

    return-void
.end method

.method protected showCalibrateTips()V
    .locals 1

    .line 551
    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$5;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$5;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;)V

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showCalibrateDialog(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public showHeadingAccuracyDialog(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)V
    .locals 1

    .line 635
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;->isVerifyHeadingErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3e4ccccd    # 0.2f

    .line 636
    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showHeadingAccuracyDialog(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;F)V

    return-void

    .line 638
    :cond_0
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showHeadingAccuracyDialog(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)V

    return-void
.end method
