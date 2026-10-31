.class public Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "ExcavatorCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$ExcavatorCreatePagerAdapter;
    }
.end annotation


# static fields
.field private static final GSON:Lcom/google/gson/Gson;

.field private static final PAGE_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private adapter:Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$ExcavatorCreatePagerAdapter;

.field private binding:Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;

.field private excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private hideProfessionalMode:Z

.field private hostCalibParams:Ljava/lang/String;

.field private hostCalibParamsId:Ljava/lang/String;

.field private hostCalibReceived:Z

.field private hostLibMode:I

.field private initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private initPage:I

.field private lastContinueClickElapsed:J

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

.field private mode4SweepNeedRestart:Z

.field private pagePosition:I

.field private pendingCompleteType:I

.field private pendingCreateUpload:Z

.field private replaceBucketMode:Z

.field private reuseBucketSource:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private reuseForearmSource:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private sawTiltReject:Z

.field private swingInsClearedOnce:Z


# direct methods
.method public static synthetic $r8$lambda$Gy6WLBb7ORMstRNlU6G6d3RQEnA(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 655
    iput v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pendingCompleteType:I

    .line 656
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 657
    sget v0, Lcom/qianhe/yct/R$string;->cannot_configure:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HVAvZuRzbbWHzdLSiiV8huLxbxk(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;Ljava/lang/String;)V
    .locals 12

    .line 676
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 677
    :cond_0
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->isSuccess()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 678
    iput v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pendingCompleteType:I

    .line 679
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 680
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set_tool \u5931\u8d25\uff0ccode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->code:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    .line 681
    sget p1, Lcom/qianhe/yct/R$string;->config_failed_please_check_params:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object p2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 685
    iget-object v3, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    iput-object v3, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    .line 686
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    if-nez v0, :cond_3

    .line 687
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-boolean v3, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->replaceBucketMode:Z

    if-eqz v3, :cond_2

    const-string v1, "bucket"

    :cond_2
    const-string v3, "local"

    invoke-static {p0, v0, v3, v1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginForExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_3
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 690
    iget-object v0, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildSetParam(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "set_param"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 691
    iget v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pendingCompleteType:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_5

    if-ne v0, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_0
    if-eqz v3, :cond_6

    .line 692
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->insFromSavedMode21(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v0

    :goto_1
    move-object v7, v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    goto :goto_1

    :goto_2
    if-eqz v3, :cond_7

    .line 693
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->sensorFromSavedMode21(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v0

    :goto_3
    move-object v8, v0

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v0

    goto :goto_3

    :goto_4
    if-eqz v3, :cond_8

    .line 695
    iget-object v6, p0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v11, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    const-string v4, "SET_PARAM"

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static/range {v4 .. v11}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;ZLcom/qianhe/baselib/bean/InsNavi;)V

    goto :goto_5

    .line 697
    :cond_8
    iget-object v6, p0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    const/4 v9, 0x0

    const-string v4, "SET_PARAM"

    invoke-static/range {v4 .. v9}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 699
    :goto_5
    iget-object p1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->syncCalibParamsToDevice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 700
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 701
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "ok"

    invoke-virtual {v0, v3, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 702
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    const-string v1, ""

    :goto_6
    const-string v3, "name"

    invoke-virtual {v0, v3, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v1, "calib_params_id"

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_a

    .line 705
    invoke-static {v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->scheduleEndAfterSetParamReply(Lcom/google/gson/JsonObject;)V

    return-void

    .line 707
    :cond_a
    iput v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pendingCompleteType:I

    .line 708
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->clearAwaitSetParamReply()V

    .line 709
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 710
    sget p1, Lcom/qianhe/yct/R$string;->disconnected_device:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RhXUMgycw3Zk-h5I-3lrsUCjaH0(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;Ljava/lang/String;)V
    .locals 3

    .line 651
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 651
    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 652
    iget-object v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 653
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->reuseBucketSource:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v1, :cond_0

    .line 654
    new-instance p1, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 661
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->makeToolParam(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object v1

    .line 662
    invoke-virtual {v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    .line 663
    new-instance p1, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 671
    :cond_1
    iget-object v1, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 673
    :cond_2
    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->applyTool(Ljava/lang/String;Ljava/lang/String;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object p1

    .line 674
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->buildCalibParamsId(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object v0

    .line 675
    new-instance v1, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WqHlSOc5wtGKGPJbcesLe4j5Bx0(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;)V
    .locals 2

    const/4 v0, 0x0

    .line 664
    iput v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pendingCompleteType:I

    .line 665
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u751f\u6210\u94f2\u6597\u53c2\u6570\u5931\u8d25\uff0ccode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->code:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    .line 667
    sget p1, Lcom/qianhe/yct/R$string;->shovel_parameter_generation_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dhhnTDTGVTKGVZpODUYbIyfFkZQ(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 787
    const-string v0, "check_accuracy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 788
    :cond_0
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 789
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 790
    iget-object p2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz p2, :cond_1

    iget-boolean p2, p2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->distanceBucketMeasure:Z

    if-eqz p2, :cond_1

    .line 791
    const-string/jumbo p2, "skipVerifyModeSelect"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 793
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 795
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetpagePosition(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pagePosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputpagePosition(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pagePosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreatePageFragment(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->createPageFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrefreshTopBarTitle(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->refreshTopBarTitle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetPAGE_TYPES()[Ljava/lang/Class;
    .locals 1

    .line 0
    sget-object v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->PAGE_TYPES:[Ljava/lang/Class;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 70
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->GSON:Lcom/google/gson/Gson;

    const/16 v0, 0xb

    .line 77
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->PAGE_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostCalibParams:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostCalibParamsId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pendingCompleteType:I

    return-void
.end method

.method private bindCheckAccuracyResultListener()V
    .locals 3

    .line 784
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "check_accuracy"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->clearFragmentResult(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->clearFragmentResultListener(Ljava/lang/String;)V

    .line 786
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v2, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;)V

    invoke-virtual {v0, v1, p0, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method private buildFragmentArgs()Landroid/os/Bundle;
    .locals 3

    .line 404
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 405
    const-string v1, "initEntity"

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 406
    const-string v1, "excavatorEntity"

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method private completeWithSetTool(Ljava/lang/String;I)V
    .locals 1

    .line 637
    iget v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pendingCompleteType:I

    if-eqz v0, :cond_0

    return-void

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-nez v0, :cond_1

    goto :goto_0

    .line 644
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 645
    sget p1, Lcom/qianhe/yct/R$string;->cannot_configure:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 648
    :cond_2
    sget v0, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 649
    iput p2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pendingCompleteType:I

    .line 650
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 713
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void

    .line 641
    :cond_3
    :goto_0
    sget p1, Lcom/qianhe/yct/R$string;->cannot_configure:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method private copyHostForearmMetaToNewExcavator()V
    .locals 4

    .line 740
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 741
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    .line 742
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostCalibParamsId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->findExcavatorByDeviceCalibParamsId(Landroid/content/Context;Ljava/lang/String;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 744
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    .line 745
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    .line 746
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    .line 747
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    .line 748
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    .line 749
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    .line 750
    invoke-virtual {v1, v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->copyCalibSoInputsFrom(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 751
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->distanceBucketMeasure:Z

    .line 752
    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    if-lez v0, :cond_2

    iget v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    if-nez v2, :cond_2

    .line 753
    iput v0, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    :cond_2
    :goto_0
    return-void
.end method

.method private createPageFragment(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 411
    sget-object v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->PAGE_TYPES:[Ljava/lang/Class;

    aget-object v0, v0, p1

    .line 413
    const-class v1, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;

    if-ne v0, v1, :cond_0

    .line 414
    new-instance p1, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;-><init>()V

    goto/16 :goto_0

    .line 415
    :cond_0
    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    if-ne v0, v1, :cond_1

    .line 416
    new-instance p1, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;-><init>()V

    goto :goto_0

    .line 417
    :cond_1
    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;

    if-ne v0, v1, :cond_2

    .line 418
    new-instance p1, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;-><init>()V

    goto :goto_0

    .line 419
    :cond_2
    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;

    if-ne v0, v1, :cond_3

    .line 420
    new-instance p1, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;-><init>()V

    goto :goto_0

    .line 421
    :cond_3
    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    if-ne v0, v1, :cond_4

    .line 422
    new-instance p1, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-direct {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;-><init>()V

    goto :goto_0

    .line 423
    :cond_4
    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    if-ne v0, v1, :cond_5

    .line 424
    new-instance p1, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-direct {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;-><init>()V

    goto :goto_0

    .line 425
    :cond_5
    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;

    if-ne v0, v1, :cond_6

    .line 426
    new-instance p1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;

    invoke-direct {p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;-><init>()V

    goto :goto_0

    .line 427
    :cond_6
    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;

    if-ne v0, v1, :cond_7

    .line 428
    new-instance p1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;

    invoke-direct {p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;-><init>()V

    goto :goto_0

    .line 429
    :cond_7
    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;

    if-ne v0, v1, :cond_8

    .line 430
    new-instance p1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;

    invoke-direct {p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;-><init>()V

    goto :goto_0

    .line 431
    :cond_8
    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    if-ne v0, v1, :cond_9

    .line 432
    new-instance p1, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-direct {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;-><init>()V

    goto :goto_0

    .line 433
    :cond_9
    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    if-ne v0, v1, :cond_a

    .line 434
    new-instance p1, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-direct {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;-><init>()V

    .line 438
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->buildFragmentArgs()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1

    .line 436
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCurrentFragment()Lcom/qianhe/yct/base/BaseProjectFragment;
    .locals 3

    .line 443
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 444
    instance-of v2, v1, Lcom/qianhe/yct/base/BaseProjectFragment;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    check-cast v1, Lcom/qianhe/yct/base/BaseProjectFragment;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasOtherInsAbnormal(Lcom/qianhe/baselib/bean/InsNavi;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 332
    :cond_0
    iget p0, p0, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    if-eqz p1, :cond_1

    .line 334
    sget-object p1, Lcom/qianhe/yct/enums/InsStatusEnum;->SENSORLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result p1

    not-int p1, p1

    and-int/2addr p0, p1

    .line 336
    :cond_1
    sget-object p1, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result p1

    and-int/2addr p1, p0

    if-nez p1, :cond_3

    sget-object p1, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result p1

    and-int/2addr p1, p0

    if-nez p1, :cond_3

    sget-object p1, Lcom/qianhe/yct/enums/InsStatusEnum;->SENSORLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static hasTiltReject(Lcom/qianhe/baselib/bean/InsNavi;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 341
    iget p0, p0, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v0, Lcom/qianhe/yct/enums/InsStatusEnum;->TILTREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private indexOfPage(Ljava/lang/Class;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 309
    :goto_0
    sget-object v2, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->PAGE_TYPES:[Ljava/lang/Class;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 310
    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private initViewPager()V
    .locals 3

    .line 386
    new-instance v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$ExcavatorCreatePagerAdapter;

    invoke-direct {v0, p0, p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$ExcavatorCreatePagerAdapter;-><init>(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->adapter:Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$ExcavatorCreatePagerAdapter;

    .line 387
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 388
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iget v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pagePosition:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 390
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 391
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$1;-><init>(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 400
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    return-void
.end method

.method private isCreateInsAvailable(Lcom/qianhe/baselib/bean/InsNavi;)Z
    .locals 3

    .line 376
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->shouldIgnoreBucketSensorLost()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 378
    :cond_1
    iget p1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    .line 379
    sget-object v0, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v0

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    sget-object v0, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v0

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    sget-object v0, Lcom/qianhe/yct/enums/InsStatusEnum;->TILTREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    goto :goto_0

    .line 382
    :cond_2
    sget-object v0, Lcom/qianhe/yct/enums/InsStatusEnum;->SENSORLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method public static isSwingInsExempt(Lcom/qianhe/baselib/bean/InsNavi;ZZ)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    invoke-static {p0, p2}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hasOtherInsAbnormal(Lcom/qianhe/baselib/bean/InsNavi;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 355
    :cond_1
    invoke-static {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hasTiltReject(Lcom/qianhe/baselib/bean/InsNavi;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private jumpToPage(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 316
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->indexOfPage(Ljava/lang/Class;)I

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pagePosition:I

    .line 317
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method private next()V
    .locals 3

    .line 490
    :cond_0
    iget v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pagePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pagePosition:I

    .line 491
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->adapter:Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$ExcavatorCreatePagerAdapter;

    invoke-virtual {v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$ExcavatorCreatePagerAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    .line 492
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->adapter:Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$ExcavatorCreatePagerAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$ExcavatorCreatePagerAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pagePosition:I

    goto :goto_0

    .line 495
    :cond_1
    iget v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pagePosition:I

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->shouldSkipPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iget v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pagePosition:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method private onSetToolParamSuccess()V
    .locals 2

    .line 729
    iget v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pendingCompleteType:I

    const/4 v1, 0x0

    .line 730
    iput v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pendingCompleteType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    return-void

    .line 732
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->saveNewExcavatorResult()V

    return-void
.end method

.method private previous()V
    .locals 3

    .line 471
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->getCurrentFragment()Lcom/qianhe/yct/base/BaseProjectFragment;

    move-result-object v0

    .line 472
    instance-of v1, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;

    invoke-virtual {v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;->handleNavigatePrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 477
    :cond_0
    iget v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pagePosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pagePosition:I

    if-gez v0, :cond_1

    .line 478
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 481
    :cond_1
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->shouldSkipPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pagePosition:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 483
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->replaceBucketMode:Z

    .line 485
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method private refreshTopBarTitle()V
    .locals 2

    .line 592
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->replaceBucketMode:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/qianhe/yct/R$string;->replace_bucket:I

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    sget v1, Lcom/qianhe/yct/R$string;->calibration:I

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private saveNewExcavatorResult()V
    .locals 3

    .line 758
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    .line 759
    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->isExcavatorNameExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->insertExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    const/4 v0, -0x1

    .line 765
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    const/4 v0, 0x1

    .line 766
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pendingCreateUpload:Z

    .line 767
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0, p0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void

    .line 760
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 761
    sget v0, Lcom/qianhe/yct/R$string;->excavator_name_already_exists:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method private shouldSkipPage(I)Z
    .locals 9

    const/4 v0, 0x0

    if-ltz p1, :cond_a

    .line 500
    sget-object v1, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->PAGE_TYPES:[Ljava/lang/Class;

    array-length v2, v1

    if-lt p1, v2, :cond_0

    goto :goto_3

    .line 503
    :cond_0
    aget-object p1, v1, p1

    .line 504
    iget-boolean v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->replaceBucketMode:Z

    const-class v2, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 505
    const-class v1, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_1

    return v3

    :cond_1
    return v0

    .line 507
    :cond_2
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isKe76Pro()Z

    move-result v1

    if-eqz v1, :cond_3

    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorChoiceTypeFragment;

    if-ne p1, v1, :cond_3

    return v3

    .line 511
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v1, :cond_7

    iget-wide v4, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->isDistanceBucketMeasureFlow()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_4
    iget-boolean v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->distanceBucketMeasure:Z

    if-eqz v1, :cond_7

    .line 513
    :goto_0
    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    if-eq p1, v1, :cond_6

    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    if-eq p1, v1, :cond_6

    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    if-eq p1, v1, :cond_6

    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    if-ne p1, v1, :cond_5

    goto :goto_1

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v3

    :cond_7
    if-eq p1, v2, :cond_9

    .line 515
    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;

    if-eq p1, v1, :cond_9

    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step3Fragment;

    if-eq p1, v1, :cond_9

    const-class v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;

    if-ne p1, v1, :cond_8

    goto :goto_2

    :cond_8
    return v0

    :cond_9
    :goto_2
    return v3

    :cond_a
    :goto_3
    return v0
.end method

.method private syncCalibParamsToDevice(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 717
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 720
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isDemo()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v2, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 723
    :cond_1
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

    .line 724
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    invoke-direct {v0, p1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private trackSwingInsClear(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->isCreateInsAvailable(Lcom/qianhe/baselib/bean/InsNavi;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 362
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->sawTiltReject:Z

    if-eqz p1, :cond_1

    .line 363
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->swingInsClearedOnce:Z

    :cond_1
    const/4 p1, 0x0

    .line 365
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->sawTiltReject:Z

    return-void

    .line 366
    :cond_2
    invoke-static {p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hasTiltReject(Lcom/qianhe/baselib/bean/InsNavi;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 367
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->sawTiltReject:Z

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public completeReplaceBucket()V
    .locals 7

    .line 269
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->copyHostForearmMetaToNewExcavator()V

    .line 270
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostCalibParamsId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->findExcavatorByDeviceCalibParamsId(Landroid/content/Context;Ljava/lang/String;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    .line 271
    new-instance v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-direct {v3}, Lcom/qianhe/baselib/bean/ExcavatorEntity;-><init>()V

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostCalibParams:Ljava/lang/String;

    iput-object v0, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    .line 274
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v6

    .line 275
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v4, p0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v5, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordReuseArmInput(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    .line 276
    iget-object v0, v1, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostCalibParams:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->completeWithSetTool(Ljava/lang/String;I)V

    return-void
.end method

.method public completeReuseForearm(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 280
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 281
    iget-object v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v2, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByLocalId(J)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 283
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    :cond_0
    move-object v2, p1

    if-eqz v2, :cond_1

    .line 286
    iget-object p1, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move-object v0, p0

    goto :goto_0

    .line 291
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v0, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    .line 292
    iget-wide v0, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    .line 293
    iget-wide v0, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    .line 294
    iget-wide v0, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    .line 295
    iget-wide v0, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    .line 296
    iget-wide v0, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    .line 297
    iget v0, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    if-lez v0, :cond_3

    .line 298
    iput v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    .line 300
    :cond_3
    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->ensureCalibSoInputsReady()V

    .line 301
    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reloadSweepAttitudesFromJson()V

    .line 302
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {p1, v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->copyCalibSoInputsFrom(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 303
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v5

    .line 304
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v3, p0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordReuseArmInput(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    .line 305
    iget-object p1, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->completeWithSetTool(Ljava/lang/String;I)V

    return-void

    .line 287
    :goto_0
    sget p1, Lcom/qianhe/yct/R$string;->cannot_configure:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method public consumeMode4SweepNeedRestart()Z
    .locals 2

    .line 241
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->mode4SweepNeedRestart:Z

    const/4 v1, 0x0

    .line 242
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->mode4SweepNeedRestart:Z

    return v0
.end method

.method public getExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object v0
.end method

.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 1

    .line 621
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->getCurrentFragment()Lcom/qianhe/yct/base/BaseProjectFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {v0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->gga(Lcom/qianhe/baselib/bean/GGAEntity;)V

    :cond_0
    return-void
.end method

.method public getHostLibMode()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostLibMode:I

    return v0
.end method

.method public getInitEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object v0
.end method

.method public getReuseBucketSource()Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->reuseBucketSource:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object v0
.end method

.method public getReuseForearmSource()Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->reuseForearmSource:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object v0
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 3

    .line 520
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$2;-><init>(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;)V

    const-string v2, "back"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 1

    .line 587
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->refreshTopBarTitle()V

    .line 588
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public isFastContinueClick()Z
    .locals 7

    .line 453
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 454
    iget-wide v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->lastContinueClickElapsed:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x320

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    const/4 v0, 0x1

    return v0

    .line 457
    :cond_0
    iput-wide v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->lastContinueClickElapsed:J

    const/4 v0, 0x0

    return v0
.end method

.method public isHostCalibReceived()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostCalibReceived:Z

    return v0
.end method

.method public isReplaceBucketMode()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->replaceBucketMode:Z

    return v0
.end method

.method public isSwingInsClearedOnce()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->swingInsClearedOnce:Z

    return v0
.end method

.method protected ivBackClick()V
    .locals 2

    .line 598
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->lltBackTb:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$3;-><init>(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public markMode4SweepNeedRestart()V
    .locals 1

    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->mode4SweepNeedRestart:Z

    .line 235
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->clearReAttitudes()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 629
    iget v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pagePosition:I

    iget v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->initPage:I

    if-ne v0, v1, :cond_0

    .line 630
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    .line 632
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->previous()V

    return-void
.end method

.method public onChooseCreateNewExcavator()V
    .locals 2

    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->replaceBucketMode:Z

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hideProfessionalMode:Z

    .line 249
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "next"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onChooseReplaceBucket()V
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostCalibParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    sget v0, Lcom/qianhe/yct/R$string;->cannot_configure:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->replaceBucketMode:Z

    const/4 v1, 0x0

    .line 258
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hideProfessionalMode:Z

    .line 259
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v1, :cond_2

    .line 260
    iget v2, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostLibMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_NOT_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    :goto_0
    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v2

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    goto :goto_0

    :goto_1
    iput v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    .line 261
    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-boolean v0, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->distanceBucketMeasure:Z

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginReplaceBucket(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 264
    const-class v0, Lcom/qianhe/yct/fragment/ExcavatorMode4BucketFragment;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->jumpToPage(Ljava/lang/Class;)V

    .line 265
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->refreshTopBarTitle()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorCreateBinding;

    .line 113
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 115
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 116
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

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    .line 119
    const-string v4, "localId"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 120
    const-string v6, "pagePosition"

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pagePosition:I

    iput v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->initPage:I

    .line 121
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, v4, v5}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByLocalId(J)Ljava/util/List;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 125
    sget-object v4, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v4, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 128
    new-instance v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    iput-wide v5, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    .line 131
    iget-object v4, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    iput-object v4, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    :cond_1
    if-nez p1, :cond_2

    .line 135
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v4, "show_install_leveling_tips"

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v4, "show_install_sensor_tips"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    if-eqz p1, :cond_5

    .line 138
    const-string v0, "excavatorEntity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_3

    .line 140
    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 142
    :cond_3
    const-string v0, "hostCalibParams"

    iget-object v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostCalibParams:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostCalibParams:Ljava/lang/String;

    .line 143
    const-string v0, "hostCalibParamsId"

    iget-object v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostCalibParamsId:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostCalibParamsId:Ljava/lang/String;

    .line 144
    const-string v0, "hostLibMode"

    iget v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostLibMode:I

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostLibMode:I

    .line 145
    const-string v0, "hostCalibReceived"

    iget-boolean v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostCalibReceived:Z

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostCalibReceived:Z

    .line 146
    const-string v0, "hideProfessionalMode"

    iget-boolean v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hideProfessionalMode:Z

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hideProfessionalMode:Z

    .line 147
    const-string v0, "replaceBucketMode"

    iget-boolean v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->replaceBucketMode:Z

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->replaceBucketMode:Z

    .line 148
    const-string v0, "reuseForearmLocalId"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_4

    .line 150
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, v4, v5}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByLocalId(J)Ljava/util/List;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 152
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->reuseForearmSource:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 155
    :cond_4
    const-string v0, "reuseBucketLocalId"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-lez p1, :cond_5

    .line 157
    iget-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p1, v4, v5}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByLocalId(J)Ljava/util/List;

    move-result-object p1

    .line 158
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 159
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->reuseBucketSource:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 164
    :cond_5
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->bindCheckAccuracyResultListener()V

    .line 165
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->initViewPager()V

    .line 166
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v1, "CALIBRATE,,GET_PARAM"

    invoke-direct {v0, v1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 801
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->endAwaitingSessionIfNeeded()V

    .line 802
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 803
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 463
    const-string v0, "previous"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->previous()V

    return-void

    .line 465
    :cond_0
    const-string v0, "next"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 466
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->next()V

    :cond_1
    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 2

    .line 536
    iput-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    .line 537
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->trackSwingInsClear(Lcom/qianhe/baselib/bean/InsNavi;)V

    .line 538
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->getCurrentFragment()Lcom/qianhe/yct/base/BaseProjectFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->isCreateInsAvailable(Lcom/qianhe/baselib/bean/InsNavi;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->insNavi(Lcom/qianhe/baselib/bean/InsNavi;Z)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_3

    .line 546
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 549
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostCalibReceived:Z

    .line 550
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostCalibParamsId:Ljava/lang/String;

    .line 551
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    if-eqz p1, :cond_2

    move-object v1, p1

    :cond_2
    iput-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostCalibParams:Ljava/lang/String;

    .line 552
    invoke-static {v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->getMode(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostLibMode:I

    .line 553
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u65b0\u5efa\u6316\u673a GET_PARAM \u6821\u51c6\u53c2\u6570\u7c7b\u578b\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostLibMode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\uff0ccalibParamsLen="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostCalibParams:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 558
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 560
    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v4, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->handleSetParamReplyIfWaiting(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)Z

    .line 561
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->getCurrentFragment()Lcom/qianhe/yct/base/BaseProjectFragment;

    move-result-object v0

    .line 562
    instance-of v2, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;

    if-eqz v2, :cond_1

    .line 563
    check-cast v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step4Fragment;->onDeviceSetParamReply(Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;)V

    .line 565
    :cond_1
    iget v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pendingCompleteType:I

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 568
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    const-string v0, "OK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 570
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->onSetToolParamSuccess()V

    return-void

    .line 572
    :cond_3
    iget p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pendingCompleteType:I

    const/4 v0, 0x0

    .line 573
    iput v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pendingCompleteType:I

    .line 574
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET_PARAM \u5931\u8d25\uff0ccompleteType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    .line 576
    sget p1, Lcom/qianhe/yct/R$string;->config_failed_please_check_params:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/yct/event/CreateExcavatorResponse;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 772
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pendingCreateUpload:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 773
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->pendingCreateUpload:Z

    .line 774
    invoke-virtual {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->showVerifyAccuracy()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .line 171
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 172
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_0

    .line 173
    const-string v1, "excavatorEntity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 175
    :cond_0
    const-string v0, "hostCalibParams"

    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostCalibParams:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "hostCalibParamsId"

    iget-object v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostCalibParamsId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "hostLibMode"

    iget v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostLibMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 178
    const-string v0, "hostCalibReceived"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hostCalibReceived:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 179
    const-string v0, "hideProfessionalMode"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->hideProfessionalMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 180
    const-string v0, "replaceBucketMode"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->replaceBucketMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 181
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->reuseForearmSource:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    const-string v0, "reuseForearmLocalId"

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 182
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->reuseBucketSource:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_2

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    :cond_2
    const-string v0, "reuseBucketLocalId"

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setReuseBucketSource(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->reuseBucketSource:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-void
.end method

.method public setReuseForearmSource(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->reuseForearmSource:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-void
.end method

.method public shouldIgnoreBucketSensorLost()Z
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showVerifyAccuracy()V
    .locals 4

    .line 778
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 779
    invoke-direct {p0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->bindCheckAccuracyResultListener()V

    .line 780
    sget v0, Lcom/qianhe/yct/R$string;->calibrate_completed_checking_accuracy:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "check_accuracy"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void
.end method
