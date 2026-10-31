.class public Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "FineTuneHeightInputDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$OnHeightConfirmListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;

.field private listener:Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$OnHeightConfirmListener;

.field private mHasPendingLlh:Z

.field private mInitialHasLlh:Z

.field private mInitialHeightMeters:D

.field private mInitialLat:D

.field private mInitialLon:D

.field private mPendingLat:D

.field private mPendingLon:D

.field private final pointLibLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private unitType:I


# direct methods
.method public static synthetic $r8$lambda$4JiDlmQ6WH_KMkMIBlwKfKlwA9o(Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->pointLibLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/yct/activity/pointlib/PointLibraryIntent;->pickPointForRawElev(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TKSpwCzPCW-lCUf31QVMqliM-9M(Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    .line 76
    const-string v0, "geodetic"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    const/4 p1, 0x0

    .line 78
    aget-wide v2, v0, p1

    const/4 p1, 0x1

    aget-wide v4, v0, p1

    const/4 p1, 0x2

    aget-wide v6, v0, p1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->fillFromGeodetic(DDD)V

    return-void

    :cond_1
    move-object v1, p0

    .line 81
    invoke-direct {v1}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->clearPendingLlh()V

    .line 82
    const-string p0, "alt"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v2, 0x0

    .line 83
    invoke-virtual {p1, p0, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide p0

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->fillHeightFromMeters(D)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$ZQeTDiPe_a9gWSP98rqPgYF1GS8(Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    const-string p1, "collected"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->applyInstrumentCollectFromBubbleCompass()V

    return-void
.end method

.method public static synthetic $r8$lambda$ctLqrSWvY5ftFoIeKJPuXLvwVOk(Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->listener:Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$OnHeightConfirmListener;

    if-eqz p1, :cond_0

    .line 142
    invoke-interface {p1}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$OnHeightConfirmListener;->onCancel()V

    .line 144
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$fncBw4baQdoS6RlKBGShrAgnHA0(Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->startInstrumentCollectForHeight()V

    return-void
.end method

.method public static synthetic $r8$lambda$pP8Y7KvXsIJMBJVjl0wGCaAs9HI(Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;Landroid/view/View;)V
    .locals 10

    .line 147
    iget p1, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->unitType:I

    .line 147
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->edtHeight:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/qianhe/baselib/utils/UnitConvertUtils;->toMeter(ID)D

    move-result-wide v3

    .line 148
    iget-object v2, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->listener:Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$OnHeightConfirmListener;

    if-eqz v2, :cond_0

    .line 149
    iget-wide v5, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mPendingLon:D

    iget-wide v7, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mPendingLat:D

    iget-boolean v9, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mHasPendingLlh:Z

    invoke-interface/range {v2 .. v9}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$OnHeightConfirmListener;->onConfirm(DDDZ)V

    .line 151
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 63
    iput-wide v0, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mInitialHeightMeters:D

    .line 68
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->pointLibLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private applyInstrumentCollectFromBubbleCompass()V
    .locals 9

    .line 165
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/base/BaseActivity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    move-object v2, p0

    goto :goto_1

    .line 168
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    .line 169
    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->snapshotInstrumentCollectFromCurrentGga()Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;->coords:[D

    if-nez v1, :cond_2

    goto :goto_0

    .line 173
    :cond_2
    iget-object v2, v0, Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;->geodetic:[D

    invoke-static {v1, v2}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->resolveRawGeodetic([D[D)[D

    move-result-object v1

    if-eqz v1, :cond_3

    .line 174
    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_3

    const/4 v0, 0x0

    .line 175
    aget-wide v3, v1, v0

    const/4 v0, 0x1

    aget-wide v5, v1, v0

    const/4 v0, 0x2

    aget-wide v7, v1, v0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->fillFromGeodetic(DDD)V

    return-void

    :cond_3
    move-object v2, p0

    .line 177
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->clearPendingLlh()V

    .line 178
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;->coords:[D

    iget-object v0, v0, Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;->geodetic:[D

    invoke-static {v1, v0}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->resolveRawElevationMeters([D[D)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->fillHeightFromMeters(D)V

    :goto_1
    return-void
.end method

.method private clearPendingLlh()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 247
    iput-wide v0, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mPendingLon:D

    .line 248
    iput-wide v0, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mPendingLat:D

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mHasPendingLlh:Z

    return-void
.end method

.method private fillFromGeodetic(DDD)V
    .locals 0

    .line 240
    iput-wide p1, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mPendingLon:D

    .line 241
    iput-wide p3, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mPendingLat:D

    const/4 p1, 0x1

    .line 242
    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mHasPendingLlh:Z

    .line 243
    invoke-direct {p0, p5, p6}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->fillHeightFromMeters(D)V

    return-void
.end method

.method private fillHeightFromMeters(D)V
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;

    if-nez v0, :cond_0

    return-void

    .line 256
    :cond_0
    iget v0, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->unitType:I

    const/4 v1, 0x3

    invoke-static {v0, p1, p2, v1}, Lcom/qianhe/baselib/utils/UnitConvertUtils;->fromMeter(IDI)D

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmpl-double v0, p1, v2

    if-nez v0, :cond_1

    .line 258
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->edtHeight:Lcom/qianhe/yct/view/NumericEditText;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 261
    :cond_1
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p1, v1, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 262
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "0*$"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\.$"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 263
    iget-object p2, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->edtHeight:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static resolveRawElevationMeters([D[D)D
    .locals 3

    .line 232
    invoke-static {p0, p1}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->resolveRawGeodetic([D[D)[D

    move-result-object p1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 233
    array-length v1, p1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 234
    aget-wide p0, p1, v0

    return-wide p0

    .line 236
    :cond_0
    aget-wide v0, p0, v0

    return-wide v0
.end method

.method private static resolveRawGeodetic([D[D)[D
    .locals 9

    .line 213
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getCurrentTransParam()Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v1

    const/4 v8, 0x3

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->hasParamsDetail()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-lt v1, v8, :cond_0

    .line 216
    new-array v7, v8, [D

    const/4 v1, 0x0

    .line 217
    aget-wide v1, p0, v1

    const/4 v3, 0x1

    aget-wide v3, p0, v3

    const/4 v5, 0x2

    aget-wide v5, p0, v5

    invoke-virtual/range {v0 .. v7}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->projToGeodeticInverse(DDD[D)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v7

    :cond_0
    if-eqz p1, :cond_1

    .line 221
    array-length p0, p1

    if-lt p0, v8, :cond_1

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private restorePendingState(Landroid/os/Bundle;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 186
    :cond_0
    const-string v1, "pendingLon"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mPendingLon:D

    .line 187
    const-string v1, "pendingLat"

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mPendingLat:D

    .line 188
    const-string v1, "hasPendingLlh"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mHasPendingLlh:Z

    .line 189
    const-string v1, "heightText"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 191
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->edtHeight:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private startInstrumentCollectForHeight()V
    .locals 2

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/base/BaseActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->startInstrumentCollectWithBubbleCompass(Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;)V

    const-string v2, "BubbleCompassDialogFragment_result"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;

    .line 113
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    iget-object v1, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;

    invoke-virtual {v1}, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 117
    invoke-virtual {p0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 118
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 122
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/manage/AppConfigManager;->getUnitPreference()I

    move-result v1

    iput v1, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->unitType:I

    .line 123
    iget-object v2, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->tvUnit:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/qianhe/baselib/enums/UnitEnum;->getSymbol(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->restorePendingState(Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 126
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->clearPendingLlh()V

    .line 127
    iget-wide v1, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mInitialHeightMeters:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_2

    .line 128
    iget-boolean p1, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mInitialHasLlh:Z

    if-eqz p1, :cond_1

    .line 129
    iget-wide v2, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mInitialLon:D

    iget-wide v4, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mInitialLat:D

    iget-wide v6, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mInitialHeightMeters:D

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->fillFromGeodetic(DDD)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 131
    iget-wide v2, v1, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mInitialHeightMeters:D

    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->fillHeightFromMeters(D)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    .line 134
    iget-object p1, v1, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->edtHeight:Lcom/qianhe/yct/view/NumericEditText;

    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move-object v1, p0

    .line 138
    :goto_0
    iget-object p1, v1, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->tvPointLib:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object p1, v1, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->tvInstrumentCollect:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object p1, v1, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object p1, v1, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->tvConfirm:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 199
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 200
    const-string v0, "pendingLon"

    iget-wide v1, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mPendingLon:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 201
    const-string v0, "pendingLat"

    iget-wide v1, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mPendingLat:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 202
    const-string v0, "hasPendingLlh"

    iget-boolean v1, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mHasPendingLlh:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 203
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->edtHeight:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->edtHeight:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "heightText"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 268
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 269
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v1, 0x3f4ccccd    # 0.8f

    .line 274
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 275
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    :cond_1
    return-void
.end method

.method public setInitialHeight(DDDZ)V
    .locals 0

    .line 95
    iput-wide p1, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mInitialHeightMeters:D

    .line 96
    iput-wide p3, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mInitialLon:D

    .line 97
    iput-wide p5, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mInitialLat:D

    .line 98
    iput-boolean p7, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->mInitialHasLlh:Z

    return-void
.end method

.method public setOnHeightConfirmListener(Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$OnHeightConfirmListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment;->listener:Lcom/qianhe/yct/dialog/FineTuneHeightInputDialogFragment$OnHeightConfirmListener;

    return-void
.end method
