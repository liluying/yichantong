.class public abstract Lcom/qianhe/yct/base/BaseProjectFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseProjectFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;
    }
.end annotation


# instance fields
.field private lastContinueClickElapsed:J

.field private loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

.field protected mSp:Landroid/content/SharedPreferences;

.field private tipsDialogFragment:Lcom/qianhe/yct/dialog/TipsDialogFragment;


# direct methods
.method public static synthetic $r8$lambda$5nqtzyHpnYQlYfw_aBP4mB0u5Nw(Lcom/qianhe/yct/base/BaseProjectFragment;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment;->dispatchInstrumentCollectResult(Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UjIoAJGkaMIRyLbCUgttRJcCwLs(Lcom/qianhe/yct/base/BaseProjectFragment;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V
    .locals 0

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment;->dispatchInstrumentCollectResult(Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Utap9ej_0UTpkL3awbA28Z73-g(Lcom/qianhe/yct/base/BaseProjectFragment;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 94
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->isFastContinueClick()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fuUo9TF9yTtpYBX6JfpepCDdCOU(Lcom/qianhe/yct/base/BaseProjectFragment;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment;->dispatchInstrumentCollectResult(Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xWHZ-vits_ov-J1iNtivgGMzJtM(Lcom/qianhe/yct/base/BaseProjectFragment;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;I)V
    .locals 0

    .line 175
    invoke-virtual {p0, p2, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->handleToothCollectClick(ILcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xbmau5pZXONPe63EqZWw-eEkw5k(Lcom/qianhe/yct/base/BaseProjectFragment;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;I)V
    .locals 0

    .line 176
    invoke-virtual {p0, p2, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->handleToothCollectLongClick(ILcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private dispatchInstrumentCollectResult(Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-interface {p1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;->onInstrumentCollectResult(Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V

    return-void
.end method


# virtual methods
.method protected bindContinueClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Lcom/qianhe/yct/base/BaseProjectFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/base/BaseProjectFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/base/BaseProjectFragment;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected cancelLoadingDialog()V
    .locals 1

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method protected formatCoords(D)Ljava/lang/String;
    .locals 3

    .line 352
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_1

    .line 356
    const-string p1, "0"

    return-object p1

    :cond_1
    const/16 v0, 0x8

    .line 358
    invoke-virtual {p0, p1, p2, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 353
    :cond_2
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method protected formatCoords(DI)Ljava/lang/String;
    .locals 2

    .line 375
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment;->isValidCoord(D)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 378
    :cond_0
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    .line 379
    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p1, p3, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 380
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "0*$"

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\.$"

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected formatCoords(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 343
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 345
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method protected formatDouble(D)Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0x0

    .line 226
    const-string v2, ""

    cmpl-double v3, p1, v0

    if-nez v3, :cond_0

    return-object v2

    .line 227
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 230
    :cond_1
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    .line 231
    invoke-static {p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    .line 234
    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_0
    return-object p1

    :cond_4
    :goto_1
    return-object v2
.end method

.method protected formatMetertoOther(ID)D
    .locals 1

    .line 294
    invoke-static {p1}, Lcom/qianhe/baselib/enums/UnitEnum;->normalize(I)I

    move-result p1

    .line 296
    sget-object v0, Lcom/qianhe/baselib/enums/UnitEnum;->CM:Lcom/qianhe/baselib/enums/UnitEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/UnitEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 298
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/enums/UnitEnum;->IN:Lcom/qianhe/baselib/enums/UnitEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/UnitEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 301
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide p1

    return-wide p1
.end method

.method protected formatMetertoOther(IDI)D
    .locals 0

    .line 305
    invoke-static {p1, p2, p3, p4}, Lcom/qianhe/baselib/utils/UnitConvertUtils;->fromMeter(IDI)D

    move-result-wide p1

    return-wide p1
.end method

.method protected formatOtherToMeter(ID)D
    .locals 1

    const/4 v0, 0x4

    .line 333
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide p1

    return-wide p1
.end method

.method protected formatOtherToMeter(IDI)D
    .locals 0

    .line 337
    invoke-static {p1, p2, p3}, Lcom/qianhe/baselib/utils/UnitConvertUtils;->toMeter(ID)D

    move-result-wide p1

    return-wide p1
.end method

.method protected getDisplayUnitText()Ljava/lang/String;
    .locals 2

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u200e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->getUnitLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getGlobalUnit()I
    .locals 1

    .line 309
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/manage/AppConfigManager;->getUnitPreference()I

    move-result v0

    return v0
.end method

.method protected getUnitLabel(I)Ljava/lang/String;
    .locals 1

    .line 313
    invoke-static {p1}, Lcom/qianhe/baselib/enums/UnitEnum;->normalize(I)I

    move-result p1

    .line 314
    sget-object v0, Lcom/qianhe/baselib/enums/UnitEnum;->IN:Lcom/qianhe/baselib/enums/UnitEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/UnitEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 315
    sget p1, Lcom/qianhe/yct/R$string;->in:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 317
    :cond_0
    sget p1, Lcom/qianhe/yct/R$string;->meter:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract gga(Lcom/qianhe/baselib/bean/GGAEntity;)V
.end method

.method protected handleMeasureCollectClick(ILcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V
    .locals 1

    if-eqz p2, :cond_3

    .line 202
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/base/BaseActivity;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 204
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget p2, Lcom/qianhe/yct/R$string;->please_select_shovel_tip:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 208
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    new-instance v0, Lcom/qianhe/yct/base/BaseProjectFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/base/BaseProjectFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/base/BaseProjectFragment;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->startInstrumentCollect(Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V

    return-void

    .line 211
    :cond_2
    invoke-interface {p2, p1}, Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;->goCollectCoordinates(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected handleToothCollectClick(ILcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V
    .locals 1

    if-eqz p2, :cond_3

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/base/BaseActivity;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 189
    invoke-interface {p2, p1}, Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;->setShovelTipType(I)V

    .line 190
    invoke-interface {p2}, Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;->goPointLibrary()V

    return-void

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 192
    invoke-interface {p2, p1}, Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;->setShovelTipType(I)V

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    new-instance v0, Lcom/qianhe/yct/base/BaseProjectFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/base/BaseProjectFragment$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/base/BaseProjectFragment;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->startInstrumentCollect(Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V

    return-void

    .line 196
    :cond_2
    invoke-interface {p2, p1}, Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;->setShovelTipType(I)V

    .line 197
    invoke-interface {p2, p1}, Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;->goCollectCoordinates(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected handleToothCollectLongClick(ILcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/base/BaseActivity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-interface {p2, p1}, Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;->setShovelTipType(I)V

    .line 182
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    new-instance v0, Lcom/qianhe/yct/base/BaseProjectFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/base/BaseProjectFragment$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/base/BaseProjectFragment;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->startInstrumentCollectWithPoleHeight(Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract insNavi(Lcom/qianhe/baselib/bean/InsNavi;Z)V
.end method

.method protected isFastContinueClick()Z
    .locals 7

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->isFastContinueClick()Z

    move-result v0

    return v0

    .line 80
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 81
    iget-wide v2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->lastContinueClickElapsed:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x320

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    const/4 v0, 0x1

    return v0

    .line 84
    :cond_1
    iput-wide v0, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->lastContinueClickElapsed:J

    const/4 v0, 0x0

    return v0
.end method

.method protected isVaildCoords([D)Z
    .locals 5

    .line 367
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-wide v3, p1, v2

    .line 368
    invoke-virtual {p0, v3, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->isValidCoord(D)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected isValidCoord(D)Z
    .locals 1

    .line 363
    invoke-static {p1, p2}, Lcom/qh/xcad/XCadView$$ExternalSyntheticBackport0;->m(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "sp"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    .line 50
    new-instance p1, Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/LoadingFragment;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    .line 51
    new-instance p1, Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/TipsDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->tipsDialogFragment:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 398
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method protected postWizardNext(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 106
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "next"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected recycleGif(Landroid/widget/ImageView;)V
    .locals 0

    .line 393
    invoke-static {p1}, Lcom/qianhe/yct/utils/GifLoadHelper;->recycle(Landroid/widget/ImageView;)V

    return-void
.end method

.method protected refreshMode1UnitLabel(Landroid/widget/TextView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getDisplayUnitText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected resolveExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 2

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->getExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    const-string v1, "excavatorEntity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected resolveInitExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 2

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->getInitEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    const-string v1, "initEntity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected restoreContinueEnabled(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected setGifPlaying(Landroid/widget/ImageView;Z)V
    .locals 0

    .line 389
    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/GifLoadHelper;->setPlaying(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method protected setGifResource(Landroid/widget/ImageView;I)V
    .locals 0

    .line 385
    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/GifLoadHelper;->setGif(Landroid/widget/ImageView;I)V

    return-void
.end method

.method protected setupToothViewCollectListeners(Lcom/qianhe/yct/view/ToothView;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V
    .locals 1

    .line 175
    new-instance v0, Lcom/qianhe/yct/base/BaseProjectFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/base/BaseProjectFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/base/BaseProjectFragment;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/ToothView;->setOnToothClickListener(Lcom/qianhe/yct/view/ToothView$OnToothClickListener;)V

    .line 176
    new-instance v0, Lcom/qianhe/yct/base/BaseProjectFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/base/BaseProjectFragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/base/BaseProjectFragment;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/ToothView;->setOnToothLongClickListener(Lcom/qianhe/yct/view/ToothView$OnToothLongClickListener;)V

    return-void
.end method

.method protected showLoadingDialog(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->showLoadingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void
.end method

.method protected showLoadingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/dialog/LoadingFragment;->refreshTip(Ljava/lang/String;)V

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "LoadingFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget p1, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string/jumbo v1, "tip"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 128
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/dialog/LoadingFragment;->setOnCloseListener(Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    :cond_2
    return-void
.end method
