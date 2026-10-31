.class public Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "ExcavatorDetailActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

.field private excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private initBucketName:Ljava/lang/String;

.field private initMeasureParams:Ljava/lang/String;

.field private initName:Ljava/lang/String;

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

.field private mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

.field private modifyingExcavator:Z

.field private pendingRecalibrateBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

.field private recalibrateMode:Z

.field private recalibrateNewBucketName:Ljava/lang/String;

.field private recalibrateSnapshot:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private recalibrating:Z


# direct methods
.method public static synthetic $r8$lambda$-8AsebPif7CldihNJxW-nuVpRDU(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;ZLcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 522
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->isSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 523
    iget-object p1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    if-eqz p3, :cond_0

    iget-object v1, p3, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    :cond_0
    invoke-direct {p0, p1, p2, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->onRecalibrateSuccess(Ljava/lang/String;ZLjava/lang/String;)V

    return-void

    .line 525
    :cond_1
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    const/4 p2, 0x0

    .line 526
    iput-boolean p2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrating:Z

    .line 527
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u91cd\u65b0\u6807\u5b9a\u5931\u8d25\uff0ccode="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->code:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    .line 528
    invoke-direct {p0, p2, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->endRecalibrateSession(ZLjava/lang/String;)V

    .line 529
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->rollbackRecalibrateLocalState()V

    .line 530
    sget p1, Lcom/qianhe/yct/R$string;->calibration_failed_check_unit_or_params:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7BzQwtKz_33KPF9r8cLW6dfsURw(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 505
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 505
    invoke-static {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->makeToolParam(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_2

    .line 507
    :cond_1
    new-instance p1, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$$ExternalSyntheticLambda7;-><init>(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    if-nez p2, :cond_3

    .line 518
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recordRecalibratePreCalibEvents()V

    .line 520
    :cond_3
    iget-object p2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 520
    invoke-static {p2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->calibrateFromSavedInputs(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object p2

    .line 521
    new-instance v1, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$$ExternalSyntheticLambda8;-><init>(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;ZLcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JDKAyxhSWt6YUb-vLUtA9zzHr5g(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->finishRecalibrateAfterLog()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ms5vzQz3CfEEcRNBZ16qsOlOeTs(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;)V
    .locals 2

    .line 672
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 672
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 675
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    const/4 v0, 0x0

    .line 676
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrating:Z

    .line 677
    sget v1, Lcom/qianhe/yct/R$string;->config_success:I

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 678
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$QZ6LHxaQYczPfEO7F2VGcxGyb60(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;Landroid/view/View;)V
    .locals 1

    .line 218
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    .line 218
    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz p1, :cond_1

    .line 223
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initName:Ljava/lang/String;

    iput-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    .line 225
    :cond_1
    iget-object p0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public static synthetic $r8$lambda$Z1eTiZC8Kiq_tZiaxp5UBT3cVZs(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;)V
    .locals 1

    .line 620
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->showRecalibrateConfigFailedDialog()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$aM62L9uF4lUn0Ft8CrWaXAGR7OE(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;Landroid/view/View;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->startRecalibrate()V

    return-void
.end method

.method public static synthetic $r8$lambda$abDtmW7hNb-a3v8jNH3lHg1hKG4(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;)V
    .locals 3

    .line 570
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 570
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrating:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 573
    :cond_0
    new-instance v0, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "#CALIBRATE,,SET_PARAM,OK*3D\r\n"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->onRecalibrateSetParamEvent(Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$k44aMcudl0ZsF9-2luNX_Txk6Gk(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;)V
    .locals 3

    .line 508
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    const/4 v0, 0x0

    .line 509
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrating:Z

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u91cd\u65b0\u6807\u5b9a\u751f\u6210\u94f2\u6597\u53c2\u6570\u5931\u8d25\uff0ccode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->code:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 511
    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->endRecalibrateSession(ZLjava/lang/String;)V

    .line 512
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->rollbackRecalibrateLocalState()V

    .line 513
    sget v0, Lcom/qianhe/yct/R$string;->shovel_parameter_generation_failed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oR19_H7SJtuh4M2JUtAAmtCRXuc(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;Landroid/view/View;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->saveName()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;)Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetDefaultName(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDefaultName()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initName:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initMeasureParams:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initBucketName:Ljava/lang/String;

    return-void
.end method

.method private applyBucketMeasure(Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 28

    move-object/from16 v0, p0

    .line 822
    iget-object v1, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->resolveDiagramDistanceMeasure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 823
    iget-object v1, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 824
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNT()D

    move-result-wide v3

    iget-object v1, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAT()D

    move-result-wide v5

    iget-object v1, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNA()D

    move-result-wide v7

    iget-object v1, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 825
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v9

    iget-object v1, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getRy()D

    move-result-wide v11

    iget-object v1, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v13

    move-object/from16 v2, p1

    .line 823
    invoke-virtual/range {v2 .. v14}, Lcom/qianhe/baselib/bean/ShovelEntity;->setDistanceMeasureValues(DDDDDD)V

    return-void

    .line 827
    :cond_0
    iget-object v1, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG1()D

    move-result-wide v16

    iget-object v1, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG2()D

    move-result-wide v18

    iget-object v1, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG3()D

    move-result-wide v20

    iget-object v1, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 828
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v22

    iget-object v1, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getRy()D

    move-result-wide v24

    iget-object v1, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v26

    move-object/from16 v15, p1

    .line 827
    invoke-virtual/range {v15 .. v27}, Lcom/qianhe/baselib/bean/ShovelEntity;->setMeasureValues(DDDDDD)V

    return-void
.end method

.method private applyRecalibrateInputs()Z
    .locals 37

    move-object/from16 v0, p0

    .line 302
    iget-object v1, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 303
    :cond_0
    iget-object v1, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 304
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 305
    sget v1, Lcom/qianhe/yct/R$string;->name_empty:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/qianhe/yct/R$string;->use_default_values:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "detail_excavator_name"

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return v2

    .line 308
    :cond_2
    invoke-static {v1}, Lcom/qianhe/yct/utils/NoUnderscoreInputFilter;->containsUnderscore(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 309
    sget v1, Lcom/qianhe/yct/R$string;->name_cannot_contain_underscore:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return v2

    .line 312
    :cond_3
    iget-object v3, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v3, v1}, Lcom/qianhe/yct/db/DatabaseManager;->isExcavatorNameExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initName:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 313
    sget v1, Lcom/qianhe/yct/R$string;->excavator_name_already_exists:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return v2

    .line 316
    :cond_4
    iget-object v3, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v3, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v5, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v5}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v5

    if-ne v3, v5, :cond_5

    .line 317
    invoke-direct {v0, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->applyRecalibrateMode1Inputs(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 319
    :cond_5
    iget-object v3, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v3}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->isDistanceBucketMeasureFlow()Z

    move-result v3

    .line 320
    iget-object v5, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvHA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {v0, v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->readMeter(Landroid/widget/TextView;)D

    move-result-wide v5

    .line 321
    iget-object v7, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v7, v7, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvPq:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {v0, v7}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->readMeter(Landroid/widget/TextView;)D

    move-result-wide v7

    .line 322
    invoke-direct {v0, v5, v6}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->checkRequired(D)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-direct {v0, v7, v8}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->checkRequired(D)Z

    move-result v9

    if-nez v9, :cond_7

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_a

    .line 325
    :cond_7
    invoke-direct {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->getBucketParamsBinding()Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 326
    iget-object v12, v9, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvG1:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {v0, v12}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->readMeter(Landroid/widget/TextView;)D

    move-result-wide v12

    goto :goto_1

    :cond_8
    const-wide/16 v12, 0x0

    :goto_1
    if-eqz v9, :cond_9

    .line 327
    iget-object v14, v9, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvG2:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {v0, v14}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->readMeter(Landroid/widget/TextView;)D

    move-result-wide v14

    goto :goto_2

    :cond_9
    const-wide/16 v14, 0x0

    :goto_2
    const/16 v16, 0x0

    if-eqz v9, :cond_a

    .line 328
    iget-object v2, v9, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvG3:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {v0, v2}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->readMeter(Landroid/widget/TextView;)D

    move-result-wide v17

    move-wide/from16 v10, v17

    :goto_3
    const-wide/16 v17, 0x0

    goto :goto_4

    :cond_a
    const-wide/16 v10, 0x0

    goto :goto_3

    :goto_4
    if-eqz v9, :cond_b

    .line 329
    iget-object v2, v9, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvLRMode23:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {v0, v2}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->readMeter(Landroid/widget/TextView;)D

    move-result-wide v19

    move-wide/from16 v35, v19

    move-wide/from16 v19, v5

    move-wide/from16 v4, v35

    goto :goto_5

    :cond_b
    move-wide/from16 v19, v5

    move-wide/from16 v4, v17

    :goto_5
    if-eqz v9, :cond_c

    .line 330
    iget-object v6, v9, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvAB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {v0, v6}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->readMeter(Landroid/widget/TextView;)D

    move-result-wide v21

    move v6, v3

    move-wide/from16 v2, v21

    goto :goto_6

    :cond_c
    move v6, v3

    move-wide/from16 v2, v17

    .line 331
    :goto_6
    invoke-direct {v0, v12, v13}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->checkRequired(D)Z

    move-result v21

    if-eqz v21, :cond_14

    invoke-direct {v0, v14, v15}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->checkRequired(D)Z

    move-result v21

    if-eqz v21, :cond_14

    invoke-direct {v0, v10, v11}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->checkRequired(D)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 332
    invoke-direct {v0, v4, v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->checkRequired(D)Z

    move-result v21

    if-eqz v21, :cond_14

    invoke-direct {v0, v2, v3}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->checkRequired(D)Z

    move-result v21

    if-nez v21, :cond_d

    goto/16 :goto_a

    .line 335
    :cond_d
    iget-object v9, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAD:Lcom/qianhe/yct/view/NumericEditText;

    move-wide/from16 v25, v2

    invoke-direct {v0, v9}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->readMeter(Landroid/widget/TextView;)D

    move-result-wide v2

    .line 336
    iget-object v9, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvBC:Lcom/qianhe/yct/view/NumericEditText;

    move-wide/from16 v22, v4

    invoke-direct {v0, v9}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->readMeter(Landroid/widget/TextView;)D

    move-result-wide v4

    .line 337
    iget-object v9, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvCD:Lcom/qianhe/yct/view/NumericEditText;

    move-wide/from16 v27, v10

    invoke-direct {v0, v9}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->readMeter(Landroid/widget/TextView;)D

    move-result-wide v9

    .line 338
    invoke-direct {v0, v2, v3}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->checkRequired(D)Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-direct {v0, v4, v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->checkRequired(D)Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-direct {v0, v9, v10}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->checkRequired(D)Z

    move-result v11

    if-nez v11, :cond_e

    goto/16 :goto_a

    .line 341
    :cond_e
    iget-object v11, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvDx:Lcom/qianhe/yct/view/NumericEditText;

    move-wide/from16 v29, v12

    invoke-direct {v0, v11}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->readMeter(Landroid/widget/TextView;)D

    move-result-wide v11

    if-eqz v6, :cond_11

    cmpl-double v6, v11, v17

    if-eqz v6, :cond_f

    .line 343
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    const-wide v31, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v6, v17, v31

    if-ltz v6, :cond_10

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    const-wide/high16 v31, 0x4024000000000000L    # 10.0

    cmpl-double v6, v17, v31

    if-lez v6, :cond_f

    goto :goto_7

    :cond_f
    move-wide/from16 v33, v4

    move-wide/from16 v31, v9

    move-wide/from16 v17, v14

    goto :goto_8

    .line 344
    :cond_10
    :goto_7
    sget v1, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v2, v9}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return v16

    .line 348
    :cond_11
    iget-object v6, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAy:Lcom/qianhe/yct/view/NumericEditText;

    move-wide/from16 v17, v14

    invoke-direct {v0, v6}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->readMeter(Landroid/widget/TextView;)D

    move-result-wide v13

    .line 349
    iget-object v6, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAx:Lcom/qianhe/yct/view/NumericEditText;

    move-wide/from16 v31, v9

    invoke-direct {v0, v6}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->readMeter(Landroid/widget/TextView;)D

    move-result-wide v9

    .line 350
    iget-object v6, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvBD:Lcom/qianhe/yct/view/NumericEditText;

    move-wide/from16 v33, v4

    invoke-direct {v0, v6}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->readMeter(Landroid/widget/TextView;)D

    move-result-wide v4

    .line 351
    invoke-direct {v0, v13, v14}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->checkRequired(D)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-direct {v0, v9, v10}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->checkRequired(D)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-direct {v0, v11, v12}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->checkRequired(D)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-direct {v0, v4, v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->checkRequired(D)Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_a

    .line 354
    :cond_12
    iget-object v6, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-wide v13, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    .line 355
    iput-wide v9, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    .line 356
    iput-wide v4, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    .line 358
    :goto_8
    iget-object v4, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object v1, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    move-wide/from16 v5, v19

    .line 359
    iput-wide v5, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    .line 360
    iput-wide v7, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    .line 361
    iput-wide v11, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    .line 362
    iput-wide v2, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    move-wide/from16 v1, v33

    .line 363
    iput-wide v1, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    move-wide/from16 v1, v31

    .line 364
    iput-wide v1, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    .line 365
    invoke-virtual {v4}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->resolveDiagramDistanceMeasure()Z

    move-result v1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    if-eqz v1, :cond_13

    .line 366
    iget-object v14, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    div-double v21, v22, v2

    move-wide/from16 v23, v21

    move-wide/from16 v19, v27

    move-wide/from16 v15, v29

    invoke-virtual/range {v14 .. v26}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setDistanceMeasureValues(DDDDDD)V

    goto :goto_9

    :cond_13
    move-wide/from16 v19, v27

    move-wide/from16 v15, v29

    .line 368
    iget-object v14, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    div-double v21, v22, v2

    move-wide/from16 v23, v21

    invoke-virtual/range {v14 .. v26}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setMeasureValues(DDDDDD)V

    .line 370
    :goto_9
    iget-object v1, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->syncExcavatorParamsToJson()V

    .line 371
    iget-object v1, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->syncParamsToJson()V

    const/4 v1, 0x1

    return v1

    :cond_14
    :goto_a
    return v16
.end method

.method private applyRecalibrateMode1Inputs(Ljava/lang/String;)Z
    .locals 9

    .line 376
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAH:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->readMeter(Landroid/widget/TextView;)D

    move-result-wide v0

    .line 377
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAR:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v2}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->readMeter(Landroid/widget/TextView;)D

    move-result-wide v2

    .line 378
    iget-object v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAL:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v4}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->readMeter(Landroid/widget/TextView;)D

    move-result-wide v4

    .line 379
    iget-object v6, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvLRMode1:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v6}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->readMeter(Landroid/widget/TextView;)D

    move-result-wide v6

    .line 380
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->checkRequired(D)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->checkRequired(D)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->checkRequired(D)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, v6, v7}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->checkRequired(D)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    iget-object v8, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object p1, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    .line 384
    iput-wide v0, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    .line 385
    iput-wide v2, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    .line 386
    iput-wide v4, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    .line 387
    iput-wide v6, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private bindBucketParams(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 4

    .line 1042
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->getBucketParamsBinding()Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1044
    :cond_0
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesAutoGenerateParams()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    .line 1045
    iget-object v1, v0, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->lltManualBucketParams:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1046
    iget-object v1, v0, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->lltAutoBucketParams:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1047
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->showAutoBucketParams(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;)V

    return-void

    .line 1049
    :cond_1
    iget-object v1, v0, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->lltManualBucketParams:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1050
    iget-object v1, v0, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->lltAutoBucketParams:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1051
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->showManualBucketParams(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;)V

    return-void
.end method

.method private bindMode23Params(I)V
    .locals 14

    .line 156
    iget-boolean v7, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrateMode:Z

    .line 157
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->isDistanceBucketMeasureFlow()Z

    move-result v8

    const/4 v9, 0x3

    const-wide/16 v10, 0x0

    if-nez v7, :cond_0

    .line 158
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    cmpl-double v4, v1, v10

    if-eqz v4, :cond_1

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvHA:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    invoke-virtual {p0, p1, v4, v5, v9}, Lcom/qianhe/yct/base/BaseActivity;->formatMetertoOther(IDI)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-nez v7, :cond_2

    .line 161
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    cmpl-double v4, v1, v10

    if-eqz v4, :cond_3

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvPq:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    invoke-virtual {p0, p1, v4, v5, v9}, Lcom/qianhe/yct/base/BaseActivity;->formatMetertoOther(IDI)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->bindBucketParams(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 165
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v2, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->lltAy:Landroid/widget/LinearLayout;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAy:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v7, :cond_4

    if-nez v8, :cond_4

    const/4 v6, 0x1

    :goto_0
    move-object v0, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p0

    move v3, p1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    :goto_1
    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;IDZ)V

    .line 166
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v2, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->lltAx:Landroid/widget/LinearLayout;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAx:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v3, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    if-eqz v7, :cond_5

    if-nez v8, :cond_5

    const/4 v6, 0x1

    :goto_2
    move-object v0, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p0

    move v3, p1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :goto_3
    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;IDZ)V

    .line 167
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v2, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->lltBD:Landroid/widget/LinearLayout;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvBD:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v3, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    if-eqz v7, :cond_6

    if-nez v8, :cond_6

    const/4 v6, 0x1

    :goto_4
    move-object v0, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p0

    move v3, p1

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    goto :goto_4

    :goto_5
    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;IDZ)V

    .line 168
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->lltDx:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    if-nez v7, :cond_7

    .line 169
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    cmpl-double v4, v1, v10

    if-eqz v4, :cond_8

    .line 170
    :cond_7
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvDx:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    invoke-virtual {p0, p1, v4, v5, v9}, Lcom/qianhe/yct/base/BaseActivity;->formatMetertoOther(IDI)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    if-nez v7, :cond_9

    .line 172
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    cmpl-double v4, v1, v10

    if-eqz v4, :cond_a

    .line 173
    :cond_9
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAD:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    invoke-virtual {p0, p1, v4, v5, v9}, Lcom/qianhe/yct/base/BaseActivity;->formatMetertoOther(IDI)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    if-nez v7, :cond_b

    .line 175
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    cmpl-double v4, v1, v10

    if-eqz v4, :cond_c

    .line 176
    :cond_b
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvBC:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    invoke-virtual {p0, p1, v4, v5, v9}, Lcom/qianhe/yct/base/BaseActivity;->formatMetertoOther(IDI)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    if-nez v7, :cond_e

    .line 178
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    cmpl-double v4, v1, v10

    if-eqz v4, :cond_d

    goto :goto_6

    :cond_d
    return-void

    .line 179
    :cond_e
    :goto_6
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvCD:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    invoke-virtual {p0, p1, v4, v5, v9}, Lcom/qianhe/yct/base/BaseActivity;->formatMetertoOther(IDI)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private buildNewRecalibrateBucket(Ljava/lang/String;)Lcom/qianhe/baselib/bean/ShovelEntity;
    .locals 5

    .line 698
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrateNewBucketName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrateNewBucketName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->generateRecalibrateBucketName()Ljava/lang/String;

    move-result-object v0

    .line 700
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 703
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 704
    new-instance v3, Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {v3}, Lcom/qianhe/baselib/bean/ShovelEntity;-><init>()V

    .line 705
    iput-object v0, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    .line 706
    invoke-direct {p0, v3}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->applyBucketMeasure(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 707
    iput-object p1, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 708
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    iput p1, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    .line 709
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->getDisplayUnit()I

    move-result p1

    iput p1, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->showUnit:I

    .line 710
    iput-wide v1, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->createTime:J

    .line 711
    iput-wide v1, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->updateTime:J

    const-wide/16 v0, 0x1

    .line 712
    iput-wide v0, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    return-object v3
.end method

.method private checkRequired(D)Z
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-double v4, p1, v0

    if-nez v4, :cond_0

    .line 393
    sget p1, Lcom/qianhe/yct/R$string;->config_empty:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return v2

    .line 396
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v6, v0, v4

    if-ltz v6, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpl-double v4, p1, v0

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 397
    :cond_2
    :goto_0
    sget p1, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return v2
.end method

.method private static copyExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 663
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 664
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p0
.end method

.method private enableRecalibrateEditing()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAH:Lcom/qianhe/yct/view/NumericEditText;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setNumericEditable(Landroid/widget/TextView;Z)V

    .line 185
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAR:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setNumericEditable(Landroid/widget/TextView;Z)V

    .line 186
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAL:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setNumericEditable(Landroid/widget/TextView;Z)V

    .line 187
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvLRMode1:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setNumericEditable(Landroid/widget/TextView;Z)V

    .line 188
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvHA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setNumericEditable(Landroid/widget/TextView;Z)V

    .line 189
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvPq:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setNumericEditable(Landroid/widget/TextView;Z)V

    .line 190
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAy:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setNumericEditable(Landroid/widget/TextView;Z)V

    .line 191
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAx:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setNumericEditable(Landroid/widget/TextView;Z)V

    .line 192
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvDx:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setNumericEditable(Landroid/widget/TextView;Z)V

    .line 193
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAD:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setNumericEditable(Landroid/widget/TextView;Z)V

    .line 194
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvBC:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setNumericEditable(Landroid/widget/TextView;Z)V

    .line 195
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvCD:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setNumericEditable(Landroid/widget/TextView;Z)V

    .line 196
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvBD:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setNumericEditable(Landroid/widget/TextView;Z)V

    .line 197
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->getBucketParamsBinding()Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v2, v0, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvG1:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v2, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setNumericEditable(Landroid/widget/TextView;Z)V

    .line 200
    iget-object v2, v0, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvG2:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v2, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setNumericEditable(Landroid/widget/TextView;Z)V

    .line 201
    iget-object v2, v0, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvG3:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v2, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setNumericEditable(Landroid/widget/TextView;Z)V

    .line 202
    iget-object v2, v0, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvLRMode23:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v2, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setNumericEditable(Landroid/widget/TextView;Z)V

    .line 203
    iget-object v0, v0, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvAB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setNumericEditable(Landroid/widget/TextView;Z)V

    :cond_0
    return-void
.end method

.method private endRecalibrateSession(ZLjava/lang/String;)V
    .locals 3

    .line 974
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->clearAwaitSetParamReply()V

    .line 975
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 978
    :cond_0
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 979
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ok"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 980
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 981
    :cond_1
    const-string v1, ""

    .line 980
    :goto_0
    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 983
    const-string v1, "calib_params_id"

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    :cond_2
    invoke-static {p1, v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->endSession(ZLcom/google/gson/JsonObject;)V

    return-void
.end method

.method private finishRecalibrateAfterLog()V
    .locals 1

    .line 671
    new-instance v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private generateRecalibrateBucketName()Ljava/lang/String;
    .locals 6

    .line 737
    sget v0, Lcom/qianhe/yct/R$string;->bucket_recalibrate_name_mark:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 738
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    const-string v0, "(\u91cd\u65b0\u6807\u5b9a)"

    .line 741
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initBucketName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initBucketName:Ljava/lang/String;

    goto :goto_0

    .line 742
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, ""

    .line 743
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 744
    sget v1, Lcom/qianhe/yct/R$string;->shovel:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 746
    :cond_3
    invoke-static {v1, v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->stripRecalibrateNameMark(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 747
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 748
    sget v1, Lcom/qianhe/yct/R$string;->shovel:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 750
    :cond_4
    const-string v2, "_"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 751
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 753
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryShovelByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    .line 755
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v4, :cond_5

    .line 756
    iget-object v5, v4, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_1

    .line 759
    :cond_6
    iget-object v4, v4, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->parseRecalibrateSerial(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lt v4, v2, :cond_5

    add-int/lit8 v4, v4, 0x1

    move v2, v4

    goto :goto_1

    .line 765
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    .line 767
    :goto_2
    iget-object v5, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v1}, Lcom/qianhe/yct/db/DatabaseManager;->isShovelNameExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x32

    if-ge v4, v5, :cond_8

    add-int/lit8 v2, v2, 0x1

    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 772
    :cond_8
    iget-object v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v4, v1}, Lcom/qianhe/yct/db/DatabaseManager;->isShovelNameExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    return-object v1
.end method

.method private getBucketParamsBinding()Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;
    .locals 1

    .line 1073
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->bucketParams:Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDisplayUnit()I
    .locals 1

    .line 84
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/manage/AppConfigManager;->getUnitPreference()I

    move-result v0

    return v0
.end method

.method private hasRecalibrateChanges()Z
    .locals 8

    .line 405
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 406
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    .line 410
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAH:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    invoke-direct {p0, v0, v4, v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAR:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    .line 411
    invoke-direct {p0, v0, v4, v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAL:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    .line 412
    invoke-direct {p0, v0, v4, v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvLRMode1:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    .line 413
    invoke-direct {p0, v0, v4, v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return v3

    :cond_3
    :goto_1
    return v1

    .line 415
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->isDistanceBucketMeasureFlow()Z

    move-result v0

    .line 416
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvHA:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    invoke-direct {p0, v2, v4, v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvPq:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    .line 417
    invoke-direct {p0, v2, v4, v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvDx:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    .line 418
    invoke-direct {p0, v2, v4, v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAD:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    .line 419
    invoke-direct {p0, v2, v4, v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvBC:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    .line 420
    invoke-direct {p0, v2, v4, v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvCD:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    .line 421
    invoke-direct {p0, v2, v4, v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_3

    :cond_5
    if-nez v0, :cond_7

    .line 424
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAy:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    invoke-direct {p0, v0, v4, v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAx:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    .line 425
    invoke-direct {p0, v0, v4, v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvBD:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    .line 426
    invoke-direct {p0, v0, v4, v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    return v1

    .line 429
    :cond_7
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->getBucketParamsBinding()Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;

    move-result-object v0

    if-nez v0, :cond_8

    return v3

    .line 433
    :cond_8
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->resolveDiagramDistanceMeasure()Z

    move-result v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    if-eqz v2, :cond_b

    .line 434
    iget-object v2, v0, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvG1:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v6, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v6}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNT()D

    move-result-wide v6

    invoke-direct {p0, v2, v6, v7}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvG2:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v6, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 435
    invoke-virtual {v6}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAT()D

    move-result-wide v6

    invoke-direct {p0, v2, v6, v7}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvG3:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v6, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 436
    invoke-virtual {v6}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNA()D

    move-result-wide v6

    invoke-direct {p0, v2, v6, v7}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvLRMode23:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v6, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 437
    invoke-virtual {v6}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v6

    mul-double v6, v6, v4

    invoke-direct {p0, v2, v6, v7}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v0, v0, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvAB:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 438
    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    return v3

    :cond_a
    :goto_2
    return v1

    .line 440
    :cond_b
    iget-object v2, v0, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvG1:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v6, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v6}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG1()D

    move-result-wide v6

    invoke-direct {p0, v2, v6, v7}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvG2:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v6, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 441
    invoke-virtual {v6}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG2()D

    move-result-wide v6

    invoke-direct {p0, v2, v6, v7}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvG3:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v6, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 442
    invoke-virtual {v6}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG3()D

    move-result-wide v6

    invoke-direct {p0, v2, v6, v7}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvLRMode23:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v6, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 443
    invoke-virtual {v6}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v6

    mul-double v6, v6, v4

    invoke-direct {p0, v2, v6, v7}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v0, v0, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvAB:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 444
    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sameMeter(Landroid/widget/TextView;D)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_3

    :cond_c
    return v3

    :cond_d
    :goto_3
    return v1
.end method

.method private hideSoftInput()V
    .locals 3

    .line 1020
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 1021
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1022
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private initNameView()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NoUnderscoreInputFilter;->apply(Landroid/widget/EditText;)V

    .line 217
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->ivReset:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$1;-><init>(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;)V

    const-string v2, "detail_excavator_name"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 244
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method private static insFromRpy(DDD)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 1

    .line 989
    new-instance v0, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    .line 990
    iput-wide p0, v0, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    .line 991
    iput-wide p2, v0, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    .line 992
    iput-wide p4, v0, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    return-object v0
.end method

.method private insertNewRecalibrateBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 720
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 721
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->insertShovel(Lcom/qianhe/baselib/bean/ShovelEntity;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    .line 724
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->insertShovel(Lcom/qianhe/baselib/bean/ShovelEntity;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    .line 727
    :cond_1
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u91cd\u65b0\u6807\u5b9a\u65b0\u5efa\u94f2\u6597\u5931\u8d25\uff0cname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    return-void

    .line 731
    :cond_2
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 732
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object p1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u91cd\u65b0\u6807\u5b9a\u65b0\u5efa\u94f2\u6597\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\uff0clocalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private liveSensor()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;
    .locals 1

    .line 852
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v0

    return-object v0
.end method

.method private logExcavatorEntity(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 5

    .line 1057
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 1058
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesAutoGenerateParams()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "autoGenerateParams"

    const-string v4, "measureParams"

    if-eqz v2, :cond_0

    .line 1060
    :try_start_1
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1061
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAutoGenerateParamsObj()Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 1063
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1064
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1066
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ExcavatorEntity: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 1068
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExcavatorEntity log failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method private onRecalibrateSetParamEvent(Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;)V
    .locals 7

    .line 583
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrating:Z

    if-nez v0, :cond_1

    .line 584
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 586
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v3, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    .line 585
    invoke-static {p1, v2, v3, v0, v1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->handleSetParamReplyIfWaiting(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)Z

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 589
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 594
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->persistRecalibrateResult()V

    .line 595
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v4

    .line 596
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v3, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    new-instance v6, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;)V

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->handleSetParamReplyIfWaiting(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 600
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->finishRecalibrateAfterLog()V

    :cond_2
    return-void

    .line 591
    :cond_3
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->onRecalibrateSetParamFailed(Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;)V

    return-void
.end method

.method private onRecalibrateSetParamFailed(Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;)V
    .locals 5

    .line 605
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v0

    .line 606
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->clearAwaitSetParamReply()V

    .line 607
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 609
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    .line 608
    invoke-static {p1, v3, v4, v0, v1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordSetParamReply(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 610
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->endRecalibrateSession(ZLjava/lang/String;)V

    .line 612
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->rollbackRecalibrateLocalState()V

    .line 613
    iput-boolean v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrating:Z

    .line 614
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 615
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 619
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 616
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->showRecalibrateConfigFailedDialog()V

    return-void
.end method

.method private onRecalibrateSuccess(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 537
    const-string/jumbo v0, "\u6316\u673a\u91cd\u65b0\u6807\u5b9a\u6210\u529f"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 540
    invoke-direct {p0, p3}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->buildNewRecalibrateBucket(Ljava/lang/String;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->pendingRecalibrateBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 544
    invoke-direct {p0, p3}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->resolveBucketForCalibId(Ljava/lang/String;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object p2

    .line 546
    :cond_1
    iget-object p3, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget p3, p3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v0, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v0

    if-ne p3, v0, :cond_2

    .line 547
    iget-object p2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {p2}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->buildCalibParamsId(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 548
    :cond_2
    iget-object p3, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {p3, p2}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->buildCalibParamsId(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;)Ljava/lang/String;

    move-result-object p2

    .line 549
    :goto_1
    iget-object p3, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object p2, p3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 550
    iput-object p1, p3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    .line 551
    invoke-virtual {p3}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->syncCalibSoInputsToJson()V

    .line 552
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result p3

    if-nez p3, :cond_3

    .line 553
    iget-object p3, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const-string v0, "local"

    invoke-static {p0, p3, v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginFreshForExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V

    .line 555
    :cond_3
    invoke-direct {p0, p2, p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recordRecalibrateGoAndSetParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-direct {p0, p2, p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->syncCalibParamsToDevice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 557
    iget-object p3, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v0, p3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    iget-object p3, p3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-static {v0, v1, p3}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->updateSessionExcavator(JLjava/lang/String;)V

    .line 558
    sget p3, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 559
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 560
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "ok"

    invoke-virtual {p3, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 561
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, ""

    :goto_2
    const-string v1, "name"

    invoke-virtual {p3, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v0, "calib_params_id"

    invoke-virtual {p3, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 564
    invoke-static {p3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->scheduleEndAfterSetParamReply(Lcom/google/gson/JsonObject;)V

    return-void

    .line 567
    :cond_5
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->isDemo()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 568
    invoke-static {p3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->scheduleEndAfterSetParamReply(Lcom/google/gson/JsonObject;)V

    .line 569
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$$ExternalSyntheticLambda9;-><init>(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 578
    :cond_6
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->persistRecalibrateResult()V

    .line 579
    new-instance p1, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;)V

    const/4 p2, 0x1

    invoke-static {p2, p3, p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->endSession(ZLcom/google/gson/JsonObject;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static parseRecalibrateSerial(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 802
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 805
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 806
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    return v0

    .line 809
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 810
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 815
    :cond_3
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_4
    :goto_1
    return v1
.end method

.method private persistRecalibrateResult()V
    .locals 6

    .line 631
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->pendingRecalibrateBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 632
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->insertNewRecalibrateBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 633
    iput-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->pendingRecalibrateBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-nez v0, :cond_1

    return-void

    .line 638
    :cond_1
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    .line 639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->updateTime:J

    .line 640
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/db/DatabaseManager;->updateExcavatorById(Lcom/qianhe/baselib/bean/ExcavatorEntity;)I

    const/4 v0, 0x1

    .line 641
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->modifyingExcavator:Z

    .line 642
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 643
    iput-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrateSnapshot:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-void
.end method

.method private readMeter(Landroid/widget/TextView;)D
    .locals 6

    .line 454
    instance-of v0, p1, Lcom/qianhe/yct/view/NumericEditText;

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 455
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->getDisplayUnit()I

    move-result v0

    check-cast p1, Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/qianhe/yct/base/BaseActivity;->formatOtherToMeter(IDI)D

    move-result-wide v0

    return-wide v0

    :cond_0
    if-eqz p1, :cond_1

    .line 457
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    if-eqz p1, :cond_3

    .line 458
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 462
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->getDisplayUnit()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/qianhe/yct/base/BaseActivity;->formatOtherToMeter(IDI)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_3
    :goto_1
    return-wide v2
.end method

.method private recordRecalibrateGoAndSetParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 954
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->liveSensor()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v4

    .line 955
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 956
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v2

    const-string v3, "cmd"

    if-ne v0, v2, :cond_0

    .line 957
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildMode1GoCmd(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->isDistanceBucketMeasureFlow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 959
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->countSweepExcludingDc([[DI)I

    move-result v0

    .line 960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOCAL,caliMode21,sweep="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",HA="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",phaseToHang="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->phaseToHang:D

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 964
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildMode23GoCmd(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v3, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    const/4 v5, 0x0

    const-string v0, "GO"

    invoke-static/range {v0 .. v5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 968
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 969
    const-string v0, "set_param"

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildSetParam(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 970
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v3, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    const-string v0, "SET_PARAM"

    invoke-static/range {v0 .. v5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void
.end method

.method private recordRecalibrateMode1Input()V
    .locals 4

    .line 848
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->liveSensor()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordMode1Input(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    return-void
.end method

.method private recordRecalibrateMode23Input()V
    .locals 4

    .line 897
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->liveSensor()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordMode23Input(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    return-void
.end method

.method private recordRecalibrateMode4CollectAndInput()V
    .locals 20

    move-object/from16 v0, p0

    .line 901
    invoke-direct {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->liveSensor()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v4

    .line 902
    iget-object v1, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v7, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    .line 903
    iget-object v8, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reSensorAttitudes:[[D

    .line 904
    const-string/jumbo v1, "sweep3"

    const-string/jumbo v2, "sweep4"

    const-string/jumbo v3, "sweep1"

    const-string/jumbo v5, "sweep2"

    filled-new-array {v3, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eqz v7, :cond_2

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 906
    :goto_0
    array-length v1, v7

    if-ge v13, v1, :cond_2

    const/4 v1, 0x4

    if-ge v13, v1, :cond_2

    .line 907
    aget-object v1, v7, v13

    if-eqz v1, :cond_1

    .line 908
    array-length v2, v1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    goto :goto_1

    .line 911
    :cond_0
    aget-wide v14, v1, v12

    const/4 v2, 0x1

    aget-wide v16, v1, v2

    aget-wide v18, v1, v11

    invoke-static/range {v14 .. v19}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->insFromRpy(DDD)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v1

    .line 912
    invoke-static {v8, v13}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->sensorFromAttitudes([[DI)Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v2

    .line 913
    iget-object v3, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->phaseToHang:D

    invoke-static {v10, v1, v2, v5, v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildCollectSample(Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;D)Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 915
    aget-object v1, v9, v13

    iget-object v2, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v3, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCollect(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Lcom/google/gson/JsonObject;)V

    :cond_1
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 918
    :cond_2
    iget-object v1, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v12, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceRoll:D

    iget-wide v14, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDevicePitch:D

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceHeading:D

    move-wide/from16 v16, v1

    invoke-static/range {v12 .. v17}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->insFromRpy(DDD)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v1

    .line 920
    new-instance v12, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    iget-object v2, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v14, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorRoll:D

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorPitch:D

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorHeading:D

    const/4 v13, 0x0

    move-wide/from16 v18, v2

    move-wide/from16 v16, v5

    invoke-direct/range {v12 .. v19}, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;-><init>(IDDD)V

    .line 922
    iget-object v2, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->phaseToHang:D

    invoke-static {v10, v1, v12, v2, v3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildCollectSample(Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;D)Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 924
    iget-object v2, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v3, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    const/4 v5, 0x0

    const-string v1, "hab"

    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCollect(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Lcom/google/gson/JsonObject;)V

    .line 926
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 927
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 928
    const-string v3, "algo"

    const-string v5, "caliMode21"

    invoke-virtual {v1, v3, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iget-object v3, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->phaseToHang:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v5, "phase_to_hang"

    invoke-virtual {v1, v5, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 930
    iget-object v3, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v5, "ha"

    invoke-virtual {v1, v5, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 931
    iget-object v3, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v5, "hy"

    invoke-virtual {v1, v5, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 932
    iget-object v3, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v5, "dx"

    invoke-virtual {v1, v5, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 933
    iget-object v3, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v5, "ad"

    invoke-virtual {v1, v5, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 934
    iget-object v3, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v5, "cd"

    invoke-virtual {v1, v5, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 935
    iget-object v3, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v5, "bc"

    invoke-virtual {v1, v5, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 936
    iget-object v3, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v3, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    invoke-static {v3, v11}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildSweepArrayExcludingDc([[DI)Lcom/google/gson/JsonArray;

    move-result-object v3

    const-string/jumbo v5, "sweep"

    invoke-virtual {v1, v5, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 938
    iget-object v3, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceRoll:D

    iget-wide v7, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDevicePitch:D

    iget-wide v9, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceHeading:D

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v5, "a_device"

    invoke-virtual {v1, v5, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 940
    iget-object v3, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDeviceRoll:D

    iget-wide v7, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDevicePitch:D

    iget-wide v9, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDeviceHeading:D

    invoke-static/range {v5 .. v11}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v5, "b_device"

    invoke-virtual {v1, v5, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 942
    iget-object v3, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorRoll:D

    iget-wide v7, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorPitch:D

    iget-wide v9, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorHeading:D

    invoke-static/range {v5 .. v11}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v5, "b_sensor"

    invoke-virtual {v1, v5, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 944
    iget-object v3, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDeviceRoll:D

    iget-wide v7, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDevicePitch:D

    iget-wide v9, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDeviceHeading:D

    invoke-static/range {v5 .. v11}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v5, "dc_device"

    invoke-virtual {v1, v5, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 946
    iget-object v3, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorRoll:D

    iget-wide v7, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorPitch:D

    iget-wide v9, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorHeading:D

    invoke-static/range {v5 .. v11}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildRpy(DDDZ)Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v5, "dc_sensor"

    invoke-virtual {v1, v5, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 948
    iget-object v3, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v3}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->buildToolInputJson(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string/jumbo v5, "tool"

    invoke-virtual {v1, v5, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 949
    const-string v3, "input"

    invoke-virtual {v2, v3, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 950
    iget-object v3, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

    move-object v5, v4

    iget-object v4, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    const/4 v6, 0x0

    const-string v1, "INPUT"

    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void
.end method

.method private recordRecalibratePreCalibEvents()V
    .locals 2

    .line 834
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    .line 835
    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 836
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recordRecalibrateMode1Input()V

    return-void

    .line 839
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recordRecalibrateToolEvents()V

    .line 840
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->isDistanceBucketMeasureFlow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recordRecalibrateMode4CollectAndInput()V

    return-void

    .line 843
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recordRecalibrateMode23Input()V

    return-void
.end method

.method private recordRecalibrateToolEvents()V
    .locals 11

    .line 856
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->liveSensor()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v4

    .line 857
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 858
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 859
    const-string v2, "algo"

    const-string/jumbo v3, "tool"

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrateNewBucketName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 861
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrateNewBucketName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initBucketName:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 862
    :goto_0
    const-string v3, "bucket"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesDistanceMeasure()Z

    move-result v2

    const-string v3, "lr"

    const-string v5, "ab"

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    if-eqz v2, :cond_2

    .line 864
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 865
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAT()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v5, "at"

    invoke-virtual {v0, v5, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 866
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNA()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v5, "an"

    invoke-virtual {v0, v5, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 867
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNT()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v5, "nt"

    invoke-virtual {v0, v5, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 868
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v5

    mul-double v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_1

    .line 870
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG1()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v6, "g1"

    invoke-virtual {v0, v6, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 871
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG2()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v6, "g2"

    invoke-virtual {v0, v6, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 872
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG3()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v6, "g3"

    invoke-virtual {v0, v6, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 873
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v9

    mul-double v9, v9, v7

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 874
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 876
    :goto_1
    const-string v2, "input"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 877
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v3, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v0, "INPUT"

    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Z)V

    .line 879
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 880
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesDistanceMeasure()Z

    move-result v0

    const-string v2, ",LR="

    const-string v3, "cmd"

    if-eqz v0, :cond_3

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOCAL,tool,fromDistance,AB="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v5}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ",AT="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 882
    invoke-virtual {v5}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAT()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ",AN="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 883
    invoke-virtual {v5}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNA()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ",NT="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 884
    invoke-virtual {v5}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNT()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 885
    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v5

    mul-double v5, v5, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 881
    invoke-virtual {v1, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 887
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOCAL,tool,fromMeasure,G1="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v5}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG1()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ",G2="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 888
    invoke-virtual {v5}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG2()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ",G3="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 889
    invoke-virtual {v5}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG3()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 890
    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v5

    mul-double v5, v5, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",AB="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 891
    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 887
    invoke-virtual {v1, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    :goto_2
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v3, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v0, "MAKE_TOOL"

    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;Z)V

    return-void
.end method

.method private resolveBucketForCalibId(Ljava/lang/String;)Lcom/qianhe/baselib/bean/ShovelEntity;
    .locals 2

    .line 683
    new-instance v0, Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ShovelEntity;-><init>()V

    .line 684
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initBucketName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initBucketName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    .line 685
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 686
    iput-object p1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    return-object v0

    .line 687
    :cond_1
    iget-object p1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 688
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryShovelByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 689
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 690
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    iput-object p1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method private rollbackRecalibrateLocalState()V
    .locals 2

    const/4 v0, 0x0

    .line 647
    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->pendingRecalibrateBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 648
    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrateNewBucketName:Ljava/lang/String;

    .line 649
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrateSnapshot:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v1, :cond_1

    .line 650
    iput-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v1, :cond_0

    .line 652
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->loadCalibSoInputsFromJson()V

    .line 654
    :cond_0
    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrateSnapshot:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    :cond_1
    return-void
.end method

.method private sameMeter(Landroid/widget/TextView;D)Z
    .locals 3

    .line 448
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->getDisplayUnit()I

    move-result v0

    .line 449
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->getDisplayUnit()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, p2, p3, v2}, Lcom/qianhe/yct/base/BaseActivity;->formatMetertoOther(IDI)D

    move-result-wide p2

    .line 448
    invoke-virtual {p0, v0, p2, p3, v2}, Lcom/qianhe/yct/base/BaseActivity;->formatOtherToMeter(IDI)D

    move-result-wide p2

    .line 450
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->readMeter(Landroid/widget/TextView;)D

    move-result-wide v0

    sub-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double p3, p1, v0

    if-gez p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private saveName()V
    .locals 6

    .line 269
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-nez v0, :cond_0

    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 271
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    .line 272
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    sget v0, Lcom/qianhe/yct/R$string;->name_empty:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->use_default_values:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "detail_excavator_name"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void

    .line 276
    :cond_2
    invoke-static {v0}, Lcom/qianhe/yct/utils/NoUnderscoreInputFilter;->containsUnderscore(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 277
    sget v0, Lcom/qianhe/yct/R$string;->name_cannot_contain_underscore:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 280
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->isExcavatorNameExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 281
    sget v0, Lcom/qianhe/yct/R$string;->excavator_name_already_exists:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 284
    :cond_4
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 285
    sget v0, Lcom/qianhe/yct/R$string;->no_modify_content:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 288
    :cond_5
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->hideSoftInput()V

    .line 289
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/BucketSwitchHelper;->refreshCalibParamsIdAfterExcavatorRenamed(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 290
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->updateTime:J

    .line 292
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->updateExcavatorById(Lcom/qianhe/baselib/bean/ExcavatorEntity;)I

    const/4 v1, 0x1

    .line 293
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->modifyingExcavator:Z

    .line 294
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 295
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->syncCalibParamsToDevice(Ljava/lang/String;Ljava/lang/String;)Z

    .line 296
    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initName:Ljava/lang/String;

    .line 297
    sget v0, Lcom/qianhe/yct/R$string;->modify_success:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 298
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static sensorFromAttitudes([[DI)Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;
    .locals 10

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    .line 997
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    array-length p1, p0

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 999
    new-instance v1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    const/4 p1, 0x0

    aget-wide v3, p0, p1

    const/4 p1, 0x1

    aget-wide v5, p0, p1

    const/4 p1, 0x2

    aget-wide v7, p0, p1

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;-><init>(IDDD)V

    return-object v1

    .line 1001
    :cond_0
    new-instance v2, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;-><init>(IDDD)V

    return-object v2
.end method

.method private setDefaultName()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 251
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByUserId(J)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 253
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 254
    iget-object v3, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/qianhe/yct/R$string;->excavator:I

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

    .line 255
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const-string v2, "excavator"

    invoke-virtual {v1, v2, v0}, Lcom/qianhe/yct/db/DatabaseManager;->isEntityNameExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 256
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

    goto :goto_1

    .line 259
    :cond_1
    sget v2, Lcom/qianhe/yct/R$string;->excavator:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "%s1"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 261
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 263
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v1, :cond_3

    .line 264
    iput-object v0, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;ID)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 1128
    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;IDZ)V

    return-void
.end method

.method private setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;IDZ)V
    .locals 2

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-nez p6, :cond_2

    const-wide/16 v0, 0x0

    cmpl-double p6, p4, v0

    if-eqz p6, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    .line 1137
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    :goto_0
    const/4 p6, 0x0

    .line 1134
    invoke-virtual {p1, p6}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x3

    .line 1135
    invoke-virtual {p0, p3, p4, p5, p1}, Lcom/qianhe/yct/base/BaseActivity;->formatMetertoOther(IDI)D

    move-result-wide p3

    invoke-virtual {p0, p3, p4}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setDetailRowLabel(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1101
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1102
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1103
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1104
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setNumericEditable(Landroid/widget/TextView;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 210
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 211
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 212
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCursorVisible(Z)V

    return-void
.end method

.method private showAutoBucketParams(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;)V
    .locals 6

    .line 1110
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAutoGenerateParamsObj()Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    move-result-object p1

    .line 1111
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->getDisplayUnit()I

    move-result v3

    .line 1112
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowAutoAB:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvAutoAB:Landroidx/appcompat/widget/AppCompatTextView;

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->AB:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;ID)V

    .line 1113
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowAutoT0x:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvAutoT0x:Landroidx/appcompat/widget/AppCompatTextView;

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0x:D

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;ID)V

    .line 1114
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowAutoT0y:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvAutoT0y:Landroidx/appcompat/widget/AppCompatTextView;

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0y:D

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;ID)V

    .line 1115
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowAutoT0z:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvAutoT0z:Landroidx/appcompat/widget/AppCompatTextView;

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0z:D

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;ID)V

    .line 1116
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowAutoT1x:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvAutoT1x:Landroidx/appcompat/widget/AppCompatTextView;

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1x:D

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;ID)V

    .line 1117
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowAutoT1y:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvAutoT1y:Landroidx/appcompat/widget/AppCompatTextView;

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1y:D

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;ID)V

    .line 1118
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowAutoT1z:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvAutoT1z:Landroidx/appcompat/widget/AppCompatTextView;

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1z:D

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;ID)V

    .line 1119
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowAutoT2x:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvAutoT2x:Landroidx/appcompat/widget/AppCompatTextView;

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2x:D

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;ID)V

    .line 1120
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowAutoT2y:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvAutoT2y:Landroidx/appcompat/widget/AppCompatTextView;

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2y:D

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;ID)V

    .line 1121
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowAutoT2z:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvAutoT2z:Landroidx/appcompat/widget/AppCompatTextView;

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2z:D

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;ID)V

    .line 1122
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowAutoT3x:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvAutoT3x:Landroidx/appcompat/widget/AppCompatTextView;

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3x:D

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;ID)V

    .line 1123
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowAutoT3y:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvAutoT3y:Landroidx/appcompat/widget/AppCompatTextView;

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3y:D

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;ID)V

    .line 1124
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowAutoT3z:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvAutoT3z:Landroidx/appcompat/widget/AppCompatTextView;

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3z:D

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;ID)V

    return-void
.end method

.method private showManualBucketParams(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;)V
    .locals 9

    .line 1079
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->getDisplayUnit()I

    move-result v3

    .line 1080
    iget-boolean v6, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrateMode:Z

    .line 1081
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->resolveDiagramDistanceMeasure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowG1:Landroid/widget/LinearLayout;

    const-string v1, "NT:"

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailRowLabel(Landroid/view/View;Ljava/lang/String;)V

    .line 1083
    iget-object v0, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowG2:Landroid/widget/LinearLayout;

    const-string v1, "AT:"

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailRowLabel(Landroid/view/View;Ljava/lang/String;)V

    .line 1084
    iget-object v0, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowG3:Landroid/widget/LinearLayout;

    const-string v1, "NA:"

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailRowLabel(Landroid/view/View;Ljava/lang/String;)V

    .line 1085
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowG1:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvG1:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNT()D

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;IDZ)V

    .line 1086
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowG2:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvG2:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAT()D

    move-result-wide v4

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;IDZ)V

    .line 1087
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowG3:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvG3:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNA()D

    move-result-wide v4

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;IDZ)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 1089
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowG1:Landroid/widget/LinearLayout;

    const-string v2, "G1:"

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailRowLabel(Landroid/view/View;Ljava/lang/String;)V

    .line 1090
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowG2:Landroid/widget/LinearLayout;

    const-string v2, "G2:"

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailRowLabel(Landroid/view/View;Ljava/lang/String;)V

    .line 1091
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowG3:Landroid/widget/LinearLayout;

    const-string v2, "G3:"

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailRowLabel(Landroid/view/View;Ljava/lang/String;)V

    .line 1092
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowG1:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvG1:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG1()D

    move-result-wide v4

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;IDZ)V

    .line 1093
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowG2:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvG2:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG2()D

    move-result-wide v4

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;IDZ)V

    .line 1094
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowG3:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvG3:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG3()D

    move-result-wide v4

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;IDZ)V

    .line 1096
    :goto_0
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowLRMode23:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvLRMode23:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v4

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v7

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;IDZ)V

    .line 1097
    iget-object v1, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->rowAB:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/qianhe/yct/databinding/LayoutExcavatorDetailBucketParamsBinding;->tvAB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v4

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->setDetailParamRow(Landroid/view/View;Landroid/widget/TextView;IDZ)V

    return-void
.end method

.method private showRecalibrateConfigFailedDialog()V
    .locals 3

    .line 627
    sget v0, Lcom/qianhe/yct/R$string;->config_failed_please_check_params:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method private startRecalibrate()V
    .locals 6

    .line 469
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrating:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 470
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->hasRecalibrateChanges()Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    sget v0, Lcom/qianhe/yct/R$string;->no_modify_content:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->copyExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrateSnapshot:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const/4 v0, 0x0

    .line 475
    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->pendingRecalibrateBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 476
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->applyRecalibrateInputs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 477
    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrateSnapshot:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-void

    .line 480
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->hideSoftInput()V

    .line 481
    sget v1, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 482
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrating:Z

    .line 483
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const-string v3, "local"

    invoke-static {p0, v2, v3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginFreshForExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V

    .line 484
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v2, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v3, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v3}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_5

    .line 485
    iget-object v3, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initMeasureParams:Ljava/lang/String;

    iget-object v5, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v5, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParams:Ljava/lang/String;

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const-string v5, ""

    :goto_1
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 486
    :goto_2
    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrateNewBucketName:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 489
    :try_start_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->generateRecalibrateBucketName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrateNewBucketName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u751f\u6210\u91cd\u65b0\u6807\u5b9a\u94f2\u6597\u540d\u79f0\u5931\u8d25\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initBucketName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initBucketName:Ljava/lang/String;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    .line 493
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 494
    sget v0, Lcom/qianhe/yct/R$string;->shovel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 496
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/qianhe/yct/R$string;->bucket_recalibrate_name_mark:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "_"

    const-string v4, "-"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrateNewBucketName:Ljava/lang/String;

    :cond_8
    :goto_4
    if-eqz v2, :cond_9

    .line 501
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recordRecalibrateMode1Input()V

    .line 503
    :cond_9
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v1, v2}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;ZZ)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 533
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_a
    :goto_5
    return-void
.end method

.method private static stripRecalibrateNameMark(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 780
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    .line 787
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_3

    .line 791
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 792
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const-string v3, "-?\\d+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 793
    :cond_3
    :goto_2
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    :goto_3
    return-object p0
.end method

.method private syncCalibParamsToDevice(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1005
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1008
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1011
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

    .line 1014
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

    .line 1015
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


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 1173
    iput-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 1153
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 1158
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->calibration:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1159
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    .line 90
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 92
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 95
    const-string v0, "localId"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 96
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByLocalId(J)Ljava/util/List;

    move-result-object p1

    .line 97
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    .line 98
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 99
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->loadCalibSoInputsFromJson()V

    .line 100
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->logExcavatorEntity(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 102
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    iput v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->hasCalibSoInputs()Z

    move-result p1

    iput-boolean p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrateMode:Z

    .line 105
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, ""

    if-eqz p1, :cond_1

    move-object p1, v1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initName:Ljava/lang/String;

    .line 106
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParams:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v1, v2

    :cond_2
    iput-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initMeasureParams:Ljava/lang/String;

    .line 107
    iget-object v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->parseBucketNameFromCalibParamsId(Ljava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initBucketName:Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->initNameView()V

    .line 109
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->unitDropdownSensor:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->getDisplayUnit()I

    move-result v1

    invoke-virtual {p1, p0, v1}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 110
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->unitDropdownSensor:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/UnitDropdownView;->setEnabled(Z)V

    .line 111
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->getDisplayUnit()I

    move-result p1

    .line 112
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v2

    const/16 v3, 0x8

    if-ne v1, v2, :cond_b

    .line 113
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->lltMode1:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->lltMode23:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrateMode:Z

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    if-nez v0, :cond_3

    .line 116
    iget-object v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    cmpl-double v6, v4, v2

    if-eqz v6, :cond_4

    .line 117
    :cond_3
    iget-object v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAH:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v5, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    invoke-virtual {p0, p1, v5, v6, v1}, Lcom/qianhe/yct/base/BaseActivity;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-nez v0, :cond_5

    .line 119
    iget-object v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    cmpl-double v6, v4, v2

    if-eqz v6, :cond_6

    .line 120
    :cond_5
    iget-object v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAR:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v5, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    invoke-virtual {p0, p1, v5, v6, v1}, Lcom/qianhe/yct/base/BaseActivity;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    if-nez v0, :cond_7

    .line 122
    iget-object v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    cmpl-double v6, v4, v2

    if-eqz v6, :cond_8

    .line 123
    :cond_7
    iget-object v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvAL:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v5, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    invoke-virtual {p0, p1, v5, v6, v1}, Lcom/qianhe/yct/base/BaseActivity;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    if-nez v0, :cond_9

    .line 125
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    cmpl-double v0, v4, v2

    if-eqz v0, :cond_a

    .line 126
    :cond_9
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvLRMode1:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/qianhe/yct/base/BaseActivity;->formatMetertoOther(IDI)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_a
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->iv:Lcom/qianhe/yct/view/HdImageView;

    sget v0, Lcom/qianhe/yct/R$drawable;->icon_excavator_all:I

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/HdImageView;->setImageResource(I)V

    goto :goto_2

    .line 130
    :cond_b
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->lltMode1:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->lltMode23:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 134
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->resolveDiagramDistanceMeasure()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 135
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->iv:Lcom/qianhe/yct/view/HdImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_all_mode4_sensor:I

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/HdImageView;->setImageResource(I)V

    goto :goto_1

    .line 137
    :cond_c
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->iv:Lcom/qianhe/yct/view/HdImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_all_sensor:I

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/HdImageView;->setImageResource(I)V

    goto :goto_1

    .line 139
    :cond_d
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_NOT_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 140
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->iv:Lcom/qianhe/yct/view/HdImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_all_no_sensor:I

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/HdImageView;->setImageResource(I)V

    .line 142
    :cond_e
    :goto_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->bindMode23Params(I)V

    .line 146
    :cond_f
    :goto_2
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->recalibrateMode:Z

    if-eqz p1, :cond_10

    .line 147
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->enableRecalibrateEditing()V

    .line 148
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvSave:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->recalibrate:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 149
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvSave:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 151
    :cond_10
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityExcavatorDetailBinding;->tvSave:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1178
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->endAwaitingSessionIfNeeded()V

    .line 1179
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 1180
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
    .locals 0

    .line 1148
    iput-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1038
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->onRecalibrateSetParamEvent(Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;)V

    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/yct/event/ModifyExcavatorResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1028
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->modifyingExcavator:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1029
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;->modifyingExcavator:Z

    if-nez p1, :cond_1

    goto :goto_0

    .line 1031
    :cond_1
    iget p1, p1, Lcom/qianhe/yct/event/ModifyExcavatorResponse;->state:I

    if-eqz p1, :cond_2

    const/16 v0, 0x1f40

    if-eq p1, v0, :cond_2

    .line 1032
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/ErrorCodeUtils;->getErrorMsg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
