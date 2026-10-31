.class public Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "ExcavatorMode4Step2Fragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

.field private continueProcessing:Z

.field private excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private hasShownEnterTips:Z

.field private hasShownInstallTips:Z

.field private initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private isNoMoreReminders:Z

.field private lastFocusedType:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private selectedForearmExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;


# direct methods
.method public static synthetic $r8$lambda$3W9K8HXpL44zGKv9fEVKlldI7kU(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;)V
    .locals 1

    .line 300
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    .line 300
    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->ivStepCloseUp:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4C-IU_xDrXrnmPtoxh330BQoeL8(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;Landroid/view/View;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->applyNewForearm()V

    return-void
.end method

.method public static synthetic $r8$lambda$CDo6laJWt4Oo_6G0eQ0vDfLiUZ8(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;)V
    .locals 1

    .line 297
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    .line 297
    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->ivStepCloseUp:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$D69WXCIPS2iv5ph35yBbcLdiZSs(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;ZLandroid/app/Dialog;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 502
    iget-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->isNoMoreReminders:Z

    if-eqz p1, :cond_1

    .line 503
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo p1, "show_install_leveling_tips"

    const/4 p4, 0x0

    invoke-interface {p0, p1, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    if-eqz p3, :cond_2

    .line 506
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public static synthetic $r8$lambda$DZTdYU2CyzqNAQU8ub53UqTqnOU(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;)V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    .line 293
    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->ivStepCloseUp:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isKe76Pro()Z

    move-result v0

    .line 295
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->ivStepCloseUp:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    sget v0, Lcom/qianhe/yct/R$drawable;->icon_ex30_close_up:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/qianhe/yct/R$drawable;->icon_h5pro_close_up:I

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ITirodiqj4GIK7y7491g0uQrgfg(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;Landroid/view/View;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->showForearmSelectDialog()V

    return-void
.end method

.method public static synthetic $r8$lambda$Jb5lAgu0HxJvnanN4OjFn8UgxyQ(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;Landroid/view/View;)V
    .locals 4

    .line 321
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->findParentNestedScrollView(Landroid/view/View;)Landroidx/core/widget/NestedScrollView;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    const/4 v2, 0x2

    .line 323
    new-array v3, v2, [I

    .line 324
    new-array v2, v2, [I

    .line 325
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 326
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 327
    aget v3, v3, v0

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v3

    .line 329
    aget v0, v2, v0

    .line 330
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    if-le p1, v2, :cond_0

    sub-int/2addr p1, v2

    .line 332
    invoke-virtual {p0, v1, p1}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    return-void

    :cond_0
    if-ge v3, v0, :cond_1

    sub-int/2addr v3, v0

    .line 334
    invoke-virtual {p0, v1, v3}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    :cond_1
    return-void

    .line 337
    :cond_2
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 338
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    return-void
.end method

.method public static synthetic $r8$lambda$LEMK_KhWHsdcfKAG4zFVHsFsGqc(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    .line 498
    iget-boolean p2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->isNoMoreReminders:Z

    xor-int/lit8 p2, p2, 0x1

    .line 498
    iput-boolean p2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->isNoMoreReminders:Z

    .line 499
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$NNQUkItPJ75FJkHmTchi_cA64Ig(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;)V
    .locals 1

    .line 299
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    .line 299
    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->ivStepCloseUp:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$R7IIEzlHsGSrfFKJPGRq8Zu2NAk(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;Landroid/view/View;)V
    .locals 2

    .line 110
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    .line 110
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo v0, "show_install_leveling_tips"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->showInstallTipsDialog(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$URi0nx1SxYen5RLJui9YueXkHIE(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;Landroid/view/View;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->onContinue()V

    return-void
.end method

.method public static synthetic $r8$lambda$VLYeuHhVAl6DWMjpc76c9irtlYU(Landroid/view/View;)V
    .locals 1

    .line 116
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    const-string v0, "previous"

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XqjVtUmtm8xloJwUg3pGCNcQ_9Y(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;)V
    .locals 1

    .line 298
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    .line 298
    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->ivStepCloseUp:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YIervvdBMmi7LLshK_dH8hx5Zj4(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;ILjava/lang/Runnable;Landroid/view/View;Z)V
    .locals 0

    if-eqz p5, :cond_1

    .line 361
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->lastFocusedType:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;

    const/4 p1, 0x1

    .line 362
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->updateTvDoubtVisibility(Z)V

    .line 363
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->ivStep:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    if-eqz p3, :cond_0

    .line 364
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    .line 0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic $r8$lambda$bChoHo3iOE7BpahuD5pmbl5-KJU(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;Landroid/view/View;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->lastFocusedType:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;

    const/4 p1, 0x1

    .line 357
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->updateTvDoubtVisibility(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$nGb_7sTJjcTUYbpCbym6gOByx54(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    const-string p1, "createNew"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->applyNewForearm()V

    return-void

    .line 142
    :cond_0
    const-string p1, "excavator"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-nez p1, :cond_1

    return-void

    .line 144
    :cond_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->applyExistingForearm(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sv57fOKAEx70bSsfnUDeU4pFw6Q(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;Landroid/view/View;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->showActualImageDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndShowInstallTips(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->checkAndShowInstallTips()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->isNoMoreReminders:Z

    .line 59
    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;->HA:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;

    iput-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->lastFocusedType:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;

    .line 60
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->hasShownInstallTips:Z

    .line 61
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->hasShownEnterTips:Z

    return-void
.end method

.method private applyExistingForearm(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 154
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    .line 156
    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByLocalId(J)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 158
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    :cond_0
    if-eqz p1, :cond_3

    .line 161
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->ensureCalibSoInputsReady()V

    .line 166
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reloadSweepAttitudesFromJson()V

    .line 167
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->selectedForearmExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->setReuseForearmSource(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->tvForearmSelect:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->copyForearmMeasureValues(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 173
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0, p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->copyCalibSoInputsWithoutSweep(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 174
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->markSweepNeedRestart()V

    const/4 p1, 0x1

    .line 175
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->setExistingForearmUi(Z)V

    .line 176
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->updateContinueButtonText()V

    return-void

    .line 162
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->cannot_configure:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method private applyNewForearm()V
    .locals 3

    .line 180
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->isReusingExistingForearm()Z

    move-result v0

    const/4 v1, 0x0

    .line 181
    iput-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->selectedForearmExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 182
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->setReuseForearmSource(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->tvForearmSelect:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lcom/qianhe/yct/R$string;->select_forearm:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 186
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->clearForearmMeasureValues()V

    .line 187
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->clearCalibSoInputs()V

    .line 188
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->clearForearmMeasureInputs()V

    .line 189
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->markSweepNeedRestart()V

    const/4 v1, 0x0

    .line 190
    invoke-direct {p0, v1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->setExistingForearmUi(Z)V

    .line 191
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->updateContinueButtonText()V

    .line 192
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->clearReuseArmInput()V

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->hasShownEnterTips:Z

    .line 195
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->hasShownInstallTips:Z

    .line 196
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->checkAndShowEnterTips()V

    :cond_1
    return-void
.end method

.method private applyScrollViewHeightLimit(Landroidx/core/widget/NestedScrollView;II)V
    .locals 3

    const/4 v0, 0x0

    .line 520
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 524
    :cond_0
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 525
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 526
    invoke-virtual {v1, p3, v0}, Landroid/view/View;->measure(II)V

    .line 527
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 528
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 529
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private checkAndShowEnterTips()V
    .locals 4

    .line 412
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->hasShownEnterTips:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->isReusingExistingForearm()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 413
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->hasShownEnterTips:Z

    .line 414
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->excavator_mode4_step2_posture_tips:I

    .line 415
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    .line 416
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$1;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$1;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;)V

    .line 414
    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkAndShowInstallTips()V
    .locals 3

    .line 436
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->hasShownInstallTips:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->isReusingExistingForearm()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 437
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->hasShownInstallTips:Z

    .line 438
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "show_install_leveling_tips"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 440
    invoke-direct {p0, v1, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->showInstallTipsDialog(Ljava/lang/Runnable;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private clearForearmMeasureInputs()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtHA:Lcom/qianhe/yct/view/NumericEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtPq:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtAD:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtBC:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtCD:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private copyForearmMeasureValues(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    .line 221
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    .line 222
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    .line 223
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    .line 224
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    .line 225
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    .line 226
    iget p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    if-lez p1, :cond_0

    .line 227
    iput p1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    :cond_0
    return-void
.end method

.method private findFirstEmptyParamField()Landroid/view/View;
    .locals 5

    .line 309
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtHA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtHA:Lcom/qianhe/yct/view/NumericEditText;

    return-object v0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtPq:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtPq:Lcom/qianhe/yct/view/NumericEditText;

    return-object v0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtAD:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtAD:Lcom/qianhe/yct/view/NumericEditText;

    return-object v0

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtBC:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtBC:Lcom/qianhe/yct/view/NumericEditText;

    return-object v0

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtCD:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtCD:Lcom/qianhe/yct/view/NumericEditText;

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private findParentNestedScrollView(Landroid/view/View;)Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 345
    :goto_0
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 346
    instance-of v0, p1, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    .line 347
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    return-object p1

    .line 349
    :cond_0
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getInstallTipsMaxScrollHeight(IFZZ)I
    .locals 1

    const v0, 0x3f3851ec    # 0.72f

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x3f47ae14    # 0.78f

    :cond_1
    :goto_0
    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    const/high16 p3, 0x43290000    # 169.0f

    mul-float p3, p3, p2

    float-to-int p3, p3

    const/high16 p4, 0x42f00000    # 120.0f

    mul-float p2, p2, p4

    float-to-int p2, p2

    sub-int/2addr p1, p3

    .line 516
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private initGifShow()V
    .locals 4

    .line 292
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtHA:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;->HA:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_ha_mode4_sensor:I

    new-instance v3, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda13;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;ILjava/lang/Runnable;)V

    .line 297
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtPq:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;->PQ:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_pq_mode4_sensor:I

    new-instance v3, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda14;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;ILjava/lang/Runnable;)V

    .line 298
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtAD:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;->AD:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_ad_mode4_sensor:I

    new-instance v3, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda15;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;ILjava/lang/Runnable;)V

    .line 299
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtBC:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;->BC:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_bc_mode4_sensor:I

    new-instance v3, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda16;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;ILjava/lang/Runnable;)V

    .line 300
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtCD:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;->CD:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_cd_mode4_sensor:I

    new-instance v3, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda17;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;ILjava/lang/Runnable;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->tvInstallDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->lltForearmSelect:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda7;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->tvCancelExisting:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda8;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda10;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->bindContinueClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->setupForearmResultListener()V

    .line 119
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->initGifShow()V

    .line 120
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->showData()V

    .line 121
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->updateContinueButtonText()V

    return-void
.end method

.method private isReusingExistingForearm()Z
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->selectedForearmExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 371
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->getReuseForearmSource()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private markSweepNeedRestart()V
    .locals 1

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->markMode4SweepNeedRestart()V

    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->clearReAttitudes()V

    :cond_1
    return-void
.end method

.method private onContinue()V
    .locals 21

    move-object/from16 v0, p0

    .line 245
    iget-boolean v1, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->continueProcessing:Z

    if-eqz v1, :cond_0

    return-void

    .line 248
    :cond_0
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->selectedForearmExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-nez v1, :cond_1

    .line 249
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v2, :cond_1

    .line 250
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->getReuseForearmSource()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    .line 252
    :cond_1
    const-string v2, "next"

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 253
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    instance-of v4, v4, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-nez v4, :cond_2

    .line 254
    invoke-direct {v0, v3}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->setContinueProcessing(Z)V

    .line 255
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 258
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->completeReuseForearm(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void

    .line 261
    :cond_3
    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v4, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtHA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v4}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v4

    .line 262
    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v6, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtPq:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v6}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    invoke-virtual {v0, v1, v6, v7}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide v6

    .line 263
    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v8, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtAD:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v8}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v8

    const/4 v10, 0x3

    invoke-virtual {v0, v1, v8, v9, v10}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide v8

    .line 264
    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v11, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v11, v11, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtBC:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v11}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v11

    invoke-virtual {v0, v1, v11, v12, v10}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide v11

    .line 265
    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v13, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v13, v13, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtCD:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v13}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v13

    invoke-virtual {v0, v1, v13, v14, v10}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide v13

    .line 266
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtHA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v15

    const-wide/16 v17, 0x0

    const/4 v1, 0x0

    cmpl-double v10, v15, v17

    if-eqz v10, :cond_f

    iget-object v10, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtPq:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v10}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v15

    cmpl-double v10, v15, v17

    if-eqz v10, :cond_f

    iget-object v10, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtAD:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v10}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v15

    cmpl-double v10, v15, v17

    if-eqz v10, :cond_f

    iget-object v10, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtBC:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v10}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v15

    cmpl-double v10, v15, v17

    if-eqz v10, :cond_f

    iget-object v10, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v10, v10, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtCD:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v10}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v15

    cmpl-double v10, v15, v17

    if-nez v10, :cond_4

    goto/16 :goto_5

    .line 269
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    const-wide v17, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v10, v15, v17

    if-ltz v10, :cond_e

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    const-wide/high16 v19, 0x4024000000000000L    # 10.0

    cmpl-double v10, v15, v19

    if-lez v10, :cond_5

    goto/16 :goto_4

    .line 271
    :cond_5
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    cmpg-double v10, v15, v17

    if-ltz v10, :cond_d

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    cmpl-double v10, v15, v19

    if-lez v10, :cond_6

    goto/16 :goto_3

    .line 273
    :cond_6
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    cmpg-double v10, v15, v17

    if-ltz v10, :cond_c

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    cmpl-double v10, v15, v19

    if-lez v10, :cond_7

    goto :goto_2

    .line 275
    :cond_7
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    cmpg-double v10, v15, v17

    if-ltz v10, :cond_b

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    cmpl-double v10, v15, v19

    if-lez v10, :cond_8

    goto :goto_1

    .line 277
    :cond_8
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    cmpg-double v10, v15, v17

    if-ltz v10, :cond_a

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    cmpl-double v10, v15, v19

    if-lez v10, :cond_9

    goto :goto_0

    .line 280
    :cond_9
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-wide v4, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    .line 281
    iput-wide v6, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    .line 282
    iput-wide v8, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    .line 283
    iput-wide v11, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    .line 284
    iput-wide v13, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    .line 285
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->markSweepNeedRestart()V

    .line 286
    invoke-direct {v0, v3}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->setContinueProcessing(Z)V

    .line 287
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 278
    :cond_a
    :goto_0
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

    .line 276
    :cond_b
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

    .line 274
    :cond_c
    :goto_2
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

    .line 272
    :cond_d
    :goto_3
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

    .line 270
    :cond_e
    :goto_4
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

    .line 267
    :cond_f
    :goto_5
    invoke-direct {v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->findFirstEmptyParamField()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->scrollEmptyFieldIntoView(Landroid/view/View;)V

    .line 268
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

.method private scrollEmptyFieldIntoView(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 320
    :cond_0
    new-instance v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda18;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setContinueProcessing(Z)V
    .locals 1

    .line 129
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->continueProcessing:Z

    .line 130
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->tvContinue:Landroid/widget/TextView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setExistingForearmUi(Z)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->lltExistingHint:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    xor-int/lit8 p1, p1, 0x1

    .line 233
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->setMeasureFieldsVisible(Z)V

    return-void
.end method

.method private setMeasureFieldsVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 238
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->lltUnitRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->lltRowHaPq:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->lltRowAdBc:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->lltRowCd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setupForearmResultListener()V
    .locals 3

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda19;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;)V

    const-string v2, "forearm_select"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method private setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;ILjava/lang/Runnable;)V
    .locals 1

    .line 355
    new-instance v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda20;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    new-instance v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda21;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;ILjava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private showActualImageDialog()V
    .locals 8

    .line 376
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 377
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isKe76Pro()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    sget v2, Lcom/qianhe/yct/R$drawable;->icon_ha_ex30_actual:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/qianhe/yct/R$drawable;->icon_ha_actual:I

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "HA"

    invoke-virtual {v0, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 379
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_pq_ex30_actual:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_pq_actual:I

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticBackport1;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "pq"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_ad_actual:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticBackport2;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "AD"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_bc_actual:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticBackport3;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "BC"

    invoke-virtual {v0, v5, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_cd_actual:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticBackport4;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v6, "CD"

    invoke-virtual {v0, v6, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->lastFocusedType:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v7, 0x1

    if-eq v1, v7, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v6

    goto :goto_2

    :cond_3
    move-object v3, v5

    goto :goto_2

    :cond_4
    move-object v3, v4

    goto :goto_2

    :cond_5
    move-object v3, v2

    .line 403
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 404
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 407
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v4

    if-le v4, v7, :cond_6

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    .line 402
    :goto_3
    invoke-static {v1, v2, v0, v3, v7}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->showCarousel(Landroid/content/Context;Landroid/content/res/Configuration;Ljava/util/LinkedHashMap;Ljava/lang/String;Z)V

    return-void
.end method

.method private showData()V
    .locals 7

    .line 533
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->unitDropdownSensor:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 534
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_0

    .line 535
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtHA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    invoke-virtual {p0, v1, v5, v6, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_1

    .line 538
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtPq:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    invoke-virtual {p0, v1, v5, v6, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_2

    .line 541
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtAD:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    invoke-virtual {p0, v1, v5, v6, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_3

    .line 544
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtBC:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    invoke-virtual {p0, v1, v5, v6, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_4

    .line 547
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->edtCD:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v3, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v0, :cond_5

    .line 550
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->getReuseForearmSource()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 552
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->applyExistingForearm(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    :cond_5
    return-void
.end method

.method private showForearmSelectDialog()V
    .locals 3

    .line 149
    invoke-static {}, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;->newInstance()Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "forearm_select"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showInstallTipsDialog(Ljava/lang/Runnable;Z)V
    .locals 18

    move-object/from16 v0, p0

    .line 448
    new-instance v2, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 449
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/qianhe/yct/R$layout;->dialog_install_tips:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 450
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v4, 0x0

    .line 451
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 452
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 454
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 455
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 456
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 457
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 458
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    instance-of v9, v9, Lcom/qianhe/yct/base/BaseActivity;

    if-eqz v9, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    check-cast v9, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v9}, Lcom/qianhe/yct/base/BaseActivity;->isPad()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-eqz v8, :cond_2

    const v9, 0x3f2e147b    # 0.68f

    goto :goto_2

    :cond_2
    const v9, 0x3f666666    # 0.9f

    .line 461
    :goto_2
    sget v11, Lcom/qianhe/yct/R$id;->tvTitle:I

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 462
    sget v12, Lcom/qianhe/yct/R$id;->ivInstallImage:I

    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/widget/AppCompatImageView;

    .line 463
    sget v13, Lcom/qianhe/yct/R$id;->tvContent:I

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 464
    sget v14, Lcom/qianhe/yct/R$id;->nsvContent:I

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroidx/core/widget/NestedScrollView;

    .line 465
    sget v15, Lcom/qianhe/yct/R$id;->lltNoMore:I

    invoke-virtual {v3, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 466
    sget v4, Lcom/qianhe/yct/R$id;->ivNoMore:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move/from16 v16, v9

    .line 467
    sget v9, Lcom/qianhe/yct/R$id;->tvPrevious:I

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 468
    sget v1, Lcom/qianhe/yct/R$id;->tvNext:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v3, 0x0

    .line 470
    iput-boolean v3, v0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->isNoMoreReminders:Z

    .line 471
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    const/16 v3, 0x8

    move-object/from16 v17, v2

    if-eqz p2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    const/16 v2, 0x8

    .line 472
    :goto_3
    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    .line 473
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 474
    sget v2, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 475
    sget v2, Lcom/qianhe/yct/R$string;->install_leveling_device:I

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(I)V

    .line 476
    sget v2, Lcom/qianhe/yct/R$string;->install_leveling_device_step:I

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(I)V

    .line 478
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isKe76Pro()Z

    move-result v2

    const/4 v3, 0x0

    .line 479
    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_4

    .line 480
    sget v2, Lcom/qianhe/yct/R$drawable;->icon_install_zpy_mode4_xfix:I

    goto :goto_4

    :cond_4
    sget v2, Lcom/qianhe/yct/R$drawable;->icon_install_zpy_mode4_yct:I

    :goto_4
    invoke-virtual {v12, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 482
    invoke-direct {v0, v6, v7, v8, v10}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->getInstallTipsMaxScrollHeight(IFZZ)I

    move-result v2

    int-to-float v3, v5

    mul-float v3, v3, v16

    float-to-int v3, v3

    const/high16 v5, 0x42200000    # 40.0f

    mul-float v7, v7, v5

    float-to-int v5, v7

    sub-int v5, v3, v5

    .line 485
    invoke-direct {v0, v14, v2, v5}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->applyScrollViewHeightLimit(Landroidx/core/widget/NestedScrollView;II)V

    .line 487
    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 489
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 490
    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    .line 491
    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x11

    .line 492
    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 493
    invoke-virtual {v2, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v3, 0x106000d

    .line 494
    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 497
    :cond_5
    new-instance v2, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0, v4}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda11;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;Landroid/widget/ImageView;)V

    invoke-virtual {v15, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    new-instance v2, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda12;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, v17

    invoke-direct {v2, v0, v4, v5, v3}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda12;-><init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;ZLandroid/app/Dialog;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateContinueButtonText()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->tvContinue:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->isReusingExistingForearm()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/qianhe/yct/R$string;->btn_complete:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/qianhe/yct/R$string;->next:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private updateTvDoubtVisibility(Z)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

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

    .line 0
    return-void
.end method

.method public insNavi(Lcom/qianhe/baselib/bean/InsNavi;Z)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 564
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 565
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 566
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->checkAndShowEnterTips()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 67
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    .line 68
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 69
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 70
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 72
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 73
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 74
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p3, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->resolveInitExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 80
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->resolveExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 81
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->initView()V

    .line 82
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->ivStep:Lpl/droidsonroids/gif/GifImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->recycleGif(Landroid/widget/ImageView;)V

    .line 572
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->ivStep:Lpl/droidsonroids/gif/GifImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifPlaying(Landroid/widget/ImageView;Z)V

    .line 103
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->hasShownInstallTips:Z

    .line 104
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->hasShownEnterTips:Z

    .line 105
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 87
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x1

    .line 88
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->updateTvDoubtVisibility(Z)V

    .line 89
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->unitDropdownSensor:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 90
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->ivStep:Lpl/droidsonroids/gif/GifImageView;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_ha_mode4_sensor:I

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    .line 91
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->ivStepCloseUp:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isKe76Pro()Z

    move-result v1

    .line 93
    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->ivStepCloseUp:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_0

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_ex30_close_up:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_h5pro_close_up:I

    :goto_0
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 94
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step2Binding;->ivStep:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p0, v1, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifPlaying(Landroid/widget/ImageView;Z)V

    .line 95
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->updateContinueButtonText()V

    .line 96
    invoke-direct {p0, v2}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->setContinueProcessing(Z)V

    return-void
.end method
