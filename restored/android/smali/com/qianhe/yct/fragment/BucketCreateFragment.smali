.class public Lcom/qianhe/yct/fragment/BucketCreateFragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "BucketCreateFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;
    }
.end annotation


# instance fields
.field private awaitBucketSwitchLogEnd:Z

.field private binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

.field private bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

.field private creatingBucket:Z

.field private currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private fineTuneLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

.field private isSupportBucket:Z

.field private lastFocusedType:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

.field private mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

.field private mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

.field private mParamsType:I

.field private modifyingBucket:Z

.field private pendingCalibParams:Ljava/lang/String;

.field private pendingCalibParamsId:Ljava/lang/String;

.field private pendingFineTuneAfterParams:Z

.field private pendingFineTunePointMode:I

.field private persistingBucket:Z

.field private saveOnlyThisSubmit:Z

.field private savingAfterUnsupportedReplace:Z

.field private suppressMeasureTypeCallback:Z

.field private useAutoGenerateParams:Z

.field private useDistanceMeasure:Z

.field private waitingSetParam:Z

.field private waitingSwitchBeforeSave:Z


# direct methods
.method public static synthetic $r8$lambda$2lmoQvyzpdJpC5_eCyjhnDvePIs(Lcom/qianhe/yct/fragment/BucketCreateFragment;Landroid/view/View;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->onFineTuneClick()V

    return-void
.end method

.method public static synthetic $r8$lambda$4XN5Xu1OXI9FmfIA2To7T6G5Cn0(Lcom/qianhe/yct/fragment/BucketCreateFragment;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;)V
    .locals 2

    .line 928
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->cancelLoadingDialog()V

    .line 929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u672c\u5730\u751f\u6210\u94f2\u6597\u53c2\u6570\u5931\u8d25\uff0ccode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->code:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    .line 930
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->shovel_parameter_generation_failed:I

    .line 931
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    .line 932
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 930
    invoke-virtual {p1, v0, p0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$50l7XXVbJr1qZ-Z2YJ1Jmbbyc7w(Lcom/qianhe/yct/fragment/BucketCreateFragment;Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;Landroid/view/View;Z)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 415
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->onParamFieldFocused(Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;Z)V

    return-void

    .line 0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic $r8$lambda$65sZalGktC3HbUP5Z9_COyxfDaA(Lcom/qianhe/yct/fragment/BucketCreateFragment;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 159
    iget-boolean p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->suppressMeasureTypeCallback:Z

    if-eqz p1, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    sget p1, Lcom/qianhe/yct/R$id;->rbTriangleMeasure:I

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 162
    :goto_0
    iget-boolean p2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useDistanceMeasure:Z

    if-ne p2, p1, :cond_2

    :goto_1
    return-void

    .line 163
    :cond_2
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useDistanceMeasure:Z

    .line 164
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->onMeasureTypeChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$8Dvotzn6aoslgpHnMAb93e-QDE8(Lcom/qianhe/yct/fragment/BucketCreateFragment;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;)V
    .locals 2

    .line 987
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->cancelLoadingDialog()V

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u672c\u5730\u751f\u6210\u94f2\u6597\u53c2\u6570\u5931\u8d25\uff0ccode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->code:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->shovel_parameter_generation_failed:I

    .line 990
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    .line 991
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 989
    invoke-virtual {p1, v0, p0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$95Q1Q-xHSzzVfj9TNyBEMHCrIhg(Lcom/qianhe/yct/fragment/BucketCreateFragment;Lcom/qianhe/yct/view/NumericEditText;Landroid/view/View;)V
    .locals 0

    if-eq p2, p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 427
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->onLrFieldFocused()V

    return-void
.end method

.method public static synthetic $r8$lambda$CcUCO0ArsmoI2jyiGVixKnJjDQQ(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1128
    new-instance v0, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "OK"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->onMessageEvent(Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UDu10VM7iYDIw_i9BDETs3nHOH0(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V
    .locals 3

    .line 923
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 923
    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useAutoGenerateParams:Z

    if-nez v0, :cond_3

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-static {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->makeToolParam(Lcom/qianhe/baselib/bean/ShovelEntity;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object v0

    .line 925
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_2

    .line 926
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 927
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0, v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda26;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 936
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v0, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 938
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_0
    return-void

    .line 939
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda27;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vb01IUtzqIFofvOSFfaA8evPzbU(Lcom/qianhe/yct/fragment/BucketCreateFragment;Landroid/view/View;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->showActualImageDialog()V

    return-void
.end method

.method public static synthetic $r8$lambda$WeQEbEBOcreHbdCLc4YCa23cYHw(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->persistCreatedBucket()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZI8p-TNoKVGflMcl5I6Sx1H1vnI(Lcom/qianhe/yct/fragment/BucketCreateFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$d4qZDUTBbfBKFAwJVlw_37lIC0o(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V
    .locals 3

    .line 982
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 982
    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useAutoGenerateParams:Z

    if-nez v0, :cond_3

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-static {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->makeToolParam(Lcom/qianhe/baselib/bean/ShovelEntity;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object v0

    .line 984
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_2

    .line 985
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 986
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0, v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda24;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 995
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v0, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 997
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_0
    return-void

    .line 998
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda25;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g906sazDBs6_5gzET6q8FMRv_as(Lcom/qianhe/yct/fragment/BucketCreateFragment;Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 433
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->onLrFieldFocused()V

    return-void

    .line 0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic $r8$lambda$lFv2TIf-fa42xCIgpfviGeZ8Cjs(Lcom/qianhe/yct/fragment/BucketCreateFragment;Landroid/view/View;)V
    .locals 1

    .line 210
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    .line 210
    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 212
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 214
    :cond_1
    iget-object p0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public static synthetic $r8$lambda$mk7oPo2HLrzZy2kjpq4PlR5UNVs(Lcom/qianhe/yct/fragment/BucketCreateFragment;Landroid/view/View;)V
    .locals 0

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic $r8$lambda$oCK-cE3fCTp2eqTYwEkZ7k5Ywvc(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->persistModifiedBucket()V

    return-void
.end method

.method public static synthetic $r8$lambda$vg3G57YyNWgiUIgYDoAc889i-Ww(Lcom/qianhe/yct/fragment/BucketCreateFragment;Landroid/view/View;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->onBottomRightClick()V

    return-void
.end method

.method public static synthetic $r8$lambda$wAyblVwCrHB-yco9jYes87prC-8(Lcom/qianhe/yct/fragment/BucketCreateFragment;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;Landroid/view/View;)V
    .locals 0

    if-eq p3, p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 407
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    const/4 p1, 0x1

    .line 409
    invoke-direct {p0, p2, p1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->onParamFieldFocused(Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/BucketCreateFragment;)Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbucket(Lcom/qianhe/yct/fragment/BucketCreateFragment;)Lcom/qianhe/baselib/bean/ShovelEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentExcavator(Lcom/qianhe/yct/fragment/BucketCreateFragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestGga(Lcom/qianhe/yct/fragment/BucketCreateFragment;)Lcom/qianhe/baselib/bean/GGAEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestIns(Lcom/qianhe/yct/fragment/BucketCreateFragment;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpendingFineTunePointMode(Lcom/qianhe/yct/fragment/BucketCreateFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->pendingFineTunePointMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuseAutoGenerateParams(Lcom/qianhe/yct/fragment/BucketCreateFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useAutoGenerateParams:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputawaitBucketSwitchLogEnd(Lcom/qianhe/yct/fragment/BucketCreateFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->awaitBucketSwitchLogEnd:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpendingFineTunePointMode(Lcom/qianhe/yct/fragment/BucketCreateFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->pendingFineTunePointMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwaitingSetParam(Lcom/qianhe/yct/fragment/BucketCreateFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->waitingSetParam:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwaitingSwitchBeforeSave(Lcom/qianhe/yct/fragment/BucketCreateFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->waitingSwitchBeforeSave:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mheadingError(Lcom/qianhe/yct/fragment/BucketCreateFragment;)Ljava/lang/Double;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->headingError()Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mjumpOneClickFineTune(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->jumpOneClickFineTune()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mjumpStepByStepFineTune(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->jumpStepByStepFineTune()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBucketSwitchFailed(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->onBucketSwitchFailed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monLocalSwitchSuccess(Lcom/qianhe/yct/fragment/BucketCreateFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->onLocalSwitchSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveBucketWithoutApplyAfterUnsupported(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->saveBucketWithoutApplyAfterUnsupported()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetShovelDefaultName(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setShovelDefaultName()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowFineTuneTips(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->showFineTuneTips()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartApplyBucketSwitch(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->startApplyBucketSwitch()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mParamsType:I

    const/4 v0, 0x1

    .line 94
    iput v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->pendingFineTunePointMode:I

    .line 104
    sget-object v1, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;->G1:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    iput-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->lastFocusedType:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    .line 106
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useDistanceMeasure:Z

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->cancelLoadingDialog()V

    return-void
.end method

.method private apply()V
    .locals 5

    .line 1229
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->tvApply:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1230
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->prepareBucketData()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1231
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->isSupportBucket:Z

    if-nez v0, :cond_1

    .line 1232
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->showNotSupportReplaceBucketDialog()V

    return-void

    .line 1235
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 1236
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->createBucketFirst()V

    return-void

    .line 1239
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->modifyBucketFirst()V

    return-void
.end method

.method private applyStepImage(II)V
    .locals 2

    .line 523
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->resolveEffectiveMode()I

    move-result v0

    .line 525
    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 530
    :goto_0
    iget-object p2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->ivStep:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {p0, p2, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private applyStepImageForType(Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;)V
    .locals 4

    .line 472
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useDistanceMeasure:Z

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 474
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    .line 485
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_nt_sensor:I

    invoke-direct {p0, p1, p1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->applyStepImage(II)V

    return-void

    .line 482
    :cond_0
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_ab_mode4_sensor:I

    invoke-direct {p0, p1, p1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->applyStepImage(II)V

    return-void

    .line 479
    :cond_1
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_na_sensor:I

    invoke-direct {p0, p1, p1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->applyStepImage(II)V

    return-void

    .line 476
    :cond_2
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_at_sensor:I

    invoke-direct {p0, p1, p1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->applyStepImage(II)V

    return-void

    .line 490
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    .line 501
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_g1_sensor:I

    sget v0, Lcom/qianhe/yct/R$drawable;->icon_g1_no_sensor:I

    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->applyStepImage(II)V

    return-void

    .line 498
    :cond_4
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_ab_sensor:I

    sget v0, Lcom/qianhe/yct/R$drawable;->icon_ab_no_sensor:I

    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->applyStepImage(II)V

    return-void

    .line 495
    :cond_5
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_g3_sensor:I

    sget v0, Lcom/qianhe/yct/R$drawable;->icon_g3_no_sensor:I

    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->applyStepImage(II)V

    return-void

    .line 492
    :cond_6
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_g2_sensor:I

    sget v0, Lcom/qianhe/yct/R$drawable;->icon_g2_no_sensor:I

    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->applyStepImage(II)V

    return-void
.end method

.method private continueBucketSwitch()V
    .locals 4

    .line 780
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->getActiveCalibParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v0

    .line 782
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->headingError()Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordGetParamCmd(Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 784
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "CALIBRATE,,GET_PARAM"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 787
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->startLocalBucketSwitch()V

    return-void
.end method

.method private createBucketFirst()V
    .locals 3

    .line 918
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget v2, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    if-nez v2, :cond_0

    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    if-lez v0, :cond_0

    .line 919
    iput v0, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    .line 921
    :cond_0
    sget v0, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->showLoadingDialog(Ljava/lang/String;)V

    .line 922
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda23;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 940
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private distanceActualImageKey(Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;)Ljava/lang/String;
    .locals 1

    .line 564
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 572
    const-string p1, "NT"

    return-object p1

    .line 570
    :cond_0
    const-string p1, "AB"

    return-object p1

    .line 568
    :cond_1
    const-string p1, "NA"

    return-object p1

    .line 566
    :cond_2
    const-string p1, "AT"

    return-object p1
.end method

.method private ensureBucketMode()V
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    if-lez v1, :cond_0

    .line 508
    iput v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    :cond_0
    return-void
.end method

.method private finishBucketSyncAfterPersist(Lcom/qianhe/baselib/bean/ShovelEntity;Z)V
    .locals 3

    .line 1096
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->prepareBucketForExcavatorSync(Lcom/qianhe/baselib/bean/ShovelEntity;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1097
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->pendingCalibParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->pendingCalibParams:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    .line 1102
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v1, v2, p1, v0, p2}, Lcom/qianhe/yct/utils/BucketSwitchHelper;->refreshExcavatorCalibParamsIdAfterBucketApplied(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;Z)Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;

    move-result-object p2

    .line 1103
    iget-object v1, p2, Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;->excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v1, :cond_2

    .line 1104
    iput-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 1106
    :cond_2
    iget-object v1, p2, Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v1, :cond_3

    .line 1107
    iput-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 1109
    :cond_3
    iget-object v1, p2, Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;->calibParamsId:Ljava/lang/String;

    iput-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->pendingCalibParamsId:Ljava/lang/String;

    .line 1110
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1111
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v2, p2, Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;->calibParamsId:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 1112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1113
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    .line 1116
    :cond_4
    iget-object v1, p2, Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;->calibParamsId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1117
    iget-object v1, p2, Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;->calibParamsId:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->sendSetParamOrder(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    :cond_5
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->updateFineTuneVisibility()V

    .line 1120
    iget-object v0, p2, Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_6

    move-object p1, v0

    :cond_6
    iget-object p2, p2, Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;->calibParamsId:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->notifyBucketApplied(Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;)V

    return-void

    .line 1098
    :cond_7
    :goto_1
    iget-object p2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->pendingCalibParamsId:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->notifyBucketApplied(Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;)V

    return-void
.end method

.method private getActiveCalibParams()Ljava/lang/String;
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->pendingCalibParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->pendingCalibParams:Ljava/lang/String;

    return-object v0

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    return-object v0

    .line 802
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private getEffectiveParamsType()I
    .locals 1

    .line 296
    iget v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mParamsType:I

    return v0
.end method

.method private hasBucketModifications()Z
    .locals 21

    move-object/from16 v0, p0

    .line 741
    iget-object v1, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v3, :cond_0

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_1

    :cond_0
    const/16 v17, 0x1

    goto/16 :goto_4

    .line 744
    :cond_1
    iget-object v1, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v3, ""

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 745
    :goto_0
    iget-object v4, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v4, v4, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 746
    :cond_3
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 749
    :cond_4
    iget-boolean v1, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useAutoGenerateParams:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    return v3

    .line 752
    :cond_5
    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    .line 753
    iget-object v4, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG1:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v4}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    const/4 v6, 0x3

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide v4

    .line 754
    iget-object v7, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v7, v7, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG2:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v7, v7, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v7}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v7

    invoke-virtual {v0, v1, v7, v8, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide v7

    .line 755
    iget-object v9, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG3:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v9}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v9

    invoke-virtual {v0, v1, v9, v10, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide v9

    .line 756
    iget-object v11, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutLR:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v11}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v11

    invoke-virtual {v0, v1, v11, v12, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide v11

    .line 757
    iget-object v13, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v13, v13, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAB:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v13, v13, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v13}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v13

    invoke-virtual {v0, v1, v13, v14, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide v13

    .line 758
    iget-boolean v1, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useDistanceMeasure:Z

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    if-eqz v1, :cond_9

    .line 759
    iget-object v1, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getLR()D

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmpl-double v1, v17, v19

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getLR()D

    move-result-wide v15

    :goto_1
    move-wide v2, v15

    const/4 v1, 0x1

    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getLy()D

    move-result-wide v17

    mul-double v15, v15, v17

    goto :goto_1

    .line 760
    :goto_2
    iget-object v15, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    move-wide/from16 v18, v2

    const/16 v17, 0x1

    invoke-virtual {v15}, Lcom/qianhe/baselib/bean/ShovelEntity;->getNT()D

    move-result-wide v1

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->sameDisplayMeter(DD)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 761
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAT()D

    move-result-wide v1

    invoke-direct {v0, v7, v8, v1, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->sameDisplayMeter(DD)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 762
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getNA()D

    move-result-wide v1

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->sameDisplayMeter(DD)Z

    move-result v1

    if-eqz v1, :cond_8

    move-wide/from16 v1, v18

    .line 763
    invoke-direct {v0, v11, v12, v1, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->sameDisplayMeter(DD)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 764
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAB()D

    move-result-wide v1

    invoke-direct {v0, v13, v14, v1, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->sameDisplayMeter(DD)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    return v6

    :cond_8
    :goto_3
    return v17

    :cond_9
    const/4 v6, 0x0

    const/16 v17, 0x1

    .line 766
    iget-object v1, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getG1()D

    move-result-wide v1

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->sameDisplayMeter(DD)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 767
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getG2()D

    move-result-wide v1

    invoke-direct {v0, v7, v8, v1, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->sameDisplayMeter(DD)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 768
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getG3()D

    move-result-wide v1

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->sameDisplayMeter(DD)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 769
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getLy()D

    move-result-wide v1

    mul-double v1, v1, v15

    invoke-direct {v0, v11, v12, v1, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->sameDisplayMeter(DD)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 770
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAB()D

    move-result-wide v1

    invoke-direct {v0, v13, v14, v1, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->sameDisplayMeter(DD)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    return v6

    :cond_b
    :goto_4
    return v17
.end method

.method private headingError()Ljava/lang/Double;
    .locals 2

    .line 791
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/base/BaseActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 794
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->getLatestHeadingDegreesError()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private initGifShow()V
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG1:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG1:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v2, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;->G1:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    invoke-direct {p0, v0, v1, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;)V

    .line 380
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG2:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG2:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v2, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;->G2:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    invoke-direct {p0, v0, v1, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;)V

    .line 381
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG3:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG3:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v2, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;->G3:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    invoke-direct {p0, v0, v1, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;)V

    .line 382
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setupLrField()V

    .line 383
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAB:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAB:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v2, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;->AB:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    invoke-direct {p0, v0, v1, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;)V

    return-void
.end method

.method private initNameView()V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-nez v0, :cond_0

    goto :goto_1

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NoUnderscoreInputFilter;->apply(Landroid/widget/EditText;)V

    .line 209
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->ivReset:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda20;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/BucketCreateFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$4;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/BucketCreateFragment$5;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$5;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    const-string/jumbo v3, "step1_shovel_name"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 247
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private initView()V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda13;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda14;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->tvApply:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda15;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->tvFineTune:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda16;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->rgMeasureType:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda17;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/BucketCreateFragment$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$1;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    const-string v3, "fine_tune_point_mode"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 179
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/BucketCreateFragment$2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$2;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    const-string v3, "bucket_fine_tune_tips"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/BucketCreateFragment$3;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$3;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    const-string v3, "create_bucket_apply"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method private isCurrentUsageBucket()Z
    .locals 8

    .line 324
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-nez v0, :cond_0

    goto :goto_1

    .line 325
    :cond_0
    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 327
    :cond_1
    iget-object v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0, v2}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->supportsBucketCurrentUsage(Ljava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 330
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v2, :cond_3

    iget-wide v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 331
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0, v2, v3}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->matchesBucket(Ljava/lang/String;Lcom/qianhe/baselib/bean/ShovelEntity;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    return v4

    .line 334
    :cond_4
    iget-object v3, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0, v3}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->parseBucketNameFromCalibParamsId(Ljava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object v0

    .line 335
    iget-object v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v2, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v4

    :cond_5
    :goto_1
    return v1
.end method

.method private isSaveOnlyBucket()Z
    .locals 5

    .line 319
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->isCurrentUsageBucket()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jumpOneClickFineTune()V
    .locals 3

    .line 371
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 372
    const-string v1, "currentExcavator"

    iget-object v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 373
    const-string/jumbo v1, "skipVerifyModeSelect"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 374
    const-string/jumbo v1, "showOneClickVerifyTips"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private jumpStepByStepFineTune()V
    .locals 3

    .line 363
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 364
    const-string v1, "currentExcavator"

    iget-object v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 365
    const-string/jumbo v1, "smartCalibAutoOptimize"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 366
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->fineTuneLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private loadData()V
    .locals 10

    .line 577
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-nez v0, :cond_0

    return-void

    .line 578
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->ensureBucketMode()V

    .line 579
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->resolveUseAutoGenerateParams()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useAutoGenerateParams:Z

    .line 580
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v2, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v2, v4

    if-lez v8, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    .line 585
    :cond_2
    iput-boolean v7, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useDistanceMeasure:Z

    goto :goto_2

    .line 583
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->resolveDiagramDistanceMeasure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useDistanceMeasure:Z

    .line 587
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutMeasureType:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-nez v2, :cond_5

    iget-boolean v3, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useAutoGenerateParams:Z

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/16 v3, 0x8

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-nez v2, :cond_7

    .line 588
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useAutoGenerateParams:Z

    if-nez v0, :cond_7

    .line 589
    iput-boolean v7, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->suppressMeasureTypeCallback:Z

    .line 590
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->rgMeasureType:Landroid/widget/RadioGroup;

    iget-boolean v3, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useDistanceMeasure:Z

    if-eqz v3, :cond_6

    sget v3, Lcom/qianhe/yct/R$id;->rbTriangleMeasure:I

    goto :goto_5

    :cond_6
    sget v3, Lcom/qianhe/yct/R$id;->rbReadingMeasure:I

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 591
    iput-boolean v6, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->suppressMeasureTypeCallback:Z

    .line 593
    :cond_7
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->updateParamLabels()V

    .line 594
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->unitDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 595
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutManualParams:Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useAutoGenerateParams:Z

    if-eqz v3, :cond_8

    const/16 v3, 0x8

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoGenerateParams:Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useAutoGenerateParams:Z

    if-eqz v3, :cond_9

    goto :goto_7

    :cond_9
    const/16 v6, 0x8

    :goto_7
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 597
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useAutoGenerateParams:Z

    if-eqz v0, :cond_a

    .line 598
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAutoGenerateParamsObj()Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    move-result-object v0

    .line 599
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoAB:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->AB:D

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    .line 600
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT0x:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0x:D

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    .line 601
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT0y:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0y:D

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    .line 602
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT0z:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0z:D

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    .line 603
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT1x:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1x:D

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    .line 604
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT1y:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1y:D

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    .line 605
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT1z:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1z:D

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    .line 606
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT2x:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2x:D

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    .line 607
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT2y:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2y:D

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    .line 608
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT2z:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2z:D

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    .line 609
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT3x:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3x:D

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    .line 610
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT3y:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3y:D

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    .line 611
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT3z:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3z:D

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    goto/16 :goto_9

    .line 612
    :cond_a
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useDistanceMeasure:Z

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    if-eqz v0, :cond_c

    .line 613
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG1:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getNT()D

    move-result-wide v5

    invoke-direct {p0, v0, v5, v6, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    .line 614
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG2:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAT()D

    move-result-wide v5

    invoke-direct {p0, v0, v5, v6, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    .line 615
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG3:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getNA()D

    move-result-wide v5

    invoke-direct {p0, v0, v5, v6, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    .line 616
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutLR:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getLR()D

    move-result-wide v5

    const-wide/16 v8, 0x0

    cmpl-double v1, v5, v8

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getLR()D

    move-result-wide v3

    goto :goto_8

    :cond_b
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getLy()D

    move-result-wide v5

    mul-double v3, v3, v5

    :goto_8
    invoke-direct {p0, v0, v3, v4, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    .line 617
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAB:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAB()D

    move-result-wide v3

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    goto :goto_9

    .line 619
    :cond_c
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG1:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getG1()D

    move-result-wide v5

    invoke-direct {p0, v0, v5, v6, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    .line 620
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG2:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getG2()D

    move-result-wide v5

    invoke-direct {p0, v0, v5, v6, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    .line 621
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG3:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getG3()D

    move-result-wide v5

    invoke-direct {p0, v0, v5, v6, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    .line 622
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutLR:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getLy()D

    move-result-wide v5

    mul-double v5, v5, v3

    invoke-direct {p0, v0, v5, v6, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    .line 623
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAB:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAB()D

    move-result-wide v3

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V

    .line 625
    :goto_9
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useAutoGenerateParams:Z

    xor-int/2addr v0, v7

    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->setParamsEditable(Z)V

    .line 626
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->lastFocusedType:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->applyStepImageForType(Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;)V

    .line 627
    invoke-direct {p0, v7}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->updateTvDoubtVisibility(Z)V

    return-void
.end method

.method private modifyBucketFirst()V
    .locals 3

    .line 977
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget v2, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    if-nez v2, :cond_0

    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    if-lez v0, :cond_0

    .line 978
    iput v0, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    .line 980
    :cond_0
    sget v0, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->showLoadingDialog(Ljava/lang/String;)V

    .line 981
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda22;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 999
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private notifyBucketApplied(Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;)V
    .locals 3

    .line 1068
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/SwicthBucketEvent;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2, p2}, Lcom/qianhe/yct/event/SwicthBucketEvent;-><init>(Lcom/qianhe/baselib/bean/ShovelEntity;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private onBottomRightClick()V
    .locals 5

    .line 1205
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->hasBucketModifications()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1206
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->no_modify_content:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 1209
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->isSaveOnlyBucket()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->saveOnlyThisSubmit:Z

    if-eqz v0, :cond_1

    .line 1211
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->saveWithoutApply()V

    return-void

    .line 1214
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->apply()V

    return-void
.end method

.method private onBucketSwitchFailed()V
    .locals 4

    const/4 v0, 0x0

    .line 904
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->waitingSwitchBeforeSave:Z

    .line 905
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->waitingSetParam:Z

    .line 906
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->awaitBucketSwitchLogEnd:Z

    const/4 v0, 0x0

    .line 907
    iput-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->pendingCalibParams:Ljava/lang/String;

    .line 908
    iput-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->pendingCalibParamsId:Ljava/lang/String;

    .line 909
    iget-boolean v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useAutoGenerateParams:Z

    if-nez v1, :cond_0

    .line 910
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 912
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-static {v1, v2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->endBucketSwitchFailed(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 913
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->cancelLoadingDialog()V

    .line 914
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->config_failed_please_check_params:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method private onFineTuneClick()V
    .locals 1

    .line 271
    iget v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mParamsType:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .line 272
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->pendingFineTuneAfterParams:Z

    .line 273
    sget v0, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->showLoadingDialog(Ljava/lang/String;)V

    .line 274
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->requestDeviceParamsType()V

    return-void

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->proceedFineTuneByParamsType()V

    return-void
.end method

.method private onLocalSwitchSuccess(Ljava/lang/String;)V
    .locals 2

    .line 869
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-nez v0, :cond_0

    .line 870
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->onBucketSwitchFailed()V

    return-void

    .line 873
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->pendingCalibParams:Ljava/lang/String;

    .line 874
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/BucketSwitchHelper;->buildCalibParamsId(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->pendingCalibParamsId:Ljava/lang/String;

    .line 875
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object p1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    .line 876
    iput-object v0, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    const/4 v1, 0x1

    .line 877
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->waitingSetParam:Z

    .line 878
    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->recordBucketSwitchSetParamAndScheduleEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->pendingCalibParamsId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->sendSetParamOrder(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onLrFieldFocused()V
    .locals 2

    const/4 v0, 0x0

    .line 445
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->updateTvDoubtVisibility(Z)V

    .line 446
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useDistanceMeasure:Z

    if-eqz v0, :cond_0

    .line 448
    sget v0, Lcom/qianhe/yct/R$drawable;->icon_lr_mode4_sensor:I

    invoke-direct {p0, v0, v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->applyStepImage(II)V

    return-void

    .line 450
    :cond_0
    sget v0, Lcom/qianhe/yct/R$drawable;->icon_lr_sensor:I

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_lr_no_sensor:I

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->applyStepImage(II)V

    return-void
.end method

.method private onMeasureTypeChanged()V
    .locals 2

    .line 387
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->updateParamLabels()V

    .line 388
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG1:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG2:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG3:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    sget-object v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;->G1:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    iput-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->lastFocusedType:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    .line 392
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->applyStepImageForType(Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;)V

    const/4 v0, 0x1

    .line 393
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->updateTvDoubtVisibility(Z)V

    return-void
.end method

.method private onParamFieldFocused(Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;Z)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->lastFocusedType:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    .line 440
    invoke-direct {p0, p2}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->updateTvDoubtVisibility(Z)V

    .line 441
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->applyStepImageForType(Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;)V

    return-void
.end method

.method private persistBucketAfterSwitchSuccess()V
    .locals 11

    const/4 v0, 0x1

    .line 1039
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->persistingBucket:Z

    .line 1040
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    if-nez v3, :cond_0

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    if-lez v1, :cond_0

    .line 1041
    iput v1, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    .line 1043
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->ensureParamsSerialized()V

    .line 1044
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 1045
    iget-object v3, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v4, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-lez v10, :cond_1

    .line 1046
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    .line 1047
    iput-wide v1, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->updateTime:J

    .line 1048
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, v3}, Lcom/qianhe/yct/db/DatabaseManager;->updateShovelById(Lcom/qianhe/baselib/bean/ShovelEntity;)I

    .line 1049
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 1050
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->finishBucketSyncAfterPersist(Lcom/qianhe/baselib/bean/ShovelEntity;Z)V

    return-void

    .line 1052
    :cond_1
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->createTime:J

    cmp-long v10, v4, v8

    if-nez v10, :cond_2

    iput-wide v1, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->createTime:J

    .line 1053
    :cond_2
    iput-wide v1, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->updateTime:J

    .line 1054
    iput-wide v6, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    .line 1055
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v1, v3}, Lcom/qianhe/yct/db/DatabaseManager;->insertShovel(Lcom/qianhe/baselib/bean/ShovelEntity;)J

    move-result-wide v1

    .line 1056
    iget-object v3, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iput-wide v1, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    cmp-long v3, v1, v8

    if-lez v3, :cond_3

    .line 1058
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->create_success:I

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1060
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {p0, v1, v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->finishBucketSyncAfterPersist(Lcom/qianhe/baselib/bean/ShovelEntity;Z)V

    .line 1062
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    return-void
.end method

.method private persistCreatedBucket()V
    .locals 8

    .line 944
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 945
    :cond_0
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ShovelEntity;->ensureParamsSerialized()V

    .line 946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 947
    iget-object v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->createTime:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    iput-wide v0, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->createTime:J

    .line 948
    :cond_1
    iput-wide v0, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->updateTime:J

    const-wide/16 v0, 0x1

    .line 949
    iput-wide v0, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    .line 950
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/db/DatabaseManager;->insertShovel(Lcom/qianhe/baselib/bean/ShovelEntity;)J

    move-result-wide v0

    .line 951
    iget-object v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iput-wide v0, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    .line 952
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->cancelLoadingDialog()V

    cmp-long v2, v0, v5

    if-gtz v2, :cond_3

    .line 954
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useAutoGenerateParams:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 955
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 957
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->create_failed:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 960
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_4

    .line 961
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    .line 963
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->tvFineTune:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 964
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->creatingBucket:Z

    .line 965
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 966
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->saveOnlyThisSubmit:Z

    if-eqz v0, :cond_5

    .line 967
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->create_success:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 968
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 969
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 973
    :cond_5
    sget v0, Lcom/qianhe/yct/R$string;->create_success_whether_apply:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->showWhetherApplyDialog(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private persistModifiedBucket()V
    .locals 7

    .line 1003
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1004
    :cond_0
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ShovelEntity;->ensureParamsSerialized()V

    .line 1005
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 1006
    iget-object v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    .line 1007
    iput-wide v0, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->updateTime:J

    .line 1008
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/db/DatabaseManager;->updateShovelById(Lcom/qianhe/baselib/bean/ShovelEntity;)I

    .line 1009
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->cancelLoadingDialog()V

    .line 1010
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 1012
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 1011
    invoke-static {v1, v0, v2, v3}, Lcom/qianhe/yct/utils/BucketSwitchHelper;->refreshCalibParamsIdAfterBucketRenamed(Landroid/content/Context;Lcom/qianhe/baselib/bean/ShovelEntity;Lcom/qianhe/baselib/bean/ShovelEntity;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 1013
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_1

    .line 1014
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x1

    .line 1016
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->modifyingBucket:Z

    .line 1017
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 1018
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->saveOnlyThisSubmit:Z

    if-eqz v0, :cond_2

    .line 1019
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->saved_successfully:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1020
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1021
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 1025
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->startApplyBucketSwitch()V

    :cond_3
    :goto_0
    return-void
.end method

.method private prepareBucketData()Z
    .locals 20

    move-object/from16 v0, p0

    .line 699
    iget-object v1, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 700
    iget-object v2, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iput-object v1, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    .line 701
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 702
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->shovel_name_cannot_empty:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/qianhe/yct/R$string;->use_default_values:I

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string/jumbo v6, "step1_shovel_name"

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return v3

    .line 705
    :cond_0
    invoke-static {v1}, Lcom/qianhe/yct/utils/NoUnderscoreInputFilter;->containsUnderscore(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 706
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->name_cannot_contain_underscore:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return v3

    .line 709
    :cond_1
    iget-object v2, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/db/DatabaseManager;->isShovelNameExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v2, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 710
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->name_exists:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return v3

    .line 713
    :cond_2
    iget-boolean v1, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useAutoGenerateParams:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 714
    iget-object v1, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 715
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->shovel_parameter_generation_failed:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return v3

    :cond_3
    return v2

    .line 720
    :cond_4
    iget-object v1, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v4

    iput v4, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->showUnit:I

    .line 721
    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    .line 722
    iget-object v4, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG1:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v4}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    const/4 v6, 0x3

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide v8

    .line 723
    iget-object v4, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG2:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v4}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide v10

    .line 724
    iget-object v4, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG3:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v4}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide v12

    .line 725
    iget-object v4, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutLR:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v4}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v14

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide v14

    .line 726
    iget-object v4, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAB:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v4}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide v18

    const-wide/16 v4, 0x0

    cmpl-double v1, v8, v4

    if-eqz v1, :cond_7

    cmpl-double v1, v10, v4

    if-eqz v1, :cond_7

    cmpl-double v1, v12, v4

    if-eqz v1, :cond_7

    cmpl-double v1, v14, v4

    if-eqz v1, :cond_7

    cmpl-double v1, v18, v4

    if-nez v1, :cond_5

    goto :goto_1

    .line 731
    :cond_5
    iget-boolean v1, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useDistanceMeasure:Z

    if-eqz v1, :cond_6

    .line 732
    iget-object v7, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    move-wide/from16 v16, v14

    invoke-virtual/range {v7 .. v19}, Lcom/qianhe/baselib/bean/ShovelEntity;->setDistanceMeasureValues(DDDDDD)V

    goto :goto_0

    .line 734
    :cond_6
    iget-object v7, v0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    move-wide/from16 v16, v14

    invoke-virtual/range {v7 .. v19}, Lcom/qianhe/baselib/bean/ShovelEntity;->setMeasureValues(DDDDDD)V

    :goto_0
    return v2

    .line 728
    :cond_7
    :goto_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    sget v2, Lcom/qianhe/yct/R$string;->please_enter_parameters:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return v3
.end method

.method private prepareBucketForExcavatorSync(Lcom/qianhe/baselib/bean/ShovelEntity;)Lcom/qianhe/baselib/bean/ShovelEntity;
    .locals 5

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1076
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 1077
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_5

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 1080
    :cond_1
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1081
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    iput-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    .line 1083
    :cond_2
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1084
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    iput-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 1086
    :cond_3
    iget v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    if-lez v0, :cond_4

    .line 1087
    iput v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    .line 1089
    :cond_4
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_5

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    .line 1090
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    :cond_5
    :goto_1
    return-object p1
.end method

.method private proceedFineTuneByParamsType()V
    .locals 5

    .line 340
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->getEffectiveParamsType()I

    move-result v0

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 341
    iput v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->pendingFineTunePointMode:I

    .line 342
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->showFineTuneTips()V

    return-void

    .line 346
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "FineTunePointModeDialogFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 349
    :cond_1
    new-instance v0, Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/FineTunePointModeDialogFragment;-><init>()V

    .line 350
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 351
    const-string v3, "requestKey"

    const-string v4, "fine_tune_point_mode"

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 353
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private recordBucketSwitchSetParamAndScheduleEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 883
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "bucket"

    .line 884
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->getActiveFileFlow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 887
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v5

    .line 888
    iget-object v3, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v4, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    .line 889
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->headingError()Ljava/lang/Double;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    .line 888
    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordFineTuneSetParam(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 890
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object p2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    const/4 v0, 0x1

    invoke-static {p1, p2, v1, v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildBucketSwitchMeta(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;Z)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 892
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->awaitBucketSwitchLogEnd:Z

    .line 893
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qianhe/yct/application/YCTApplication;->isDemo()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 894
    iget-object p2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    .line 895
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->headingError()Ljava/lang/Double;

    move-result-object v2

    .line 894
    const-string v3, "#CALIBRATE,,SET_PARAM,OK*3D\r\n"

    invoke-static {v3, p2, v1, v5, v2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordSetParamReply(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 896
    invoke-static {v0, p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->endSession(ZLcom/google/gson/JsonObject;)V

    const/4 p1, 0x0

    .line 897
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->awaitBucketSwitchLogEnd:Z

    return-void

    .line 900
    :cond_1
    invoke-static {p1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->scheduleEndAfterSetParamReply(Lcom/google/gson/JsonObject;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private refreshStepImageForCurrentFocus()V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG1:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 456
    sget-object v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;->G1:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->onParamFieldFocused(Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;Z)V

    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG2:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    sget-object v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;->G2:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->onParamFieldFocused(Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;Z)V

    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG3:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    sget-object v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;->G3:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->onParamFieldFocused(Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;Z)V

    return-void

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutLR:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 462
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->onLrFieldFocused()V

    return-void

    .line 463
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAB:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 464
    sget-object v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;->AB:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->onParamFieldFocused(Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;Z)V

    return-void

    .line 466
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->lastFocusedType:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->applyStepImageForType(Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;)V

    .line 467
    invoke-direct {p0, v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->updateTvDoubtVisibility(Z)V

    return-void
.end method

.method private requestDeviceParamsType()V
    .locals 4

    .line 291
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "CALIBRATE,,GET_PARAM"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private requestDeviceParamsTypeIfNeeded()V
    .locals 5

    .line 285
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_2

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->requestDeviceParamsType()V

    :cond_2
    :goto_0
    return-void
.end method

.method private resolveEffectiveMode()I
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    if-lez v0, :cond_0

    return v0

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    if-lez v0, :cond_1

    return v0

    .line 519
    :cond_1
    sget-object v0, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_NOT_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v0

    return v0
.end method

.method private resolveUseAutoGenerateParams()Z
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAutoGenerateParamsObj()Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private sameDisplayMeter(DD)Z
    .locals 2

    .line 775
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object p1

    .line 776
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p2

    invoke-virtual {p0, p2, p3, p4, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object p2

    .line 774
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private saveBucketWithoutApplyAfterUnsupported()V
    .locals 5

    .line 1262
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->savingAfterUnsupportedReplace:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1265
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->savingAfterUnsupportedReplace:Z

    .line 1266
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->saveOnlyThisSubmit:Z

    .line 1267
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_2

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->creatingBucket:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->modifyingBucket:Z

    if-eqz v0, :cond_2

    .line 1268
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->saved_successfully:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1269
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1270
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 1274
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->saveWithoutApply()V

    :cond_3
    :goto_0
    return-void
.end method

.method private saveWithoutApply()V
    .locals 5

    .line 1218
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->prepareBucketData()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 1222
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->createBucketFirst()V

    return-void

    .line 1225
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->modifyBucketFirst()V

    return-void
.end method

.method private sendSetParamOrder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1124
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

    .line 1125
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u8bbe\u7f6e\u6821\u51c6\u53c2\u6570\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 1126
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v0, v1, p1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1127
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->isDemo()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1128
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda21;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda21;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private setParamText(Lcom/qianhe/yct/view/NumericEditText;DZ)V
    .locals 2

    if-nez p4, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double p4, p2, v0

    if-nez p4, :cond_0

    .line 658
    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 660
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p4

    const/4 v0, 0x3

    invoke-virtual {p0, p4, p2, p3, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setParamsEditable(Z)V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG1:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 632
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG2:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 633
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG3:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 634
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutLR:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 635
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAB:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 636
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoAB:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 637
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT0x:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 638
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT0y:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 639
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT0z:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 640
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT1x:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 641
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT1y:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 642
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT1z:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 643
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT2x:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 644
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT2y:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 645
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT2z:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 646
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT3x:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 647
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT3y:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 648
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT3z:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private setShovelDefaultName()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 254
    iget-object v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryShovelByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 256
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 257
    iget-object v3, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v3, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

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

    .line 258
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const-string/jumbo v2, "shovel"

    invoke-virtual {v1, v2, v0}, Lcom/qianhe/yct/db/DatabaseManager;->isEntityNameExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    cmp-long v3, v1, v5

    if-nez v3, :cond_2

    .line 259
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

    .line 262
    :cond_1
    sget v2, Lcom/qianhe/yct/R$string;->shovel:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "%s1"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 264
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 266
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    return-void
.end method

.method private setupLrField()V
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutLR:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 422
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutLR:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->etValue:Lcom/qianhe/yct/view/NumericEditText;

    .line 423
    new-instance v2, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda18;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;Lcom/qianhe/yct/view/NumericEditText;)V

    .line 429
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    new-instance v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda19;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/view/NumericEditText;->setOnFocusListener(Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;)V

    return-void
.end method

.method private setupParamField(Landroid/view/View;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;)V
    .locals 1

    .line 405
    new-instance v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p2, p3}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda11;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;)V

    .line 411
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    new-instance p1, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0, p3}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda12;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;)V

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/view/NumericEditText;->setOnFocusListener(Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;)V

    return-void
.end method

.method private showActualImageDialog()V
    .locals 6

    .line 534
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 536
    iget-boolean v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useDistanceMeasure:Z

    const-string v2, "LR"

    const-string v3, "AB"

    if-eqz v1, :cond_1

    .line 538
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isKe76Pro()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_nt_ex30_mode4_actual:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_nt_mode4_actual:I

    .line 540
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v4, Lcom/qianhe/yct/R$drawable;->icon_nt_mode4_actual_multi:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "NT"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_at_mode4_actual:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticBackport1;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "AT"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_na_mode4_actual:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticBackport2;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "NA"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_ab_mode4_actual:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticBackport3;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_lr_mode4_actual:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticBackport4;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->lastFocusedType:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    invoke-direct {p0, v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->distanceActualImageKey(Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 547
    :cond_1
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_g1_actual_big:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v4, Lcom/qianhe/yct/R$drawable;->icon_g1_actual:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticBackport5;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "G1"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_g2_actual_big:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v4, Lcom/qianhe/yct/R$drawable;->icon_g2_actual:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticBackport6;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "G2"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_g3_actual_big:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v4, Lcom/qianhe/yct/R$drawable;->icon_g3_actual:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticBackport7;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "G3"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_lr_actual:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticBackport8;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_ab_actual:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticBackport9;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->lastFocusedType:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 555
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    .line 556
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 559
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 554
    :goto_2
    invoke-static {v2, v3, v0, v1, v5}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->showCarousel(Landroid/content/Context;Landroid/content/res/Configuration;Ljava/util/LinkedHashMap;Ljava/lang/String;Z)V

    return-void
.end method

.method private showFineTuneTips()V
    .locals 8

    .line 358
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->bucket_fine_tune_tips:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "bucket_fine_tune_tips"

    const-string v5, ""

    invoke-virtual/range {v1 .. v7}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void
.end method

.method private showNotSupportReplaceBucketDialog()V
    .locals 5

    .line 1244
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->not_support_replace_bucket:I

    .line 1245
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    .line 1246
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/fragment/BucketCreateFragment$7;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$7;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    const-string v4, "not_support_replace_bucket"

    .line 1244
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void
.end method

.method private showWhetherApplyDialog(Ljava/lang/String;)V
    .locals 8

    .line 1029
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->apply:I

    .line 1031
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    .line 1032
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "create_bucket_apply"

    .line 1029
    const-string v5, ""

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void
.end method

.method private startApplyBucketSwitch()V
    .locals 2

    .line 1278
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->isSupportBucket:Z

    if-nez v0, :cond_0

    .line 1279
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->showNotSupportReplaceBucketDialog()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1282
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->waitingSwitchBeforeSave:Z

    const/4 v0, 0x0

    .line 1283
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->awaitBucketSwitchLogEnd:Z

    .line 1284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginBucketSwitch(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 1285
    sget v0, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->showLoadingDialog(Ljava/lang/String;)V

    .line 1286
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->continueBucketSwitch()V

    return-void
.end method

.method private startLocalBucketSwitch()V
    .locals 3

    .line 806
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->getActiveCalibParams()Ljava/lang/String;

    move-result-object v0

    .line 807
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->onBucketSwitchFailed()V

    return-void

    .line 812
    :cond_0
    iget-boolean v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useAutoGenerateParams:Z

    if-nez v1, :cond_1

    .line 813
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 815
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;

    invoke-direct {v2, p0, v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$6;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 865
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateApplyButton()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->tvApply:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->isSaveOnlyBucket()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/qianhe/yct/R$string;->save:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/qianhe/yct/R$string;->save_and_apply:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateFineTuneVisibility()V
    .locals 6

    .line 301
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 303
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->isCurrentUsageBucket()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 305
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->tvFineTune:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->updateApplyButton()V

    return-void
.end method

.method private updateParamLabels()V
    .locals 4

    .line 669
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useAutoGenerateParams:Z

    const-string v1, "AB:"

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoAB:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT0x:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    const-string v1, "T0x:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT0y:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    const-string v1, "T0y:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT0z:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    const-string v1, "T0z:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT1x:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    const-string v1, "T1x:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT1y:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    const-string v1, "T1y:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT1z:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    const-string v1, "T1z:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT2x:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    const-string v1, "T2x:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT2y:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    const-string v1, "T2y:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT2z:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    const-string v1, "T2z:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT3x:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    const-string v1, "T3x:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT3y:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    const-string v1, "T3y:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAutoT3z:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    const-string v1, "T3z:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 683
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useDistanceMeasure:Z

    const-string v2, "LR:"

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG1:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    const-string v3, "NT:"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG2:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    const-string v3, "AT:"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG3:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    const-string v3, "NA:"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutLR:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAB:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG1:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    const-string v3, "G1:"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG2:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    const-string v3, "G2:"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutG3:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    const-string v3, "G3:"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutLR:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->layoutAB:Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ViewCustomEditItemBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateTvDoubtVisibility(Z)V
    .locals 3

    .line 397
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->useAutoGenerateParams:Z

    const/16 v1, 0x8

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    sget-object v2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 398
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public gga(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 1354
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

    return-void
.end method

.method public insNavi(Lcom/qianhe/baselib/bean/InsNavi;Z)V
    .locals 0

    .line 1359
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment$$ExternalSyntheticLambda10;-><init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->fineTuneLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    .line 126
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 130
    const-string p2, "initBucket"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/ShovelEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 131
    const-string p2, "bucket"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/ShovelEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 132
    const-string p2, "isSupportBucket"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->isSupportBucket:Z

    .line 133
    const-string p2, "currentExcavator"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->resolveLocalExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->updateFineTuneVisibility()V

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initView()V

    .line 140
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initNameView()V

    .line 141
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->initGifShow()V

    .line 142
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->loadData()V

    .line 143
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->requestDeviceParamsTypeIfNeeded()V

    .line 144
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->ivStep:Lcom/qianhe/yct/view/NightAwareImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->recycleGif(Landroid/widget/ImageView;)V

    .line 1346
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->endAwaitingSessionIfNeeded()V

    const/4 v0, 0x0

    .line 1347
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->awaitBucketSwitchLogEnd:Z

    .line 1348
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    .line 1349
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_9

    .line 1163
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1164
    :cond_0
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1165
    array-length v2, v0

    if-lez v2, :cond_3

    .line 1166
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mParamsType:I

    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6821\u51c6\u53c2\u6570\u7c7b\u578b\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mParamsType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 1169
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_2

    .line 1170
    iget v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mParamsType:I

    iput v2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    .line 1171
    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    iput-object v2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    .line 1172
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    iput-object v2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 1175
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    .line 1176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0, v2}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->resolveLocalExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 1179
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->updateFineTuneVisibility()V

    .line 1181
    :cond_3
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->pendingFineTuneAfterParams:Z

    if-eqz v0, :cond_4

    .line 1182
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->pendingFineTuneAfterParams:Z

    .line 1183
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->cancelLoadingDialog()V

    .line 1184
    iget v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mParamsType:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->tvFineTune:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 1185
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->proceedFineTuneByParamsType()V

    .line 1188
    :cond_4
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->waitingSwitchBeforeSave:Z

    if-nez v0, :cond_5

    goto :goto_1

    .line 1189
    :cond_5
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->pendingCalibParams:Ljava/lang/String;

    .line 1190
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v1, :cond_6

    .line 1191
    iput-object v0, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    .line 1193
    :cond_6
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "bucket"

    .line 1194
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->getActiveFileFlow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1195
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v0

    .line 1196
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->line:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1197
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->line:Ljava/lang/String;

    goto :goto_0

    .line 1198
    :cond_7
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildGetParamReplyLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1199
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->headingError()Ljava/lang/Double;

    move-result-object v3

    invoke-static {p1, v1, v2, v0, v3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordGetParamReply(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 1201
    :cond_8
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->continueBucketSwitch()V

    :cond_9
    :goto_1
    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1134
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->waitingSetParam:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1135
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->waitingSetParam:Z

    .line 1136
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v1

    .line 1137
    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1139
    iget-boolean v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->awaitBucketSwitchLogEnd:Z

    if-eqz v2, :cond_1

    .line 1140
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    .line 1141
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->headingError()Ljava/lang/Double;

    move-result-object v4

    .line 1140
    invoke-static {p1, v2, v3, v1, v4}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->handleSetParamReplyIfWaiting(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)Z

    .line 1142
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->awaitBucketSwitchLogEnd:Z

    .line 1144
    :cond_1
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->waitingSwitchBeforeSave:Z

    .line 1145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->config_success:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 1146
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->persistBucketAfterSwitchSuccess()V

    return-void

    .line 1148
    :cond_2
    iget-boolean v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->awaitBucketSwitchLogEnd:Z

    if-eqz v2, :cond_4

    .line 1149
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->clearAwaitSetParamReply()V

    .line 1150
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "bucket"

    .line 1151
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->getActiveFileFlow()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1152
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mLatestGga:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    .line 1153
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->headingError()Ljava/lang/Double;

    move-result-object v4

    .line 1152
    invoke-static {p1, v2, v3, v1, v4}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordSetParamReply(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 1155
    :cond_3
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->awaitBucketSwitchLogEnd:Z

    .line 1157
    :cond_4
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->onBucketSwitchFailed()V

    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/yct/event/CreateBucketResponse;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1291
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->creatingBucket:Z

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_3

    .line 1292
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->creatingBucket:Z

    if-eqz p1, :cond_8

    .line 1293
    iget v0, p1, Lcom/qianhe/yct/event/CreateBucketResponse;->state:I

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/qianhe/yct/event/CreateBucketResponse;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1294
    iget-object v0, p1, Lcom/qianhe/yct/event/CreateBucketResponse;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 1295
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iput-wide v4, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    .line 1297
    :cond_0
    iget-wide v4, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    .line 1298
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iput-wide v4, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    .line 1300
    :cond_1
    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1301
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object p1, p1, Lcom/qianhe/yct/event/CreateBucketResponse;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    iput-object p1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    .line 1303
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_8

    .line 1304
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->updateShovelById(Lcom/qianhe/baselib/bean/ShovelEntity;)I

    return-void

    .line 1309
    :cond_3
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->persistingBucket:Z

    if-nez v0, :cond_4

    goto :goto_0

    .line 1310
    :cond_4
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->persistingBucket:Z

    .line 1311
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->cancelLoadingDialog()V

    .line 1312
    iget v0, p1, Lcom/qianhe/yct/event/CreateBucketResponse;->state:I

    if-nez v0, :cond_7

    iget-object p1, p1, Lcom/qianhe/yct/event/CreateBucketResponse;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz p1, :cond_7

    .line 1313
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->prepareBucketForExcavatorSync(Lcom/qianhe/baselib/bean/ShovelEntity;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object p1

    .line 1314
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->currentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_5

    iget v1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    if-nez v1, :cond_5

    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    if-lez v0, :cond_5

    .line 1315
    iput v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    .line 1317
    :cond_5
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->ensureParamsSerialized()V

    .line 1318
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_6

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_6

    .line 1319
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    .line 1321
    :cond_6
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_7

    .line 1322
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->updateShovelById(Lcom/qianhe/baselib/bean/ShovelEntity;)I

    .line 1325
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1326
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_8
    :goto_0
    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/yct/event/ModifyBucketResponse;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1332
    iget-boolean p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->modifyingBucket:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1333
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->modifyingBucket:Z

    return-void

    .line 1336
    :cond_0
    iget-boolean p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->persistingBucket:Z

    if-nez p1, :cond_1

    return-void

    .line 1337
    :cond_1
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->persistingBucket:Z

    .line 1338
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->cancelLoadingDialog()V

    .line 1339
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentBucketCreateBinding;->tvApply:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->modify_success:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1340
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 149
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 150
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->refreshStepImageForCurrentFocus()V

    return-void
.end method
