.class public Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "BucketFineTuneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;,
        Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;
    }
.end annotation


# static fields
.field private static final HOST_INSTALL_ANGLE_MODE1_CONTENT_INDICES:[I


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

.field private currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private deviceCalibParams:Ljava/lang/String;

.field private deviceCalibParamsId:Ljava/lang/String;

.field private finishingFineTune:Z

.field private isCalibrating:Z

.field private isCollecting:Z

.field private mBucketName:Ljava/lang/String;

.field private mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

.field private mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

.field private mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

.field private mCurrentStep:I

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private final mFineTuneSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;",
            ">;"
        }
    .end annotation
.end field

.field private mFineTuneSourceCalibParamsId:Ljava/lang/String;

.field private mFlagBit:I

.field private mHasReferenceLlh:Z

.field private mHeightInputReady:Z

.field private mInitBucketName:Ljava/lang/String;

.field private mLastCollectedReference:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;

.field private mLastHeightStdev:D

.field private mNedOriginElev:D

.field private mNedOriginLat:D

.field private mNedOriginLon:D

.field private mParamsType:I

.field private mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

.field private mPendingFineTuneExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private mReferenceHeightMeters:D

.field private mReferenceLat:D

.field private mReferenceLon:D

.field private mSelectedSchemeLabel:Ljava/lang/String;

.field private mSmartCalibAutoOptimize:Z

.field private mStdevAfterBucket:D

.field private mStdevAfterForearm:D

.field private mStdevAfterForearmThenBucket:D

.field private mStdevBefore:D

.field private final mStepActionIds:[I

.field private final mStepImages:[I

.field private mVerifyMode:I

.field private selectShovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

.field private waitForPositionChange:Z

.field private waitingSetParam:Z


# direct methods
.method public static synthetic $r8$lambda$5pRCQfZrDlWqeP0EjcGt5R_VeW8(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Landroid/view/View;)V
    .locals 0

    .line 213
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->onPreviousStepClick()V

    return-void
.end method

.method public static synthetic $r8$lambda$CQvw17BpEJ_kUBoZSDhhhJMS0kQ(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    const-string v0, "back"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$J8hm_07Ko618jhsck0DJMHOeU70(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;I)V
    .locals 1

    const/4 v0, 0x0

    .line 411
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isCollecting:Z

    if-eqz p1, :cond_0

    .line 413
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->updateCollectButtonState()V

    return-void

    .line 416
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->captureCurrentPoint()Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mLastCollectedReference:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;

    .line 417
    iget p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->sendCalibrateCommand(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WQSQLSjp5qy6EWNTXsAX5c6P81A(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Landroid/view/View;)V
    .locals 0

    .line 205
    iget-boolean p1, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    if-eqz p1, :cond_2

    .line 206
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isCollecting:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isCalibrating:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->onContinueClick()V

    :cond_1
    :goto_0
    return-void

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->showCalibrateTips()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ycv95dtByp1rPF-nLFqFw5PIqK0(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    .line 287
    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mBucketName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mBucketName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mBucketName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mBucketName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 291
    :cond_1
    iget-object p0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public static synthetic $r8$lambda$jmeQDjbZZTq45eXVvQSHW8YTT6k(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Landroid/view/View;)V
    .locals 1

    .line 259
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    .line 259
    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mInitBucketName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mInitBucketName:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mInitBucketName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 261
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mInitBucketName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 263
    :cond_1
    iget-object p0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public static synthetic $r8$lambda$t5bN0DbFzMegi-UAWDTf16H7FJI(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;)V
    .locals 2

    .line 1261
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1262
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v0, v1, p1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$t7E8DQ4b_2dyI1fpLQ8izK9phZs(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    const-string p2, "calibration_failed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->updateCollectButtonState()V

    :cond_0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentExcavator(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasReferenceLlh(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mHasReferenceLlh:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReferenceHeightMeters(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceHeightMeters:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmReferenceLat(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceLat:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmReferenceLon(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceLon:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmVerifyMode(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mVerifyMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentExcavator(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdeviceCalibParamsId(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->deviceCalibParamsId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisCalibrating(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isCalibrating:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentStep(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHasReferenceLlh(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mHasReferenceLlh:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHeightInputReady(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mHeightInputReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingFineTuneExcavator(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingFineTuneExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReferenceHeightMeters(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceHeightMeters:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReferenceLat(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceLat:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReferenceLon(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceLon:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSelectedSchemeLabel(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mSelectedSchemeLabel:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStdevAfterBucket(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStdevAfterBucket:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStdevAfterForearm(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStdevAfterForearm:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStdevAfterForearmThenBucket(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStdevAfterForearmThenBucket:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStdevBefore(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStdevBefore:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectShovelEntity(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->selectShovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplySmartCalibBestResult(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->applySmartCalibBestResult(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleExitBackPress(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->handleExitBackPress()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misHostInstallAngleFineTune(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isHostInstallAngleFineTune()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlogSmartCalibSchemeResult(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->logSmartCalibSchemeResult(Ljava/lang/String;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogSmartCalibSelectedScheme(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->logSmartCalibSelectedScheme(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCalibrateDialogClosed(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->onCalibrateDialogClosed(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCollectAdjustFailed(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->onCollectAdjustFailed(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monFineTuneFailed(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->onFineTuneFailed(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monHeightAdjustSuccess(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->onHeightAdjustSuccess(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpickBestSmartCalibScheme(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->pickBestSmartCalibScheme(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrecordAdjustHeightCmd(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->recordAdjustHeightCmd(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresolveSchemeResult(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->resolveSchemeResult(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mschemeLabel(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->schemeLabel(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetShovelDefaultName(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->setShovelDefaultName()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowNextStateAfterCalibrateAutoClose(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->showNextStateAfterCalibrateAutoClose()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStepUi(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->updateStepUi()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 104
    filled-new-array {v2, v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->HOST_INSTALL_ANGLE_MODE1_CONTENT_INDICES:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 69
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    .line 98
    const-string v1, ""

    iput-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mInitBucketName:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mBucketName:Ljava/lang/String;

    .line 101
    sget v2, Lcom/qianhe/yct/R$drawable;->icon_finetune_1:I

    sget v3, Lcom/qianhe/yct/R$drawable;->icon_finetune_2:I

    sget v4, Lcom/qianhe/yct/R$drawable;->icon_finetune_3:I

    sget v5, Lcom/qianhe/yct/R$drawable;->icon_finetune_4:I

    sget v6, Lcom/qianhe/yct/R$drawable;->icon_finetune_5:I

    sget v7, Lcom/qianhe/yct/R$drawable;->icon_finetune_6:I

    sget v8, Lcom/qianhe/yct/R$drawable;->icon_finetune_7:I

    sget v9, Lcom/qianhe/yct/R$drawable;->icon_finetune_8:I

    sget v10, Lcom/qianhe/yct/R$drawable;->icon_finetune_9:I

    filled-new-array/range {v2 .. v10}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStepImages:[I

    .line 102
    sget v3, Lcom/qianhe/yct/R$string;->bucket_fine_tune_step1:I

    sget v4, Lcom/qianhe/yct/R$string;->bucket_fine_tune_step2:I

    sget v5, Lcom/qianhe/yct/R$string;->bucket_fine_tune_step3:I

    sget v6, Lcom/qianhe/yct/R$string;->bucket_fine_tune_step4:I

    sget v7, Lcom/qianhe/yct/R$string;->bucket_fine_tune_step5:I

    sget v8, Lcom/qianhe/yct/R$string;->bucket_fine_tune_step6:I

    sget v9, Lcom/qianhe/yct/R$string;->bucket_fine_tune_step7:I

    sget v10, Lcom/qianhe/yct/R$string;->bucket_fine_tune_step8:I

    sget v11, Lcom/qianhe/yct/R$string;->bucket_fine_tune_step9:I

    filled-new-array/range {v3 .. v11}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStepActionIds:[I

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 110
    iput-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mLastHeightStdev:D

    .line 112
    iput-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStdevBefore:D

    .line 114
    iput-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStdevAfterForearm:D

    .line 115
    iput-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStdevAfterBucket:D

    .line 116
    iput-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStdevAfterForearmThenBucket:D

    .line 117
    iput-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mSelectedSchemeLabel:Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->deviceCalibParams:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->deviceCalibParamsId:Ljava/lang/String;

    const/16 v4, 0x8

    .line 126
    iput v4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFlagBit:I

    .line 130
    iput v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mVerifyMode:I

    .line 134
    iput-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFineTuneSourceCalibParamsId:Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFineTuneSamples:Ljava/util/List;

    .line 137
    iput-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mNedOriginLat:D

    .line 138
    iput-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mNedOriginLon:D

    .line 139
    iput-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mNedOriginElev:D

    const-wide/16 v0, 0x0

    .line 141
    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceHeightMeters:D

    .line 143
    iput-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceLat:D

    .line 144
    iput-wide v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceLon:D

    return-void
.end method

.method private appliedAdjustHeightFlags()I
    .locals 3

    .line 924
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFlagBit:I

    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceHeightMeters:D

    invoke-direct {p0, v0, v1, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->buildAdjustFlags(ID)I

    move-result v0

    return v0
.end method

.method private applySmartCalibBestResult(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V
    .locals 1

    .line 1040
    sget-object v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;->FOREARM:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x6

    .line 1041
    iput p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFlagBit:I

    .line 1042
    invoke-direct {p0, p2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->onHeightAdjustSuccess(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V

    return-void

    .line 1045
    :cond_0
    sget-object v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;->FOREARM_THEN_BUCKET:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    if-ne p1, v0, :cond_1

    const/16 p1, 0xe

    .line 1047
    iput p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFlagBit:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 1049
    iput p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFlagBit:I

    .line 1051
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->ensureSmartCalibBucketName()V

    .line 1052
    invoke-direct {p0, p2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->onHeightAdjustSuccess(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V

    return-void
.end method

.method private buildAdjustFlags(ID)I
    .locals 3

    .line 0
    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-eqz v2, :cond_0

    or-int/lit8 p1, p1, 0x1

    :cond_0
    return p1
.end method

.method private buildBucketFromAdjustedTool(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)Lcom/qianhe/baselib/bean/ShovelEntity;
    .locals 10

    .line 1219
    new-instance v0, Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ShovelEntity;-><init>()V

    .line 1220
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mBucketName:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    .line 1221
    iget-object v1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->toolParamsBase64:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 1222
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v3, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput v3, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    if-eqz v1, :cond_1

    .line 1223
    iget v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->showUnit:I

    :cond_1
    iput v2, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->showUnit:I

    .line 1224
    iget-object p1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    invoke-static {p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->toolToAutoGenerateParams(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    move-result-object p1

    .line 1226
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0x:D

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1x:D

    .line 1227
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0y:D

    neg-double v1, v1

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1y:D

    .line 1228
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0z:D

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1z:D

    .line 1231
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->getFineTuneSourceCalibParamsId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->resolveBucketForFineTuneExcavator(Ljava/lang/String;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v1

    .line 1230
    invoke-static {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->resolveSourceDistanceMeasure(Lcom/qianhe/baselib/bean/ShovelEntity;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->useDistanceMeasure:Ljava/lang/Boolean;

    .line 1232
    invoke-virtual {v0, p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->setAutoGenerateParamsObj(Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;)V

    .line 1233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 1234
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->createTime:J

    .line 1235
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->updateTime:J

    const-wide/16 v3, 0x1

    .line 1236
    iput-wide v3, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    .line 1238
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mSmartCalibAutoOptimize:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz p1, :cond_3

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    .line 1242
    iput-wide v5, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    .line 1243
    iget-wide v5, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    iput-wide v5, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    .line 1244
    iget-object v5, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    iput-object v5, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    .line 1245
    iget-wide v5, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->createTime:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    move-wide v1, v5

    .line 1246
    :cond_2
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->createTime:J

    .line 1247
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    :cond_3
    return-object v0
.end method

.method private buildFineTuneSessionMeta(Z)Lcom/google/gson/JsonObject;
    .locals 3

    .line 1371
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1372
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "ok"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1373
    const-string/jumbo p1, "type"

    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->resolveFineTuneLogType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->appliedAdjustHeightFlags()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "adjust_height"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1375
    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStdevBefore:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1376
    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStdevBefore:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string/jumbo v1, "stdev_before"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1378
    :cond_0
    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStdevAfterForearm:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1379
    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStdevAfterForearm:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string/jumbo v1, "stdev_after_forearm"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1381
    :cond_1
    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStdevAfterBucket:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1382
    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStdevAfterBucket:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string/jumbo v1, "stdev_after_bucket"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1384
    :cond_2
    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStdevAfterForearmThenBucket:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1385
    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStdevAfterForearmThenBucket:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string/jumbo v1, "stdev_after_forearm_then_bucket"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1387
    :cond_3
    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mLastHeightStdev:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1388
    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mLastHeightStdev:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string/jumbo v1, "stdev_after"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1390
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mSelectedSchemeLabel:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1391
    const-string p1, "scheme"

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mSelectedSchemeLabel:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method private captureCurrentPoint()Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;
    .locals 4

    .line 422
    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity-IA;)V

    .line 423
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v1, :cond_0

    .line 424
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/GGAEntity;->latitude:D

    iput-wide v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;->latitude:D

    .line 425
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    iput-wide v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;->longitude:D

    .line 426
    iget-wide v1, v1, Lcom/qianhe/baselib/bean/GGAEntity;->elevation:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;->elevation:D

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    if-eqz v1, :cond_1

    .line 429
    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->getArmPitchDegrees(Lcom/qianhe/baselib/bean/InsNavi;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;->armPitchDegrees:D

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    if-eqz v1, :cond_2

    .line 432
    iget-wide v1, v1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->pitchAngle:D

    iput-wide v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;->sensorPitchDegrees:D

    :cond_2
    return-object v0
.end method

.method private captureFineTuneSample()Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;
    .locals 4

    .line 704
    new-instance v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    invoke-direct {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;-><init>()V

    .line 705
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->calculatePhaseToHang()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->phaseToHang:D

    .line 706
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->fillPhaseCenterNed(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)V

    .line 707
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    if-eqz v1, :cond_0

    .line 708
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    iput-wide v2, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->deviceRoll:D

    .line 709
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iput-wide v2, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->devicePitch:D

    .line 710
    iget-wide v1, v1, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    iput-wide v1, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->deviceHeading:D

    .line 712
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->useSensorPitchForMovementCheck()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 713
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    iget-wide v2, v1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->rollAngle:D

    iput-wide v2, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorRoll:D

    .line 714
    iget-wide v2, v1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->pitchAngle:D

    iput-wide v2, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorPitch:D

    .line 715
    iget-wide v1, v1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->headingAngle:D

    iput-wide v1, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorHeading:D

    const/4 v1, 0x1

    .line 716
    iput-boolean v1, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorValid:Z

    .line 719
    :cond_1
    invoke-static {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->normalizeFineTuneSample(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)V

    return-object v0
.end method

.method private collectAfterHeadingCheck()V
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->needHeadingAccuracyCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->isHeadingDegreesOK()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$6;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$6;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)V

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showHeadingAccuracyDialog(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)V

    return-void

    .line 389
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->proceedCollectAfterPrecheck()V

    return-void
.end method

.method private decodeCalibParamsIdRaw(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 962
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    const-string p1, ""

    return-object p1

    .line 966
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

.method private endFineTuneSessionFailed()V
    .locals 2

    .line 1363
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1366
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->buildFineTuneSessionMeta(Z)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 1367
    invoke-static {v0, v1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->endSession(ZLcom/google/gson/JsonObject;)V

    return-void
.end method

.method private ensureSmartCalibBucketName()V
    .locals 3

    .line 1056
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mBucketName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1059
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->resolveCurrentBucketNameForSmartCalib()Ljava/lang/String;

    move-result-object v0

    .line 1060
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->generateFineTuneBucketName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mBucketName:Ljava/lang/String;

    .line 1061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u667a\u80fd\u6821\u51c6\u81ea\u52a8\u94f2\u6597\u540d\u79f0\uff1a\u5f53\u524d="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\uff0c\u65b0="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mBucketName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private fillPhaseCenterNed(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)V
    .locals 13

    .line 728
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-nez v0, :cond_0

    return-void

    .line 732
    :cond_0
    iget-wide v7, v0, Lcom/qianhe/baselib/bean/GGAEntity;->latitude:D

    .line 733
    iget-wide v9, v0, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    .line 734
    iget-wide v11, v0, Lcom/qianhe/baselib/bean/GGAEntity;->elevation:D

    .line 735
    iget-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mNedOriginLat:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    iput-wide v7, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mNedOriginLat:D

    .line 737
    iput-wide v9, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mNedOriginLon:D

    .line 738
    iput-wide v11, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mNedOriginElev:D

    .line 740
    :cond_1
    iget-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mNedOriginLat:D

    iget-wide v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mNedOriginLon:D

    iget-wide v5, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mNedOriginElev:D

    invoke-static/range {v1 .. v12}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->llhToNed(DDDDDD)[D

    move-result-object v0

    const/4 v1, 0x0

    .line 741
    aget-wide v1, v0, v1

    iput-wide v1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->north:D

    const/4 v1, 0x1

    .line 742
    aget-wide v1, v0, v1

    iput-wide v1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->east:D

    const/4 v1, 0x2

    .line 743
    aget-wide v1, v0, v1

    iput-wide v1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->down:D

    .line 744
    iput-wide v7, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->lat:D

    .line 745
    iput-wide v9, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->lon:D

    .line 746
    iput-wide v11, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->elev:D

    return-void
.end method

.method private fromHtml(I)Ljava/lang/CharSequence;
    .locals 2

    .line 1628
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1629
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/16 v0, 0x3f

    .line 1630
    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    return-object p1

    .line 1632
    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1
.end method

.method private fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .line 1636
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/16 v0, 0x3f

    .line 1637
    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    return-object p1

    .line 1639
    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1
.end method

.method private getActiveCalibParams()Ljava/lang/String;
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->deviceCalibParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->deviceCalibParams:Ljava/lang/String;

    return-object v0

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 762
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    return-object v0

    .line 764
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private getArmPitchDegrees(Lcom/qianhe/baselib/bean/InsNavi;)D
    .locals 4

    .line 438
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    return-wide v0

    .line 441
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iget p1, p0, Lcom/qianhe/yct/base/BaseActivity;->zeroDegrees:F

    float-to-double v2, p1

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private getDeviceStepToCollect()I
    .locals 1

    .line 445
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getEffectiveParamsType()I
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    if-lez v0, :cond_0

    return v0

    .line 460
    :cond_0
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mParamsType:I

    return v0
.end method

.method private getFineTuneSourceCalibParamsId()Ljava/lang/String;
    .locals 1

    .line 1523
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    return-object v0

    .line 1526
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->deviceCalibParamsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1527
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->deviceCalibParamsId:Ljava/lang/String;

    return-object v0

    .line 1529
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private getStepActionText(II)Ljava/lang/CharSequence;
    .locals 2

    .line 1615
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStepActionIds:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1616
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isHostInstallAngleMode1()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, p2, -0x1

    if-eq p1, v1, :cond_0

    .line 1617
    invoke-direct {p0, v0, p2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->relabelActionNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1619
    :cond_0
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private getStepContentIndex(I)I
    .locals 2

    .line 1297
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isHostInstallAngleMode1()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    sget-object v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->HOST_INSTALL_ANGLE_MODE1_CONTENT_INDICES:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 1298
    aget p1, v0, p1

    :cond_0
    return p1
.end method

.method private getTotalSteps()I
    .locals 1

    .line 1293
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isHostInstallAngleMode1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    const/16 v0, 0x9

    return v0
.end method

.method private handleExitBackPress()V
    .locals 7

    .line 1707
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isCollecting:Z

    if-eqz v0, :cond_0

    .line 1708
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelCollectingDialog()V

    return-void

    .line 1711
    :cond_0
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1712
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->hideKeyboard()V

    .line 1713
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v0, :cond_1

    .line 1714
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1717
    :cond_1
    sget v0, Lcom/qianhe/yct/R$string;->exit_bucket_fine_tune:I

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

    return-void
.end method

.method private hasValidReferenceLlh()Z
    .locals 2

    .line 1129
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mHasReferenceLlh:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceLat:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceLon:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hideKeyboard()V
    .locals 3

    .line 616
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 617
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private initNameStep()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NoUnderscoreInputFilter;->apply(Landroid/widget/EditText;)V

    .line 258
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->ivReset:Lcom/qianhe/yct/view/NightAwareImageView;

    new-instance v1, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$3;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)V

    const-string/jumbo v2, "step1_shovel_name"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 286
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v1, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$$ExternalSyntheticLambda7;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initParamsTypeFromExcavator()V
    .locals 3

    .line 1279
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1280
    :cond_0
    iget v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    if-lez v1, :cond_1

    .line 1281
    iput v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mParamsType:I

    return-void

    .line 1284
    :cond_1
    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1285
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1286
    array-length v2, v0

    if-lez v2, :cond_2

    .line 1287
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mParamsType:I

    :cond_2
    :goto_0
    return-void
.end method

.method private initProgressBar()V
    .locals 6

    .line 1562
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->lltProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1563
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->getTotalSteps()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1564
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1565
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    if-lez v1, :cond_0

    const/4 v4, 0x4

    .line 1566
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1567
    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1568
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/qianhe/yct/R$color;->gray_light:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1569
    iget-object v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->lltProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isBucketSchemeResultValid(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1020
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->toolParamsBase64:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isFinalCalibrateStep(I)Z
    .locals 3

    .line 1304
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isHostInstallAngleMode1()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private isFiniteStdev(D)Z
    .locals 1

    .line 997
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isForearmSchemeResultValid(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 993
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->heightStdev:D

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isFiniteStdev(D)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isHeightInputDialogShowing()Z
    .locals 2

    .line 1721
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "FineTuneHeightInputDialogFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isHostInstallAngleFineTune()Z
    .locals 2

    .line 1268
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFlagBit:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isHostInstallAngleMode1()Z
    .locals 2

    .line 1273
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isHostInstallAngleFineTune()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mParamsType:I

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    .line 1274
    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mParamsType:I

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_NOT_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    .line 1275
    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isMovementThresholdMet(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;)Z
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    return v3

    .line 477
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->getDeviceStepToCollect()I

    move-result v4

    .line 482
    iget-object v5, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v5, :cond_2

    .line 484
    iget-wide v6, p1, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;->longitude:D

    iget-wide v8, p1, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;->latitude:D

    iget-wide v10, p1, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;->elevation:D

    new-array v12, v1, [D

    aput-wide v6, v12, v2

    aput-wide v8, v12, v3

    aput-wide v10, v12, v0

    iget-wide v6, v5, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    iget-wide v8, v5, Lcom/qianhe/baselib/bean/GGAEntity;->latitude:D

    iget-wide v10, v5, Lcom/qianhe/baselib/bean/GGAEntity;->elevation:D

    new-array v1, v1, [D

    aput-wide v6, v1, v2

    aput-wide v8, v1, v3

    aput-wide v10, v1, v0

    invoke-static {v12, v1}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGeodetic([D[D)D

    move-result-wide v0

    const-wide v5, 0x3fb999999999999aL    # 0.1

    cmpl-double v7, v0, v5

    if-ltz v7, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 487
    :goto_0
    invoke-direct {p0, v4}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->shouldCheckArmPitch(I)Z

    move-result v1

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    if-eqz v1, :cond_4

    .line 489
    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->getArmPitchDegrees(Lcom/qianhe/baselib/bean/InsNavi;)D

    move-result-wide v7

    iget-wide v9, p1, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;->armPitchDegrees:D

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v1, v7, v5

    if-ltz v1, :cond_3

    return v3

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 493
    :goto_1
    invoke-direct {p0, v4}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->shouldCheckSensorPitch(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    if-eqz v4, :cond_6

    .line 495
    iget-wide v7, v4, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->pitchAngle:D

    iget-wide v9, p1, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;->sensorPitchDegrees:D

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double p1, v7, v5

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

    return v3

    :cond_7
    return v2
.end method

.method private static llhToNed(DDDDDD)[D
    .locals 2

    .line 750
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sub-double/2addr p6, p0

    .line 751
    invoke-static {p6, p7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    sub-double/2addr p8, p2

    .line 752
    invoke-static {p8, p9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    const-wide p6, 0x415854a640000000L    # 6378137.0

    mul-double p0, p0, p6

    mul-double p2, p2, p6

    .line 754
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p6

    mul-double p2, p2, p6

    sub-double/2addr p10, p4

    neg-double p4, p10

    const/4 p6, 0x3

    .line 756
    new-array p6, p6, [D

    const/4 p7, 0x0

    aput-wide p0, p6, p7

    const/4 p0, 0x1

    aput-wide p2, p6, p0

    const/4 p0, 0x2

    aput-wide p4, p6, p0

    return-object p6
.end method

.method private logSmartCalibEntryParams()V
    .locals 5

    .line 1077
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1079
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->deviceCalibParamsId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 1081
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->deviceCalibParamsId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1083
    :catch_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->deviceCalibParamsId:Ljava/lang/String;

    .line 1086
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->deviceCalibParams:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1087
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u667a\u80fd\u6821\u51c6\u5165\u53e3\u53c2\u6570\uff1aexcavator="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\uff0cparamsType="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mParamsType:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\uff0cmode="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_3

    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\uff0cautoOptimize=true\uff0ccollectSteps="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->getTotalSteps()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\uff0ccalibParamsId(raw)="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\uff0ccalibParamsLen="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\uff0ccalibParams="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->deviceCalibParams:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1087
    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private logSmartCalibSchemeResult(Ljava/lang/String;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V
    .locals 4

    .line 928
    const-string/jumbo v0, "\u667a\u80fd\u6821\u51c6\u65b9\u6848["

    if-nez p2, :cond_0

    .line 929
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]\u7ed3\u679c\uff1anull"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 932
    :cond_0
    invoke-virtual {p2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]\u7ed3\u679c\uff1a\u5931\u8d25 code="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->code:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 936
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]\u7ed3\u679c\uff1a\u6210\u529f stdev="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->heightStdev:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\uff0chasTool="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    if-eqz p1, :cond_2

    iget-object p1, p2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->toolParamsBase64:Ljava/lang/String;

    .line 937
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 936
    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private logSmartCalibSelectedScheme(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V
    .locals 6

    .line 943
    sget-object v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;->FOREARM:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    if-ne p1, v0, :cond_0

    .line 944
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->getFineTuneSourceCalibParamsId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->resolveBucketForFineTuneExcavator(Ljava/lang/String;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 945
    iget-object v1, p2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->toolParamsBase64:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 946
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->ensureSmartCalibBucketName()V

    .line 947
    invoke-direct {p0, p2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->buildBucketFromAdjustedTool(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v1

    .line 948
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->ensureParamsSerialized()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 950
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 951
    const-string v3, ""

    if-eqz p2, :cond_2

    iget-object v4, p2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->calibParamsBase64:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v4, v3

    .line 950
    :goto_1
    invoke-static {p0, v2, v1, v4}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->buildFineTuneExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v2

    .line 952
    iget-object v2, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->decodeCalibParamsIdRaw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_3

    .line 953
    iget-object v4, p2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->calibParamsBase64:Ljava/lang/String;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    if-eqz v1, :cond_4

    .line 954
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    if-ne p1, v0, :cond_5

    .line 955
    const-string/jumbo v0, "\u65e0\uff08\u6cbf\u7528\u539f\u94f2\u6597\uff09"

    goto :goto_3

    :cond_5
    const-string/jumbo v0, "\u65e0"

    .line 956
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u667a\u80fd\u6821\u51c6\u9009\u7528\u65b9\u6848\uff1a"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->schemeLabel(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\uff0cstdev="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_6

    iget-wide p1, p2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->heightStdev:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n\u65b0\u6316\u673a\uff1a\u6821\u51c6id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\uff0c\u6821\u51c6\u53c2\u6570="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\u65b0\u94f2\u6597\uff1a"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private onCalibrateDialogClosed(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 316
    iput v0, p0, Lcom/qianhe/yct/base/BaseActivity;->count:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 318
    iput-boolean p1, p0, Lcom/qianhe/yct/base/BaseActivity;->isShowTips:Z

    :cond_0
    return-void
.end method

.method private onCalibrateSuccess()V
    .locals 2

    const/4 v0, 0x0

    .line 1311
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isCalibrating:Z

    const/4 v0, 0x1

    .line 1312
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->waitForPositionChange:Z

    .line 1313
    iget v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    .line 1314
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->updateStepUi()V

    return-void
.end method

.method private onCollectAdjustFailed(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1134
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isCalibrating:Z

    .line 1135
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->finishingFineTune:Z

    .line 1136
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->waitingSetParam:Z

    .line 1137
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->endFineTuneSessionFailed()V

    .line 1138
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 1139
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->rollbackLastSample()V

    .line 1140
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->waitForPositionChange:Z

    const/4 v0, 0x0

    .line 1141
    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mLastCollectedReference:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;

    .line 1142
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->updateCollectButtonState()V

    .line 1143
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1144
    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "calibration_failed"

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onCollectClick()V
    .locals 1

    .line 304
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mHeightInputReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 305
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->showFineTuneHeightDialog(Z)V

    return-void

    .line 308
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->waitForPositionChange:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mLastCollectedReference:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isMovementThresholdMet(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->showStepActionTip()V

    return-void

    .line 312
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->collectAfterHeadingCheck()V

    return-void
.end method

.method private onContinueClick()V
    .locals 2

    .line 296
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->onNameContinueClick()V

    return-void

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->onCollectClick()V

    return-void
.end method

.method private onFineTuneApplySuccess()V
    .locals 5

    const/4 v0, 0x0

    .line 1484
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->finishingFineTune:Z

    .line 1485
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingFineTuneExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-nez v1, :cond_0

    .line 1486
    sget v0, Lcom/qianhe/yct/R$string;->save_failed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->onFineTuneFailed(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1489
    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->buildFineTuneSessionMeta(Z)Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 1490
    iget-object v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingFineTuneExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v3, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    invoke-static {v1, v2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->endSession(ZLcom/google/gson/JsonObject;)V

    .line 1494
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->selectShovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 1495
    :goto_1
    iget-object v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingFineTuneExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v2, :cond_3

    .line 1496
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isHostInstallAngleFineTune()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v0, 0x1

    .line 1497
    :cond_3
    new-instance v1, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;

    invoke-direct {v1, p0, v0, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$10;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;ZLcom/qianhe/baselib/bean/ShovelEntity;)V

    invoke-static {p0, v3, v1}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->saveFineTuneExcavatorAsync(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;)V

    return-void
.end method

.method private onFineTuneFailed(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1344
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->finishingFineTune:Z

    .line 1345
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->waitingSetParam:Z

    .line 1346
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isCalibrating:Z

    const/4 v1, 0x0

    .line 1347
    iput-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->selectShovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 1348
    iput-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingFineTuneExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 1349
    const-string v2, ""

    iput-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFineTuneSourceCalibParamsId:Ljava/lang/String;

    .line 1350
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->endFineTuneSessionFailed()V

    .line 1351
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 1352
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->rollbackLastSample()V

    .line 1353
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->waitForPositionChange:Z

    .line 1354
    iput-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mLastCollectedReference:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;

    .line 1355
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->updateCollectButtonState()V

    .line 1356
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1357
    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "calibration_failed"

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onHeightAdjustSuccess(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)V
    .locals 4

    .line 1149
    iget-object v0, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->calibParamsBase64:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->deviceCalibParams:Ljava/lang/String;

    .line 1150
    iget-wide v1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->heightStdev:D

    iput-wide v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mLastHeightStdev:D

    .line 1151
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v1, :cond_0

    .line 1152
    iput-object v0, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    .line 1154
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->finishingFineTune:Z

    .line 1155
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->getFineTuneSourceCalibParamsId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFineTuneSourceCalibParamsId:Ljava/lang/String;

    .line 1156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u667a\u80fd\u6821\u51c6\u9ad8\u5ea6\u5fae\u8c03\u6210\u529f\uff1aflagBit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFlagBit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff0cstdev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->heightStdev:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff0cautoOptimize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mSmartCalibAutoOptimize:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff0chasTool="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 1160
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isHostInstallAngleFineTune()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1161
    iget-object v0, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->toolParamsBase64:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1162
    iget-object v0, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->resolveBucketNameForLog()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->recordFineTuneSetToolEvents(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;Ljava/lang/String;)V

    .line 1164
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFineTuneSourceCalibParamsId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->resolveBucketForFineTuneExcavator(Ljava/lang/String;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v0

    .line 1165
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v2, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->calibParamsBase64:Ljava/lang/String;

    invoke-static {p0, v1, v0, v2}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->buildFineTuneExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingFineTuneExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 1166
    invoke-static {v1, v0}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->buildCalibParamsId(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5fae\u8c03\u5c0f\u81c2\u6210\u529f\uff0ccalibParamsId\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingFineTuneExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v2, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 1168
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingFineTuneExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    iget-object v1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->calibParamsBase64:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->recordFineTuneSetParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingFineTuneExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    iget-object p1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->calibParamsBase64:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->sendSetParamForFineTune(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1172
    :cond_3
    iget-object v0, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->toolParamsBase64:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    if-nez v0, :cond_4

    goto :goto_1

    .line 1176
    :cond_4
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->buildBucketFromAdjustedTool(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 1177
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ShovelEntity;->ensureParamsSerialized()V

    .line 1178
    iget-object v0, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->recordFineTuneSetToolEvents(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;Ljava/lang/String;)V

    .line 1179
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->selectShovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 1180
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v2, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->calibParamsBase64:Ljava/lang/String;

    invoke-static {p0, v1, v0, v2}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->buildFineTuneExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingFineTuneExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5fae\u8c03\u94f2\u6597\u6210\u529f\uff0c\u94f2\u6597="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\uff0ccalibParamsId\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingFineTuneExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v2, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 1182
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1181
    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 1183
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingFineTuneExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    iget-object v1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->calibParamsBase64:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->recordFineTuneSetParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingFineTuneExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    iget-object p1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->calibParamsBase64:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->sendSetParamForFineTune(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1173
    :cond_5
    :goto_1
    sget p1, Lcom/qianhe/yct/R$string;->bucket_fine_tune_coordinate_error_too_large:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->onFineTuneFailed(Ljava/lang/String;)V

    return-void
.end method

.method private onNameContinueClick()V
    .locals 4

    .line 534
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 535
    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mBucketName:Ljava/lang/String;

    .line 536
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    sget v0, Lcom/qianhe/yct/R$string;->shovel_name_cannot_empty:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->use_default_values:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "step1_shovel_name"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void

    .line 538
    :cond_0
    invoke-static {v0}, Lcom/qianhe/yct/utils/NoUnderscoreInputFilter;->containsUnderscore(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 539
    sget v0, Lcom/qianhe/yct/R$string;->name_cannot_contain_underscore:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 540
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->isShovelNameExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mInitBucketName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 541
    sget v0, Lcom/qianhe/yct/R$string;->name_exists:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 543
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->hideKeyboard()V

    const/4 v0, 0x1

    .line 544
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->showFineTuneHeightDialog(Z)V

    return-void
.end method

.method private onPreviousStepClick()V
    .locals 3

    .line 1397
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isCollecting:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isCalibrating:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->finishingFineTune:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1400
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->rollbackLastSample()V

    const/4 v0, 0x0

    .line 1401
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->waitForPositionChange:Z

    const/4 v2, 0x0

    .line 1402
    iput-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mLastCollectedReference:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;

    .line 1403
    iget v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    if-nez v2, :cond_2

    .line 1404
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isHostInstallAngleFineTune()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1406
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->showFineTuneHeightDialog(Z)V

    return-void

    .line 1410
    :cond_1
    iput v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    .line 1411
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->updateStepUi()V

    .line 1412
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 1415
    iput v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    .line 1416
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->updateStepUi()V

    :cond_3
    :goto_0
    return-void
.end method

.method private onRealtimeDataUpdated()V
    .locals 2

    .line 519
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->waitForPositionChange:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isCollecting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isCalibrating:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 520
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->updateCollectButtonState()V

    :cond_0
    return-void
.end method

.method private pickBestSmartCalibScheme(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;
    .locals 5

    .line 978
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isForearmSchemeResultValid(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)Z

    move-result v0

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-eqz v0, :cond_0

    iget-wide v3, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->heightStdev:D

    cmpg-double p1, v3, v1

    if-gez p1, :cond_0

    .line 979
    sget-object p1, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;->FOREARM:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    move-wide v1, v3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 982
    :goto_0
    invoke-direct {p0, p2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isBucketSchemeResultValid(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v3, p2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->heightStdev:D

    invoke-direct {p0, v3, v4}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isFiniteStdev(D)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v3, p2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->heightStdev:D

    cmpg-double p2, v3, v1

    if-gez p2, :cond_1

    .line 983
    sget-object p1, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;->BUCKET:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    move-wide v1, v3

    .line 986
    :cond_1
    invoke-direct {p0, p3}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isBucketSchemeResultValid(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-wide v3, p3, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->heightStdev:D

    invoke-direct {p0, v3, v4}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isFiniteStdev(D)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-wide p2, p3, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->heightStdev:D

    cmpg-double v0, p2, v1

    if-gez v0, :cond_2

    .line 987
    sget-object p1, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;->FOREARM_THEN_BUCKET:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    :cond_2
    return-object p1
.end method

.method private proceedCollectAfterPrecheck()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isCollecting:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isCalibrating:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 404
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->startCountdownCollect()V

    :cond_2
    :goto_0
    return-void
.end method

.method private recordAdjustHeightCmd(I)V
    .locals 9

    .line 679
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->resolveFineTuneLogType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFineTuneSamples:Ljava/util/List;

    .line 681
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-wide v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceHeightMeters:D

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v5, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v6, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    iget-wide v7, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    .line 683
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move v1, p1

    .line 678
    invoke-static/range {v0 .. v7}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordFineTuneNineFourAdjustHeight(Ljava/lang/String;IIZLcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void
.end method

.method private recordFineTuneInputAndAdjust()V
    .locals 26

    move-object/from16 v0, p0

    .line 645
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v1

    if-nez v1, :cond_0

    .line 646
    iget-object v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-direct {v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->resolveFineTuneSessionFlow()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginFinetune(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V

    .line 649
    :cond_0
    iget-object v1, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFineTuneSamples:Ljava/util/List;

    invoke-static {v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->normalizeFineTuneSamples(Ljava/util/List;)V

    .line 651
    iget-wide v6, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceHeightMeters:D

    const-wide/16 v1, 0x0

    cmpl-double v3, v6, v1

    if-eqz v3, :cond_1

    .line 652
    iget-wide v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceLat:D

    iget-wide v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceLon:D

    .line 653
    invoke-direct {v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->hasValidReferenceLlh()Z

    move-result v8

    iget-wide v9, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceHeightMeters:D

    .line 654
    invoke-direct {v0, v9, v10}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->resolveReferenceHeightNed(D)[D

    move-result-object v9

    iget-object v10, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v11, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v12, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    iget-wide v13, v0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    .line 655
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    .line 652
    invoke-static/range {v2 .. v13}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordFineTuneKnownHeightPoint(DDDZ[DLcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 657
    :cond_1
    invoke-direct {v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->resolveFineTuneLogType()Ljava/lang/String;

    move-result-object v14

    .line 658
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 659
    iget-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFineTuneSamples:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    const/4 v4, 0x0

    .line 661
    invoke-static {v3, v4}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildFineTuneInputSample(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;Z)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 663
    :cond_2
    iget-object v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    invoke-static {v2, v3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildHabSnapshot(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)Lcom/google/gson/JsonObject;

    move-result-object v21

    .line 665
    iget v15, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFlagBit:I

    iget v2, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mParamsType:I

    .line 669
    invoke-direct {v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->getActiveCalibParams()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-direct {v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->getActiveCalibParams()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object/from16 v17, v3

    goto :goto_2

    :cond_3
    const-string v3, ""

    goto :goto_1

    :goto_2
    iget-wide v3, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceHeightMeters:D

    iget-object v5, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v6, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v7, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    iget-wide v8, v0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    .line 673
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    move-object/from16 v20, v1

    move/from16 v16, v2

    move-wide/from16 v18, v3

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    .line 665
    invoke-static/range {v14 .. v25}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordFineTuneNineFourInput(Ljava/lang/String;IILjava/lang/String;DLcom/google/gson/JsonArray;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void
.end method

.method private recordFineTuneSetParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1214
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    iget-wide v0, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    .line 1215
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v0, p1

    move-object v1, p2

    .line 1214
    invoke-static/range {v0 .. v5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordFineTuneSetParam(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void
.end method

.method private recordFineTuneSetToolEvents(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;Ljava/lang/String;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1202
    :cond_0
    iget-wide v1, p1, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->AB:D

    const/4 v0, 0x0

    .line 1205
    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->toothToJsonArray(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;I)Lcom/google/gson/JsonArray;

    move-result-object v3

    const/4 v0, 0x1

    .line 1206
    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->toothToJsonArray(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;I)Lcom/google/gson/JsonArray;

    move-result-object v4

    iget-object v5, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v6, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v7, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    iget-wide v8, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    .line 1207
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object v0, p2

    .line 1202
    invoke-static/range {v0 .. v8}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordSetToolInput(Ljava/lang/String;DLcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 1209
    invoke-static {p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->buildSetToolCmd(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    iget-wide v2, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    .line 1210
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 1208
    invoke-static {p1, p2, v0, v1, v2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordFineTuneSetTool(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void
.end method

.method private relabelActionNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "^([^<]*?)\\d+"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private reloadBucketFromDb(Lcom/qianhe/baselib/bean/ShovelEntity;)Lcom/qianhe/baselib/bean/ShovelEntity;
    .locals 5

    .line 1431
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/BucketSwitchHelper;->reloadBucketFromDb(Landroid/content/Context;Lcom/qianhe/baselib/bean/ShovelEntity;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1432
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_1

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 1433
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    iput-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 1436
    :cond_0
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1437
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    iput-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    :cond_1
    return-object p1
.end method

.method private resetSchemeStdevMeta()V
    .locals 3

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 906
    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStdevBefore:D

    .line 907
    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStdevAfterForearm:D

    .line 908
    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStdevAfterBucket:D

    .line 909
    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStdevAfterForearmThenBucket:D

    .line 910
    const-string v2, ""

    iput-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mSelectedSchemeLabel:Ljava/lang/String;

    .line 911
    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mLastHeightStdev:D

    return-void
.end method

.method private resolveBucketForFineTuneExcavator(Ljava/lang/String;)Lcom/qianhe/baselib/bean/ShovelEntity;
    .locals 6

    .line 1537
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->selectShovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 1541
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_3

    .line 1543
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 1544
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->reloadBucketFromDb(Lcom/qianhe/baselib/bean/ShovelEntity;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    .line 1549
    :cond_2
    iget-object v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    .line 1553
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->deviceCalibParamsId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->deviceCalibParamsId:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    goto :goto_1

    :cond_6
    move-object p1, v1

    .line 1554
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->supportsBucketCurrentUsage(Ljava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1555
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryShovelByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1556
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {p1, v0, v1}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->matchBucketFromList(Ljava/lang/String;Ljava/util/List;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method private resolveBucketNameForLog()Ljava/lang/String;
    .locals 1

    .line 1188
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    .line 1195
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mBucketName:Ljava/lang/String;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method private resolveCurrentBucketNameForSmartCalib()Ljava/lang/String;
    .locals 2

    .line 1065
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->getFineTuneSourceCalibParamsId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->resolveBucketForFineTuneExcavator(Ljava/lang/String;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1066
    iget-object v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1067
    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    return-object v0

    .line 1069
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->getFineTuneSourceCalibParamsId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->parseBucketNameFromCalibParamsId(Ljava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object v0

    .line 1070
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 1073
    :cond_1
    sget v0, Lcom/qianhe/yct/R$string;->shovel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private resolveFineTuneLogType()Ljava/lang/String;
    .locals 1

    .line 688
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isHostInstallAngleMode1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    const-string v0, "fourPoint"

    return-object v0

    .line 691
    :cond_0
    const-string v0, "ninePoint"

    return-object v0
.end method

.method private resolveFineTuneSessionFlow()Ljava/lang/String;
    .locals 1

    .line 696
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isHostInstallAngleMode1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    const-string v0, "finetune_four_point"

    return-object v0

    .line 699
    :cond_0
    const-string v0, "finetune_nine_point"

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

    .line 1106
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->hasValidReferenceLlh()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1107
    iget-wide v4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceLat:D

    iget-wide v6, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceLon:D

    new-array v3, v3, [D

    aput-wide v4, v3, v2

    aput-wide v6, v3, v1

    aput-wide p1, v3, v0

    return-object v3

    .line 1109
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

    .line 1118
    iget-wide v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mNedOriginLat:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1121
    :cond_0
    invoke-direct {v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->hasValidReferenceLlh()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1122
    iget-wide v5, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mNedOriginLat:D

    iget-wide v7, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mNedOriginLon:D

    iget-wide v9, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mNedOriginElev:D

    iget-wide v11, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceLat:D

    iget-wide v13, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceLon:D

    move-wide/from16 v15, p1

    invoke-static/range {v5 .. v16}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->llhToNed(DDDDDD)[D

    move-result-object v1

    return-object v1

    .line 1125
    :cond_1
    iget-wide v4, v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mNedOriginElev:D

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

    .line 1119
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

.method private resolveSchemeResult(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1007
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    return-object v0

    .line 1013
    :cond_1
    invoke-direct {p0, p4}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isBucketSchemeResultValid(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p4

    :cond_2
    return-object v0

    .line 1011
    :cond_3
    invoke-direct {p0, p3}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isBucketSchemeResultValid(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object p3

    :cond_4
    return-object v0

    .line 1009
    :cond_5
    invoke-direct {p0, p2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isForearmSchemeResultValid(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-object p2

    :cond_6
    return-object v0
.end method

.method private rollbackLastSample()V
    .locals 2

    .line 1420
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFineTuneSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFineTuneSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1423
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFineTuneSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 1424
    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mNedOriginLat:D

    .line 1425
    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mNedOriginLon:D

    .line 1426
    iput-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mNedOriginElev:D

    :cond_1
    return-void
.end method

.method private runHeightAdjust()V
    .locals 11

    .line 768
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->getActiveCalibParams()Ljava/lang/String;

    move-result-object v2

    .line 769
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    sget v0, Lcom/qianhe/yct/R$string;->cannot_configure:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->onCollectAdjustFailed(Ljava/lang/String;)V

    return-void

    .line 773
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->resetSchemeStdevMeta()V

    .line 774
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mSmartCalibAutoOptimize:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mParamsType:I

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 775
    invoke-direct {p0, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->runSmartCalibAutoOptimize(Ljava/lang/String;)V

    return-void

    .line 778
    :cond_1
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFlagBit:I

    .line 779
    iget-wide v7, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceHeightMeters:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v7, v3

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    move v4, v0

    .line 784
    invoke-direct {p0, v7, v8}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->resolveReferenceHeightLlh(D)[D

    move-result-object v6

    .line 785
    invoke-direct {p0, v7, v8}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->resolveReferenceHeightNed(D)[D

    move-result-object v5

    .line 786
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFineTuneSamples:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 787
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isHostInstallAngleFineTune()Z

    move-result v9

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u667a\u80fd\u6821\u51c6\u5355\u65b9\u6848\u5f00\u59cb\uff1ascheme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_3

    const-string/jumbo v1, "\u5fae\u8c03\u5c0f\u81c2"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "\u5fae\u8c03\u94f2\u6597"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\uff0cparamsType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mParamsType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\uff0cflags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\uff0csamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\uff0cheightMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\uff0ccalibParamsLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 788
    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 794
    new-instance v10, Ljava/lang/Thread;

    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$8;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;Ljava/util/List;I[D[DDZ)V

    invoke-direct {v10, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 825
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private runSmartCalibAutoOptimize(Ljava/lang/String;)V
    .locals 11

    .line 832
    iget-wide v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceHeightMeters:D

    const/4 v2, 0x6

    .line 833
    invoke-direct {p0, v2, v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->buildAdjustFlags(ID)I

    move-result v7

    const/16 v2, 0x8

    .line 834
    invoke-direct {p0, v2, v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->buildAdjustFlags(ID)I

    move-result v10

    .line 835
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->resolveReferenceHeightLlh(D)[D

    move-result-object v9

    .line 836
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->resolveReferenceHeightNed(D)[D

    move-result-object v8

    .line 837
    new-instance v6, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFineTuneSamples:Ljava/util/List;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 838
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u667a\u80fd\u6821\u51c6\u591a\u65b9\u6848\u6bd4\u8f83\u5f00\u59cb\uff1aparamsType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mParamsType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\uff0csamples="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\uff0cheightMeters="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\uff0cforearmFlags="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\uff0cbucketFlags="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\uff0cheightNed=("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget-wide v0, v8, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-wide v3, v8, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    aget-wide v0, v8, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 838
    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 844
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$9;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;Ljava/util/List;I[D[DI)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 902
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private saveHostCalibParamsToSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1457
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1458
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->resolveFineTuneSessionFlow()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginFinetune(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V

    return-void

    .line 1462
    :cond_0
    const-string p1, "finetune"

    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->getActiveFileFlow()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 1466
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz p1, :cond_2

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 1467
    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string p1, ""

    .line 1465
    :goto_1
    invoke-static {v0, v1, p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->updateSessionExcavator(JLjava/lang/String;)V

    return-void
.end method

.method private schemeLabel(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 1025
    const-string/jumbo p1, "unknown"

    return-object p1

    .line 1027
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1035
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1033
    :cond_1
    const-string/jumbo p1, "\u5fae\u8c03\u5c0f\u81c2\u540e\u518d\u5fae\u8c03\u94f2\u6597"

    return-object p1

    .line 1031
    :cond_2
    const-string/jumbo p1, "\u5fae\u8c03\u94f2\u6597"

    return-object p1

    .line 1029
    :cond_3
    const-string/jumbo p1, "\u5fae\u8c03\u5c0f\u81c2"

    return-object p1
.end method

.method private sendCalibrateCommand(I)V
    .locals 10

    const/4 v0, 0x1

    .line 623
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isCalibrating:Z

    .line 624
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->updateCollectButtonState()V

    .line 625
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->captureFineTuneSample()Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    move-result-object v1

    .line 626
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFineTuneSamples:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mSmartCalibAutoOptimize:Z

    const-string/jumbo v3, "\u6b65\uff1a"

    if-eqz v2, :cond_0

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u667a\u80fd\u6821\u51c6\u7b2c"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 630
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isHostInstallAngleFineTune()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5fae\u8c03\u5c0f\u81c2\u7b2c"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5fae\u8c03\u94f2\u6597\u7b2c"

    goto :goto_0

    .line 631
    :goto_1
    iget-object v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    const-string v4, ",h="

    const-string v5, ",lon="

    const-string v6, "lat="

    if-nez v3, :cond_2

    const-string v3, "null"

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-wide v7, v7, Lcom/qianhe/baselib/bean/GGAEntity;->latitude:D

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-wide v7, v7, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-wide v7, v7, Lcom/qianhe/baselib/bean/GGAEntity;->elevation:D

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 632
    :goto_2
    iget-wide v7, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mNedOriginLat:D

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v4, "unset"

    goto :goto_3

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mNedOriginLat:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mNedOriginLon:D

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mNedOriginElev:D

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 633
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u76f8\u4f4d\u4e2d\u5fc3(GGA\u2192NED)=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->north:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->east:D

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->down:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")\uff0c\u6837\u672c="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFineTuneSamples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\uff0cGGA=["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\uff0cNED\u539f\u70b9=["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFineTuneSamples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_4

    const-string/jumbo v0, "\uff08\u9996\u70b9\u76f8\u5bf9\u81ea\u8eab\uff0cNED \u5fc5\u4e3a 0\uff09"

    goto :goto_4

    :cond_4
    const-string v0, ""

    :goto_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    invoke-static {v2, v0, v1, v3, v4}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->log(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    .line 635
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isFinalCalibrateStep(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 636
    sget p1, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 637
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->recordFineTuneInputAndAdjust()V

    .line 638
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->runHeightAdjust()V

    return-void

    .line 641
    :cond_5
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->onCalibrateSuccess()V

    return-void
.end method

.method private sendSetParamForFineTune(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 1253
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->waitingSetParam:Z

    .line 1259
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

    .line 1260
    iget-object p2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvNext:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$$ExternalSyntheticLambda8;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Ljava/lang/String;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setShovelDefaultName()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 600
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryShovelByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 602
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/qianhe/yct/R$string;->shovel:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

    .line 604
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const-string/jumbo v2, "shovel"

    invoke-virtual {v1, v2, v0}, Lcom/qianhe/yct/db/DatabaseManager;->isEntityNameExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
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

    goto :goto_0

    .line 608
    :cond_0
    sget v2, Lcom/qianhe/yct/R$string;->shovel:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "%s1"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 610
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 612
    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mBucketName:Ljava/lang/String;

    return-void
.end method

.method private shouldCheckArmPitch(I)Z
    .locals 2

    .line 450
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isHostInstallAngleFineTune()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private shouldCheckSensorPitch(I)Z
    .locals 1

    .line 469
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isHostInstallAngleFineTune()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->useSensorPitchForMovementCheck()Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private showFineTuneHeightDialog(Z)V
    .locals 10

    .line 552
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "FineTuneHeightInputDialogFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;

    if-eqz v0, :cond_0

    return-void

    .line 556
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mHeightInputReady:Z

    .line 557
    new-instance v2, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;

    invoke-direct {v2}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;-><init>()V

    if-eqz v0, :cond_1

    .line 559
    iget-wide v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceHeightMeters:D

    iget-wide v5, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceLon:D

    iget-wide v7, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mReferenceLat:D

    iget-boolean v9, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mHasReferenceLlh:Z

    invoke-virtual/range {v2 .. v9}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->setInitialHeight(DDDZ)V

    .line 561
    :cond_1
    new-instance v3, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;

    invoke-direct {v3, p0, p1, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$7;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;ZZ)V

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->setOnHeightConfirmListener(Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$OnHeightConfirmListener;)V

    .line 596
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showNextStateAfterCalibrateAutoClose()V
    .locals 1

    const/4 v0, 0x0

    .line 324
    iput v0, p0, Lcom/qianhe/yct/base/BaseActivity;->count:I

    .line 325
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    if-nez v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->showCalibrateTips()V

    return-void

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->needHeadingAccuracyCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->isHeadingDegreesOK()Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$4;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$4;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)V

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showHeadingAccuracyDialog(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)V

    :cond_1
    return-void
.end method

.method private showStepActionTip()V
    .locals 3

    .line 393
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->getStepContentIndex(I)I

    move-result v0

    .line 394
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStepActionIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 395
    iget v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->getStepActionText(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method

.method private startCountdownCollect()V
    .locals 3

    const/4 v0, 0x1

    .line 408
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isCollecting:Z

    .line 409
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->updateCollectButtonState()V

    .line 410
    sget v0, Lcom/qianhe/yct/R$string;->collecting:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2, v1}, Lcom/qianhe/yct/base/BaseActivity;->showCollectingDialog(Ljava/lang/String;ILcom/qianhe/yct/dialog/CollectingDialogFragment$OnCloseListener;)V

    return-void
.end method

.method private updateCollectButtonState()V
    .locals 5

    .line 503
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 504
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvNext:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 505
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvNext:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 506
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvNext:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 507
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvPrevious:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    .line 510
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isCollecting:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isCalibrating:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->finishingFineTune:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 511
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvPrevious:Landroid/widget/TextView;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 512
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvNext:Landroid/widget/TextView;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 513
    iget-boolean v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->waitForPositionChange:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mLastCollectedReference:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;

    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isMovementThresholdMet(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$CollectReferencePoint;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, 0x1

    .line 514
    :goto_3
    iget-object v4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvNext:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 515
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvNext:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method private updateStepUi()V
    .locals 6

    const/4 v0, 0x1

    .line 1574
    iget v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    const/4 v2, -0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    .line 1575
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->cvNameStep:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1576
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->cvCollectStep:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1577
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->lltProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1578
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvPrevious:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1579
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvNext:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->next:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1580
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mBucketName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mBucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1582
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mBucketName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1584
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->updateCollectButtonState()V

    return-void

    .line 1588
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->cvNameStep:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1589
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->cvCollectStep:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1590
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->lltProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1592
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvPrevious:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1593
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvPrevious:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isCollecting:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isCalibrating:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->finishingFineTune:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 v1, 0x0

    .line 1595
    :goto_1
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->lltProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1596
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->lltProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1597
    iget v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    if-gt v1, v3, :cond_3

    .line 1598
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/qianhe/yct/R$color;->theme:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    .line 1600
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/qianhe/yct/R$color;->gray_light:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_2
    add-int/2addr v1, v0

    goto :goto_1

    .line 1604
    :cond_4
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvStepNumber:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->bucket_fine_tune_intro:I

    invoke-direct {p0, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->fromHtml(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1605
    iget v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->getStepContentIndex(I)I

    move-result v1

    .line 1606
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStepActionIds:[I

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 1607
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvStepAction:Landroid/widget/TextView;

    iget v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    add-int/2addr v3, v0

    invoke-direct {p0, v1, v3}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->getStepActionText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1609
    :cond_5
    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->ivStep:Lcom/qianhe/yct/view/NightAwareImageView;

    iget-object v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mStepImages:[I

    array-length v5, v3

    rem-int/2addr v1, v5

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/view/NightAwareImageView;->setImageResource(I)V

    .line 1610
    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvNext:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->collect_step:I

    iget v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    add-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v4

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1611
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->updateCollectButtonState()V

    return-void
.end method

.method private useSensorPitchForMovementCheck()Z
    .locals 2

    .line 465
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->getEffectiveParamsType()I

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


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1687
    iget v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isHeightInputDialogShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1688
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1689
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->handleExitBackPress()V

    :cond_0
    return v0

    .line 1693
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1652
    iget-object v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    .line 1653
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    .line 1654
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->onRealtimeDataUpdated()V

    :cond_0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 1668
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 0

    .line 0
    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 1673
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->bucket_fine_tune:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1674
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 1700
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->handleExitBackPress()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    .line 159
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 161
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 162
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LOG,INS.AHRS,ONTIME,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->ins_interval:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 163
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v2, "CALIBRATE,,CANCLE"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 166
    const-string v2, "currentExcavator"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 167
    const-string/jumbo v2, "smartCalibAutoOptimize"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mSmartCalibAutoOptimize:Z

    .line 168
    const-string/jumbo v2, "verifyModeValue"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mVerifyMode:I

    .line 169
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mSmartCalibAutoOptimize:Z

    const/4 v3, 0x6

    if-eqz v2, :cond_0

    .line 171
    iput v3, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFlagBit:I

    goto :goto_0

    .line 173
    :cond_0
    const-string v2, "fineTuneFlagBit"

    const/16 v4, 0x8

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v3, :cond_1

    if-ne p1, v4, :cond_2

    :cond_1
    move v4, p1

    .line 175
    :cond_2
    iput v4, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mFlagBit:I

    .line 178
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->initParamsTypeFromExcavator()V

    .line 179
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz p1, :cond_5

    .line 180
    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 181
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->deviceCalibParams:Ljava/lang/String;

    .line 183
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 184
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->deviceCalibParamsId:Ljava/lang/String;

    .line 187
    :cond_5
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->resolveFineTuneSessionFlow()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginFinetune(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v3, "CALIBRATE,,GET_PARAM"

    invoke-direct {v2, v1, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 190
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mSmartCalibAutoOptimize:Z

    if-eqz p1, :cond_6

    .line 191
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->logSmartCalibEntryParams()V

    .line 192
    iput v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    .line 193
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->initProgressBar()V

    .line 194
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->showFineTuneHeightDialog(Z)V

    goto :goto_1

    .line 195
    :cond_6
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isHostInstallAngleFineTune()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 196
    iput v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentStep:I

    .line 197
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->initProgressBar()V

    .line 198
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->showFineTuneHeightDialog(Z)V

    goto :goto_1

    .line 200
    :cond_7
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->initProgressBar()V

    .line 201
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->initNameStep()V

    .line 204
    :goto_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvNext:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvPrevious:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)V

    const-string v1, "calibration_failed"

    invoke-virtual {p1, v1, p0, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 222
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)V

    const-string v1, "back"

    invoke-virtual {p1, v1, p0, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 228
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$1;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)V

    const-string v1, "bucket_fine_tune_completed"

    invoke-virtual {p1, v1, p0, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 245
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->updateStepUi()V

    .line 248
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$2;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;Z)V

    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1679
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelCollectingDialog()V

    .line 1680
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 1681
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onFineTuneSensorInfo(Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    .line 528
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->isHostInstallAngleFineTune()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->useSensorPitchForMovementCheck()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 529
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->onRealtimeDataUpdated()V

    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1644
    iget-object v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    .line 1645
    iput-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    .line 1646
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->onRealtimeDataUpdated()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_2

    .line 1445
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1449
    :cond_0
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->saveHostCalibParamsToSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u667a\u80fd\u6821\u51c6 GET_PARAM\uff1a\u5df2\u5199\u5165 session\uff0ccalibParamsIdLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\uff0ccalibParamsLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    .line 1452
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1450
    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1472
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->waitingSetParam:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1473
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->waitingSetParam:Z

    .line 1474
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1475
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mCurrentSensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    iget-wide v3, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    .line 1476
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 1475
    invoke-static {p1, v0, v1, v2, v3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordApplyReply(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 1477
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->onFineTuneApplySuccess()V

    return-void

    .line 1479
    :cond_1
    sget p1, Lcom/qianhe/yct/R$string;->config_failed_please_check_params:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->onFineTuneFailed(Ljava/lang/String;)V

    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/yct/event/CreateBucketResponse;)V
    .locals 9
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1319
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    iget v1, p1, Lcom/qianhe/yct/event/CreateBucketResponse;->state:I

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/qianhe/yct/event/CreateBucketResponse;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1321
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

    .line 1325
    :cond_1
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 1326
    iput-wide v2, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    .line 1328
    :cond_2
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 1329
    iput-wide v2, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    .line 1331
    :cond_3
    iget-object v0, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1332
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object p1, p1, Lcom/qianhe/yct/event/CreateBucketResponse;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    iput-object p1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    .line 1334
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_5

    .line 1335
    iget-object v0, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->updateShovelById(Lcom/qianhe/baselib/bean/ShovelEntity;)I

    .line 1337
    :cond_5
    iget-object p1, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->selectShovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz p1, :cond_6

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    iget-object v2, p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;->mPendingBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_6

    .line 1338
    iget-wide v0, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    .line 1339
    iget-object v0, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    iput-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    :cond_6
    :goto_0
    return-void
.end method

.method protected showCalibrateTips()V
    .locals 1

    .line 351
    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$5;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$5;-><init>(Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;)V

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showCalibrateDialog(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)V

    return-void
.end method
